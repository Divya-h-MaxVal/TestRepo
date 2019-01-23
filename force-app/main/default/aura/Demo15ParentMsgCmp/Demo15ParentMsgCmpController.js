({
	showMessage : function(component, event, helper) {
        
        component.find("messages").show("Confirmation message from parent");
		
	},
    
    	showErrorMsg : function(component, event, helper) {
		 component.find("messages").error("error message from parent");
	},
    
    	removeMsg : function(component, event, helper) {
		 component.find("messages").remove();
            console.log('method got called');
	},
})