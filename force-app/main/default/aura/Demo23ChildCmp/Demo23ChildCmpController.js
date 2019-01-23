({
	handleBubblingEvent : function(component, event, helper) {
		console.log("handle bubbling for event"+event.getName());
	},
    
    handleCaptureEvent : function(component, event, helper) {
        console.log("capture event child"+event.getName());
    }
})