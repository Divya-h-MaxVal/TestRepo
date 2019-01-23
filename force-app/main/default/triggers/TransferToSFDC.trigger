trigger TransferToSFDC on Contact (before insert) {

    for(Contact trans:Trigger.new)
    {
        trans.AccountId='0017F00000Lk6Tu';
    }
    
    
    
}