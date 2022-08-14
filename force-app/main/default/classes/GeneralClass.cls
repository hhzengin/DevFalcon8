public class GeneralClass {
    public void createStudents(){
        StudentDetails studentobj = new StudentDetails();
        studentobj.name='Hande';
        studentobj.birthDate=date.newInstance(1985, 11, 4);
        studentobj.schoolName='Robert G.Cole MS'; 
        system.debug(studentobj); 

        StudentDetails studentobj2 = new StudentDetails();
        studentobj2.name='Merve';
        studentobj2.birthDate=date.newInstance(2012, 12, 1);
        studentobj2.schoolName='Wilderness Oak'; 
        system.debug(studentobj2);
    }
    public void justPrintAnything(){
        integer i=5+5+5+5+9;
        system.debug(i);
    }
}
