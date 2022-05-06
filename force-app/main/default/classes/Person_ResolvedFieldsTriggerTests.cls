@isTest
public class Person_ResolvedFieldsTriggerTests {
    @isTest
    public static void Insert_HappyPath_SetsFirstNameResolved() {
        Contact contactToInsert = new Contact(FirstName = 'matt', LastName = 'smith');

        insert contactToInsert;

		Contact contactUpdated = [SELECT FirstName_Resolved__c FROM Contact WHERE Id = :contactToInsert.Id];
        System.assertEquals('Matt', contactUpdated.FirstName_Resolved__c);
    }

    @isTest
    public static void Insert_FirstNameMixedCapitalization_SetsFirstNameResolved() {
        Contact contactToInsert = new Contact(FirstName = 'maTT', LastName = 'smith');

        insert contactToInsert;

		Contact contactUpdated = [SELECT FirstName_Resolved__c FROM Contact WHERE Id = :contactToInsert.Id];
        System.assertEquals('Matt', contactUpdated.FirstName_Resolved__c);
    }

    @isTest
    public static void Insert_FirstNameMultipleNames_SetsFirstNameResolved() {
        Contact contactToInsert = new Contact(FirstName = 'maTT jOHn PauL', LastName = 'smith');

        insert contactToInsert;

		Contact contactUpdated = [SELECT FirstName_Resolved__c FROM Contact WHERE Id = :contactToInsert.Id];
        System.assertEquals('Matt John Paul', contactUpdated.FirstName_Resolved__c);
    }

    @isTest
    public static void Insert_FirstNameBeginningEndingWhitespace_SetsFirstNameResolved() {
        Contact contactToInsert = new Contact(FirstName = ' matt ', LastName = 'smith');

        insert contactToInsert;

		Contact contactUpdated = [SELECT FirstName_Resolved__c FROM Contact WHERE Id = :contactToInsert.Id];
        System.assertEquals('Matt', contactUpdated.FirstName_Resolved__c);
    }
}