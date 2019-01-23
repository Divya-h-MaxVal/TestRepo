({
	doInit : function(component, event, helper) {
        
        var action = component.get("c.getAccounts");
        action.setCallback(this,function(response){
            var state = response.getState();
            if(state === 'SUCCESS')
            {
                component.set("v.accList",response.getReturnValue());
            }
        });
        $A.enqueueAction(action);
		
	},
    
    showSpinner : function (component,event,helper)
    {
        component.set("v.spinner",true);
        console.log('spinner on');
    },
    
    hideSpinner : function (component,event,helper)
    {
        component.set("v.spinner",false);
        console.log('spinner off');
    },
})