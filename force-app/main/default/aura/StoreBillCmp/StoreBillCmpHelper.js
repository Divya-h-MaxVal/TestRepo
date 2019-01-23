({
    loadOptionsHelper : function(component,event) {
        var action = component.get("c.fetchOptions");
        action.setCallback(this,$A.getCallback(function(response){
            var state = response.getState();
            if(state === 'SUCCESS'){
                component.find("comboBox").set("v.options",response.getReturnValue());
                component.set("v.optionsList",response.getReturnValue());
            }
            
            else{
                alert('there is some error');
            }
            
        }));
        $A.enqueueAction(action);
    },
    
})