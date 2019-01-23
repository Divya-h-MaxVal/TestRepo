({
	createItem : function(component, newItem) {
    
        var addItem = component.getEvent("addItem");
        addItem.setParams({
            "item" : newItem
        });
    
        addItem.fire();
         var action = component.get("c.getItems");
        action.setCallback(this,    function(response) {
        var state = response.getState();
        if (state === "SUCCESS") {
            component.set("v.items", response.getReturnValue());
        }
    }
);
        
        $A.enqueueAction(action); 
        component.set("v.newItem", { 'sobjectType': 'Camping_Item__c',
                    'Name': '',
                    'Quantity__c': 0,
                    'Price__c': 0,
                    'Packed__c': false });
    
    }
})