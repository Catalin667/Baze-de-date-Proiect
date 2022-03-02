
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
---                                                              APLICATII                                                                                                                                        ---
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
----PROBLEMA 1
---Sa se afiseze elevii(cu nume,prenume,disciplina/disciplinele pe care le studiaza,numele si prenumele profesorului coordonator
---anul de studiu,denumirea probei de examen pe care o sustine,rezultatul in urma acestuia,nota,ocupatia) care sustin examenul de admitere
---si examenul corespunzator perioadei I de studiu. Rezultatele se vor ordona descrescator in functie de lungimea denumirii disciplinei 
---studiate de acesta. Daca ocupatia elevului nu este inregistrata se va afisa 'Nu este inregistrata!'.
select e.id_elev as "COD ELEV", upper(e.nume) as "NUME",upper(e.prenume) as "PRENUME",nvl(e.ocupatia,'Nu este inregistrata!') as OCUPATIA,d.denumire_disciplina as "DSCIPLINA",
concat(concat(a.nume,' '),a.prenume) as "PROFESOR",s.an_studiu as "AN STUDIU",ex.denumire_proba as"PROBA EXAMEN",initcap(n.promovat) as REZULTAT,
n.nota as NOTA,n.data_examen as "DATA EXAMEN"
from elev e,disciplina d,examen ex,nota n, studiaza s, angajat a
where e.id_elev=n.id_elev
and n.id_disciplina=ex.id_disciplina
and ex.id_disciplina=d.id_disciplina
and ex.id_examen=n.id_examen
and (lower(ex.denumire_proba) like 'admitere'  or  (ex.denumire_proba like 'EXAMEN PERIOADA I' and lower(n.promovat) like 'promovat'))
and s.id_angajat=a.id_angajat
and s.id_disciplina=n.id_disciplina
and e.id_elev=s.id_elev
order by length(d.denumire_disciplina) desc;
---57 de rezultate 
---42	BETERINGHE	ELENA	Canto Muzica-Populara	Sidonia Magdalena	5	EXAMEN PERIOADA I	Promovat	7,61	13-02-2019 |
---41	NICOLESCU	ANDREI	Canto Muzica-Populara	Sidonia Magdalena	3	EXAMEN PERIOADA I	Promovat	10	    13-02-2021 | => 
---43	NEAGU	    IONUT	Canto Muzica-Clasica	Macavei Mariana	    7	EXAMEN PERIOADA I	Promovat	10	    13-02-2019 | 

---3 elevi care au sustinut examenul corespunzator perioadei I si au promovat         |                                                                                                                   
---53 de elevi inscrisi care au sustinut obligatoriu examenul de admitere             |=>59 de rezultate
---1 elev care studiaza doua materii si nu a sustinut niciun alt examen               |
--------------------------------------------------------------------------------------------------------------------------------
select a.nume,a.prenume,p.specializari,e.id_elev,e.nume as "Nume elev",d.denumire_disciplina as "Denumire disciplina",s.an_studiu
from angajat a,profesor p, elev e, disciplina d,studiaza s
where a.id_angajat=p.id_angajat
and p.id_angajat=s.id_angajat
and e.id_elev=s.id_elev
and d.id_disciplina=s.id_disciplina
order by e.id_elev;---53 de elevi inscrisi din care 1 elev studiaza doua discipline ---POPESCU
---Popescu	Muzica	Canto Muzica-Pop	Cojocaru	Ioana	    1
---Popescu	Muzica	Canto Muzica-Populara	Sidonia	Magdalena	1
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
---PROBLEMA 2
----Sa se afiseze informatii(nume,prenume,denumirea probei de examen,nota obtinuta,numele si prenumele profesorului) despre elevii care au sustinut examenele corespunzatoare probei I si II si au obtinut o nota 
---care se afla in multimea mediilor de admitere grupate pe discipline,pe examene si pe datele calendaristice in care s-au sustinut acestea.
select e.nume as NUME, e.prenume as PRENUME, ex.denumire_proba as PROBA,n.nota as NOTA,(select nume  from angajat where id_angajat=p.id_angajat) as "NUME PROFESOR",
(select prenume  from angajat where id_angajat=p.id_angajat) as "PRENUME PROFESOR"                                   
from elev e, nota n, examen ex, studiaza s, profesor p
where e.id_elev=n.id_elev
and s.id_angajat=p.id_angajat
and s.id_elev=e.id_elev
and n.id_examen=ex.id_examen
and (lower(ex.denumire_proba) like '%perioada i' or lower(ex.denumire_proba) like '%perioada ii')
and n.nota   in (select round(avg(n1.nota),3)
                    from nota n1, examen ex1, disciplina d1
                    where n1.id_examen=ex1.id_examen
                    and ex1.id_disciplina=d1.id_disciplina
                    and lower(ex1.denumire_proba) like 'admitere'
                    group by n1.id_examen,d1.id_disciplina,n1.data_examen
                    having (n1.data_examen>to_date('01-01-2016', 'dd-mm-yyyy'))
                    )
