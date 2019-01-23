public with sharing class SubmitController {
    Question_Bank__c q1=new Question_Bank__c();
  List<Question_Bank__c> correctans=[SELECT Correct_Answer__c FROM Question_Bank__c];
   
    integer i=0;
    public integer counter {get;set;}
    public ApexPages.StandardSetController stdCntrlr {get; set;}
   // public ApexPages.StandardSetController stdCntrlr1 {get; set;}

        public SubmitController(ApexPages.StandardSetController controller) {
            
                                stdCntrlr = controller;
                                counter=0;
                             }
   
        
        
    public void answers(){
                          counter=0;      
                List<Question_Bank__c> enteredans=[SELECT Answer__c FROM Question_Bank__c];
                List<Question_Bank__c> id1=[SELECT id From Question_Bank__c];                 
                for(i=0;i<correctans.size();i++)
                {
                     if(enteredans[i].Answer__c==correctans[i].Correct_Answer__c)
                         {
                            counter++;
                            }
            
                 }
                                 for(i=0;i<correctans.size();i++)
                                 {
                                  id1[i].Answer__c='Option 1';
                                     update id1[i]; 
                                 }
                                
                                
       //   PageReference pageRef = new PageReference('https://zoobnoob-dev-ed--c.ap5.visual.force.com/apex/question_page');
      //  pageRef.setRedirect(true);
      //  return pageRef;
                     }
                    
    

       
       
    }