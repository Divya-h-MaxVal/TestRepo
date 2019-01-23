public class AddPrimaryContact implements Queueable{

    private Contact c1 = new Contact();
    private String s1;
    public AddPrimaryContact(Contact c, String s)
    {
        this.c1 = c;
        this.s1 = s;
    }
    
    public void execute(QueueableContext context)
    {
        List<Contact> cl = new List<Contact>();
        List<Account> l =[SELECT id,Name from Account where BillingState=:s1 LIMIT 200];
        for(Account a :l)
        {
            Contact con = c1.Clone(False,false,false,false);
            con.AccountId = a.id;
            //c1.AccountId = a.id;
            cl.add(con);
            
        }
        insert cl;
        
    }
}