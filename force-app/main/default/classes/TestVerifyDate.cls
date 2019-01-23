@isTest

private class TestVerifyDate {

   static testMethod void CheckDatesTest()
   {
       Date d1 = date.newInstance(2015, 01, 01);
       Date d2 = date.newInstance(2015, 01, 31);
       Date d = VerifyDate.CheckDates(d1,d2);
       system.assertEquals(d2,d,'Not equal');
   }
    
     static testMethod void CheckDatesTestnegative()
   {
       Date d1 = date.newInstance(2015, 01, 01);
       Date d2 = date.newInstance(2015, 01, 21);
       Date d = VerifyDate.CheckDates(d1,d2);
       system.assertNotEquals(d2,d,'Not equal');
       
   }
    
   /* static testMethod void DateWithin30DaysTest()
    {
       Date d1 = date.newInstance(2015, 01, 01);
       Date d2 = date.newInstance(2015, 01, 31);
       Boolean b = VerifyDate.DateWithin30Days(d1,d2);
       system.assert(true,b);
    }
    
    
    static testMethod void DateWithin30DaysTestnegative()
    {
       Date da1 = date.newInstance(2015, 01, 01);
       Date da2 = date.newInstance(2015, 01, 21);
       Boolean b = VerifyDate.DateWithin30Days(da1,da2);
       system.assert(true,b);
    }
    */
    

    
    
}