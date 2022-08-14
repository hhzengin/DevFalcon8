Car vm = new Car();
vm.carColor = 'white';
vm.carName= 'Polo';
vm.switchOn();
vm.drive();
vm.driveAtMaxSpeed();
system.debug(vm);

Car lm = new Car();
lm.carColor = 'red';
lm.switchOn();
//lm.maxSpeedKmPerHr=100; 
system.debug(lm);


