({
	loadOptions : function(component, event, helper) {
        
        helper.loadOptionsHelper(component,event);
	},
    
    handleChange : function(component, event, helper){
        var selectedOption = event.getParam("value");
        component.set("v.selectedProdID",selectedOption);
        console.log('id is'+component.get("v.selectedProdID"));
        component.set("v.storeInstance.ProductNew__c",selectedOption);
        component.set("v.quantity",'');
    },
    
 /*   goSave : function(component, event, helper){
        component.set("v.storeInstance.ProductNew__c",component.get("v.selectedProdID"));
        var lst = component.get("v.storeInstance");
        console.log(component.get("v.storeInstance"));
        var action = component.get("c.saveToDatabase");
        action.setParams({'s':lst});
        action.setCallback(this, function(response){
            var state = response.getState();
            if(state === 'SUCCESS'){
                alert('the state is successful');
            }
            else{
                alert('Something is wrong');
            }
        });
        
        $A.enqueueAction(action);
        component.set("v.storeInstance",'');
    }, */
    
    addNewRow : function(component,event,helper){
        component.getEvent("addRow").fire();
    },
    
    removeRow : function(component,event,helper){
        //alert('rowindex is'+component.get("v.rowIndex"));
        component.getEvent("deleteRow").setParams({'indexVar' : component.get("v.rowIndex")}).fire();
    },
})