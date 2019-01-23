trigger ProductQuantityUpdateTrigger on Store__c (before insert,after update) {
    
    /* Cases : Check for initial change : quantity - entered quntity
     Check for update : minus from old value and entered value and add to the quantity left 
     Errors : if entered quantity is more than auantity defined
     if quantity left is 0 or less than that*/
    
    if(trigger.isInsert){
       List<ProductNew__c> pListToUpdate = new List<ProductNew__c>();
        
        for(Store__c s : trigger.new){
            List<ProductNew__c> pList = [SELECT Name,Quantity__c,Quantity_Left__c from ProductNew__C where id=:s.ProductNew__c];
            system.debug(pList);
            for(ProductNew__c p :pList){
                if(s.Quantity_Purchased__c>p.Quantity__c){s.Quantity_Purchased__c.addError('Only'+p.Quantity__c+'available');}
                if(s.Quantity_Purchased__c == 0){s.Quantity_Purchased__c.addError('Enter the quantity required');}
                if(p.Quantity__c == 0)
                 p.Quantity_Left__c = p.Quantity__c - s.Quantity_Purchased__c; 
                else{
                p.Quantity_Left__c = p.Quantity_Left__c - s.Quantity_Purchased__c;
                }
                p.Store__c = s.id;
                pListToUpdate.add(p);
            }
        }
        system.debug('upd list'+pListToUpdate);
        upsert pListToUpdate;
        
    }
    
    if(trigger.isUpdate){
        double diff;
        List<ProductNew__c> pListToUpdate2 = new List<ProductNew__c>();
        for(Store__c s1 : Trigger.new){
            
            Store__c oldRecord = trigger.oldMap.get(s1.id);
            system.debug('old record is'+oldRecord);
            diff = s1.Quantity_Purchased__c - oldRecord.Quantity_Purchased__c;
            system.debug('diff is'+diff);
            ProductNew__c p = [select id,name,Quantity__c,Quantity_Left__c from ProductNew__c where id=:s1.ProductNew__c LIMIT 1];
            system.debug('p is'+p);
            /*Store__c sNew = new Store__c();
            sNew.ProductNew__c = s1.Id;
            sNew.ProductNew__r.Quantity__c= s1.ProductNew__r.Quantity__c;
            sNew.ProductNew__r.Quantity_Left__c = oldRecord.ProductNew__r.Quantity_Left__c - (diff); */
           	p.Quantity_Left__c = p.Quantity_Left__c - (diff);
           	pListToUpdate2.add(p);
            
        }
        
       upsert pListToUpdate2;
        
        
    }
}