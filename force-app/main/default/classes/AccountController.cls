public with sharing class AccountController {
    
    public static void getAccounts() {
        for (Integer i = 0; i < 5; i++) {
            List<Account> accs = [SELECT Id, Name FROM Account LIMIT 1];
            System.debug('Query Result: ' + accs);
        }
    }
}