public class SoqlDemo {
    public static void accountSOQL_1() {
        List<Account> accountList = [Select Id, Name, Active__c from Account WHERE Name LIKE '%A%'];
        system.debug('Account List = ' + accountList); 
        system.debug('Size of List = ' + accountList.size()); 

        //If we fetch only 1 record, we can store it in 'Account' instead of list<account>
        Account acc= [Select name, createdDate from account order by CreatedDate Desc Limit 1];
        system.debug('Last created record: ' + acc);

    }
    public static void accountSOQL_2(){
        Account acc = [Select id, name, phone, AccountNumber from account order by CreatedDate Desc Limit 1];
        system.debug('Last created record=' + acc);

        string accountName = acc.Name;
        string accountPhone = acc.Phone;
        system.debug('Account name is ' + acc.Name + ' phone is ' + acc.Phone);
        system.debug('Account number is= ' + acc.AccountNumber);
    }    
    public static void accountSOQL_3(){
        List<Account> listAcc = [Select name, phone, accountNumber from account order by CreatedDate DESC];
        for (Account eachAccount : listAcc) {
            string accountName = eachAccount.Name;
            string accountPhone = eachAccount.Phone;
            system.debug('Account name is ' + accountName + ' phone is ' + accountPhone);
            system.debug('Account number is= ' + eachAccount.AccountNumber);            
        }        
    }

    public static void accountSOQL_Filter(string accNameFilter){
        List<Account> listAcc = [select name, phone from account where name =: accNameFilter];
        system.debug('Filtered accounts are ' + listAcc); 
    }
}
