public class ContactTriggerHandler {
    //validation rule with trigger: 
    public static void contactUpdateValidation1(List<Contact> conTriggerNew, Map<Id,contact> conTriggerNewMap,List<Contact> conTriggerOld, Map<Id,contact> conTriggerOldMap ) {
        for( contact eachCon : conTriggerNew){
            Contact oldCon = conTriggerOldMap.get(eachCon.Id);
            if(oldCon.LeadSource=='Partner Referral'){
                eachCon.addError('Cannot update partner referral contact'); //it will validate. 
            }
        }

    }
    public static void contactUpdateValidation2(List<Contact> conTriggerNew, Map<Id,contact> conTriggerNewMap,List<Contact> conTriggerOld, Map<Id,contact> conTriggerOldMap ){
        for( contact eachCon : conTriggerNew){
            Contact oldCon = conTriggerOldMap.get(eachCon.Id);
            if(eachCon.LeadSource != oldCon.LeadSource){
                eachCon.LeadSource.addError('Cannot update lead source.Please!!!'); 
    }

}

}
public static void updateAccountRollUpField(set<id>accountIds) {
    List<Account> listAcc = [SELECT id, number_of_contacts__c, (SELECT id FROM contacts ) FROM Account WHERE Id in : accountIds];
    for(Account eachAcc : listAcc){
        list<contact> accContacts = eachAcc.contacts;
        integer noOfCon = accContacts.size();
        eachAcc.number_of_contacts__c = noOfCon;
    }
    update listAcc; 

}
}