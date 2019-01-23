trigger DoubleBooking on Session_Speaker__c (before insert) {
     
    Map<Id,DateTime> captured_details = new Map<Id,DateTime>();
    List<id> spkid= new List<Id>();
    for(Session_Speaker__c cap:trigger.new)
    {
        captured_details.put(cap.Session__c,null);
        spkid.add(cap.Speaker__c);
    }
    
    List<Session__c> sesdet=[SELECT ID,Session_Date__c FROM Session__c 
                             WHERE ID in:captured_details.keySet()];
    for(Session__c sess:sesdet)
    {
        captured_details.put(sess.id,sess.Session_Date__c);
    }
    
   
    
    
    List<Session_Speaker__c> ssp =[SELECT Id, Session__c,Speaker__c,Session__r.Session_date__c 
                                   FROM Session_Speaker__c WHERE Speaker__c in:spkid];
    
    for(Session_Speaker__c lee:trigger.new)
    {
        DateTime dd= captured_details.get(lee.Session__c);
        for (Session_Speaker__c gg:ssp)
        {
            if(gg.Speaker__c==lee.Speaker__c && gg.Session__r.Session_Date__c==dd)
            {
                lee.addError('already booked');
            }
        }
    }
    
    

}