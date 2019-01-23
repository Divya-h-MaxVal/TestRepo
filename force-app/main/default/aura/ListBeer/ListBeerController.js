({
	PageChange : function(component, event, helper) {
        var p =component.get("v.page");
        var dir = event.getParamter("direction");
        p = direction ==="Previous"? (page-1): (page+1);
        helper.getBeer(component,page);
		
	},
    
    alcoholSelectionChange : function(component,event,helper)
    {
        var alcLv = event.getParam("minAlc");
        helper.getBeer(component,alcLv);
    },
    
    locationChange : function(component,event,helper)
    {
        helper.getBeer(component);
    }
})