order by e.nume;
---5 rezultate 
-----EXPLICATIE----
---------------Media examenelor de admitere pe datele in care s-au sutinut examenele,pe tipurile de examen si pe discipline-------
select d.id_disciplina,ex.denumire_proba,d.denumire_disciplina,n.data_examen, round(avg(n.nota),3)
from nota n, examen ex, disciplina d
where n.id_examen=ex.id_examen
and ex.id_disciplina=d.id_disciplina
and ex.denumire_proba='ADMITERE'
group by n.id_examen,ex.denumire_proba,d.id_disciplina,d.denumire_disciplina,n.data_examen
order by d.id_disciplina; --44 rezultate 
/*
select d.id_disciplina,ex.denumire_proba,d.denumire_disciplina, round(avg(n.nota),3)
from nota n, examen ex, disciplina d
where n.id_examen=ex.id_examen
and ex.id_disciplina=d.id_disciplina
and ex.denumire_proba like '%PERIOADA II'
group by n.id_examen,ex.denumire_proba,d.id_disciplina,d.denumire_disciplina
order by d.id_disciplina; --44 rezultate 
*/

select e.nume as NUME, e.prenume as PRENUME, ex.denumire_proba as PROBA,n.nota as NOTA,(select nume 
                                                    from angajat
                                                    where id_angajat=p.id_angajat) as PROFESOR

from elev e, nota n, examen ex, studiaza s, profesor p
where e.id_elev=n.id_elev
and s.id_angajat=p.id_angajat
and s.id_elev=e.id_elev
and n.id_examen=ex.id_examen
and (lower(ex.denumire_proba) like '%perioada i' or lower(ex.denumire_proba) like '%perioada ii');

---Nicolescu	Andrei	EXAMEN PERIOADA I	10	Sidonia---->se afla in multimea mediilor---->1
---Beteringhe	Elena	EXAMEN PERIOADA I	7,61	Sidonia---->nu exista in mediile grupate pe discipline si pe ani
---Beteringhe	Elena	EXAMEN PERIOADA II	3,67	Sidonia---->nu exista in mediile grupate pe discipline si pe ani
---Beteringhe	Elena	RESTANTA PERIOADA II	10	Sidonia---->se afla in multimea mediilor---->2
---Neagu	Ionut	EXAMEN PERIOADA I	10	Macavei---->se afla in multimea mediilor---->3
---Neagu	Ionut	EXAMEN PERIOADA II	10	Macavei---->se afla in multimea mediilor---->4
---Bujor	Andrada	EXAMEN PERIOADA I	4,58	Macavei---->nu exista in mediile grupate pe discipline si pe ani
---Bujor	Andrada	RESTANTA PERIOADA I	9,3	Macavei---->se afla in multimea mediilor---->5
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 
INSERT INTO ANGAJAT
values(20,'Popa','Claudia','Brasov','0713/486/743','popaclaudia@gmail.com',to_date('03-05-2021', 'dd-mm-yyyy'),5034.34);
insert into angajat
values(21,'Mihai','Raluca','Brasov','0753/112/749','ralucamihai@gmail.com',to_date('04-01-2021', 'dd-mm-yyyy'),5034.34);
 
INSERT INTO SECRETAR
values(20,1);

INSERT INTO SECRETAR
values(21,2);


