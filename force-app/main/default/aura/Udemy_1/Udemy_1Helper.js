({
	helperFunc1 : function(component,event) {
        var checkBoxVal = component.find("checkBox").get("v.checked");
        console.log("this is from helper");
        component.set("v.helperCheck",checkBoxVal);
		
	}
})