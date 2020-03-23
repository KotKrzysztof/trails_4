@isTest
public class TestRestrictContactByName {
	@isTest
    public static void unitTest() {
        Account a = new Account(Name = 'New Account');
        insert a;
        
        Contact c = new Contact(Account = a, FirstName = 'INVALIDNAME', LastName = 'INVALIDNAME');
        insert c;
    }
}