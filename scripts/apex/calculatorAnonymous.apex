//calc is instance of class, also called object. 
Calculator calc= new Calculator();
calc.printNewMessage('This is new age calculator.');
calc.printNewMessage('This is new age calculator. Very new.');
calc.add(5,10);
calc.add(50,100);
integer x = 25;
integer y = 54;
calc.add(x,y); //yes, this will work and debug it. 

decimal avg1=calc.average(4, 8);
integer sum=calc.add(4,8);
system.debug('Average1 = ' + avg1);
system.debug('Sum = ' + sum);

