({
	doInit : function(component, event, helper) {
        
        helper.getContacts(component,event,'firstName');
		
	},
    
    sortFirstName : function(component, event, helper){
        component.set("v.selectedTabsoft",'firstName');
        helper.sortIt(component,event,'firstName');
    },
    
    sortLastName : function(component,event,helper){
        component.set("v.selectedTabsoft",'lastName');
        helper.sortIt(component,event,'lastName');
    },
    
    sortDepartment : function(component,event,helper){
        component.set("v.selectedTabsoft",'Department');
        helper.sortIt(component,event,'Department');
    },
    
})