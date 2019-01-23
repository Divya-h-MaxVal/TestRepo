({
	showMessage : function(component, event, helper) {
		helper.showMessageHelper(component,event,'confirm');
	},
    
    showErrorMsg : function(component, event, helper) {
		helper.showMessageHelper(component,event,'error');
	},
    
    removeMsg : function(component, event, helper) {
		helper.removeMessageHelper(component);
	}
})