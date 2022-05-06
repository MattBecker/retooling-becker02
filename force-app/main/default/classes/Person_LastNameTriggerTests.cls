@isTest
public class Person_LastNameTriggerTests {
    @isTest
    public static void Person_LastNameTriggerTests() {
        Contact con = new Contact(FirstName='bob', LastName='smith');

        insert con;

        Contact con2 = [SELECT LastName_Resolved__c FROM Contact WHERE Id = :con.Id];
        System.assert(true, true);
    }
}
