({
    
    doInit : function(component,event,helper){
      var a = document.getElementById('link').textContext;
        alert(a);
    },
    
	handleClick2 : function(component, event, helper) {
        var l = document.getElementById('link').innerHTML;
        var actions = component.get("c.fetchAddress");
        actions.setParams({'key':l});
        actions.setCallback(this,function(response){
            var state = response.getState();
            if(state === 'SUCCESS'){
                alert(response.getReturnValue());
                component.set("v.address",response.getReturnValue());
            }
            else{alert('eeAAeeAA');}
        });
        $A.enqueueAction(actions);
        var urlEvent = $A.get("e.force:navigateToURL");
        var a = component.get("v.address");
        urlEvent.setParams({
            "url": a
        });
        urlEvent.fire();
    }
 
})