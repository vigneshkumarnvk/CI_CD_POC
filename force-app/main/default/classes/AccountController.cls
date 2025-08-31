public with sharing class AccountController {
    
    public static List<Account> getAccounts() {
        System.debug('Query Result');
      return [SELECT Id, Name FROM Account WITH USER_MODE LIMIT 1];
            
    }
}