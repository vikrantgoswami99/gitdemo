@isTest
public class TestRestrictContactByName {
    
    @isTest static void testAddContactMethod() {
        Contact c = new Contact(FirstName='Test', LastName='INVALIDNAME');
        insert c;
        
    }
    
}
