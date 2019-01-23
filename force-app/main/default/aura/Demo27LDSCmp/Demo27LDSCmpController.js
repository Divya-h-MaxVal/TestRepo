({
    doInit : function(component, event, helper) {
        component.find("contactRecordCreator").getNewRecord("Contact",null,false,
                                                            $A.getCallback(function(){
                                                                var record = component.get("v.newContact");
                                                                var conError = component.get("v.newContactError");
                                                                
                                                                if(conError || (record === null))
                                                                {
                                                                    console.log("error");
                                                                }
                                                                
                                                                else
                                                                {
                                                                    console.log("record initialised"+record.apiName);
                                                                }
                                                            }));
    },
    
    
    createContact : function(component, event, helper){
        component.set("v.simpleNewContact.AccountId",component.get("v.recordId"));
        component.find("contactRecordCreator").saveRecord(function(saveResult){
            if(saveResult.state=== 'SUCCESS' || saveResult.state=== 'DRAFT'){
                var toastEvent = $A.get("e.force:showToast");
                toastEvent.setParams({
                    "title": "Success!",
                    "message": "The record has been updated successfully."
                });
                $A.get("e.force:closeQuickAction").fire();
                toastEvent.fire();
                $A.get("e.force:refreshView").fire();
            }
        });
    },
    
    cancel : function(component, event, helper){
        $A.get("e.force:closeQuickAction").fire();
    } 
})