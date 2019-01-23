global class batchExample implements Database.batchable<Account>{ 
   global Iterable<Account> start(Database.batchableContext info){ 
       return new example(); 
   }     
   global void execute(Database.batchableContext info, List<Account> scope){ 
       List<Account> accsToUpdate = new List<Account>(); 
       for(Account a : scope){ 
           a.Name = 'trying_iterable'; 
           a.Type = 'Prospect';
           a.Industry='Chemicals';
           accsToUpdate.add(a); 
       } 
       update accsToUpdate; 
   }     
   global void finish(Database.batchableContext info){     
   } 
}