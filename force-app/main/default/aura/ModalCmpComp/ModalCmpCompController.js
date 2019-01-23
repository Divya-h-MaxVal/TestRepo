({
	tellMore : function(component, event, helper) {
        component.set("v.openModal",true);
		
	},
    
    close : function(component,event,helper){
        component.set("v.openModal",false);
    },
    
    save : function(component,event,helper){
        alert('saved');
    }
})