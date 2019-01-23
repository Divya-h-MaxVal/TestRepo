({
	doThis : function(component, event, helper) {
        var src = event.getSource().get("v.label");
        console.log(src);
        if(src==="Toggle on")
        {
            component.set("v.text","Toggle off");
        	component.set("v.check",true);
        
        }
        
        else if(src === "Toggle off")
        {
            component.set("v.text","Toggle on");
        	component.set("v.check",false);
        }
        
		
	}
})