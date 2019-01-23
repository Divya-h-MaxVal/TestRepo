({
	handleBubblingEvent : function(component, event, helper) {
        console.log("Grand Child handled for event:"+event.getName());
	},
    handleCaptureEvent  : function(component, event, helper) {
        
        console.log("Grand Child capture handled for event:"+event.getName());
    }
})