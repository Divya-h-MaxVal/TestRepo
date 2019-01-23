public class CheckDuplicate {
    
    public static void DuplicateCheck()
    {
        Set<String> fname = new Set<String>();
        Set<String> lname = new Set<String>();
        //Set<ID> fname = new Set<ID>();
        Set<String> mail = new Set<String>();
        
        List<Contact> c = [SELECT id, FirstName,LastName,Email from Contact];
        For(Contact con : c)
        {
            fname.add(con.FirstName);
            lname.add(con.LastName);
            mail.add(con.Email);
        }
        
        
            List<Contact> updt = [select id,DuplicateContact__c from contact where LastName IN : fname AND LastName IN : lname AND Email IN : mail];
        	system.debug('updt is'+updt);
        
        if(updt.size()>0)
        {
            for(contact h : updt)
            {
                h.DuplicateContact__c = true;
            }
            
            update updt;
        }
        
        
        
    }

}