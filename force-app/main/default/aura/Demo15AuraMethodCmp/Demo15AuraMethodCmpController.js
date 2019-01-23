({
	doAction : function(component, event, helper) {
        
        var param = event.getParam("arguments");
        console.log(param);
        if(param)
        {
            var passedParam = param.param1; //param1 is the att name given inside the method
            console.log('param val is'+passedParam);
        }
		
	},
    
    handleClick : function(component, event, helper) {
        
        console.log("calling aura method");
        component.sampleMethod("1");
		
	}
})