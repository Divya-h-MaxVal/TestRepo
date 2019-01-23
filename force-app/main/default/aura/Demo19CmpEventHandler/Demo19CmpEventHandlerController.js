({
	handleCmpEvt : function(component, event, helper) {
        console.log("event: "+ event.getName());
        var message= event.getParam("message");
        var label = event.getParam("label");
        console.log("message received is"+message);
        console.log("label received is"+label);
        component.set("v.messageFromNotifier",message);
        var count = parseInt(component.get("v.eventCount")) +1;
        component.set("v.eventCount",count);
	}
})