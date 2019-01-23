({
	doInit : function(component, event, helper) {
		helper.getCont(component,event);
	},
    
    checkboxSelect : function(component,event,helper){
        
        var t = event.getSource().get("v.value");
        var selectedCount = component.get("v.count");
        if(t===true){
           selectedCount++;
        }
        else
            selectedCount--;
        component.set("v.count",selectedCount);
    },
    
    selectAll : function(component,event,helper){
        
        
    },
    
    deleteIt : function(component,event,helper){
        
    }
    
    
})