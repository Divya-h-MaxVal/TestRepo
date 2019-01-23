({
    doInit:function(component, event, helper) {
        component.set("v.addres",'');
        var la = component.find("buttn").get("v.label");
        alert('init---'+la);
        
        var action = component.get("c.fetchAddress");
        action.setParams({'key':la});
        action.setCallback(this,function(response){
            var state = response.getState();
            if(state === 'SUCCESS'){
                
                component.set("v.address",response.getReturnValue());
            }
            else{alert('eeAAeeAA');}
        });
        $A.enqueueAction(action);  
        
        
        var lab = component.find("buttn2").get("v.label");
        alert('init---'+la);
        
        var action1 = component.get("c.fetchAddress");
        action1.setParams({'key':lab});
        action1.setCallback(this,function(response){
            var state = response.getState();
            if(state === 'SUCCESS'){
                
                component.set("v.address1",response.getReturnValue());
            }
            else{alert('eeAAeeAA');}
        });
        $A.enqueueAction(action1);
        
    },
    
    
    handleClick : function(component, event, helper) {
        var urlEvent = $A.get("e.force:navigateToURL");
        var a = component.get("v.address");
        urlEvent.setParams({
            "url": a
        });
        urlEvent.fire();
    },
    
    handleClick2 : function(component, event, helper) {
        var urlEvent = $A.get("e.force:navigateToURL");
        var ad = component.get("v.address1");
        urlEvent.setParams({
            "url": ad
        });
        urlEvent.fire();
    },
    
    
    
})