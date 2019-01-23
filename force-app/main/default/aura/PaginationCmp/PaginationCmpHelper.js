({
	getAccounts : function(component,page,recordToDisp) {
        
        var action = component.get("c.getAccounts");
        action.setParams({
            'pageNumber' : page ,
            'recordToDisplay' : recordToDisp
        });
        action.setCallback(this,function(response){
            var state = response.getState();
            if(state === 'SUCCESS')
            {
                var result = response.getReturnValue();
                component.set("v.total",result.total);
                component.set("v.page",result.page);
                component.set("v.accounts",result.accounts);
                component.set("v.pages",Math.ceil(result.total/recordToDisp));
            }
        });
        
        $A.enqueueAction(action);
		
	}
})