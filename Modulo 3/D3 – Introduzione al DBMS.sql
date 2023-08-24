create database Esercizio_D3;

use Esercizio_D3;

create table if not exists  Impiegato(
	Codice_fiscale varchar(20),
    Nome varchar(20) not null,
    Titolo_di_Studio varchar(20),
    Recapito varchar(20),
    
    primary key (Codice_fiscale)
);

create table if not exists  Store(
	Codice_Numerico_Univoco varchar(20),
    Indirizzo_Fisico varchar(255) not null,
    Numero_Telefono varchar(20),
    
    primary key (Codice_Numerico_Univoco)
);

create table if not exists  Videogioco(
	Titolo varchar(255),
    Sviluppatore varchar(255),
    Anno_Distribuzione year,
    Costo decimal(3,2),
    Genere varchar(20),
    Remake enum("Si","No"),
   
   primary key (Titolo,Sviluppatore)
);

create table if not exists  Lavorare(
	Periodo_lavoro varchar(255),
    Codice_Numerico_Univoco varchar(20) references Store(Codice_Numerico_Univoco),
    Codice_fiscale varchar(20) references Impiegato(Codice_discale),
    Carica_ricoperta varchar(255),
    Remake enum("Si","No"),
   
   primary key (Periodo_Lavoro)
);

create table if not exists  Trovare(
    Codice_Numerico_Univoco varchar(20) references Store(Codice_Numerico_Univoco),
	Titolo varchar(255) references Videogioco(Titolo),
    Sviluppatore varchar(255) references Videogioc(Sviluppatore),
    Numero_copie tinyint unsigned,
    Posizione_settore varchar(20)
 
);
