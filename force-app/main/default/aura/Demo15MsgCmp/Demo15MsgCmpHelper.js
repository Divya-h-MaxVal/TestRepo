({
 showMessageHelper : function(component,event,severity) {
  var messages = event.getParam("arguments");
        var displayMessage = '';
        if(messages) {
            displayMessage = messages.message;
        }
        var messagePanel = component.find("messages");
        $A.createComponents([
            ["ui:message",{'title':severity.toUpperCase(),'severity':severity,'closable':true}],
            ["ui:outputText",{'value':displayMessage}]    
        ],function(components,status,statusMessagesList){
            if(status==='SUCCESS') {
                var uiMessage = components[0];
                var uiOutput = components[1];
                uiMessage.set("v.body",uiOutput);
                messagePanel.set("v.body",uiMessage);
            }
        });
 },
    
    removeMessageHelper : function(component)
    {
        component.find("messages").set("v.body",[]);
    }
})