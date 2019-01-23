({
	createObject : function(component,event) {
        var rowItemList = component.get("v.storeList");
        rowItemList.push({'sobjectType' :'Store__c',
                          'Name' :'',
                          'ProductNew__c':'',
                          'Quantity_Purchased__c':''
                         });
        component.set("v.storeList",rowItemList);
	},
    
   
})