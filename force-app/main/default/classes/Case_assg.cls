public class Case_assg {
    public static void caseInsert() {
        Case record1 = new Case();
        record1.subject= 'Testcase';
        insert record1; 
        system.debug('New case entry: ' + record1); 
    }
    public static void updateCase() {
        Case updateCase = [SELECT id, subject FROM Case WHERE subject='Testcase' LIMIT 1];
        updateCase.Subject= 'Testing case 1'; 
        update updateCase;
        system.debug('Updated testcase to: ' + updateCase); 
    }
    public static void caseDelete(){
        case deleteCase = [SELECT id, subject FROM Case WHERE subject='Testing case 1' LIMIT 1];
        delete deleteCase; 
        system.debug('Deleted case: ' + deleteCase);
    }
}
