public class QuickMailController {
    
    @AuraEnabled
    public static void sendMail(string to, string subject, string body)
    {
        List<Messaging.SingleEmailMessage> mails = new List<Messaging.SingleEmailMessage>();
        
        Messaging.SingleEmailMessage mail = new  Messaging.SingleEmailMessage();
        
        List<String> sendTo = new List<String>();
        sendTo.add(to);
        mail.setToAddresses(sendTo);
        mail.setSubject(subject);
      mail.setHtmlBody(body);
         mail.setSenderDisplayName('salesforce User'); 
    
        mails.add(mail);
        Messaging.sendEmail(mails);
        
        
        
    }

}