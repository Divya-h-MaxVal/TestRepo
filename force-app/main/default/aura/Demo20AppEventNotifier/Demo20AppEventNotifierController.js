({
	fireAppEvent : function(component, event, helper) {
        
        var appEvent = $A.get("e.c:Demo20AppEvent");
        appEvent.setParams({
            "message" : "value from app event notifier component"
        });
        
		appEvent.fire();
	}
})