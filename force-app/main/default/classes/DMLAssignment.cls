public class DMLAssignment {
    public static void DMLAccount() {
        Account acc = new account();
        acc.Name= 'Testdata';
        insert acc;
    }
    public static void SalesforceProject(){
        Salesforce_project__c sp = new  Salesforce_project__c();
        sp.project_name__c= 'Dream job';
        sp.description__c ='Salesforce Developer';
        insert sp;
    }

}
