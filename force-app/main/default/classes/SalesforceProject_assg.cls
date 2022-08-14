public class SalesforceProject_assg {
    public static void salesforceProjectInsert() {
        Salesforce_Project__c sp = new Salesforce_Project__c();
        sp.Project_Name__c = 'Test Task';
        insert sp; 
        system.debug('Inserted new project name: ' + sp);
    }
    public static void salesforceProjectUpdate(){
        Salesforce_Project__c updateRecord = [SELECT Project_Name__c FROM Salesforce_Project__c WHERE Project_Name__c='Test Task' LIMIT 1];
        updateRecord.Project_Name__c= 'Testing Task';
        update updateRecord; 
        system.debug('Updated the project name to: ' + updateRecord);

    }
}
