create database if not exists ex_d5_pt2;

use ex_d5_pt2;

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
select studente.Nome_studente, studente.Matricola_Studente, esame.Voto,docente.Nome_Docente
from studente
inner join esame on studente.Matricola_Studente = esame.Matricola_Studente
inner join corso on esame.Codice_corso = corso.Codice_corso
inner join docente on corso.Matricola_docente = docente.Matricola_Docente
where esame.voto > 28;

-- 2.
select docente.Nome_docente, corso.Nome_corso, esame.Settore_scientifico
from docente	
inner join corso on docente.Matricola_Docente = corso.Matricola_docente
inner join esame on corso.Codice_corso = esame.Codice_corso
group by corso.Nome_corso;