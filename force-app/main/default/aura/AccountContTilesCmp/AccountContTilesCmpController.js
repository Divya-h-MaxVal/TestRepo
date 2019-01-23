({
	doInit : function(component, event, helper) {
		var action = component.get("c.fetchAccounts");
        action.setCallback(this,function(response){
            var state = response.getState();
            if(state === 'SUCCESS'){
                component.set("v.accounts",response.getReturnValue());
                console.log(response.getReturnValue());
            }
            
            else{
                alert('something is wrong');
            }
        });
      $A.enqueueAction(action);  
	},
    
    getContacts : function(component,event,helper){
      /*  var name = document.getElementById('i').getAttribute('href');
        alert('name is'+name); */
        component.set("v.show",true);
        var accName = event.currentTarget.getAttribute("data-id");
        alert(accName);
        
        var action = component.get("c.fetchContacts");
        action.setParams({'name' : accName});
        action.setCallback(this,function(response){
            var state = response.getState();
            if(state === 'SUCCESS'){
                component.set("v.conList",response.getReturnValue());
            }
            else{
                alert('denja denja');
            }
        });
        $A.enqueueAction(action);
        
    }
})