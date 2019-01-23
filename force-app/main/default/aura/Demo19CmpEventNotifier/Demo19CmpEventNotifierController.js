({
	fireCmpEvt : function(component, event, helper) {
        
        var cmpEvent = component.getEvent("componentEvent");
        var msgStr = component.get("v.messagestring");
        //msgStr = $A.Util.isEmpty(msgStr)?'No msg passed' : msgStr ;
        msgStr = $A.util.isEmpty(msgStr) ? "No Message passed" : msgStr;
        cmpEvent.setParams({
            "message" : msgStr,
            "label" : "label from event"
            
        });
        
		cmpEvent.fire();
	}
})