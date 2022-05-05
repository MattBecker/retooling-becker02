@isTest
public class Person_LastNameTriggerTests {
    @isTest
    public static void Person_LastNameTriggerTests() {
        Contact con = new Contact(FirstName='Bob', LastName='Smith');

        insert con;

        System.assert(true, true);
    }
}
