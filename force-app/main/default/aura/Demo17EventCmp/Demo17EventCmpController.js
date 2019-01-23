({
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
        
        if(loc != undefined)
        {
            var tabCmp = component.find("tabid");
            tabCmp.forEach(function(item,index)
                           {
                             if($A.util.hasClass(item, loc)) 
                             {
                                 $A.util.addClass(item, "slds-is-active");
                             }
                               
                               else
                               {
                                   $A.util.removeClass(item, "slds-is-active");
                               }
                           });
            
             var tabContent = component.find("tabcontentid");
            tabContent.forEach(function(item,index)
                           {
                             if($A.util.hasClass(item, loc)) 
                             {
                                 $A.util.addClass(item, "slds-show"); 
                               	$A.util.removeClass(item, "slds-hide");
                             }
                               
                               else
                               {
                                   $A.util.removeClass(item, "slds-show");
                                   $A.util.addClass(item, "slds-hide"); 
                               }
                           });
        }
    }
       
      
       
        
    
    
})