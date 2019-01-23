({
	doThis : function(component, event, helper) {
        
        var cL = component.get("v.Form");
        var cF = component.get("c.SaveToDBMethod");
        cF.setParams({f : cL});
        cF.setCallback(this, function(response) {
            var state = response.getState();
            if (state === "SUCCESS") {
                // Alert the user with the value returned 
                // from the server
                alert("From server: " + response.getReturnValue());

                // You would typically fire a event here to trigger 
                // client-side notification that the server-side 
                // action is complete
            }
            else if (state === "INCOMPLETE") {
                // do something
            }
            else if (state === "ERROR") {
                var errors = response.getError();
                if (errors) {
                    if (errors[0] && errors[0].message) {
                        console.log("Error message: " + 
                                 errors[0].message);
                    }
                } else {
                    console.log("Unknown error");
                }
            }
        });
      
         $A.enqueueAction(cF);

        
		
	},
    
    checkBoxFunc : function(component,event,helper)
    {
        console.log("this is from the controller");
        helper.helperFunc1(component,event);
        
    },
    
    addCont : function(component,event,helper)
    {
        var cont = component.get("v.ContactList");
        var currSize = parseInt((cont.size));
        var upSize = parseInt((currSize.size)+1);
        cont.push(upSize);
        component.set("v.ContactList",cont);
        
        
    }
})