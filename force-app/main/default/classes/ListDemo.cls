public class ListDemo {
    public static string candidatesList(integer i) {
        //data type     //variable name   = new List<datatype>();
        List<string>  listCandidates =    new List<String>(); 
        listCandidates.add('Jane');
        listCandidates.add('Marc');
        listCandidates.add('John');
        listCandidates.add('Jack');
        system.debug('Candidates are' + listCandidates);
        //getting size of list
        integer sizeOfList = listCandidates.size();
        //defining return string variable. 
        string returnString='';
        //if index number<size of list
        if(i<sizeOfList){
            returnString=listCandidates[i];
        }else{
            returnString='No values found.Stay in limits.';
        }
        return returnString; 
    }

    public static void randomIntegerList(){
        List<Integer> integerList=new list<integer>();
        integerList.add(14);
        integerList.add(19);
        integerList.add(89);
        integerList.add(19);
        integerList.add(19);
        system.debug('List of some random integers: ' + integerList);

        Integer valueAt3= integerList.get(3);
        //OR
        Integer valueAt3_2= integerList[3];

        system.debug('Value at index 3 is '+ valueAt3);
        system.debug('Value at index 3 is '+ valueAt3_2);
    }   
    public static void allCats(){
        //create a new list of cat.
        list<cat> cats = new list<cat>();
        Cat falconsCat = new Cat('snow','lulu');
        Cat handesCat= new Cat('mandalina','ginger');
        cats.add(falconsCat);
        cats.add(handesCat);
        cats.add(falconsCat);
        system.debug('All cats =' + cats);

        //get cat at index=2,f cats list is not empty.
        if(!cats.isEmpty()){
            cat catAt2 = cats[2];
            system.debug('Cat at 2 is' + catAt2);
        }
    }   
}
