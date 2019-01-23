({
	doInit : function(component, event, helper) {
		var action = component.get("c.fetchAccounts");
        action.setCallback(this,function(response){
            
            var state = response.getState();
            if(state==='SUCCESS')
            {
                component.set("v.accountList",response.getReturnValue());
            }
            else
            {
                console.log("some error");
            }
        });
        
        $A.enqueueAction(action);
	}
})