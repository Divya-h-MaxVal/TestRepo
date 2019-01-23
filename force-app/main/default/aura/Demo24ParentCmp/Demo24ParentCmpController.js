({
	callChildMethod : function(component, event, helper) {
		var childCmp = component.find("child");
        childCmp.childMethod("passing parameter to child");
	},
    
    handleCmpEvt :  function(component, event, helper){
        
        var data = event.getParam("data");
        component.set("v.dataFromChild",data);
    },
    
    methodCalledFromChild : function(component, event, helper)
    {
        var childCmp = component.find("child");
        console.log("method called from child"+''+childCmp.get("v.dataFromParent"));
    }
})