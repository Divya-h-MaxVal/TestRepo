@RestResource(urlMapping='/NoodleSoup/*')
global with sharing class RestExample {
    
    @HttpPost
    global static string PostMethod(String AName,String Descr)
    {
        Account a = new account();
        a.Name =  AName;
        a.Description = Descr;
        insert a;
        Account check = [select id,name,description from account where id=:a.id];
       
                
        return a.id;
        
        
    }
    
   

}