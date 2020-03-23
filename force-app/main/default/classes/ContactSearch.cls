public class ContactSearch {
    public static List<Contact> searchForContacts (String name, String mail) {
        List<Contact> conList = [SELECT Name FROM Contact WHERE LastName =: name AND MailingPostalCode =: mail];
        return conList;
    }
}