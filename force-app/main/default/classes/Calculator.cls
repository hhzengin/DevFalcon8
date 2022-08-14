public class Calculator {
    public void printNewMessage(string msg){
        //msg is a variable. msg is dynamic. 
        //used ONLY inside the method. 
        system.debug(msg);
    }

    public integer add(integer a, integer b){
        integer sum = a + b;
        return sum;
    }

    public decimal average(integer i,integer j){
        //integer summation= add(i, j);
        decimal avg= add(i,j)/2;
        return avg; 
    }
}
