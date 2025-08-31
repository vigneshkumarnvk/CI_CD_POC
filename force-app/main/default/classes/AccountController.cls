public with sharing class AccountController {
    
    public static List<Account> getAccounts() {
        
      return [SELECT Id, Name FROM Account WITH USER_MODE LIMIT 1];
            System.debug('Query Result');
    }
}