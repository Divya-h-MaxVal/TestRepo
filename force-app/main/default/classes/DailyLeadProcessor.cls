global class DailyLeadProcessor implements Schedulable {
    
    global void execute(SchedulableContext ct)
    {
        List<Lead> l = [select id,LeadSource from Lead where LeadSource=null] ;
        for(Lead ld : l)
        {
            ld.LeadSource = 'Dreamforce';
            
        }
        
        update l;
    }

}