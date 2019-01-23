({
	getWrapperStuff : function(component) {
        
        var action = component.get("c.getFromWrapper");
        action.setCallback(this,function(response){
            var state = response.getState();
            if(state === 'SUCCESS'){
                var res = response.getReturnValue();
                if(!$A.util.isEmpty(res) && !$A.util.isUndefinedOrNull(res)){
                    component.set("v.wrapper",res);
                    console.log(res);
                }
            }
            
            else {
                
                var err = response.getError();
                console.log(err);
            }
        });
        
        $A.enqueueAction(action);
        
		
	}
})