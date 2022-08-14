DateTimeMethodsDemo4 dtm = new DateTimeMethodsDemo4();
date d= date.today();
boolean lpCheck = dtm.leapYearCheck(d);
system.debug('Today date leap year check= ' + lpCheck);
date d2 = date.newInstance(2024, 3, 4);
boolean lpCheck2=dtm.lpYearCheck(d2);
system.debug('Is 3/4/2024 a leap year?: ' + lpCheck2);