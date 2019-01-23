public class SaveToDB {
    
    @AuraEnabled
    public static id SaveToDBMethod(Form__c f)
    {
        insert f;
        return f.id;
    }

}