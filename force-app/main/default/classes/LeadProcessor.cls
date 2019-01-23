global class LeadProcessor implements Database.Batchable<Sobject> {
    
    //List<Lead> leadList = new List<Lead>();
    global Database.QueryLocator start(Database.BatchableContext bc)
    {
        return Database.getQueryLocator([Select LeadSource From Lead ]);
    }
    
    global void execute(Database.BatchableContext bc,List<Lead> scope)
    {
        
        for(Lead lds : scope)
        {
            lds.LeadSource = 'Dreamforce';
            //leadList.add(lds);
        }
        update scope;
    }
    
    global void finish(Database.BatchableContext bc)
    {
        //system.debug('Updated Lead'+leadList);
    }

}