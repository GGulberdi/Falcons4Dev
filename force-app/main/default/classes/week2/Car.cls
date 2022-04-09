public with sharing class Car {
    
    public string carColor ='';
    public string carName ='';

    public static integer carsRunningAtMaxSpeed = 0;
public integer maxSpeedKMperHour=0;

    public void  switchOn() {
        Datetime switchontime = datetime.now();
        system.debug('starting time=> '+switchontime);
        system.debug('sgtarting the car');
        Integer y = 5;
        y++;
        system.debug('increment'+y);

        }

        public void drive(){
    system.debug('driving ' +carName);


}

public  void driveAtMaxSpeed(){
    string drivindDescriptiion = 'driving ' +carName + ' at '+ maxSpeedKMperHour + ' km/h';
    System.debug(drivindDescriptiion);
    carsRunningAtMaxSpeed++;
}


public static string usage (){
    string use ='Car is used to drive and ';
    use = use + ' fasion.';
    return use;
}

}
