trigger salesforceProjectTrigger on Salesforce_Project__c (before insert, before update, after insert, after update) {
    if(trigger.isAfter && trigger.isInsert){
        SalesforceProjectHandler.createDefaultSalesforceTicket(Trigger.New);
    }

    if(trigger.isBefore && trigger.isUpdate){
        SalesforceProjectHandler.validateProjectCompletion(Trigger.New, Trigger.NewMap, Trigger.OldMap);
    }

}