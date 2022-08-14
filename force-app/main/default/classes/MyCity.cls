public class MyCity {
    public string cityInformation() {
        string name = 'San Antonio';
        string state= 'Texas';
        string combine = name + '+' + state;
        return combine; 
    }
    public void stringMethod(){
        string dev = 'I am a salesforce developer.';
        system.debug('Cumle:' + dev);
        boolean containsForce = dev.contains('force');
        system.debug('Cumle contains force?: ' + containsForce);
        integer lengthOfDev = dev.length();
        system.debug('Length of cumle: ' + lengthOfDev);
        string capital = dev.toUpperCase();
        system.debug('Cumle capitalized: ' + capital);
    }
    public Datetime dateMethod(){
        date dt1 = date.today();
        return dt1;
    }
    public Datetime dateMethod2(){
        Datetime nw = Datetime.now();
        Datetime nw50 = nw.addHours(50);
        return nw50;
    }
    
}
