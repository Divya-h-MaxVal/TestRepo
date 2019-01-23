({
	handleAppEvent : function(component, event, helper) {
        var data = event.getParam("data");
        component.set("v.dataFromSibling",data);
        console.log("data from siblisng is"+data);
	}
})