public with sharing class StoreBillController {
    
    @AuraEnabled
    public static List<wrapperOptions> fetchOptions(){
        List<wrapperOptions> returnList = new List<wrapperOptions>();
        List<ProductNew__c> pList = [SELECT id,Name from ProductNew__c];
        for(ProductNew__c p : pList){
            wrapperOptions wo = new wrapperOptions();
            wo.label = p.Name;
            wo.value = p.Id;
            returnList.add(wo);
        }
        return returnList;
    }
    
    @AuraEnabled
    public static void saveToDatabase(Store__c[] s){
        system.debug('record to be saved is'+s);
        insert s;
    }
    
    @AuraEnabled
    public static Store__c newStore(){
        return (Store__c)Store__c.sObjectType.newSObject(null, true);
    }
    
    public class wrapperOptions{
        @AuraEnabled
        public string label{get;set;}
        @AuraEnabled
        public String value{get;set;}
    }
    
}