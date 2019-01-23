({
	getContacts : function(component,event,sortField) {
        var action = component.get("c.fetchContacts");
        action.setParams({
            'sortField' : sortField,
            'isAsc' : component.get("v.isAsc")
        });
        
        action.setCallback(this,function(response){
            var state = response.getState();
            if(state === 'SUCCESS')
            {
                component.set("v.conList",response.getReturnValue());
                console.log(response.getReturnValue());
                
            }
        });
        $A.enqueueAction(action);
		
	},
    
    sortIt : function(component,event,sortField)
    {
        component.set("v.sortField",sortField);
        var a = component.get("v.isAsc");
        
        
        if(a) {
            component.set("v.arrowDirection",'arrowup');
            component.set("v.isAsc",true);
        }
        
        else
        {
            component.set("v.arrowDirection",'arrowdown');
            component.set("v.isAsc",false);
        }
        
        this.getContacts(component, event, sortField);
        
    },
    
        
})