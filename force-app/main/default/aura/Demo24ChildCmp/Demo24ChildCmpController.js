({
	childMethod : function(component, event, helper) {
        
        var params = event.getParam("arguments");
        if(params)
        {
            var param1 = params.param1;
            console.log("parameter from parent"+param1);
        }
		
	},
    
    callCmpEvent : function(component, event, helper)
    {
        var cmpEvt = component.getEvent("childCmpEvent");
        var att = component.get("v.childData");
        cmpEvt.setParams({
            "data" : att
        });
        cmpEvt.fire();
    },
    
    callAppEvent : function(component, event, helper)
    {
        var appEvent = $A.get("e.c:Demo24AppEvt");
        var attributeData = component.get("v.childData");
        appEvent.setParam({
            "data" : attributeData
        });
        appEvent.fire();
    }
})