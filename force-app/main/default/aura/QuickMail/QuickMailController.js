({
	closeIt : function(component, event, helper) {
		
        component.set("v.email",null);
        component.set("v.subject",null);
        component.set("v.body",null);
        component.set("v.emailStatus",false);
        
	},
    
    send : function (component,event,helper)
    {
        var to = component.get("v.email");
        var sub = component.get("v.subject");
        var body = component.get("v.body");
        var action = component.get("c.sendMail");
        action.setParams({
            'to' : to,
            'subject' : sub,
            'body' : body
            
        });
        action.setCallback(this,function(response){
            var state = response.getState();
            if(state === "SUCCESS")
            {
                component.set("v.emailStatus",true);
                
            }
        });
        
        $A.enqueueAction(action);
    }
    
})