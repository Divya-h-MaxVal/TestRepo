public with sharing class CampingListController {
    
    @AuraEnabled
    public static List<Camping_item__c> getItems()
    {
        String[] fieldsToCheck =new String[]{
            'Name', 'id','Price__c','Quantity__c','Packed__c'
        };
            
            Map<String,Schema.SObjectField> fieldDescribeTokens  = Schema.SObjectType.Camping_item__c.fields.getMap();
        for(String s : fieldsToCheck)
        {
            if(!fieldDescribeTokens.get(s).getDescribe().isAccessible())
            {
                throw new System.NoAccessException();
            }
        }
         
        return [SELECT id, Name,Price__c,Quantity__c,Packed__c from Camping_item__c];
    }
    
    @AuraEnabled
    public static Camping_item__c saveItem(Camping_item__c item)
    {
        upsert item;
        return item;
    }

}