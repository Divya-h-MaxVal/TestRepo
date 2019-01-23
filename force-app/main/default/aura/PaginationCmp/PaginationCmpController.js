({
	doInit : function(component, event, helper) {
        
        var page = component.get("v.page") || 1;
        var recordToDisp = component.find("select").get("v.value");
        helper.getAccounts(component,page,recordToDisp);
		
	},
    
    pageNavigation : function(component,event,helper)
    {
        var page = component.get("v.page") || 1;
        var direction = event.getSource().get("v.label");
        var recordToDisp = component.find("select").get("v.value");
        page= direction === 'Previous' ? (page-1) : (page+1);
        helper.getAccounts(component,page,recordToDisp);
    },
    
    onSelectChange : function (component,event,helper)
    {
        var page = 1;
        var recordToDisp = component.find("select").get("v.value");
        helper.getAccounts(component,page,recordToDisp);
    },
})