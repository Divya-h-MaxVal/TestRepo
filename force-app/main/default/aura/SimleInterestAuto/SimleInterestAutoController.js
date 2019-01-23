({
    
	calculate : function(component, event, helper) {
        
        var p = component.get("v.Principal");
        var t = component.get("v.Time");
        var r = component.get("v.Rate");
        var s = ((p*t*r)/100);
        component.set("v.SI",s);
		
	},
    
    doInit : function (component,event,helper)
    {
        setTimeout(function()
                   {
                      var p = component.get("v.Principal");
        var t = component.get("v.Time");
        var r = component.get("v.Rate");
        var s = ((p*t*r)/100);
        component.set("v.SI",s); 
                   } )	;
    }
})