---PROBLEMA 3
---Secretarilor li se maresc salariile cu 50% daca acestia au o vechime mai mare de 6 luni, cu 25% daca acestia au o vechime 
---mai mare de 3 luni cu conditia de a se gasi in lista celor care completeaza diferite tipuri de diploma.
----Rezolvare
select a.id_angajat,a.nume,a.prenume,a.data_angajarii,a.salariu as "SALARIU INITIAL",
case when  MONTHS_BETWEEN(sysdate, data_angajarii)>6 then salariu+salariu*0.5
when MONTHS_BETWEEN(sysdate, data_angajarii)>3 then salariu+salariu*0.25
else salariu
end as "SALARIU MARIT"
from angajat a,secretar s
where a.id_angajat=s.id_angajat
and a.id_angajat in (select distinct angajat.id_angajat
                    from diploma, angajat 
                    where angajat.id_angajat=diploma.id_angajat)
order by a.id_angajat;
----5 rezultate
---20	Popa	Claudia	Brasov	0713/486/743	popaclaudia@gmail.com         	03-05-2021	5034,34|  nu au completat nicio diploma
---21	Mihai	Raluca	Brasov	0753/112/749	ralucamihai@gmail.com         	04-01-2021	5034,34|

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
---PROBLEMA 4
---Sa se afiseze informatii(nume,prenume,etc.) despre elevii care au participat macar la un concurs(organizat de un director a carei vechime in scoala este >=2) si au obtinut premiul I.
---Acestia vor primi o reducere de 10% pentru ambele perioade de studiu, doar daca acestia se afla in perioada de scolarizare, sa se afiseze si noua taxa.
select distinct e.id_elev,e.nume
from elev e, participa p, concurs c
where p.id_elev=e.id_elev
and c.id_concurs=p.id_concurs
and  p.premiu_obtinut='I';

---43	Neagu             |
---28	Hodosan           |
---29	Sora              |
---20	Pop               |=>4 elevi care participa la concurs si primesc premiul I
---43	Neagu             |
---43	Neagu             |  
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--REZOLVARE PROBLEMA -----
select e.nume as "Nume",e.prenume as "Prenume",ps.taxa_scolarizare_an-taxa_scolarizare_an*0.10 as "Taxa dupa reducere",ps.denumire_perioada as "Perioada de studii",d.denumire_disciplina as "Denumire disciplina"
from perioada_studii ps,elev e, studiaza s, disciplina d
where e.id_elev=s.id_elev
and s.id_disciplina=d.id_disciplina
and d.id_disciplina=ps.id_disciplina
and e.id_elev not in (select e.id_elev 
                        from nota n, elev e, examen ex, disciplina d
                        where n.id_elev=e.id_elev
                        and n.id_examen=ex.id_examen
                        and d.id_disciplina=ex.id_disciplina
                        and (ex.denumire_proba='EXAMEN PERIOADA I' or ex.denumire_proba='EXAMEN PERIOADA II'))
and e.id_elev in (select distinct e.id_elev
                    from  participa p, concurs c, director dr
                    where p.id_elev=e.id_elev
                    and c.id_concurs=p.id_concurs
                    and c.id_angajat=dr.id_angajat
                    and dr.vechime>=2
                    and  p.premiu_obtinut='I');
----6 rezultate, deoarece li se va face reducere atat pentru perioada de scolarizare cat si pentru perioada de specializare, celor care se afla in perioada de scolarizare
---Neagu a sustinut toate toate examenele, deci nu se incadreaza
---Directorii care au organizat aceste concursuri au o vechime mai mare sau egala cu doi
------------------
select e.id_elev,d.denumire_disciplina,ex.denumire_proba
from nota n, elev e, examen ex, disciplina d
where n.id_elev=e.id_elev
and n.id_examen=ex.id_examen
and d.id_disciplina=ex.id_disciplina
and e.nume='Neagu';
--3 rezultate 
---43	Canto Muzica-Clasica	ADMITERE            
---43	Canto Muzica-Clasica	EXAMEN PERIOADA I
---43	Canto Muzica-Clasica	EXAMEN PERIOADA II
----------------
select e.id_elev,e.nume,ex.denumire_proba 
from nota n, elev e, examen ex, disciplina d
where n.id_elev=e.id_elev
and n.id_examen=ex.id_examen
and d.id_disciplina=ex.id_disciplina
and (ex.denumire_proba='EXAMEN PERIOADA I' or ex.denumire_proba='EXAMEN PERIOADA II');
---6 elevi care sustin si examenul perioadei I de studiu si examenul perioadei II.
---41	Nicolescu	EXAMEN PERIOADA I
---42	Beteringhe	EXAMEN PERIOADA II
---42	Beteringhe	EXAMEN PERIOADA I
---43	Neagu	EXAMEN PERIOADA II
---43	Neagu	EXAMEN PERIOADA I
---44	Bujor	EXAMEN PERIOADA I
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
----PROBLEMA 5
----Clauza with
---Sa se creeze un bloc de cerere care preia informatii despre toti elevii inscrisi din 2017, pana in prezent si un mesaj specific, referitor la nivelul la care se afla in domeniul pe care il studiaza.

