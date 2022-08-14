public class DatetimeMethodsDemo {
    public void calculateAgeInMonths(){
        Date birthdate = Date.newInstance(1985, 11, 5);
        Date todayDate = Date.today();
        integer ageInMonths = birthdate.monthsBetween(todayDate);
        system.debug('My age is in months= ' + ageInMonths);
    }

    public void calculateAgeInDays(){
        Date birthdate = Date.newInstance(1985, 11, 5);
        Date todayDate = Date.today();
        integer ageInDays = birthdate.daysBetween(todayDate);
        system.debug('My age is in days= ' + ageInDays);
    }
}
