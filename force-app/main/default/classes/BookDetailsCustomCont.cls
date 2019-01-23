public class BookDetailsCustomCont {
    
    public blob picture {get;set;}
    private final Book__c b;
    private ApexPages.StandardController std;
    
    
    public BookDetailsCustomCont(ApexPages.StandardController std)
    {
        this.b=(Book__c) std.getRecord();
        this.std = std;
    }
    
    public void save()
    {
        upsert b;
        attachment a = new attachment();
        a.body = picture;
        a.ParentId = b.id;
        
        a.Name = b.Name + 'Picture';
        a.ContentType = 'application/jpg';
        insert a;
        b.PicturePath__c = '/servlet/servlet.FileDownload?file='+a.id;
        update b;
    }
    

}