({
	callout : function(component, event, helper) {
        
        var base = 'USD';
        
        var action = component.get("c.httpCall");
        action.setParams({'url' : 'http://api.fixer.io/latest?base=' + base});
        action.setCallback(this,function(response){
            
            var state = response.getState();
            
            if(state === 'SUCCESS')
            {
                component.set("v.response",response.getReturnValue()); 
            }
            
                var rates =component.get("v.response")['rates'];
                var currList = [];
            for(var key in rates)
            {
                currList.push(key+'='+rates[key]);
            }
            
            component.set("v.resList",currList);
	
            
        });
        
        $A.enqueueAction(action);
		
	}
})