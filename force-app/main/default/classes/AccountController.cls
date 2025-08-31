public with sharing class AccountController {
    
    public static List<Account> getAccounts() {
        
      return [SELECT Id, Name FROM Account LIMIT 1];
            System.debug('Query Result');
    }
}