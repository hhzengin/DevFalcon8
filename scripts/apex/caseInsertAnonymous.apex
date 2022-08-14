list<case> listCase = [SELECT id, subject FROM Case];
for(case c : listCase){
    c.Subject += '2';
}
update listCase; 


List<Case> newCases = new List<Case>();
for(integer i=0; i<205; i++){
    case c = new case();
    c.Subject = 'Bug is here:::: ' +i;
    c.Description= 'Resolve it ASAP';
    c.Origin = 'Web';
    c.Status = 'New';
    newCases.add(c);
}
insert newCases; 