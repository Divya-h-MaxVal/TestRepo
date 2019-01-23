({
	clickCreate : function(component, event, helper) {
        
        var e = component.find("expenseform").reduce(function(validSoFar,inputCmp){
            
            inputCmp.showHelpMessageIfInvalid();
            return validSoFar && inputCmp.get('v.validity').valid;},true);
        
        if(e){
            // Create the new expense
            var newExpense = component.get("v.newExpense");
            console.log("Create expense: " + JSON.stringify(newExpense));
            helper.createExpense(component, newExpense);
        }
        
        },
    
    doInit : function(component, event, helper)
    {
        var action = component.get("c.getExpenses");
        action.setCallback(this,function(response)
                           {
                               var state = response.getState();
                               if(state === "SUCCESS")
                               {
                                   component.set("v.expenses",response.getReturnValue());
                               }
                               else
                                   console.log("failed with state:"+state);
                               
                           });
        
        $A.enqueueAction(action);
    }
		
	
})