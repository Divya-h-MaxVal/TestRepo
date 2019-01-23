public class WrapperClassController {
    
    @AuraEnabled
    public static WrapperClass getFromWrapper(){
        WrapperClass wr = new WrapperClass();
        wr.con = [SELECT FirstName,LastName FROM Contact LIMIT 10];
        wr.count = wr.con.size();
        wr.headerText = 'THis is just a text';
        return wr;
    }
    
    public class WrapperClass{
        @AuraEnabled public List<Contact> con {get;set;}
        @AuraEnabled public integer count{get;set;}
        @AuraEnabled public string headerText {get;set;}
    }
    
    

}