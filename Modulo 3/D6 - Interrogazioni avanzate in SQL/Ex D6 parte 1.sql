create database if not exists ex_d6_pt1;

use ex_d6_pt1;

create table if not exists Studente(
    Matricola_Studente varchar(20),
    Nome_studente varchar(255) not null,
    Citta varchar(255),
    
    primary key (Matricola_Studente)
);

create table if not exists Docente(
    Matricola_Docente varchar(20),
    Nome_docente varchar(255) not null,
        
    primary key (Matricola_Docente)
);

create table if not exists Corso(
    Codice_corso varchar(20),
    Nome_corso varchar(255) not null,
		Matricola_docente varchar(20) references Docente(Matricola_Docente),
  
    primary key (Codice_corso)
 
);

create table if not exists Esame(
    Codice_corso varchar(20) references Corso(Codice_corso),
    Matricola_Studente varchar(20) references Studente(Matricola_Studente),
  	Data_esame date,
    Voto tinyint,
  	Settore_scientifico varchar(20),

    primary key (Codice_corso, Matricola_Studente)
);

-- 1.
select  studente.Matricola_Studente,
        studente.Nome_studente,
        max(esame.Voto) as voto_massimo,
        min(esame.voto) as voto_minimo,
        avg(esame.Voto) as media_voti,
        count(esame.voto) as numero_esami
from studente
inner join esame on studente.Matricola_Studente = esame.Matricola_Studente
group by studente.Matricola_Studente;

--2.
select  studente.Matricola_Studente,
		studente.Nome_studente,
		max(esame.Voto) as Voto_massimo,
		min(esame.voto) as Voto_minimo,
		avg(esame.Voto) as Media_voti,
        count(esame.voto) as numero_esami
from studente
inner join esame on studente.Matricola_Studente = esame.Matricola_Studente
group by studente.Matricola_Studente 
having avg(esame.Voto) > 25 and count(esame.Voto)>9
order by esame.voto_massimo;