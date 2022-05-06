trigger Person_LastNameTrigger on Contact (before insert, before update) {
    new PersonTriggerHandler().Handle(Trigger.old, Trigger.new, Trigger.operationType);
}