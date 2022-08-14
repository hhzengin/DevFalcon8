public class Collections {
    public static string listAssignment(integer i) {
        list<string> lstMonth= new list<string>();
        lstMonth.add('January');
        lstMonth.add('February');
        lstMonth.add('March');
        lstMonth.add('April');
        lstMonth.add('May');
        lstMonth.add('June');
        lstMonth.add('January');
        lstMonth.add('July');
        lstMonth.add('August');
        lstMonth.add('September');
        lstMonth.add('October');
        lstMonth.add('November');
        lstMonth.add('December');

        integer allMonths=lstMonth.size();
        string output_Month='';

        if(i>0 && i<allMonths){
            output_Month= lstMonth[i-1];
        }else{
            output_Month='Not a valid month.';
        }
        return output_Month;          
    }
}
