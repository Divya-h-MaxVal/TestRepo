public with sharing class ControllerExtension {

    	Speaker__c s1=new Speaker__c();
    	//public Integer counter{get;set;}
    public blob picture{get;set;}
    public string errorMessage{get;set;}
    	
            public ControllerExtension(ApexPages.StandardController stdcnt)
        {
            this.s1=(Speaker__c) stdcnt.getRecord();
          //  counter=0;
        }
    
    /*public void increment()
    {
        counter++;
    }*/
    /*public PageReference save() {
    errorMessage = '';
    try {
        upsert s1;
        if (picture != null) {
            Attachment attachment = new Attachment();
            attachment.body = picture;
            attachment.name = 'speaker_' + s1.id + '.jpg';
            attachment.parentid = s1.id;
            attachment.ContentType = 'application/jpg';
            insert attachment;
            s1.Picture_Path__c = '/servlet/servlet.FileDownload?file='
                                      + attachment.id;
            update s1;
        }
        return new ApexPages.StandardController(s1).view();
    } catch(System.Exception ex) {
        errorMessage = ex.getMessage();
        return null;
    }
}*/
    public PageReference save() {
        // Add the account to the database. 
        //insert account;
        // Send the user to the detail page for the new account.
         PageReference pageRef = new PageReference('http://www.google.com');

        pageRef.setRedirect(true);
        return pageRef;
    }

}