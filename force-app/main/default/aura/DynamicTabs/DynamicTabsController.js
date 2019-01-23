({
	first : function(component, event, helper) {
		var f = component.find("first");
        var s = component.find("second");
        var t = component.find("third");	
        
        var ft = component.find("firstTab");
        var st = component.find("secondTab");
        var tt = component.find("thirdTab");
        
        
        $A.util.addClass(f, "slds-is-active");
        $A.util.removeClass(s, "slds-is-active");
        $A.util.removeClass(t, "slds-is-active");
        
        $A.util.removeClass(ft, "slds-hide")
         $A.util.addClass(ft, "slds-show");
        $A.util.removeClass(st, "slds-show");
        $A.util.addClass(st, "slds-hide");
        $A.util.removeClass(tt, "slds-show");
        $A.util.addClass(tt, "slds-hide");
        
	},
    
    second : function(component, event, helper) {
        var f = component.find("first");
        var s = component.find("second");
        var t = component.find("third");	
        
        var ft = component.find("firstTab");
        var st = component.find("secondTab");
        var tt = component.find("thirdTab");
        
       
        $A.util.addClass(s, "slds-is-active");
        $A.util.removeClass(f, "slds-is-active");
       
        $A.util.removeClass(t, "slds-is-active");
        
        
         $A.util.removeClass(st, "slds-hide")
         $A.util.addClass(st, "slds-show");
        $A.util.removeClass(ft, "slds-show");
        $A.util.addClass(ft, "slds-hide");
        $A.util.removeClass(tt, "slds-show");
        $A.util.addClass(tt, "slds-hide");
	},
    
    third : function(component, event, helper) {
		var f = component.find("first");
        var s = component.find("second");
        var t = component.find("third");	
        
        var ft = component.find("firstTab");
        var st = component.find("secondTab");
        var tt = component.find("thirdTab");
        
       $A.util.removeClass(t, "slds-hide");
        $A.util.addClass(t, "slds-is-active");
        $A.util.removeClass(f, "slds-is-active");
       
        $A.util.removeClass(s, "slds-is-active");
       
        
         $A.util.removeClass(tt, "slds-hide")
         $A.util.addClass(tt, "slds-show");
        $A.util.removeClass(ft, "slds-show");
        $A.util.addClass(ft, "slds-hide");
        $A.util.removeClass(st, "slds-show");
        $A.util.addClass(st, "slds-hide");
	},


})