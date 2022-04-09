system.debug('1) cars running at max speed: ' +car.carsRunningAtMaxSpeed);

Car bm= new Car();
bm.carColor = 'black';
System.debug('car color => '+bm.carColor);
bm.switchOn();

Car mm= new Car();
mm.carColor = 'red';
System.debug('car color2 => '+mm.carColor);
bm.switchOn();

Car vw= new Car();
vw.carColor = 'white';
vw.carName = 'polo';
vw.switchOn();
vw.drive();
vw.driveAtMaxSpeed();
vw.driveAtMaxSpeed();





Car lm= new Car();
lm.maxSpeedKMperHour = 200;
System.debug('maxSpeedKMperHour => '+lm.maxSpeedKMperHour);
lm.switchOn();
lm.driveAtMaxSpeed();
lm.driveAtMaxSpeed();




system.debug('2) cars running at max speed: ' +car.carsRunningAtMaxSpeed);
system.debug(car.usage());

