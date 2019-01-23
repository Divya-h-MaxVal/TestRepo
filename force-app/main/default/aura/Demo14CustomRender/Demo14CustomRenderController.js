({
	handleClick : function(component, event, helper) {
        
        component.set("v.val","Updated Value");
        
		
	},
    
    doInit : function(component,event,helper)
    {
        console.log("doInit called");
    },
    
    onRender : function(component,event,helper)
    {
        console.log("onrender called");
    },
    
    destroyIt : function(component,event,helper)
    {
        component.find("unrenderEx").destroy();
    }
})