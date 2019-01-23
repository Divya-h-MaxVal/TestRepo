({
	OpenForm : function(component, event, helper) {
       var l= event.getSource().get("v.label");
        if(l=="Open The Form")
        {
            component.set("v.OpenTheForm",true);
            component.set("v.ButtonLabel","Close Form");
        }
        
       
        if(l=="Close Form")
        {
            component.set("v.OpenTheForm",false);
            component.set("v.ButtonLabel","Open The Form");
        }
	}
})