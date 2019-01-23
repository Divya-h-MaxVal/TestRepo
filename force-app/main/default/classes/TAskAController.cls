public class TAskAController
    {
        public Account account{get;set;}
        public boolean editSection{get;set;}

       
        public TAskAController(ApexPages.StandardController controller) 
        {
             account =  [SELECT Name,Phone FROM Account where Name =:'DEEZU' LIMIT 1];
               
      	account = (Account)controller.getRecord();
            System.debug('account'+account.Name);
            
        } 
            
        public Account getAccount(){
            return account;
        }
        
        public PageReference EdittheSection()
        {
        editSection = true;
        return null;
        }
        
        public PageReference saveIt(){
            
            upsert account;
            editsection = false;
            return null;
        }

    }