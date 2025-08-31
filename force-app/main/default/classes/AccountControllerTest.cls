@isTest
public class AccountControllerTest {

    @isTest
    static void testGetAccounts() {
        // Create test data
        Account acc = new Account(Name = 'Test Account');
        insert acc;

        Test.startTest();
        List<Account> accounts = AccountController.getAccounts();
        Test.stopTest();

        // Assert result is not emptys
        System.assertNotEquals(0, accounts.size(), 'Accounts list should not be empty');
        System.assertEquals(acc.Id, accounts[0].Id, 'The queried account should match the inserted one');
    }
}
