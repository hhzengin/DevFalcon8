public class SOQL_Assignmenment {
    public static void soql_WhereClause() {
        list<Contact> lstcontact = [select id, lastname from Contact WHERE lastname LIKE '%A%' ];
        system.debug('All contact lastnames that contains A: ' + lstcontact);
        system.debug('Size of the list: ' + lstcontact.size());
    }
    public static void soql_formethod(){
        list<Contact> lstcontact = [select name, lastname, phone from Contact ];
        for (contact eachContact : lstcontact){
            system.debug('Contact last name is: ' + eachContact.LastName + ' , contact phone number is: ' + eachContact.Phone);
        }
    }
    public static void averageAggregate1(){
        list<AggregateResult> avgEmployee = [SELECT AVG(NumberofEmployees) FROM Account];
        system.debug('Average number of employees in account is:  ' + avgEmployee);
    }
    public static void averageAggregate2(){
        list<AggregateResult> avgEmployeeByInds = [SELECT Industry, AVG(NumberofEmployees) FROM Account GROUP BY Industry];
        system.debug('Average number of employees in account groupped by Industry is:  ' + avgEmployeeByInds);
    }
    public static void Aggregate3(){
        list<AggregateResult> maxEmployee = [SELECT MAX(NumberofEmployees) FROM Account GROUP BY Industry];
        for(AggregateResult eachEmployee : maxEmployee){
        system.debug('MAX number of employees:  ' + eachEmployee);
        }
    }
    public static void accountsFromContacts(){
        List<Contact> lstContact = [SELECT id, Name, Account.Name FROM Contact]; 
        for(contact eachcontact: lstContact){
            system.debug('Account ID: ' +eachcontact.Account.Id + ' , account name: ' + eachcontact.Account.Name ); 
        }
    }
    public static void contactsFromAccount(){
        List<Account> listAccount = [SELECT ID, Name, (SELECT ID, Name FROM Contacts) FROM Account]; 
        for(account eachAccount: listAccount){
            for(contact eachContact: eachAccount.Contacts){
                system.debug('Contact ID: ' + eachContact.Id + ' , Contact name: ' + eachContact.Name);
            }
        }
    }
}
