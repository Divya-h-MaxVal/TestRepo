trigger trgTopXDesignation on Top_X_Designation__c (after insert,after update,after delete) 
{

    Map<id,Top_X_Designation__c> mapTopDesg = new Map<id,Top_X_Designation__c>();
    Map<id,Top_X_Designation__c> mapTopDesgOld = new Map<id,Top_X_Designation__c>();
    List<Opportunity> lstToUpdate = new List<Opportunity>();
    if(Trigger.isInsert || Trigger.isUpdate)
    {
    
    for(Top_X_Designation__c t : Trigger.New)
    {
        mapTopDesg.put(t.id,t);
    }
    }
    if(Trigger.isDelete)
    {
    for(Top_X_Designation__c to : Trigger.old)
    {
        mapTopDesgOld.put(to.Opportunity__c,to);
    }
    }
    System.debug('Map is :'+mapTopDesg);
    System.debug('Map old is :'+mapTopDesgOld);
    
    if(Trigger.isAfter)
    {
        if(Trigger.isInsert || Trigger.isUpdate)
        {
            List<Top_X_Designation__c> lst = [SELECT id,Opportunity__r.Handoff_Attached__c FROM Top_X_Designation__c WHERE ID IN:mapTopDesg.keyset()];
            system.debug('lst is :'+lst);
            for(Top_X_Designation__c txd : lst)
            {
                //Top_X_Designation__c
                Top_X_Designation__c desg = mapTopDesg.get(txd.id);
                Opportunity o = new Opportunity();
                o.id= desg.Opportunity__c;
                o.Discount_Percent__c = 10;
                system.debug('o is'+o);
                system.debug('desg is :'+desg);
                if(desg.Type__c == 'Contract Flow Down' || desg.Type__c == 'Handoff' && desg.Document_Attached__c == true)
                {
                    o.Handoff_Attached__c = 'Yes';
                    //lstToUpdate.add(desg);
                }
                else
                {
                    o.Handoff_Attached__c = 'No';
                }
                lstToUpdate.add(o);
            }
            if(lstToUpdate.size()>0)
            update lstToUpdate;
        }
        
        if(Trigger.isDelete)
        {
            List<Opportunity> lst = [SELECT id,Handoff_Attached__c FROM Opportunity WHERE ID IN:mapTopDesgOld.keyset()];
            system.debug('lst is'+lst);
            for(Opportunity l : lst)
            {
                l.Handoff_Attached__c = '';
                            
            }
            system.debug('lstToUpdate :'+lst);
            if(lst.size()>0)
            update lst; 
        } 
    }

}