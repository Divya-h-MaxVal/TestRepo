public class testFuture
{
    @future
    public static void calculate()
    {
        integer a = 0;
        integer b = 20;
        
        
        if((a+b)>50)
        {
        Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
        String[] toAddresses = new String[] {'karthik.9061@gmail.com'};
        mail.setToAddresses(toAddresses);
        mail.setSubject('success!');
        mail.setPlainTextBody('greater than 50');
        Messaging.sendEmail(new Messaging.SingleEmailMessage[] { mail }); 
            system.debug(a+b);
        }
        
        else
        {
        Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
        String[] toAddresses = new String[] {'divyahegde1995@gmail.com'};
        mail.setToAddresses(toAddresses);
        mail.setSubject('Not successful');
        mail.setPlainTextBody('less than 50');
        Messaging.sendEmail(new Messaging.SingleEmailMessage[] { mail }); 
        }
       
    }
}