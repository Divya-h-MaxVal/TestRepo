trigger try_trigger on Event (After Insert) {
Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage(); 

List <Contact> Con= [select id, name from Contact where name ='zuba divya' LIMIT 1]; 

mail.setTargetObjectId(Con[0].id); 

mail.setSenderDisplayName('Salesforce Support'); 

mail.setUseSignature(false); 

mail.setBccSender(false); 

mail.setSaveAsActivity(false); 

EmailTemplate et=[Select id from EmailTemplate where Name='ICS_try1']; 

mail.setTemplateId(et.id); 


Messaging.SendEmailResult [] r = Messaging.sendEmail(new Messaging.SingleEmailMessage[] { mail });


}