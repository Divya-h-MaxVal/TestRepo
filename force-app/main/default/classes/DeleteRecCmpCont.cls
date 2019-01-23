public with sharing class DeleteRecCmpCont{

@AuraEnabled

public static List<Contact> getContacts(){
    
    List<Contact> c =[SELECT firstName, lastName, MobilePhone,Department FROM Contact LIMIT 20];
    return c;
}
    
    @AuraEnabled
    public static List<String> deleteContacts(List<String> recordIds){
        
        List<Contact> con =[SELECT id from contact where id in:recordIds];
        
        List<String> errorMsg = new List<String>();
       	Database.DeleteResult[] dr= Database.delete(con, false);
        
        for(Database.DeleteResult d : dr)
        {
            if(d.isSuccess()){
                system.debug('successful deleted contact');
            }
            
            else
            {
                errorMsg.add('Error in deleting');
                               
                
            }
        }
        return errorMsg;
    }

}