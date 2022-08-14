public class DateTime_Assignment {
    public void diffOfDate(){
        Date varTomorrowDate = date.newInstance(2022, 7, 15);
        Date varTodaysDate = date.newInstance(2022, 7, 14);
        Integer daysBetween = varTodaysDate.daysBetween(varTomorrowDate);
        system.debug('Days between today and tomorrow is= ' + daysBetween);
    }
    public void timeCheck(){
        Datetime varTomorrowDateTime = Datetime.newInstance(2022, 7, 14, 7, 00, 00);
        Datetime var10DaysDateTime = Datetime.newInstance(2022, 7, 24, 9, 00, 00);
        Long varDateTimeLong = 12339874361L;
        Datetime addedDays1 = varTomorrowDateTime.addDays(7);
        system.debug('7 days added on tomorrow\'s date= ' + addedDays1);
        Datetime addedDays2 = var10DaysDateTime.addDays(10);
        system.debug('10 days added on 10 days from today= ' + addedDays2);
    }
}
