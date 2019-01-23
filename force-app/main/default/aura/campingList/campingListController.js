({
    /*
    doInit : function(component,event,helper)
    {
        var action = component.get("c.getItems");
        action.setCallback(this,    function(response) {
        var state = response.getState();
        if (state === "SUCCESS") {
            component.set("v.items", response.getReturnValue());
        }
    }
);
        
        $A.enqueueAction(action);    }, */
    
        
    
    
    handleAdditem : function(component,event,helper)
    
    {
        var item = event.getParam("item");
        var action = component.get("c.saveItem");
        action.setParams({
            "item" : item
        });
        action.setCallback(this,function(response){
            
            var state= response.getState();
            if(state === "SUCCESS")
            {
                var items = component.get("v.items");
                items.push(response.getReturnValue());
                component.set("v.items",items);
                console.log('state'+state);
            }
            
            else
            {
                console.log("error"+state);
            }
            
            
        });
        $A.enqueueAction(action);
        
    },
    
    
    
    
})