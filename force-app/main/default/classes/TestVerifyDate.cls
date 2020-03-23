@isTest
public class TestVerifyDate {
	
    @isTest
    public static void unitTest() {
        Date d1 = Date.today();
        Date d2 = Date.today();
        d2 = d2.addDays(3);
        
        VerifyDate.CheckDates(d1, d2);
        
        d2 = d2.addDays(30);
        VerifyDate.CheckDates(d1, d2);
    }
}