with tabel_clasament(nume,prenume,varsta,telefon,denumire_proba,data_examen)
as ( select e.nume,e.prenume,e.varsta,e.telefon,ex.denumire_proba,n.data_examen
     from elev e,nota n,examen ex,disciplina d
     where e.id_elev=n.id_elev
     and ex.id_examen=n.id_examen
     and ex.denumire_proba='ADMITERE'
     and n.id_disciplina=d.id_disciplina
     )
select nume,prenume,varsta,telefon,
decode(data_examen,to_date('07-07-2021', 'dd-mm-yyyy'),'Elevul este boboc',to_date('07-07-2020', 'dd-mm-yyyy'),'Elevul este incepator',to_date('05-07-2019', 'dd-mm-yyyy'),'Elevul este aproape specialist',
to_date('05-07-2019', 'dd-mm-yyyy'),'Elevul este aproape specialist',to_date('07-07-2018', 'dd-mm-yyyy'),'Elevul este specialist',to_date('07-07-2017', 'dd-mm-yyyy'),'Elevul este profesionst',
'S-a pierdut data examenului de admitere') as "MESAJ"
from tabel_clasament;
----54 de rezultate, pentru cei 53 de elevi inscrisi, din care 1 care  studiaza 2 materii, deci a sustinut doua examene de admitere
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
---13.Sa se insereze 13 orare pentru anul scolar 2021-2022 folosind secvente
create sequence id_orar
start with 15
increment by 1
nocycle
nocache;

INSERT INTO ORAR
values(id_orar.nextval,'08:00','12:00','2021-2022');

INSERT INTO ORAR
values(id_orar.nextval,'09:00','17:00','2021-2022');

INSERT INTO ORAR
values(id_orar.nextval,'10:00','19:00','2021-2022');

INSERT INTO ORAR
values(id_orar.nextval,'08:00','20:00','2021-2022');

INSERT INTO ORAR
values(id_orar.nextval,'07:00','13:00','2021-2022');

INSERT INTO ORAR
values(id_orar.nextval,'09:00','19:00','2021-2022');

INSERT INTO ORAR
values(id_orar.nextval,'09:00','17:00','2021-2022');

INSERT INTO ORAR
values(id_orar.nextval,'09:00','17:00','2021-2022');

INSERT INTO ORAR
values(id_orar.nextval,'09:00','21:00','2021-2022');

INSERT INTO ORAR
values(id_orar.nextval,'10:00','18:00','2021-2022');

INSERT INTO ORAR
values(id_orar.nextval,'08:00','19:00','2021-2022');

INSERT INTO ORAR
values(id_orar.nextval,'08:00','21:00','2021-2022');

INSERT INTO ORAR
values(id_orar.nextval,'11:00','17:00','2021-2022');

INSERT INTO ORAR
values(id_orar.nextval,'10:00','19:00','2021-2022');
select * from orar;
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
---12. Implementarea a 3 operatii de actualizare sau suprimare a datelor utilizând subcereri.
---1.Sa se mareasca salariul cu 25% profesorilor care predau 'Canto Muzica-Clasica'
alter table angajat
modify (salariu number(9,2));
Update Angajat
set salariu = salariu + salariu*0.25
where id_angajat in (select a.id_angajat
                     from angajat a,profesor p, studiaza s,disciplina d
                     where a.id_angajat=p.id_angajat 
                     and s.id_angajat=p.id_angajat
                     and d.id_disciplina=s.id_disciplina
                     and d.denumire_disciplina='Canto Muzica-Clasica'
                     );--4 coloane actualizate
