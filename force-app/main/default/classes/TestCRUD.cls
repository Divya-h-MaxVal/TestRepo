public with sharing class TestCRUD {
    
    public static Camping_item__c doStuff(String name, Double quan){
        Camping_item__c cmp = new Camping_item__c();
        cmp.Name = name;
        cmp.Quantity__c = quan;
        cmp.Price__c = 100;
        Schema.DescribeSObjectResult drSObj = Schema.sObjectType.Camping_item__c;
        if(drSObj.isCreateable() && drSObj.isUpdateable() && drSObj.isAccessible()){
            Database.SaveResult dres = Database.insert(cmp, false);
        
        if(dres.isSuccess())
        {
            system.debug('It is successsful');
        }
        
        else{
            for(Database.Error err : dres.getErrors()){
                system.debug(err.getMessage());
                system.debug('Fields that caused the error'+err.getFields());
            }
        }
        }
        
        return cmp;
    }

}