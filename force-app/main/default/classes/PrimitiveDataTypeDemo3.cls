public class PrimitiveDataTypeDemo3{
    public void printNewDate(){
        system.debug('Create new date instance');   
        //create date below:
        Date newDate = Date.newInstance(1993,1,14);
        system.debug('New date is ' + newDate);

        Date newDate2 = Date.newInstance(2022,5,25);
        system.debug('New date2 is ' + newDate2);

        Date todayDate = Date.today();
        system.debug('Today\'s date is ' + todayDate);
    }

    public void printNewTime(){
        Time myTime = Time.newInstance(08,14,20,45);
        Time meTime = Time.newInstance(08,00,00,00);
        system.debug('myTime is  ' + myTime);
        system.debug('me Time is ' + meTime);
    }

    public void printNewDateTime(){
        Date newDate = date.today();
        Time newTime = time.newInstance(09, 09, 09, 10);

        Datetime dt1 = Datetime.newInstance(newDate, newTime);
        system.debug('Dt1 is ' + dt1);

        //2.New datetime from Y,M,D-----> time will be midnight
        Datetime DT2 = Datetime.newInstance(2000,02,22);
        system.debug('Dt2 is '+ dt2); 

        //3. Datetime using Y,M,D,H,M,S
        Datetime dt3 = Datetime.newInstance(2022, 7, 7, 8, 0, 0);
        system.debug('Dt3 is ' + dt3); 

        //4. Datetime with LONG
        long longNumber = 0L;
        Datetime dt4 = Datetime.newInstance(longNumber);
        system.debug ('Dt4: ' + dt4);

        long longNumber2 = 122456727727782882L;
        Datetime dt4_1 = Datetime.newInstance(longNumber2);
        system.debug ('Dt4_1:  ' + dt4_1);

        //6. Current Time- User's Time Zone 
        datetime dt6 = Datetime.now();
        system.debug('Dt6 is ' + dt6);      

        //7. newInstance GMT
        Datetime dt5 = Datetime.newInstanceGmt(2022, 2, 22, 2, 22, 22);
        system.debug('Dt5 is ' + dt5); 

    }
}
