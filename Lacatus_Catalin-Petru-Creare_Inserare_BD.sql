---ELEV
CREATE TABLE ELEV(
id_elev number(4) constraint pk_id_elev primary key,
nume varchar2(20) constraint null_nume not null,
prenume varchar2(20) constraint null_prenume not null,
varsta number(2) constraint null_varst not null,
oras varchar2(20) constraint null_oras_elev not null,
telefon varchar2(15) constraint null_telefon not null,
email varchar2(30) constraint unq_email unique,
ocupatia varchar2(40),
constraint ck_id_el check(id_elev>0),
constraint ck_varsta check(varsta>=5)
);
---elev creat----
-------ELEVI INSERATI---------------------------------------------------------------------------------------------------------
INSERT INTO ELEV
values(1,'Popescu','Marian',20,'Brasov','0731/234/567','popescumarian@email.com','student');
INSERT INTO ELEV
values(2,'Adam','Adina',21,'Bran','0724/675/517','adamadina@email.com','student');
INSERT INTO ELEV
values(3,'Marcu','Ionut',15,'Rasnov','0720/134/505','ionutmarcu@email.com','elev');
INSERT INTO ELEV
values(4,'Antonescu','Alexandndru',14,'Tohan','0728/224/160','alex23@email.com','elev');
INSERT INTO ELEV
values(5,'Simon','Mihai',19,'Brasov','0721/535/587','simonmihai@email.com','student');
INSERT INTO ELEVvalues(6,'Dumitrescu','Codrut',12,'Brasov','0721/214/669','codrutdumitrescu@email.com','elev');
INSERT INTO ELEV
values(7,'Ardelean','Remus',27,'Harman','0720/291/517','remusardelean@email.com','avocat');
INSERT INTO ELEV
values(8,'Grigorescu','Mirela',32,'Brasov','0711/264/347','grigorescumirela@email.com',null);---oare 
merge??
INSERT INTO ELEV
values(9,'Adam','Florina',20,'Brasov','0721/232/569','adamflorina@email.com','student');
INSERT INTO ELEV
values(10,'Stan','Adela',18,'Brasov','0747/115/587','adelastan@email.com','elev');
INSERT INTO ELEV
values(11,'Anghelache','Loredana',24,'Brasov','0750/267/104','anghelacheloredana@email.com','stu
dent');
INSERT INTO ELEV
values(12,'Grigorescu','Gabriel',30,'Brasov','0732/124/937','gabrielgrigorescu@email.com','medic');
INSERT INTO ELEV
values(13,'Lungu','Anastasia',19,'Cristian','0751/030/517','anastasialungu@email.com','student');
INSERT INTO ELEV
values(14,'Marinescu','Gabriela',7,'Brasov','0771/244/097','marinescugabriela@email.com','elev');
INSERT INTO ELEV
values(15,'Bronescu','Miruna',20,'Rasnov','0751/239/567','bronescumiruna@email.com','student');
INSERT INTO ELEVvalues(16,'Babes','Alexandru',15,'Ghimbav','0721/235/537','babesalexandru@email.com','elev');
INSERT INTO ELEV
values(17,'Bobes','Claudiu',43,'Rasnov','0735/134/577','bobesclaudiu@email.com','medic');
INSERT INTO ELEV
values(18,'Lupei','Maria',11,'Moieciu de Jos','0732/204/547','lupeimaria@email.com','elev');
INSERT INTO ELEV
values(19,'Ungureanu','Valeriu',16,'Brasov','0751/534/597','ungureanuvaleriu@email.com','elev');
INSERT INTO ELEV
values(20,'Pop','Ioana',7,'Sibiu','0751/232/597','ioanapop@email.com','elev');
INSERT INTO ELEV
values(21,'Albu','Gabriel',17,'Brasov','0751/284/167','gabrielalbu@email.com','elev');
INSERT INTO ELEV
values(22,'Balan','Matei',36,'Brasov','0753/213/632','mateibalan@email.com',null);
INSERT INTO ELEV
values(23,'Balan','Andreea',30,'Brasov','0721/914/585','andreeabalan@email.com','contabil');
INSERT INTO ELEV
values(24,'Ionescu','Raluca',27,'Rasnov','0731/390/567','ralucaionescu@email.com','profesor');
INSERT INTO ELEV
values(25,'Brandusa','Andreea',19,'Bran','0737/334/969','andreeabrandusa@email.com','student');
INSERT INTO ELEV
values(26,'Sara','Ioana',21,'Brasov','0721/256/667','saraioana@email.com',null);INSERT INTO ELEV
values(27,'Dumitru','Diana',30,'Brasov','0771/764/568','dianadumitru@email.com',null);
INSERT INTO ELEV
values(28,'Hodosan','Raluca',19,'Rasnov','0721/564/982','ralucahodosan@email.com','student');
INSERT INTO ELEV
values(29,'Sora','Andreea',20,'Brasov','0731/234/567','andreeasora@email.com','student');
INSERT INTO ELEV
values(30,'Mirea','Oana',19,'Brasov','0756/882/569','oanamirea@email.com','student');
INSERT INTO ELEV
values(31,'Popicu','Calin',19,'Zarnesti','0751/245/537','calinpopicu@email.com','student');
INSERT INTO ELEV
values(32,'Stefan','Maria',20,'Brasov','0771/994/523','mariastefan@email.com','student');
INSERT INTO ELEV
values(33,'Dragutu','Diana',35,'Brasov','0731/234/567','dianadragutu@email.com','contabil');
INSERT INTO ELEV
values(34,'Proca','Ionut',20,'Zarnesti','0757/239/960','ionutproca@email.com','notar');
INSERT INTO ELEV
values(35,'Ionescu','Rebeca',15,'Brasov','0745/367/555','rebecaionescu@email.com','elev');
INSERT INTO ELEV
values(36,'Chichioaca','Madalina',22,'Tohan','0731/937/100','madalinachicioaca@email.com','stude
nt');INSERT INTO ELEV
values(37,'Boboc','Florin',8,'Brasov','0721/275/180','florinpopescu@email.com','elev');
INSERT INTO ELEV
values(38,'Cafadaru','Andrada',19,'Rasnov','0746/814/969','andradacafadaru@email.com','student');
 
INSERT INTO ELEV
values(39,'Banica','Ionut',21,'Brasov','0771/204/663','banicaionut@email.com','student');
INSERT INTO ELEV
values(40,'Sofei','Andrei',20,'Brasov','0740/574/460','andreisofei@email.com','student');
INSERT INTO ELEV
values(41,'Nicolescu','Andrei',20,'Brasov','0734/247/675','andreinicolescu@email.com','student');
INSERT INTO ELEV
values(42,'Beteringhe','Elena',22,'Tohan','0720/889/109','Elenabeteringhe@email.com','student');
INSERT INTO ELEV
values(43,'Neagu','Ionut',20,'Brasov','0751/278/975','neaguionut@email.com','student');
INSERT INTO ELEV
values(44,'Bujor','Andrada',19,'Rasnov','0726/894/962','andradabujor@email.com','student');
 
INSERT INTO ELEV
values(45,'Banica','Florin',21,'Brasov','0721/931/653','banicaflorin@email.com','student');
INSERT INTO ELEV
values(46,'Duta','Mihai',20,'Brasov','0734/771/061','mihaiduta@email.com','student');INSERT INTO ELEV
values(47,'Iancu','Rebeca',20,'Brasov','0739/372/567','iancurebeca@email.com','student');
INSERT INTO ELEV
values(48,'Rus','Mara',15,'Brasov','0726/760/515','mararus@email.com','elev');
INSERT INTO ELEV
values(49,'Militaru','Grigore',22,'Tohan','0726/837/109','grigoremilitaru@email.com','student');
INSERT INTO ELEV
values(50,'Boboc','Florin',8,'Brasov','0721/275/180','florinaboboc@email.com','elev');
INSERT INTO ELEV
values(51,'Suciu','Sanziana',19,'Rasnov','0725/312/367','suciusanziana@email.com','student');
 
INSERT INTO ELEV
values(52,'Szekely','Marina',21,'Brasov','0751/333/123','MarinaSzekely@email.com','student');
INSERT INTO ELEV
values(53,'Neagoe','Magdalena',20,'Brasov','0743/271/439','MagdalenaNeagoe@email.com','studen
t');
--------------------------------------------------------------------------------------------------------------------------------
---DDISCIPLINA
CREATE TABLE DISCIPLINA(
id_disciplina number(4) constraint pk_id_disciplina primary key, 
denumire_disciplina varchar2(40) constraint null_disciplina not null,
nr_ore_sapt number(1) constraint null_nr_ore_sapt not null,
nr_examene number(1) constraint null_nr_exam_an not null,
constraint ck_id_dis check(id_disciplina>0),
constraint ck_nr_exam check(nr_examene>0),constraint ck_nr_ore check(nr_ore_sapt>0)
);
---disciplina creat
--------------------------------------------------------------------------------------------------------------------------------
INSERT INTO DISCIPLINA
values(1,'Canto Muzica-Populara',4,2);
INSERT INTO DISCIPLINA
values(2,'Canto Muzica-Pop',4,2);
INSERT INTO DISCIPLINA
values(3,'Canto Muzica-Clasica',6,2);
INSERT INTO DISCIPLINA
values(4,'Pian',4,2);
INSERT INTO DISCIPLINA
values(5,'Clarinet',3,2);
INSERT INTO DISCIPLINA
values(6,'Vioara',6,2);
INSERT INTO DISCIPLINA
values(7,'Tambal',3,2);
INSERT INTO DISCIPLINA
values(8,'Chitara',2,2);
INSERT INTO DISCIPLINA
values(9,'Saxofon',5,2);INSERT INTO DISCIPLINA
values(10,'Contrabas',3,2);
INSERT INTO DISCIPLINA
values(11,'Acordeon',4,2);
INSERT INTO DISCIPLINA
values(12,'Teatru muzical',4,2);
INSERT INTO DISCIPLINA
values(13,'Actorie',6,2);
INSERT INTO DISCIPLINA
values(14,'Pictura',6,2);
INSERT INTO DISCIPLINA
values(15,'Sculptura',8,2);
INSERT INTO DISCIPLINA
values(16,'Grafica',8,2);
--------------------------------------------------------------------------------------------------------------------------------
---PERIOADA STUDII
CREATE TABLE PERIOADA_STUDII(
id_disciplina number(4),
id_perioada number(4),
denumire_perioada varchar2(30) constraint null_denumire_perioada not null,
taxa_scolarizare_an number(5,2),
nr_ani_studiu number(3) constraint null_nr_ani_studiu not null,
constraint pk_id_perioada primary key(id_perioada,id_disciplina),
constraint fk_id_disc foreign key(id_disciplina) references DISCIPLINA(id_disciplina),
constraint ck_taxa_sc check(nr_ani_studiu>0),constraint ck_ani_stud check(taxa_scolarizare_an>100),
constraint ck_id_per check(id_perioada>0),
constraint ck_id_peri check(id_disciplina>0)
);
alter table Perioada_studii
modify (taxa_scolarizare_an number(7,2));
---PERIOADA_STUDII CREAT---
----------------------------------------------------------------------------------------------------------------------------------
INSERT INTO PERIOADA_STUDII
values (1,1,'Perioada de scolarizare',1345,3);
INSERT INTO PERIOADA_STUDII 
values (1,2,'Perioada de specializare',1500,2);
INSERT INTO PERIOADA_STUDII 
values (2,1,'Perioada de scolarizare',1348.87,3);
INSERT INTO PERIOADA_STUDII 
values (2,2,'Perioada de specializare',1502.34,2);
INSERT INTO PERIOADA_STUDII 
values (3,1,'Perioada de scolarizare',1456,4);
INSERT INTO PERIOADA_STUDII 
values (3,2,'Perioada de specializare',1600,3);
INSERT INTO PERIOADA_STUDII 
values (4,1,'Perioada de scolarizare',1300,4);
INSERT INTO PERIOADA_STUDII values (4,2,'Perioada de specializare',1598,3);
INSERT INTO PERIOADA_STUDII 
values (5,1,'Perioada de scolarizare',900,3);
INSERT INTO PERIOADA_STUDII 
values (5,2,'Perioada de specializare',1124,2);
INSERT INTO PERIOADA_STUDII 
values (6,1,'Perioada de scolarizare',1500,5);
INSERT INTO PERIOADA_STUDII 
values (6,2,'Perioada de specializare',1897,3);
INSERT INTO PERIOADA_STUDII 
values (7,1,'Perioada de scolarizare',900,3);
INSERT INTO PERIOADA_STUDII 
values (7,2,'Perioada de specializare',1124,2);
INSERT INTO PERIOADA_STUDII 
values (8,1,'Perioada de scolarizare',834.50,3);
INSERT INTO PERIOADA_STUDII 
values (8,2,'Perioada de specializare',975.2,2);
INSERT INTO PERIOADA_STUDII 
values (9,1,'Perioada de scolarizare',1000,3);
INSERT INTO PERIOADA_STUDII 
values (9,2,'Perioada de specializare',1345.67,3);INSERT INTO PERIOADA_STUDII 
values (10,1,'Perioada de scolarizare',734,2);
INSERT INTO PERIOADA_STUDII 
values (10,2,'Perioada de specializare',934.32,1);
INSERT INTO PERIOADA_STUDII 
values (11,1,'Perioada de scolarizare',908.23,3);
INSERT INTO PERIOADA_STUDII 
values (11,2,'Perioada de specializare',1189.34,2);
INSERT INTO PERIOADA_STUDII 
values (12,1,'Perioada de scolarizare',1450,4);
INSERT INTO PERIOADA_STUDII 
values (12,2,'Perioada de specializare',1789,3);
INSERT INTO PERIOADA_STUDII 
values (13,1,'Perioada de scolarizare',1798,4);
INSERT INTO PERIOADA_STUDII 
values (13,2,'Perioada de specializare',2019.23,3);
INSERT INTO PERIOADA_STUDII 
values (14,1,'Perioada de scolarizare',1203,4);
INSERT INTO PERIOADA_STUDII 
values (14,2,'Perioada de specializare',1567,3);INSERT INTO PERIOADA_STUDII 
values (15,1,'Perioada de scolarizare',1500,3);
INSERT INTO PERIOADA_STUDII 
values (15,2,'Perioada de specializare',1619,3);
INSERT INTO PERIOADA_STUDII 
values (16,1,'Perioada de scolarizare',1205,3);
INSERT INTO PERIOADA_STUDII 
values (16,2,'Perioada de specializare',1345.67,2);
----------------------------------------------------------------------------------------------------------------------------------
 
---DIPLOMA
CREATE TABLE DIPLOMA(
id_disciplina number(4),
id_perioada number(4),
id_diploma number(4),
id_angajat number(4),
denumire_diploma varchar2(30),
constraint pk_id_per_dip primary key(id_diploma,id_perioada,id_disciplina),
constraint fk_id_disc_dip foreign key(id_perioada,id_disciplina) references 
PERIOADA_STUDII(id_perioada,id_disciplina),
constraint fk_id_secretar_diploma foreign key(id_angajat) references SECRETAR(id_angajat),
constraint ck_id_diploma check(id_diploma>0),
constraint ck_id_per_diploma check(id_perioada>0),
constraint ck_id_disciplina_diploma check(id_disciplina>0),
constraint ck_id_angajat_diploma check(id_angajat>0)
);
---DIPLOMA CREAT--------------------------------------------------------------------------------------------------------------------------------
INSERT INTO DIPLOMA
values (1,1,1,2,'Scolarizare');
INSERT INTO DIPLOMA
values (1,2,1,3,'Specializare');
INSERT INTO DIPLOMA
values (2,1,1,6,'Scolarizare');
INSERT INTO DIPLOMA
values (2,2,1,3,'Specializare');
INSERT INTO DIPLOMA
values (3,1,1,6,'Scolarizare');
INSERT INTO DIPLOMA
values (3,2,1,6,'Specializare');
INSERT INTO DIPLOMA
values (4,1,1,6,'Scolarizare');
INSERT INTO DIPLOMA
values (4,2,1,3,'Specializare');
INSERT INTO DIPLOMA
values (5,1,1,6,'Scolarizare');
INSERT INTO DIPLOMA
values (5,2,1,3,'Specializare');INSERT INTO DIPLOMA
values (6,1,1,6,'Scolarizare');
INSERT INTO DIPLOMA
values (6,2,1,3,'Specializare');
INSERT INTO DIPLOMA
values (7,1,1,2,'Scolarizare');
INSERT INTO DIPLOMA
values (7,2,1,4,'Specializare');
INSERT INTO DIPLOMA
values (8,1,1,2,'Scolarizare');
INSERT INTO DIPLOMA
values (8,2,1,4,'Specializare');
INSERT INTO DIPLOMA
values (9,1,1,2,'Scolarizare');
INSERT INTO DIPLOMA
values (9,2,1,4,'Specializare');
INSERT INTO DIPLOMA
values (10,1,1,2,'Scolarizare');
INSERT INTO DIPLOMA
values (10,2,1,4,'Specializare');
INSERT INTO DIPLOMAvalues (11,1,1,2,'Scolarizare');
INSERT INTO DIPLOMA
values (11,2,1,4,'Specializare');
INSERT INTO DIPLOMA
values (12,1,1,2,'Scolarizare');
INSERT INTO DIPLOMA
values (12,2,1,4,'Specializare');
INSERT INTO DIPLOMA
values (13,1,1,2,'Scolarizare');
INSERT INTO DIPLOMA
values (13,2,1,4,'Specializare');
INSERT INTO DIPLOMA
values (14,1,1,2,'Scolarizare');
INSERT INTO DIPLOMA
values (14,2,1,4,'Specializare');
INSERT INTO DIPLOMA
values (15,1,1,5,'Scolarizare');
INSERT INTO DIPLOMA
values (15,2,1,5,'Specializare');
INSERT INTO DIPLOMA
values (16,1,1,5,'Scolarizare');INSERT INTO DIPLOMA
values (16,2,1,5,'Specializare');
--------------------------------------------------------------------------------------------------------------------------------
---EXAMEN
CREATE TABLE EXAMEN(
id_disciplina number(4),
id_examen number(4),
denumire_proba varchar2(30) constraint null_den_proba not null,
an_studiu number(3) constraint null_a_st not null,
constraint pk_id_examen primary key(id_examen,id_disciplina),
constraint fk_id_disci_examen foreign key(id_disciplina) references DISCIPLINA(id_disciplina),
constraint ck_id_examen check(id_examen>0),
constraint ck_id_disciplina_examen check(id_disciplina>0)
);
commit;
---EXAMEN CREAT---
--------------------------------------------------------------------------------------------------------------------------------
----EXAMENE CANTO-POPULARA
INSERT INTO EXAMEN
values(1,1,'ADMITERE',1);
INSERT INTO EXAMEN
values(1,2,'EXAMEN PERIOADA I',3);
INSERT INTO EXAMEN
values(1,3,'EXAMEN PERIOADA II',5);
INSERT INTO EXAMEN
values(1,4,'RESTANTA PERIOADA I',3);INSERT INTO EXAMEN
values(1,5,'RESTANTA PERIOADA II',5);
----
----EXAMENE CANTO-POP
INSERT INTO EXAMEN
values(2,6,'ADMITERE',1);
INSERT INTO EXAMEN
values(2,7,'EXAMEN PERIOADA I',3);
INSERT INTO EXAMEN
values(2,8,'EXAMEN PERIOADA II',5);
INSERT INTO EXAMEN
values(2,9,'RESTANTA PERIOADA I',3);
INSERT INTO EXAMEN
values(2,10,'RESTANTA PERIOADA II',5);
---
INSERT INTO EXAMEN
values(3,11,'ADMITERE',1);
INSERT INTO EXAMEN
values(3,12,'EXAMEN PERIOADA I',4);
INSERT INTO EXAMEN
values(3,13,'EXAMEN PERIOADA II',7);
INSERT INTO EXAMEN
values(3,14,'RESTANTA PERIOADA I',4);INSERT INTO EXAMEN
values(3,15,'RESTANTA PERIOADA II',7);
INSERT INTO EXAMEN
values(4,16,'ADMITERE',1);
INSERT INTO EXAMEN
values(4,17,'EXAMEN PERIOADA I',4);
INSERT INTO EXAMEN
values(4,18,'EXAMEN PERIOADA II',7);
INSERT INTO EXAMEN
values(4,19,'RESTANTA PERIOADA I',4);
INSERT INTO EXAMEN
values(4,20,'RESTANTA PERIOADA II',7);
INSERT INTO EXAMEN
values(5,21,'ADMITERE',1);
INSERT INTO EXAMEN
values(5,22,'EXAMEN PERIOADA I',3);
INSERT INTO EXAMEN
values(5,23,'EXAMEN PERIOADA II',5);
INSERT INTO EXAMEN
values(5,24,'RESTANTA PERIOADA I',3);INSERT INTO EXAMEN
values(5,25,'RESTANTA PERIOADA II',5);
INSERT INTO EXAMEN
values(6,26,'ADMITERE',1);
INSERT INTO EXAMEN
values(6,27,'EXAMEN PERIOADA I',5);
INSERT INTO EXAMEN
values(6,28,'EXAMEN PERIOADA II',8);
INSERT INTO EXAMEN
values(6,29,'RESTANTA PERIOADA I',5);
INSERT INTO EXAMEN
values(6,30,'RESTANTA PERIOADA II',8);
INSERT INTO EXAMEN
values(7,31,'ADMITERE',1);
INSERT INTO EXAMEN
values(7,32,'EXAMEN PERIOADA I',3);
INSERT INTO EXAMEN
values(7,33,'EXAMEN PERIOADA II',5);
INSERT INTO EXAMEN
values(7,34,'RESTANTA PERIOADA I',3);
INSERT INTO EXAMENvalues(7,35,'RESTANTA PERIOADA II',5);
INSERT INTO EXAMEN
values(8,36,'ADMITERE',1);
INSERT INTO EXAMEN
values(8,37,'EXAMEN PERIOADA I',3);
INSERT INTO EXAMEN
values(8,38,'EXAMEN PERIOADA II',5);
INSERT INTO EXAMEN
values(8,39,'RESTANTA PERIOADA I',3);
INSERT INTO EXAMEN
values(8,40,'RESTANTA PERIOADA II',5);
INSERT INTO EXAMEN
values(9,41,'ADMITERE',1);
INSERT INTO EXAMEN
values(9,42,'EXAMEN PERIOADA I',3);
INSERT INTO EXAMEN
values(9,43,'EXAMEN PERIOADA II',6);
INSERT INTO EXAMEN
values(9,44,'RESTANTA PERIOADA I',3);
INSERT INTO EXAMEN
values(9,45,'RESTANTA PERIOADA II',6);INSERT INTO EXAMEN
values(10,46,'ADMITERE',1);
INSERT INTO EXAMEN
values(10,47,'EXAMEN PERIOADA I',2);
INSERT INTO EXAMEN
values(10,48,'EXAMEN PERIOADA II',3);
INSERT INTO EXAMEN
values(10,49,'RESTANTA PERIOADA I',2);
INSERT INTO EXAMEN
values(10,50,'RESTANTA PERIOADA II',3);
INSERT INTO EXAMEN
values(11,51,'ADMITERE',1);
INSERT INTO EXAMEN
values(11,52,'EXAMEN PERIOADA I',3);
INSERT INTO EXAMEN
values(11,53,'EXAMEN PERIOADA II',5);
INSERT INTO EXAMEN
values(11,54,'RESTANTA PERIOADA I',3);
INSERT INTO EXAMEN
values(11,55,'RESTANTA PERIOADA II',5);INSERT INTO EXAMEN
values(12,56,'ADMITERE',1);
INSERT INTO EXAMEN
values(12,57,'EXAMEN PERIOADA I',4);
INSERT INTO EXAMEN
values(12,58,'EXAMEN PERIOADA II',7);
INSERT INTO EXAMEN
values(12,59,'RESTANTA PERIOADA I',4);
INSERT INTO EXAMEN
values(12,60,'RESTANTA PERIOADA II',7);
INSERT INTO EXAMEN
values(13,61,'ADMITERE',1);
INSERT INTO EXAMEN
values(13,62,'EXAMEN PERIOADA I',4);
INSERT INTO EXAMEN
values(13,63,'EXAMEN PERIOADA II',7);
INSERT INTO EXAMEN
values(13,64,'RESTANTA PERIOADA I',4);
INSERT INTO EXAMEN
values(13,65,'RESTANTA PERIOADA II',7);
INSERT INTO EXAMENvalues(14,66,'ADMITERE',1);
INSERT INTO EXAMEN
values(14,67,'EXAMEN PERIOADA I',4);
INSERT INTO EXAMEN
values(14,68,'EXAMEN PERIOADA II',7);
INSERT INTO EXAMEN
values(14,69,'RESTANTA PERIOADA I',4);
INSERT INTO EXAMEN
values(14,70,'RESTANTA PERIOADA II',7);
INSERT INTO EXAMEN
values(15,71,'ADMITERE',1);
INSERT INTO EXAMEN
values(15,72,'EXAMEN PERIOADA I',3);
INSERT INTO EXAMEN
values(15,73,'EXAMEN PERIOADA II',6);
INSERT INTO EXAMEN
values(15,74,'RESTANTA PERIOADA I',3);
INSERT INTO EXAMEN
values(15,75,'RESTANTA PERIOADA II',6);
INSERT INTO EXAMEN
values(16,76,'ADMITERE',1);INSERT INTO EXAMEN
values(16,77,'EXAMEN PERIOADA I',3);
INSERT INTO EXAMEN
values(16,78,'EXAMEN PERIOADA II',5);
INSERT INTO EXAMEN
values(16,79,'RESTANTA PERIOADA I',3);
INSERT INTO EXAMEN
values(16,80,'RESTANTA PERIOADA II',5);
--------------------------------------------------------------------------------------------------------------------------------
---NOTA
CREATE TABLE NOTA(
id_elev number(4),
id_disciplina number(4),
id_examen number(4),
data_examen date constraint null_de not null,
nota number(3,2) constraint null_nota not null,
promovat varchar2(30) constraint null_promovat_nota not null,
constraint pk_nota primary key(id_examen,id_disciplina,id_elev),
constraint fk_id_ex_nota foreign key(id_examen,id_disciplina) references 
EXAMEN(id_examen,id_disciplina), 
constraint fk_id_elev_nota foreign key(id_elev) references ELEV(id_elev),
constraint ck_id_examen_nota check(id_examen>0),
constraint ck_id_disciplina_nota check(id_disciplina>0),
constraint ck_id_elev_nota check(id_elev>0),
constraint ck_nota check(nota>1));
---NOTA CREAT--
alter table nota
modify (nota number(6,2));
--------------------------------------------------------------------------------------------------------------------------------
INSERT INTO NOTA
values (1,1,1,to_date('07-07-2020', 'dd-mm-yyyy'),9.35,'PROMOVAT');
INSERT INTO NOTA
values (1,2,6,to_date('07-07-2020', 'dd-mm-yyyy'),9.45,'PROMOVAT');
INSERT INTO NOTA
values (2,2,6,to_date('07-07-2020', 'dd-mm-yyyy'),9.04,'PROMOVAT');
INSERT INTO NOTA
values (3,3,11,to_date('07-07-2020', 'dd-mm-yyyy'),8.35,'PROMOVAT');
INSERT INTO NOTA
values (4,4,16,to_date('07-07-2020', 'dd-mm-yyyy'),7.05,'PROMOVAT');
INSERT INTO NOTA
values (5,5,21,to_date('07-07-2020', 'dd-mm-yyyy'),8.95,'PROMOVAT');
INSERT INTO NOTA
values (6,6,26,to_date('07-07-2020', 'dd-mm-yyyy'),9.30,'PROMOVAT');
INSERT INTO NOTA
values (7,7,31,to_date('07-07-2020', 'dd-mm-yyyy'),9.90,'PROMOVAT');INSERT INTO NOTA
values (8,8,36,to_date('07-07-2020', 'dd-mm-yyyy'),9.95,'PROMOVAT');
INSERT INTO NOTA
values (9,9,41,to_date('07-07-2020', 'dd-mm-yyyy'),7.03,'PROMOVAT');
INSERT INTO NOTA
values (10,10,46,to_date('07-07-2020', 'dd-mm-yyyy'),6.48,'PROMOVAT');
INSERT INTO NOTA
values (11,11,51,to_date('07-07-2020', 'dd-mm-yyyy'),9.98,'PROMOVAT');
INSERT INTO NOTA
values (12,12,56,to_date('07-07-2020', 'dd-mm-yyyy'),9.85,'PROMOVAT');
INSERT INTO NOTA
values (13,13,61,to_date('07-07-2020', 'dd-mm-yyyy'),9.75,'PROMOVAT');
INSERT INTO NOTA
values (14,14,66,to_date('07-07-2020', 'dd-mm-yyyy'),9.78,'PROMOVAT');
INSERT INTO NOTA
values (15,15,71,to_date('07-07-2020', 'dd-mm-yyyy'),8.93,'PROMOVAT');
INSERT INTO NOTA
values (16,16,76,to_date('07-07-2020', 'dd-mm-yyyy'),7.45,'PROMOVAT');
INSERT INTO NOTA
values (17,1,1,to_date('05-07-2019', 'dd-mm-yyyy'),9.55,'PROMOVAT');
INSERT INTO NOTAvalues (18,2,6,to_date('05-07-2019', 'dd-mm-yyyy'),9.55,'PROMOVAT');
INSERT INTO NOTA
values (19,3,11,to_date('05-07-2019', 'dd-mm-yyyy'),9.55,'PROMOVAT');
INSERT INTO NOTA
values (20,4,16,to_date('05-07-2019', 'dd-mm-yyyy'),9.65,'PROMOVAT');
INSERT INTO NOTA
values (21,5,21,to_date('05-07-2019', 'dd-mm-yyyy'),8.55,'PROMOVAT');
INSERT INTO NOTA
values (22,6,26,to_date('05-07-2019', 'dd-mm-yyyy'),9.55,'PROMOVAT');
INSERT INTO NOTA
values (23,7,31,to_date('05-07-2019', 'dd-mm-yyyy'),6.55,'PROMOVAT');
INSERT INTO NOTA
values (24,8,36,to_date('05-07-2019', 'dd-mm-yyyy'),6.75,'PROMOVAT');
INSERT INTO NOTA
values (25,9,41,to_date('05-07-2019', 'dd-mm-yyyy'),9.35,'PROMOVAT');
INSERT INTO NOTA
values (26,10,46,to_date('07-07-2020', 'dd-mm-yyyy'),9.25,'PROMOVAT');
INSERT INTO NOTA
values (27,11,51,to_date('07-07-2017', 'dd-mm-yyyy'),8.15,'PROMOVAT');
INSERT INTO NOTA
values (28,12,56,to_date('07-07-2018', 'dd-mm-yyyy'),8.45,'PROMOVAT');INSERT INTO NOTA
values (29,13,61,to_date('07-07-2016', 'dd-mm-yyyy'),6.17,'PROMOVAT');
INSERT INTO NOTA
values (30,14,66,to_date('07-07-2018', 'dd-mm-yyyy'),10,'PROMOVAT');
INSERT INTO NOTA
values (31,15,71,to_date('07-07-2019', 'dd-mm-yyyy'),10,'PROMOVAT');
INSERT INTO NOTA
values (32,16,76,to_date('07-07-2019', 'dd-mm-yyyy'),10,'PROMOVAT');
INSERT INTO NOTA
values (33,9,41,to_date('07-07-2019', 'dd-mm-yyyy'),7.45,'PROMOVAT');
INSERT INTO NOTA
values (34,10,46,to_date('07-07-2019', 'dd-mm-yyyy'),9.58,'PROMOVAT');
INSERT INTO NOTA
values (35,11,51,to_date('07-07-2019', 'dd-mm-yyyy'),6.67,'PROMOVAT');
INSERT INTO NOTA
values (36,12,56,to_date('07-07-2019', 'dd-mm-yyyy'),10,'PROMOVAT');
INSERT INTO NOTA
values (37,13,61,to_date('07-07-2018', 'dd-mm-yyyy'),6.45,'PROMOVAT');
INSERT INTO NOTA
values (38,14,66,to_date('07-07-2019', 'dd-mm-yyyy'),9.55,'PROMOVAT');INSERT INTO NOTA
values (39,15,71,to_date('07-07-2019', 'dd-mm-yyyy'),8.75,'PROMOVAT');
INSERT INTO NOTA
values (40,16,76,to_date('07-07-2020', 'dd-mm-yyyy'),10,'PROMOVAT');
-----
INSERT INTO NOTA
values (41,1,1,to_date('07-07-2018', 'dd-mm-yyyy'),10,'PROMOVAT');
INSERT INTO NOTA
values (41,1,2,to_date('13-02-2021', 'dd-mm-yyyy'),10,'PROMOVAT');
----
INSERT INTO NOTA
values (42,1,1,to_date('07-07-2016', 'dd-mm-yyyy'),9.67,'PROMOVAT');
INSERT INTO NOTA
values (42,1,2,to_date('13-02-2019', 'dd-mm-yyyy'),7.61,'PROMOVAT');
INSERT INTO NOTA
values (42,1,3,to_date('13-02-2021', 'dd-mm-yyyy'),3.67,'NEPROMOVAT');
INSERT INTO NOTA
values (42,1,5,to_date('20-05-2021', 'dd-mm-yyyy'),10,'PROMOVAT');
INSERT INTO NOTA
values (43,3,11,to_date('07-07-2014', 'dd-mm-yyyy'),10,'PROMOVAT');
INSERT INTO NOTA
values (43,3,12,to_date('13-02-2019', 'dd-mm-yyyy'),10,'PROMOVAT');INSERT INTO NOTA
values (43,3,13,to_date('13-02-2021', 'dd-mm-yyyy'),10,'PROMOVAT');
INSERT INTO NOTA
values (44,5,21,to_date('07-07-2018', 'dd-mm-yyyy'),10,'PROMOVAT');
INSERT INTO NOTA
values (44,5,22,to_date('13-02-2021', 'dd-mm-yyyy'),4.58,'NEPROMOVAT');
INSERT INTO NOTA
values (44,5,24,to_date('20-05-2021', 'dd-mm-yyyy'),9.3,'PROMOVAT');
INSERT INTO NOTA
values (45,3,11,to_date('07-07-2020', 'dd-mm-yyyy'),10,'PROMOVAT');
INSERT INTO NOTA
values (46,3,11,to_date('07-07-2019', 'dd-mm-yyyy'),10,'PROMOVAT');
INSERT INTO NOTA
values (47,6,26,to_date('07-07-2017', 'dd-mm-yyyy'),10,'PROMOVAT');
INSERT INTO NOTA
values (48,10,46,to_date('07-07-2020', 'dd-mm-yyyy'),10,'PROMOVAT');
INSERT INTO NOTA
values (49,5,21,to_date('07-07-2019', 'dd-mm-yyyy'),10,'PROMOVAT');
INSERT INTO NOTA
values (50,13,61,to_date('07-07-2018', 'dd-mm-yyyy'),10,'PROMOVAT');
INSERT INTO NOTAvalues (51,13,61,to_date('07-07-2018', 'dd-mm-yyyy'),10,'PROMOVAT');
INSERT INTO NOTA
values (52,15,71,to_date('07-07-2019', 'dd-mm-yyyy'),10,'PROMOVAT');
INSERT INTO NOTA
values (53,15,71,to_date('07-07-2019', 'dd-mm-yyyy'),10,'PROMOVAT');
--------------------------------------------------------------------------------------------------------------------------------
---ANGAJAT
CREATE TABLE ANGAJAT(
id_angajat number(4) constraint pk_angajat primary key,
nume varchar2(20) constraint null_nume_angajat not null,
prenume varchar2(20) constraint null_prenume_angajat not null,
oras varchar2(20),
telefon varchar2(15) constraint null_telefon_angajat not null,
email char(30) constraint unq_email_angajat unique,
data_angajarii date constraint null_data_angajat not null,
salariu number(4) constraint null_salariu_angajat not null,
constraint ck_salariu_angajat check(salariu>0),
constraint ck_id_angajat check(id_angajat>0)
);
---ANGAJAT CREAT--
alter table angajat
modify (salariu number(6,2));
----------------------------------------------------------------------------------------------------------------
INSERT INTO ANGAJAT
values(1,'Cojocaru','Ioana','Brasov','0742/784/932','CojocaruIoana@gmail.com',to_date('02-05-
2015', 'dd-mm-yyyy'),8034.34);INSERT INTO ANGAJAT
values(2,'Badic','Mihai','Brasov','0721/345/821','BadicMihai@gmail.com',to_date('12-05-2016', 'ddmm-yyyy'),4034.34);
INSERT INTO ANGAJAT
values(3,'URSEA','VIRGINIA','Rasnov','0742/123/332','UrseaVirginia@gmail.com',to_date('22-05-
2016', 'dd-mm-yyyy'),4034.34);
INSERT INTO ANGAJAT
values(4,'Popescu','Claudia','Brasov','0723/456/744','PopescuClaudia@gmail.com',to_date('30-05-
2016', 'dd-mm-yyyy'),4034.34);
INSERT INTO ANGAJAT
values(5,'Radu','Mihai','Ghimbav','0743/724/222','mihairadu@gmail.com',to_date( '03-05-2016', 
'dd-mm-yyyy'),3934.38);
INSERT INTO ANGAJAT
values(6,'Cojocaru','Florina','Brasov','0734/555/232','CojocaruFlorina@gmail.com',to_date('12-05-
2016', 'dd-mm-yyyy'),3567.23);
INSERT INTO ANGAJAT
values(7,'Sidonia','Magdalena','Cristian','0722/535/132','MagdalenaSidonia@gmail.com',to_date('12
-05-2016', 'dd-mm-yyyy'),7378.34);
INSERT INTO ANGAJAT
values(8,'Macavei','Mariana','Codlea','0734/257/233','MacaveiMariana@gmail.com',to_date('24-05-
2016', 'dd-mm-yyyy'),7378.34);
INSERT INTO ANGAJAT
values(9,'Marin','Flavius','Bucuresti','0735/669/738','MacaveiFlavius@gmail.com',to_date('25-05-
2016', 'dd-mm-yyyy'),7378.34);
INSERT INTO ANGAJATvalues(10,'Opris','Adriana','Sibiu','0211/706/070','OprisAdriana@gmail.com',to_date('28-05-2016', 
'dd-mm-yyyy'),9067.51);
INSERT INTO ANGAJAT
values(11,'Tudorache','Paula','Sacele','0724/573/986','TudorachePaula@gmail.com',to_date('22-05-
2016', 'dd-mm-yyyy'),9067.51);
INSERT INTO ANGAJAT
values(12,'Bejenariu','Malina','Brasov','0724/515/131','BejenariuMalina@gmail.com',to_date('12-05-
2016', 'dd-mm-yyyy'),9067.51);
INSERT INTO ANGAJAT
values(13,'Marinescu','Ioana','Brasov','0743/338/841','MarinescuIoana@gmail.com',to_date('12-05-
2016', 'dd-mm-yyyy'),7378.34);
INSERT INTO ANGAJAT
values(14,'Eftem','Georgescu','Sibiu','0743/338/841','georgescueftem@gmail.com',to_date('15-05-
2016', 'dd-mm-yyyy'),7378.34);
INSERT INTO ANGAJAT
values(15,'Ieronim','Sebastian','Brasov','0742/933/878','SebastianIeronim@gmail.com',to_date('16-
05-2016', 'dd-mm-yyyy'),7378.34);
INSERT INTO ANGAJAT
values(16,'Dumitru','Rafael','Ghimbav','0721/232/162','DumitruRafael@gmail.com',to_date('18-05-
2016', 'dd-mm-yyyy'),9067.51);
INSERT INTO ANGAJAT
values(17,'Cornel','Cristi','Sacele','0721/300/801','CornelCristi@gmail.com',to_date('17-05-2016', 
'dd-mm-yyyy'),7378.34);
INSERT INTO ANGAJAT
values(18,'Ieronim','Filip','Brasov','0750/101/240','IeronimFilip@gmail.com',to_date('19-05-2016', 
'dd-mm-yyyy'),7378.34);INSERT INTO ANGAJAT
values(19,'Teofil','Toma','Brasov','0756/201/404','TeofilToma@gmail.com',to_date('13-05-2016', 
'dd-mm-yyyy'),7378.34);
--------------------------------------------------------------------------------------------------------------------------------
CREATE TABLE PROFESOR(
id_angajat number(4),
specializari varchar2(100) constraint null_specializari_prof not null,
constraint pk_profesor primary key(id_angajat),
constraint fk_id_angajat_prof foreign key(id_angajat) references ANGAJAT(id_angajat),
constraint ck_id_angajat_prof check(id_angajat>0)
);
---PROFESOR CREAT--
--------------------------------------------------------------------------------------------------------------------------------
INSERT INTO PROFESOR
values(1,'Muzica');
INSERT INTO PROFESOR
values(7,'Muzica');
INSERT INTO PROFESOR
values(8,'Muzica');
INSERT INTO PROFESOR
values(9,'Muzica');INSERT INTO PROFESOR
values(10,'Muzica');
INSERT INTO PROFESOR
values(11,'Muzica');
INSERT INTO PROFESOR
values(12,'Muzica');
INSERT INTO PROFESOR
values(13,'Muzica');
INSERT INTO PROFESOR
values(14,'Muzica');
INSERT INTO PROFESOR
values(15,'Muzica');
INSERT INTO PROFESOR
values(16,'Muzica,Actorie');
INSERT INTO PROFESOR
values(17,'Actorie');
INSERT INTO PROFESOR
values(18,'Arte');
INSERT INTO PROFESOR
values(19,'Arte');--------------------------------------------------------------------------------------------------------------------------------
CREATE TABLE SECRETAR(
id_angajat number(4),
an_secretar number(1) constraint null_an_secretar not null,
constraint pk_secretar primary key(id_angajat),
constraint fk_id_angajat_secretar foreign key(id_angajat) references ANGAJAT(id_angajat),
constraint ck_id_angajat_secretar check(id_angajat>0)
);
---SECRETAR CREAT---
--------------------------------------------------------------------------------------------------------------------------------
INSERT INTO SECRETAR
values(2,1);
INSERT INTO SECRETAR
values(3,2);
INSERT INTO SECRETAR
values(4,3);
INSERT INTO SECRETAR
values(5,4);
INSERT INTO SECRETAR
values(6,5);
--------------------------------------------------------------------------------------------------------------------------------
CREATE TABLE DIRECTOR(
id_angajat number(4),
vechime number(2) constraint null_vechime_director not null,
an_start number(4) constraint null_an_start not null,an_stop number(4),
constraint pk_director primary key(id_angajat),
constraint fk_id_angajat_director foreign key(id_angajat) references ANGAJAT(id_angajat),
constraint ck_id_angajat_director check(id_angajat>0)
);
--DIRECTOR CREAT
--------------------------------------------------------------------------------------------------------------------------------
INSERT INTO DIRECTOR 
values(1,1,2016,2017); 
 
INSERT INTO DIRECTOR 
values(7,1,2017,2018); 
INSERT INTO DIRECTOR 
values(9,2,2018,2019); 
INSERT INTO DIRECTOR 
values(10,3,2019,2020); 
INSERT INTO DIRECTOR 
values(14,4,2020,null); 
--------------------------------------------------------------------------------------------------------------------------------
CREATE TABLE STUDIAZA(
id_angajat number(4),
id_disciplina number(4),
id_elev number(4),
an_studiu number(3) constraint null_an_studiu not null,
constraint pk_studiaza primary key(id_angajat,id_disciplina,id_elev),
constraint fk_id_angajat_studiaza foreign key(id_angajat) references PROFESOR(id_angajat),
constraint fk_id_disciplina_studiaza foreign key(id_disciplina) references DISCIPLINA(id_disciplina),constraint fk_id_elev_studiaza foreign key(id_elev) references ELEV(id_elev),
constraint ck_id_angajat_studiaza check(id_angajat>0),
constraint ck_id_disciplina_studiaza check(id_disciplina>0),
constraint ck_id_elev_studiaza check(id_elev>0)
);
---STUDIAZA CREAT--
--------------------------------------------------------------------------------------------------------------------------------
INSERT INTO STUDIAZA
values (1,2,1,1);
INSERT INTO STUDIAZA
values (7,1,1,1);
INSERT INTO STUDIAZA
values (8,2,2,1);
INSERT INTO STUDIAZA
values (9,3,3,1);
INSERT INTO STUDIAZA
values (10,4,4,1);
INSERT INTO STUDIAZA
values (11,5,5,1);
INSERT INTO STUDIAZA
values (12,6,6,1);
INSERT INTO STUDIAZA
values (13,7,7,1);INSERT INTO STUDIAZA
values (14,8,8,1);
INSERT INTO STUDIAZA
values (15,9,9,1);
INSERT INTO STUDIAZA
values (7,10,10,1);
INSERT INTO STUDIAZA
values (8,11,11,1);
INSERT INTO STUDIAZA
values (16,12,12,1);
INSERT INTO STUDIAZA
values (17,13,13,1);
INSERT INTO STUDIAZA
values (18,14,14,1);
INSERT INTO STUDIAZA
values (19,15,15,1);
INSERT INTO STUDIAZA
values (18,16,16,1);
INSERT INTO STUDIAZA
values (7,1,17,2);
INSERT INTO STUDIAZAvalues (8,2,18,2);
INSERT INTO STUDIAZA
values (9,3,19,2);
INSERT INTO STUDIAZA
values (10,4,20,2);
INSERT INTO STUDIAZA
values (11,5,21,2);
INSERT INTO STUDIAZA
values (12,6,22,2);
INSERT INTO STUDIAZA
values (13,7,23,2);
INSERT INTO STUDIAZA
values (14,8,24,2);
INSERT INTO STUDIAZA
values (15,9,25,2);
INSERT INTO STUDIAZA
values (7,10,26,1);
INSERT INTO STUDIAZA
values (8,11,27,4);
INSERT INTO STUDIAZA
values (16,12,28,3);INSERT INTO STUDIAZA
values (17,13,29,5);
INSERT INTO STUDIAZA
values (18,14,30,3);
INSERT INTO STUDIAZA
values (19,15,31,2);
INSERT INTO STUDIAZA
values (18,16,32,2);
INSERT INTO STUDIAZA
values (15,9,33,2);
INSERT INTO STUDIAZA
values (7,10,34,2);
INSERT INTO STUDIAZA
values (8,11,35,2);
INSERT INTO STUDIAZA
values (16,12,36,2);
INSERT INTO STUDIAZA
values (17,13,37,3);
INSERT INTO STUDIAZA
values (18,14,38,2);INSERT INTO STUDIAZA
values (19,15,39,2);
INSERT INTO STUDIAZA
values (18,16,40,1);
-----------------------
INSERT INTO STUDIAZA
values (7,1,41,3);
INSERT INTO STUDIAZA
values (7,1,42,5);
INSERT INTO STUDIAZA
values (8,3,43,7);
--
INSERT INTO STUDIAZA
values (8,5,44,3);
INSERT INTO STUDIAZA
values (7,3,45,1);
INSERT INTO STUDIAZA
values (10,3,46,2);
INSERT INTO STUDIAZA
values (9,6,47,4);
INSERT INTO STUDIAZA
values (7,10,48,1);
INSERT INTO STUDIAZAvalues (12,5,49,2);
INSERT INTO STUDIAZA
values (17,13,50,3);
INSERT INTO STUDIAZA
values (17,13,51,3);
INSERT INTO STUDIAZA
values (19,15,52,2);
INSERT INTO STUDIAZA
values (19,15,53,2);
--------------------------------------------------------------------------------------------------------------------------------
CREATE TABLE ORAR(
id_orar number(4) constraint pk_id_orar primary key,
ora_inceput varchar2(10) constraint null_ora_inceput not null,
ora_final varchar2(10) constraint null_ora_final not null,
an_scolar varchar2(20) constraint null_an_orar not null,
constraint ck_id_orar check(id_orar>0)
);
alter table orar
modify(an_scolar varchar2(40));
----ORAR CREAT
--------------------------------------------------------------------------------------------------------------------------------
INSERT INTO ORAR
values (1,'10:00','19:00','2020-2021');
INSERT INTO ORAR
values (2,'08:00','18:00','2020-2021');INSERT INTO ORAR
values (3,'09:00','19:00','2020-2021');
INSERT INTO ORAR
values (4,'12:00','21:00','2020-2021');
INSERT INTO ORAR
values (5,'08:00','20:00','2020-2021');
INSERT INTO ORAR
values (6,'08:00','20:00','2020-2021');
INSERT INTO ORAR
values (7,'08:00','21:00','2020-2021');
INSERT INTO ORAR
values (8,'07:00','18:00','2020-2021');
INSERT INTO ORAR
values (9,'09:00','20:00','2020-2021');
INSERT INTO ORAR
values (10,'08:00','15:00','2020-2021');
INSERT INTO ORAR
values (11,'08:00','20:00','2020-2021');
INSERT INTO ORAR
values (12,'10:00','20:00','2020-2021');INSERT INTO ORAR
values (13,'08:00','18:00','2020-2021');
INSERT INTO ORAR
values (14,'-','-','VACANTA DE VARA');
--------------------------------------------------------------------------------------------------------------------------------
CREATE TABLE SALA(
id_angajat number(4) constraint null_id_angajat_sala not null,
id_sala number(4) constraint pk_id_sala primary key,
id_orar number(4) constraint null_id_orar_sala not null,
nume_sala varchar2(50),
etaj number(3),
constraint fk_id_orar_sala foreign key(id_orar) references ORAR(id_orar),
constraint fk_id_angajat_sala foreign key(id_angajat) references PROFESOR(id_angajat),
constraint ck_id_orar_sala check(id_orar>0),
constraint ck_id_sala check(id_sala>0),
constraint ck_id_angajat_sala check(id_angajat>0),
constraint unq_id_angajat_sala unique(id_angajat)
);
---SALA CREAT------------------------------------------------------------------------------------------------------------------
INSERT INTO SALA
values (7,1,1,'Muzica',1);
INSERT INTO SALA
values (8,2,2,'Muzica',1);
INSERT INTO SALA
values (9,3,3,'Muzica',1);INSERT INTO SALA
values (10,4,4,'Muzica',1);
INSERT INTO SALA
values (11,5,5,'Muzica',1);
INSERT INTO SALA
values (12,6,6,'Muzica',1);
INSERT INTO SALA
values (13,7,7,'Muzica',2);
INSERT INTO SALA
values (14,8,8,'Muzica',2);
INSERT INTO SALA
values (15,9,9,'Muzica',2);
INSERT INTO SALA
values (16,10,10,'Muzica',2);
INSERT INTO SALA
values (17,11,11,'Actorie',2);
INSERT INTO SALA
values (18,12,12,'Arte',3);
INSERT INTO SALA
values (19,13,13,'Arte',3);--------------------------------------------------------------------------------------------------------------------------------
CREATE TABLE CONCURS(
id_angajat number(4),
id_concurs number(4),
data_concurs date,
oras varchar2(30),
constraint pk_id_concurs primary key(id_concurs),
constraint fk_id_director_concurs foreign key(id_angajat) references DIRECTOR(id_angajat),
constraint ck_id_concurs check(id_concurs>0),
constraint ck_id_director_concurs check(id_angajat>0)
);
---CONCURS CREAT
--------------------------------------------------------------------------------------------------------------------------------
INSERT INTO CONCURS
values (1,1,to_date('22-11-2016', 'dd-mm-yyyy'),'Bucuresti');
INSERT INTO CONCURS
values (7,2,to_date('22-10-2017', 'dd-mm-yyyy'),'Brasov');
INSERT INTO CONCURS
values (9,3,to_date('19-11-2018', 'dd-mm-yyyy'),'Sibiu');
INSERT INTO CONCURS
values (10,4,to_date('23-12-2019', 'dd-mm-yyyy'),'Bran');
INSERT INTO CONCURS
values (14,5,to_date('22-10-2020', 'dd-mm-yyyy'),'Brasov');
INSERT INTO CONCURS
values (14,6,to_date('22-11-2020', 'dd-mm-yyyy'),'Pitesti');INSERT INTO CONCURS
values (14,7,to_date('01-05-2021', 'dd-mm-yyyy'),'Brasov');
--------------------------------------------------------------------------------------------------------------------------------
CREATE TABLE PARTICIPA(
id_elev number (4),
id_concurs number(4),
premiu_obtinut char(20),
constraint fk_id_elev_participa foreign key(id_elev) references ELEV(id_elev),
constraint fk_id_concurs_participa foreign key(id_elev) references ELEV(id_elev)
);---PARTICIPA CREAT
--------------------------------------------------------------------------------------------------------------------------------
INSERT INTO PARTICIPA
values (43,1,'I');
INSERT INTO PARTICIPA
values (44,3,'III');
INSERT INTO PARTICIPA
values (28,3,'I');
INSERT INTO PARTICIPA
values (29,3,'I');
INSERT INTO PARTICIPA
values (18,4,'II');
INSERT INTO PARTICIPA
values (19,4,'III');INSERT INTO PARTICIPA
values (20,4,'I');
INSERT INTO PARTICIPA
values (21,4,'MENTIUNE I');
INSERT INTO PARTICIPA
values (22,4,null);
INSERT INTO PARTICIPA
values (23,4,null);
INSERT INTO PARTICIPA
values (24,4,null);
INSERT INTO PARTICIPA
values (25,4,null);
INSERT INTO PARTICIPA
values (1,5,null);
INSERT INTO PARTICIPA
values (2,5,'Mentiune II');
INSERT INTO PARTICIPA
values (3,5,'Mentiune I');
INSERT INTO PARTICIPA
values (4,5,null);INSERT INTO PARTICIPA
values (5,5,null);
INSERT INTO PARTICIPA
values (6,5,'III');
INSERT INTO PARTICIPA
values (7,5,'II');
INSERT INTO PARTICIPA
values (43,5,'I');
INSERT INTO PARTICIPA
values (1,6,null);
INSERT INTO PARTICIPA
values (16,6,'Mentiune II');
INSERT INTO PARTICIPA
values (3,6,'Mentiune I');
INSERT INTO PARTICIPA
values (4,6,null);
INSERT INTO PARTICIPA
values (53,6,null);
INSERT INTO PARTICIPA
values (17,6,'III');
INSERT INTO PARTICIPAvalues (12,6,'II');
INSERT INTO PARTICIPA
values (43,6,'I')