({
	doInit : function(component, event, helper) {
		helper.createObject(component,event);		
	},
    
    goSave : function(component, event, helper){
     //   helper.save(component,event);
         var s = component.get("v.storeList");
        console.log('list is'+s);
        alert(s);
         var action = component.get("c.saveToDatabase");
            action.setParams({
                's': component.get("v.storeList")
            });
            
            action.setCallback(this,function(response){
                var state = response.getState();
                console.log('state is'+state);
                if (state === 'SUCCESS') {
                  	component.set("v.storeList",'');
                  	helper.createObject(component, event);
                    alert('record Save');
                }
               else if (state === "ERROR") {
                var errors = response.getError();
                if (errors) {
                    if (errors[0] && errors[0].message) {
                        console.log("Error message: " + 
                                 errors[0].message);
                    }
                } else {
                    console.log("Unknown error");
                }
            }
            });
        $A.enqueueAction(action);
        component.set("v.storeList",'');
       
    },
    
    addRowAction : function(component,event,helper){
        helper.createObject(component,event);
    },
    
    deleteRowAction : function(component,event,helper){
        var index = event.getParam("indexVar");
        alert(index);
        var fullList = component.get("v.storeList");
        fullList.splice(index,1);
        component.set("v.storeList",fullList);
    },
    
    
})