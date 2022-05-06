@isTest
public with sharing class PersonTriggerHandlerTests {
    @isTest
    public static void handleLastName() {
        PersonTriggerHandler handler = new PersonTriggerHandler();
        Contact con = new Contact(FirstName='bob', LastName='smith');

        List<Contact> triggerNew = new List<Contact> {con};
        handler.handle(new List<Contact>(), triggerNew, TriggerOperation.BEFORE_INSERT);
       
        System.assertEquals(triggerNew[0].LastName_Resolved__c, 'Smith', 'Last name');
    }
}
