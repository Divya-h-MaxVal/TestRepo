trigger AccountStateTrigger on Account (before insert,before update) {
    
    for (Account acc : Trigger.new)
    {
        if(acc.Phone==null)
        {
            Acc.phone.addError('please add a phone number');
        }
        
        else
        {
            String code =  acc.phone.substring(0,3);
            if(code =='080')
            {
                Acc.State__c = 'Bengaluru';
            }
            else if (code=='040')
            {
                Acc.State__c = 'Andhra Pradesh';
            }
        }
    }
    

}