public class SalesforceProjectHandler {
    public static void createDefaultSalesforceTicket(list<Salesforce_Project__c> spTriggerNew) {
        //create one empty list of salesforce ticket.
        List<Salesforce_Ticket__c> newSTList = new List<Salesforce_Ticket__c>();
        //for each project create a new ticket.
        for (Salesforce_Project__c eachPro: spTriggerNew){
            //create new salesforce ticket.
            Salesforce_Ticket__c st = new Salesforce_Ticket__c();
            st.Subject__c= 'Default ST';
            ST.Salesforce_Project__c = eachPro.Id;
            newSTList.add(st);
        }
        if(!newSTList.isEmpty()){
            insert newSTList;
        }

    }
    public static void validateProjectCompletion(List<Salesforce_Project__c> spTriggerNew, map<id, Salesforce_Project__c>spTriggerNewMap,map<id, Salesforce_Project__c>spTriggerOldMap){
        set<id> setCompletedProjectIds= new set<id>();
        for(Salesforce_Project__c eachNewSP: spTriggerNew){
            //check if project's status field is marked as completed.
            //compare old status value and new status value.
            //if not same, then status field is CHANGED.
            if(spTriggerOldMap.get(eachNewSP.id).Status__c != eachNewSP.Status__c && eachNewSP.Status__c == 'Completed'){
                setCompletedProjectIds.add(eachNewSP.Id); 
            }
        }
        //get all tickets of completed project.
        List<Salesforce_Ticket__c> listSt = [SELECT id, status__c, salesforce_project__c FROM Salesforce_Ticket__c WHERE Salesforce_Project__c in: setCompletedProjectIds and (status__c != 'Completed' AND status__c != 'Cancelled')];
        //now loop each ticket if ticket found
        //then get project from newmap to add error message
        for(Salesforce_Ticket__c eachT: listSt){
            Salesforce_Project__c spNew = spTriggerNewMap.get(eachT.Salesforce_Project__c);
            spNew.addError('CANNOT COMPLETE the project. Please complete ');
        }
    }

}
