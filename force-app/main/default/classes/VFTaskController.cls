global with sharing class VFTaskController {
    
    public boolean editAcc{get;set;}
    public static Account a	{get;set;}
    public VFTaskController(){
        
    }
    
   /* public PageReference EditAcc()
    {
        editAcc = true;
        return null;
    } */
    
    @RemoteAction
    global static Account getAccount(){
        Account a = [SELECT Name,Type from Account LIMIT 1];
        if(a!=null){
            return a;
        }
        else
        {
            return null;
        }
    }

}