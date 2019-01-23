({
	fetchEm : function(component, event, helper) {
        
        var action = component.get("c.getMaps");
        action.setCallback(this,function(response){
            var state = response.getState();
            
            if(state === 'SUCCESS')
            {
                var custs = [];
                var conts = response.getReturnValue();
                for(var key in conts){
                    custs.push({value:conts[key], key:key});
               
                //console.log(response.getReturnValue());
            }
                 component.set("v.mappy",custs);
            }
        });
        
        $A.enqueueAction(action);
		
	},
})