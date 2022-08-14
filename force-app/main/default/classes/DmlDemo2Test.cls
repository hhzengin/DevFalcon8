@isTest
public class DmlDemo2Test {
    @isTest
    private static void dmlInsertRelatedTest() {
        //prepare DATA 
        Account acc= new Account();
        acc.Name = 'Dickenson';
        insert acc;

        DmlDemo2.dmInsertRelatedDemo_1();

        List<Contact> cont = [select id, accountId, name from contact];
        system.assertEquals(acc.id, cont[0].accountId);
    }
}
