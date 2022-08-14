public class Calculator2 {
    public static string printAndReturnMessage(string msg){
        system.debug('in the method');
        string respond = msg + '...OK Cool';
        return respond;
    }

    public static integer add(integer num1, integer num2){
        integer sum = num1 + num2;
        return sum;
    }   
    //We can use same parameter names and same method names in same class. 
    //BUT methods must have either different number of parameters or different data types so it can differentiate. 
    public static integer add(integer num1, integer num2,integer num3){
        integer sum = num1 + num2 + num3;
        return sum;
    }  
}

