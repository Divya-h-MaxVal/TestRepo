({
	searchFunction : function(component,event) {
        
        component.find("spinner").set("v.class","slds-show");
        var key = component.get("v.searchKey");
        console.log('key from comp is'+key);
        var action = component.get("c.searchMethod");
        action.setParams({
            searchKey : key
        });
        action.setCallback(this,function(response){
            console.log('enetered call back');
                           
            component.find("spinner").set("v.class","slds-hide");
            console.log('enetered call back1');
            var state = response.getState();
            console.log('enetered call back2');
            if(state === 'SUCCESS')
            {
                console.log('enetered call back3');
                var storeResponse = response.getReturnValue();
                console.log('response is'+response.getReturnValue());
                console.log(storeResponse.length);
               	if(storeResponse.length == '0')
                {
                    component.set("v.message",true);
                    console.log('enetered call back4');
                   
                } 
                
                else if (storeResponse.length>0)
                {
                    component.set("v.message",false);
                }
                
                component.set("v.searchResult",storeResponse);
                //component.set("v.totalNoRecords",storeResponse.length);
                console.log('message is'+component.get("v.message"));
                console.log(storeResponse);
            }
            
            
                           
                           });
        
        $A.enqueueAction(action);
        
		
	},
})