@isTest
public class DmlDemoTest {
    @isTest
    private static void testInsertDml1() {
        //call method
        DmlDemo.dmlInsertDemo_stnObj();
        //how to verify if this method created a record or not?
        //assert
        list<Account> checkAcc = [SELECT id, name from Account];
        system.assertEquals(1, checkAcc.size());
        system.assertEquals('Apex', checkAcc[0].Name);

    }
}
