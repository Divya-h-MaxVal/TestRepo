({
	locationChange : function(component, event, helper) {
        //var s = component.get("searchKey");	
        var e = event.getParam("token");
        component.set("v.searchKey",e);
		
	},
    
    searchKeyChange : function(component,event,helper)
    {
        window.location.hash = event.target.value;
    },
    
   clearThings : function(component,event,helper)
    {
        window.location.hash = "";
    }
    
})