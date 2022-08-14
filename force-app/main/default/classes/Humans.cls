public class Humans {
    public string FullName(string firstname , string lastname){
        string FullName='';
        string turnUpper= (firstname+lastname).toUpperCase();
        return turnUpper;
    }

    public integer age(date birthdate){
        integer a=0;
        date today= date.today();
        integer daysAge=birthdate.daysBetween(today);
        a= integer.valueOf(daysAge/365);
        return a;
    }

    
}
