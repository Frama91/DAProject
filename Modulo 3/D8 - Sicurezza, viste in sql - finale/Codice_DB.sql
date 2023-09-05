create database if not exists ex_D8;
use ex_d8;

create table if not exists Indirizzo(
 Cod_Indirizzo varchar(3),
  Nome varchar(255),
  Durata_anni tinyint,
  primary key(Cod_Indirizzo)
  );
  
create table if not exists 	Classe(
  Anno_sezione varchar(3),
  Cod_Indirizzo varchar(3) references Indirizzo(Cod_Indirizzo),
  Piano tinyint,
  Corridoio varchar(2),
  Numero_iscritti tinyint,
  
  primary key(Anno_sezione,Cod_Indirizzo)
  );

create table if not exists 	Alunno(
  Cod_Fisc_Alunno varchar(15),
  Anno_sezione varchar(3)references Classe(Anno_sezione),
  Nome varchar(20),
  Cognome varchar(20),
  Recapito varchar(20),
  Data_prima_iscrizione date,
  
  primary key(Cod_Fisc_Alunno, Anno_sezione)
  );
  
  create table if not exists 	Professore(
  Cod_Fisc_Professore varchar(15),
  Nome varchar(20),
  Cognome varchar(20),
  Recapito varchar(20),
  Data_nascita date,
  
  primary key(Cod_Fisc_Professore)
  );
  
 create table if not exists 	Insegnare(
  Cod_Fisc_Professore varchar(15)references Professore(Cod_Fisc_Professore),
  Anno_sezione varchar(3)references Classe(Anno_sezione),
  Materia varchar(20),
 
  primary key(Cod_Fisc_Professore, Anno_sezione)
  );

 create table if not exists 	Valutare(
  Cod_Fisc_Professore varchar(15) references Professore(Cod_Fisc_Professore),
  Cod_Fisc_Alunno varchar(15) references Alunno(Cod_Fisc_Alunno),
  Voto tinyint,
 
  primary key(Cod_Fisc_Professore, Cod_Fisc_Alunno)
  );
  
  
  Insert into Indirizzo(Cod_Indirizzo,Nome,Durata_anni)
  Values
  	("I01","Ordinario",5),
    ("I02","Tecnologico",3),
    ("I03","Linguistico",2),
    ("I04","Artistico",4),
    ("I05","Lettere classiche",5),
    ("I06","Classico",5),
    ("I07","Industriale",5);
    
Insert into Classe(Anno_sezione,Cod_Indirizzo,Piano,Corridoio,Numero_iscritti)
Values 
	("1B","I01",1,"A",20),
  ("5C","I03",2,"A",30),
  ("3A","I02",2,"C",22),
  ("4B","I07",2,"D",25),
  ("2E","I03",1,"D",26),
  ("1C","I02",1,"A",22),
  ("4G","I06",1,"B",25),
  ("1A","I06",2,"A",27),
  ("3D","I03",2,"D",28),
  ("2F","I02",1,"C",21),
  ("4F","I06",1,"B",18),
  ("2C","I06",2,"A",26),
  ("3F","I03",2,"D",25),
  ("4A","I02",1,"C",19);
  
Insert into Alunno(Cod_Fisc_Alunno,Anno_sezione,Nome,Cognome,Recapito,Data_prima_iscrizione)
Values
	("WVBQTA87B02F536K","1B","Valerio","Bianchi",32516489,"2010-09-11"),
  ("QDCMTD70M46A302F","4A","Marco","Gioielli",4343433,"2011-11-09"),
  ("THZRZD36C68D689V","4F","Paolo","Verdi",453453,"2018-09-08"),
  ("LNZTGC68P06L007Q","1A","Lucia","Verdi",2642364,"2017-10-12"),
  ("JRRKQS82L06Z508V","3D","Lucrezia","Rossi",46243,"2017-09-14"),
  ("LLZPJG56D68I666T","3D","Maria","Blu",46356,"2015-09-13"),
  ("KZDBUO42T20A462J","3D","Crocetta","Ocerchietto",432566343,"2020-10-11"),
  ("GBFCGH40D48L207V","2D","Onofrio","Osifrio",6541665461,"2014-09-19"),
  ("NSMZWH55H55C155B","4D","Massimo","Divertimento",451245,"2015-08-14"),
  ("SZBFRR38D07C594J","1B","Attanasio","Anastasio",564165441,"2014-08-30"),
  ("NYBLJR33R56E412U","2E","Crocifissa","male",240656,"2017-08-31"),
  ("HNFDZV44L04E965E","1C","Concetto","Laqualunque",65532412,"2016-09-15"),
  ("LBMLHB65E07C267Y","1C","Orlando","Furioso",967543,"2016-09-14"),
  ("FGZVLF72T28A329A","1C","Dolores","D.Panza",7742743453,"2016-09-12"),
  ("FHRROI92P17H738Y","1C","Ernesto","Sparalesto",134343534,"2016-09-11");
  
