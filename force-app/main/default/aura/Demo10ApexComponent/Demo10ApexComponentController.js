({
    doInit : function(component, event, helper) {
        
        var action = component.get("c.getAccounts");
        action.setCallback(this,function(response){
            
            var state = response.getState();
            
            if(state === 'SUCCESS')
            {
                component.set("v.accountList",response.getReturnValue());
            }
            
            
        });
        
        $A.enqueueAction(action);
        
    },
    
    getContacts : function(component,event,helper)
    {
        var action = component.get("c.fetchContacts");
        var recordId = component.get("v.selectedAccId");
        action.setParams({
            'selectedAccId' : recordId
        });
        action.setCallback(this,function(response){
            var state = response.getState();
            if(state ==='SUCCESS')
            {
                component.set("v.contactList",response.getReturnValue());
                console.log(response.getReturnValue());
            }
        });
        
        if(recordId!= '')        
            $A.enqueueAction(action);
    }
})