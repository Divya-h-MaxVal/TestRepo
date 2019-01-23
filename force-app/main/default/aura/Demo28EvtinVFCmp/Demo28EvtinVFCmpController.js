({
	handleEvent : function(component, event, helper) {
  var message = event.getParam("message");
        component.find("ltngText").set("v.value",message);
 }

})