insert into Professore(Cod_Fisc_Professore,Nome,Cognome,Recapito,Data_nascita)
Values
	("DZRZCG32A23B643S","Leonarda","Tarda",5463215,"1965-07-15"),
  ("JYTYNL98P55E485Q","Mario","Super",64135652,"1965-10-04"),
  ("YHZHMX43C62I193Y","Solid","Snake",4233454,"1966-12-09"),
  ("SYHGKA90D27A227C","Liquid","Snake",434533,"1988-02-03"),
  ("NXFBFB76D56L845M","Eva","Longoria",43453,"1985-06-04"),
  ("HWSGQK29M47I612Z","Iuseff","Falegname",6546541,"1970-02-11"),
  ("HQXKGV78H07F448S","Massimo","Della Pena",9586513,"1980-06-11");
  
insert into Insegnare(Cod_Fisc_Professore,Anno_sezione,Materia)
Values
  ("DZRZCG32A23B643S","1B","Matematica"),
  ("JYTYNL98P55E485Q","5C","Italiano"),
  ("YHZHMX43C62I193Y","3A","Francese"),
  ("SYHGKA90D27A227C","3A","Spagnolo"),
  ("NXFBFB76D56L845M","2F","Latino"),
  ("HWSGQK29M47I612Z","4A","Falegnameria"),
  ("DZRZCG32A23B643S","3F","Matematica"),
  ("JYTYNL98P55E485Q","3F","Italiano"),
  ("YHZHMX43C62I193Y","3F","Francese"), 
  ("SYHGKA90D27A227C","2F","Spagnolo"),
  ("NXFBFB76D56L845M","4A","Latino"),
  ("HWSGQK29M47I612Z","1A","Falegnameria"),
  ("HQXKGV78H07F448","1C","Chimica"),
  ("HQXKGV78H07F448","3D","Chimica"),
  ("HQXKGV78H07F448","1A","Chimica");
  
insert into Valutare (Cod_Fisc_Professore, Cod_fisc_alunno, Voto)
Values
	("DZRZCG32A23B643S","WVBQTA87B02F536K",96),
  ("NXFBFB76D56L845M","LLZPJG56D68I666T",80),
  ("NXFBFB76D56L845M","NYBLJR33R56E412U",70),
  ("YHZHMX43C62I193Y","FGZVLF72T28A329A",45),
  ("NXFBFB76D56L845M","FGZVLF72T28A329A",66),
  ("JYTYNL98P55E485Q","LLZPJG56D68I666T",58),
  ("NXFBFB76D56L845M","THZRZD36C68D689V",98),
  ("SYHGKA90D27A227C","QDCMTD70M46A302F",87),
  ("SYHGKA90D27A227C","SZBFRR38D07C594J",98),
  ("JYTYNL98P55E485Q","NYBLJR33R56E412U",79),
  ("NXFBFB76D56L845M","HNFDZV44L04E965E",96),
  ("NXFBFB76D56L845M","WVBQTA87B02F536K",94),
  ("YHZHMX43C62I193Y","WVBQTA87B02F536K",56),
  ("JYTYNL98P55E485Q","WVBQTA87B02F536K",76),
  ("DZRZCG32A23B643S","HNFDZV44L04E965E",83),
  ("HQXKGV78H07F448","WVBQTA87B02F536K",84),
  ("HQXKGV78H07F448","SZBFRR38D07C594J",71),
  ("HQXKGV78H07F448","LLZPJG56D68I666T",63),
  ("DZRZCG32A23B643S","SZBFRR38D07C594J",66);

  
  
-- .1 Visualizza Nome, Cognome, Codice Fiscale e Numero di classi per ogni insegnante
select professore.Nome as "Nome",
			 professore.Cognome as "Cognome",
       professore.Cod_Fisc_Professore as "Codice Fiscale", 
       Count(insegnare.Cod_Fisc_Professore) as "Numero Classi"
from professore
inner join insegnare on professore.Cod_Fisc_Professore = insegnare.Cod_Fisc_Professore
group by professore.Cod_Fisc_Professore;

