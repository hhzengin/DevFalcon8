public class Car {
    public string carColor = '';
    //if we do not type access modifier, by default it is PRIVATE.
    public string carName='';

    integer maxSpeedKmPerHr = 150;

    public void switchOn(){
        system.debug('Starting the car');
    } 
    public void drive(){
        system.debug('Drivig' + carName);
    }
    public void driveAtMaxSpeed(){
        string drivingDescription = 'driving' + carName + 'at' + maxSpeedKmPerHr + 'km/h';
        system.debug(drivingDescription); 
    }

       
}
