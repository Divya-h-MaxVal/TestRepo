({
	doInit : function(component, event, helper) {
        var t = component.get("v.expense.Date__c");
        if(t)
        {
            component.set("v.formatdate",new Date(t));
        }
        
		
	},
})