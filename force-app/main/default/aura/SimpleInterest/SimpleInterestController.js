({
	calculate : function(component, event, helper) {
        
        var p = component.get("v.Principal");
        var t = component.get("v.time");
        var r = component.get("v.rate");
        var s = ((p*t*r)/100);
        component.set("v.SI",s);
        		
	}
})