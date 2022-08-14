public class Loops_Assignment {
    public integer factorialValue=1;
    public integer forLoops(integer n){
        for(integer i=1;i<=n;i++){
          factorialValue=factorialValue*i;
        }
        return factorialValue;
    }
    public integer doWhile(integer n){  
        integer factorialValue=1;     
        integer h=1;
        while(h<=n){
            factorialValue=factorialValue*h;
            h++;
        }
        return factorialValue;

    }  

}
