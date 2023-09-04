create database if not exists ex_d6_pt2;

use ex_d6_pt2;

create table if not exists Studente(
    Matricola_Studente varchar(20),
    Nome_studente varchar(255) not null,
    Anno_laurea year,
    Titolo_Studio varchar(255),
    Voto_Laurea tinyint,
    
    primary key (Matricola_Studente)
);

create table if not exists Dipartimento(
    Codice_Dipartimento varchar(20),
    Nome_Dipartimento varchar(255) not null,
    Settore_Scientifico varchar(255),
    Numero_Docenti tinyint,
    
    primary key (Codice_Dipartimento)
);

create table if not exists ConcorsoMaster(
    Codice_Master varchar(20),
  	Codice_Dipartimento varchar(20) references Dipartimento(Codice_Dipartimento),
    Data_Pubblicazione date,
    Data_Scadenza date,
    Nr_Posti tinyint,
    
    primary key (Codice_Master)
);

create table if not exists PartecipaConcorsoMaster(
    Codice_Master varchar(20) references ConcorsoMaster(Codice_Master),
  	Codice_Dipartimento varchar(20) references Dipartimento(Codice_Dipartimento),
    Matricola_Studente varchar(20) references Studente(Matricola_Strudente),
    Data_Invio_domanda date,
    
    primary key (Codice_Master,Codice_Dipartimento,Matricola_Studente)
);

--1.
select studente.Nome_studente,
       dipartimento.Settore_Scientifico
from studente
inner join partecipaconcorsomaster on studente.Matricola_Studente = partecipaconcorsomaster.Matricola_Studente
inner join dipartimento on partecipaconcorsomaster.Codice_Dipartimento = dipartimento.Codice_Dipartimento
where studente.Matricola_Studente in (select partecipaconcorsomaster.Matricola_Studente
                                         from partecipaconcorsomaster
                                         group by partecipaconcorsomaster.Matricola_Studente
                                         having count(partecipaconcorsomaster.Matricola_Studente) = 3)
order by studente.Nome_studente ASC;

--2
SELECT studente.Matricola_Studente, studente.Nome_studente
FROM studente
JOIN partecipaconcorsomaster as pcm on pcm.Matricola_Studente=studente.Matricola_Studente
JOIN concorsomaster as cm on cm.Codice_Master=pcm.Codice_Master
WHERE studente.Voto_Laurea>100
GROUP BY studente.Matricola_Studente, studente.Nome_Studente
HAVING COUNT(cm.Codice_Master)>=2 AND COUNT(DISTINCT cm.Data_Pubblicazione) < COUNT(cm.Codice_Master);