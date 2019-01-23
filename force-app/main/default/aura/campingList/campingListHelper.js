({
   /*
    createItem : function(component,newItem) {
        var action = component.get("c.saveItem");
        
        action.setParams({
            "item" : newItem
        });
        action.setCallback(this,function(response){
            var state = response.getState();
            
            if(state === "SUCCESS")
            {
                var items = component.get("v.items");
                items.push(response.getReturnValue());
                component.set("v.items",items);
            }
            else
            {
                console.log("failed"+state);
            }
            
            
        });  
        $A.enqueueAction(action);
        component.set("v.newItem",{
            'sobjectType' : 'Camping_item__c',
            'Price__c' : 0,
            'Quantity__c' : 0,
            'Name' : '',
            'Packed__c' : false
        });
        
    } */
})