public class SetDemo {
    public static void citySet() {
        set<string> cities= new set<string>();
        cities.add('Tokyo');
        cities.add('Berlin');
        cities.add('Istanbul');
        cities.add('Delhi');
        cities.add('Mexico');
        cities.add('Istanbul');
        cities.add('Delhi');
        cities.add('Berlin');
        cities.add('Mexico');

        system.debug('List of some cities: ' + cities);
        
    }
    public static set<integer> setFromList(list<integer> intList){
        set<integer> intSet= new set<integer>();
        intSet.addAll(intList);
        return intSet;
    }
    
}
