({
	callServer : function(component, event, helper) {
        
        var action = component.get("c.pingServer");
        action.setCallback(this,function(response){
            var state=response.getState();
            if(state === 'SUCCESS')
            {
                component.set("v.data",response.getReturnValue());
                console.log(response.getReturnValue());
            }
        });
        
        $A.enqueueAction(action);
		
	},
    
    doInit : function(component, event, helper) {
		console.log("init event called for"+component.getName());
	},
     
    onRender : function(component, event, helper) {
		console.log("render event called for"+component.getName());
	},
    
    update : function (component, event, helper) {
        // Get the new hash from the event
        var loc = event.getParam("token");
        console.log('loc is'+loc);
    },
    hideSpinner : function (component, event, helper) {
        var spinner = component.find('mySpinner');
        $A.util.toggleClass(spinner, "slds-hide");
                
    },
    
    showSpinner : function (component, event, helper) {
        var spinner = component.find('mySpinner');
        $A.util.toggleClass(spinner, "slds-hide");          
    },
})