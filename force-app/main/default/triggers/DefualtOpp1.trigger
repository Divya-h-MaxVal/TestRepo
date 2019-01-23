trigger DefualtOpp1 on Account (after insert) {
    
    List<Opportunity> ol = new List<opportunity>();
    for(Account a :Trigger.new)
    {
        Opportunity o = new Opportunity();
        o.AccountId = a.id;
        o.Name = a.Name + '-Opportunity';
        o.StageName = 'Closed Lost';
        o.CloseDate = date.newInstance(Date.today().year(), 12, 31);
        ol.add(o);
    }
    
    insert ol;

}