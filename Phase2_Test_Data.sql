insert into Hotel values (1000,     'Hilton', 'Chicago', 'MichiganAve', '100', 'IL', 6172829990);
insert into Hotel values (1001,     'Hilton',  'Dallas', 'OklahomaAve', '101', 'TX', 6172810920);
insert into Hotel values (1002,     'Hilton',      'LA',     'RodeoDr', '103', 'CA', 9134569990);
insert into Hotel values (1003,      'Hyatt', 'Chicago', 'MichiganAve', '200', 'IL', 6172982990);
insert into Hotel values (1004,      'Hyatt',  'Dallas', 'OklahomaAve', '201', 'TX', 6172283920);
insert into Hotel values (1005,      'Hyatt',      'LA',     'RodeoDr', '203', 'CA', 9131029990);
insert into Hotel values (1006, 'HansEtFonz', 'Chicago', 'MichiganAve', '300', 'IL', 6171029990);
insert into Hotel values (1007, 'HansEtFonz',  'Dallas', 'OklahomaAve', '301', 'TX', 6172875860);
insert into Hotel values (1008, 'HansEtFonz',      'LA',     'RodeoDr', '303', 'CA', 9134100690);

insert into room values ( 'King',  4,  230);
insert into room values ( 'Queen', 3,  202);
insert into room values ( 'Twin',  2,   89);
insert into room values ( 'Suite', 6,  481);

insert into Has values (1000,     'Hilton', 'Suite',  1);
insert into Has values (1001,     'Hilton', 'King',   6);
insert into Has values (1003,      'Hyatt', 'Suite', 13);
insert into Has values (1006, 'HansEtFonz', 'King',  26);


insert into customer values ('01d00',  'Hanish',  23,   'Male');
insert into customer values ('95766', 'Michael',  23,   'Male');
insert into customer values ('e8607',    'Aziz',  22,   'Male');
insert into customer values ('f846e',   'Riley',  28, 'Female');
insert into customer values ('30885', 'Natasha',  24, 'Female');

insert into Date_List values ('01/01/2018');
insert into Date_List values ('01/02/2018');
insert into Date_List values ('01/03/2018');
insert into Date_List values ('01/04/2018');
insert into Date_List values ('01/05/2018');
insert into Date_List values ('01/06/2018');
insert into Date_List values ('01/07/2018');
insert into Date_List values ('01/08/2018');
insert into Date_List values ('01/09/2018');
insert into Date_List values ('01/10/2018');

insert into reservation values ('1000000', 6, 230);
insert into reservation values ('1000001', 3, 202);
insert into reservation values ('1000002', 4, 481);
insert into reservation values ('1000003', 2, 89);

insert into Makes values ('1000000', '01d00', 6, 481); 
insert into Makes values ('1000001', '95766', 3, 202);
insert into Makes values ('1000002', 'e8607', 4, 230);
insert into Makes values ('1000003', 'f846e', 2, 89);


insert into r_with values('1000000', '1004', 'Hyatt', 'King');
insert into r_with values ('1000002', '1004', 'Hyatt', 'Queen');
insert into r_with values ('1000001' , '1000', 'Hilton', 'Suite');
insert into r_with values ('1000003' , '1002', 'Hilton', 'Twin');



insert into Check_In values ('1000002', '01/09/2018');
insert into Check_In values ('1000003', '01/10/2018');


insert into Check_Out values ('1000002', '01/02/2018');
insert into Check_Out values ('1000003', '01/04/2018');


insert into Check_Available values('1000002', '01/09/2018', '1004', 'Hyatt', 'Queen', 202);
insert into Check_Available values('1000003', '01/10/2018', '1000', 'Hilton', 'Suite', 481);

