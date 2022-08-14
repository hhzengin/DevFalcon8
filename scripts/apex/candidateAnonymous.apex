//company name is static. it belongs to all other 3 variavles. so we type it once.
Candidates.CompanyName = 'Soft Innovas';

Candidates c1= new Candidates();
c1.name='Jerry';
c1.gender='Male';
c1.printCandidates();

//static variable cannot be called with instances.Like the one below.
//c1.CompanyName='change company';

Candidates c2= new Candidates();
c2.name='Elanie';
c2.gender='Female';
c2.printCandidates();

Candidates c3= new Candidates();
c3.name='John';
c3.gender='Male';
c3.printCandidates();


Candidates.printCandidateInfo(); 
Candidates.CompanyName = 'IBM';
Candidates.printCandidateInfo(); 