rollback;

-----------------------------------------------------
---EXPLICATIE 
---Sunt 4 profesori care predau Canto Muzica-Clasica
select a.id_angajat,a.nume,a.prenume,a.salariu
 from angajat a,profesor p, studiaza s,disciplina d
 where a.id_angajat=p.id_angajat 
 and s.id_angajat=p.id_angajat
 and d.id_disciplina=s.id_disciplina
 and d.denumire_disciplina='Canto Muzica-Clasica';
---7	Sidonia	Magdalena
---9	Marin	Flavius
---9	Marin	Flavius
---10	Opris	Adriana
---8	Macavei	Mariana
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
---2.Sa se actualizeze numarul de ore pe saptamana la fiecare materie care are taxa de scolarizare pe an macar a unei perioade de studiu mai mare
---decat 1000.
ALTER TABLE DISCIPLINA
modify (nr_ore_sapt number(3));

Update DISCIPLINA
set nr_ore_sapt=nr_ore_sapt+2
where id_disciplina in (select d.id_disciplina
                        from disciplina d, perioada_studii p
                        where p.id_disciplina=d.id_disciplina
                        and p.taxa_scolarizare_an>1000);
                        ---14 rezultate
--------------------------------------------------------------------------------------------------------------------------------
---EXPLICATIE
select nr_ore_sapt,denumire_disciplina
from disciplina
where id_disciplina in (select d.id_disciplina
                        from disciplina d, perioada_studii p
                        where p.id_disciplina=d.id_disciplina
                        and p.taxa_scolarizare_an>1000);
rollback;
/*14 discipline care au taxa de scolarizare pe an a unei discipline >1000
Canto Muzica-Populara	4
Canto Muzica-Pop	4
Canto Muzica-Clasica	6
Pian	4
Clarinet	3
Vioara	6
Tambal	3
Saxofon	5
Acordeon	4
Teatru muzical	4
Actorie	6
Pictura	6
Sculptura	8
Grafica	8
*/
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
---3.Sa se stearga toti elevii care au participat la concursurile care s-au tinut in anul in care a fost director Cojocaru Ioana
delete 
from participa
where id_elev in (select a.id_angajat
                  from angajat a, concurs c,director d
                  where a.id_angajat=d.id_angajat
                  and c.id_angajat=d.id_angajat
                  and d.an_start='2016');
rollback;
-------------------------------------------------------------------------------------------------------------------------------                
select a.id_angajat,a.nume,a.prenume,d.an_start
from angajat a,director d
where a.id_angajat=d.id_angajat;
---1	Cojocaru	Ioana	2016---> director in 2016
---2 coloane sterse
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- 

INSERT INTO CONCURS
values (null,8,to_date('22-11-2014', 'dd-mm-yyyy'),'Codlea');

INSERT INTO CONCURS
values (null,9,to_date('15-03-2014', 'dd-mm-yyyy'),'Codlea'); 
describe participa;
INSERT INTO PARTICIPA
values(43,8,'I');

INSERT INTO PARTICIPA
values(43,9,'II');

---Sa se afiseze informatii despre toate concursurile(data,orasul, de cine a fost organizat->in cazul in care se cunoaste aceasta informatie, altfel se va afisa
---un mesaj corespunzator) la acre au participat elevii care au obtinut nota 10 in examenul de admitere.
select ('Concursul ' || c.id_concurs || ' din data de '||c.data_concurs || ' ' ||
case 
when dr.id_angajat is null then 'nu se stie de cine a fost organizat'
else 'a fost organizat de ' || (select nume from angajat where id_angajat=dr.id_angajat) ||' ' || (select prenume from angajat where id_angajat=dr.id_angajat)
end) as "INFORMATII DESPRE CONCURS"
from director dr, concurs c, elev e, participa p
where dr.id_angajat(+)=c.id_angajat
and p.id_concurs=c.id_concurs
and p.id_elev=e.id_elev
and e.id_elev in (select  el.id_elev
                  from nota n,examen ex, elev el
                  where n.id_examen=ex.id_examen
                  and n.id_elev=el.id_elev
                  and ex.denumire_proba='ADMITERE'
                  and n.nota=10);
---7 rezultate 
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------