-- .2 Visualizza Nome, Cognome, Codice Fiscale e media voti per ogni alunno
select alunno.nome as "Nome", 
			 alunno.Cognome as "Cognome",
       alunno.Cod_Fisc_Alunno as "Codice Fiscale",
       Avg(valutare.Voto) as "Media Voti"
from alunno
inner join valutare on alunno.Cod_Fisc_Alunno = valutare.Cod_Fisc_Alunno
group by alunno.Cod_Fisc_Alunno;

-- .3 Visualizza Nome, Cognome e Codice fiscale dei professori con più di 60 anni (60*365 = 21900)
select professore.Nome as "Nome",
			 professore.Cognome as "Cognome",
       professore.Cod_Fisc_Professore as "Codice Fiscale"
from professore
where datediff(now(),professore.Data_nascita) > 21900;

-- .4 Visualizza il numero di alunni per ogni indirizzo
select indirizzo.Nome as "Nome Indirizzo",
			 sum(classe.Numero_iscritti) as "Numero alunni"			 
from indirizzo
inner join classe on indirizzo.Cod_Indirizzo = classe.Cod_Indirizzo
group by indirizzo.Nome;

-- .5 Visualizza Nome, Cognome, Codice fiscale e numero di alunni per ogni professore
select professore.Nome as "Nome",
			 professore.Cognome as "Cognome",
       professore.Cod_Fisc_Professore as "Codice Fiscale",
       Sum(classe.Numero_iscritti) as "Totale alunni"
from professore
inner join insegnare on professore.Cod_Fisc_Professore = insegnare.Cod_Fisc_Professore
inner join classe on insegnare.Anno_sezione = classe.Anno_sezione
group by professore.Cod_Fisc_Professore;

-- 6. Visualizza Nome, Cognome e Classe degli alunni poi ordina in base alla data di iscrizione e visualizza la durata dell'indirizzo aa cui sono iscritti
select alunno.nome as "Nome", 
			 alunno.Cognome as "Cognome",
			 alunno.Anno_sezione as "Classe",
       indirizzo.Durata_anni as "Durata indirizzo"
from alunno
inner join classe on alunno.Anno_sezione = classe.Anno_sezione
inner join indirizzo on classe.Cod_Indirizzo = indirizzo.Cod_Indirizzo
order by indirizzo.Durata_anni;

-- 7. Visualizza la posizione della classe ed il cognome degli alunni il cui cognome inizia con la "V"
select  alunno.Cognome as "Cognome alunno",
				concat(classe.Piano,"° piano, Corridoio ",classe.Corridoio) as "Posizione classe"
from classe
inner join alunno on classe.Anno_sezione = alunno.Anno_sezione
where alunno.Cognome like "v%";

-- 8. Visualizza Nome e Cognome dell'alunno con la valutazione più alta.Riporta anche Nome e Cognome del professore  
select concat(alunno.nome, " ", alunno.cognome) as "Alunno",
			 concat(professore.nome, " ", professore.Cognome) as "Insegnante",
       max(valutare.Voto) as "Valutazione"
from alunno
inner join valutare on alunno.Cod_Fisc_Alunno = valutare.Cod_Fisc_Alunno
inner join professore on valutare.Cod_Fisc_Professore = professore.Cod_Fisc_Professore;

-- 9. Visualizza ed ordina, in modo decrescente, per data di prima iscrizione, il nome, il cognome e la data di iscrizione degli alunni iscritti all'indirizzo "Tecnologico"
select alunno.nome as "Nome",
			 alunno.Cognome as "Cognome",
       date_format(alunno.Data_prima_iscrizione,'%d-%m-%Y') as "Data iscrizione"
from alunno
inner join classe on alunno.Anno_sezione = classe.Anno_sezione
inner join indirizzo on classe.Cod_Indirizzo = indirizzo.Cod_Indirizzo
where indirizzo.Nome = "Tecnologico"
order by alunno.Data_prima_iscrizione Desc;

-- 10. Visualizza Nome, Cognome e Valutazione di tutti gli alunni di "Massimo Della Pena"
select alunno.Nome as "Nome",
			 alunno.Cognome as "Cognome",
       valutare.Voto as "Valutazione"
from alunno 
inner join valutare on alunno.Cod_Fisc_Alunno = valutare.Cod_Fisc_Alunno
inner join professore on valutare.Cod_Fisc_Professore = professore.Cod_Fisc_Professore
where professore.Nome = "Massimo" and professore.Cognome = "Della Pena";