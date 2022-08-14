public class DmlDemo2 {
public static void dmlUpdateDemo_3() {
        account acc = [select id, name, site from account WHERE name LIKE 'Soft%' limit 1];

    acc.Name = 'Soft Innovas Inc';
    update acc;
    system.debug('acc= ' + acc);

    }
public static void dmInsertRelatedDemo_1() {
        account acc = [select id, name from account where name LIKE '%Dickenson%' limit 1];
        contact c =new contact();
        c.LastName='Young';
        c.AccountId = acc.Id;
        insert c;        
    }
public static void dmInsertRelatedDemo_2(){
        Salesforce_Project__c sp = [select id,name from Salesforce_Project__c order by CreatedDate DESC limit 1];
        Salesforce_Ticket__c st = new Salesforce_Ticket__c();
        st.Subject__c='Learn DML in Apex';
        st.Priority__c='High';
        st.Status__c='New';
        st.Requested_by_date__c= date.newInstance(2022, 7, 31);
        st.Salesforce_Project__c=sp.Id;

        insert st;
        system.debug('st = ' + st);
    }
public static void dmlInsertMultipleRecord_right1(){
        List<Account> listAcc= new List<Account>();
        account a1 = new account();
        a1.name='bulk acc 1';
        listAcc.add(a1);

        account a2 = new account();
        a2.name='bulk acc 2';
        listAcc.add(a2);

        account a3 = new account();
        a3.name='bulk acc 3';
        listAcc.add(a3);

        account a4 = new account();
        a4.name='bulk acc 4';
        listAcc.add(a4);

        insert listAcc; 


    }

public static void dmlInsertMultipleRecord_right2(){
        List<Account> listAccount= new List<Account>();

        for(integer i=0; i<200; i++){
            account acc = new account();
            acc.name = 'SoftInnovas 29July v' +i;
            acc.AccountNumber = 'Accis -' + i;
            acc.Active__c = 'Yes';
            listAccount.add(acc);
        }

        system.debug('Size of list: ' + listAccount.size());
        if(!listAccount.isEmpty()){
            insert listAccount; 
        }

    }
}
