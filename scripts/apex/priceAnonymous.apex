Price bp = new Price();
decimal total1= bp.bookPrice('Apex', 25.00, 2);
system.debug('2 apex books price is: ' + total1);
decimal total2= bp.bookPrice('Noval', 7.00, 4);
system.debug('4 noval books price is: ' + total2);