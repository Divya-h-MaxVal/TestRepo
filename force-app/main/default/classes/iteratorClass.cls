global class iteratorClass 
   implements Iterator<Account>{ 

   List<Account> accs {get; set;} 
   Integer j {get; set;} 

   public iteratorClass(){ 
       accs = 
       [SELECT Id, Name, 
       NumberOfEmployees 
       FROM Account 
       WHERE Name = 'true']; 
       j = 0; 
   }   

   global boolean hasNext(){ 
       if(j >= accs.size()) {
           return false; 
       } else {
           return true; 
       }
   }    

   global Account next(){ 
       // 8 is an arbitrary 
       // constant in this example
       // that represents the 
       // maximum size of the list.
       if(j == 8){return null;} 
       j++; 
       return accs[j-1]; 
   } 
}