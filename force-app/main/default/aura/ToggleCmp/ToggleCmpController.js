({
	onCheck : function(component, event, helper) {
        
        var a = component.find("divId");
        $A.util.toggleClass(a, "slds-hide");
		
	}
})