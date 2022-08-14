public class Trigger_Map {
    public static void InsertSF_Project() {
        Salesforce_Project__c newRec = new Salesforce_Project__c();
        newRec.Project_Name__c= 'SF_Project';
        insert newRec;
        system.debug('New inserted record: ' +newRec);
    }
    public static void UpdateSF_Project() {
        Salesforce_Project__c updateProFields = [SELECT Project_Name__c FROM Salesforce_Project__c WHERE Project_Name__c='SF_Project' LIMIT 1];
        updateProFields.Project_Name__c= 'Updated name for SF_Project';
        update updateProFields; 
        system.debug('Updated project name is: ' + updateProFields);       
    }
}
