public class ContactAndLeadSearch {
    public static List<List<SObject>> searchContactsAndLeads(String entryString) {
        List<List<SObject>> retList = [
                FIND :entryString
                IN ALL FIELDS RETURNING Contact(FirstName, LastName),
                Lead(FirstName, LastName)
        ];

        return retList;
    }
}