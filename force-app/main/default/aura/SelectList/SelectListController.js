({
	doInit : function(component, event, helper) {
        
        var action = component.get("c.getAccounts");
        action.setCallback(this,function(response){
            var state = response.getState();
            if(state === 'SUCCESS')
            {
                component.set("v.accNames",response.getReturnValue());
                console.log(response.getReturnValue());
            }
        });
        
        $A.enqueueAction(action);
		
	},
    
    itemsChange : function(component, event, helper) {
        
        alert(event.getSource().get("v.label"));
        console.log(slectedAcc);
		
	}
})