create database if not exists ex_d5_pt1;

use ex_d5_pt1;

create table if not exists Disco(
    Nro_serie_disco varchar(20),
    Titolo_album varchar(255),
    Anno year,
    Prezzo decimal(3,2) unsigned,

    primary key (Nro_serie_disco)
);

create table if not exists Autore(
    Nome_Autore varchar(255),
    Titolo_canzone varchar(255),

    primary key (Nome_Autore, Titolo_canzone)
);

create table if not exists Esecuzione(
    Codice_reg varchar(20),
    Titolo_canzone varchar(255) references Autore(Titolo_canzone),
    Anno year,

    primary key (Codice_reg)
);

create table if not exists Cantante(
    Nome_Cantante varchar(255),
    Codice_reg varchar(20) references Esecuzione(Codice_reg),

    primary key (Nome_Cantante,Codice_reg)
);

create table if not exists Contiene(
    Nro_serie_disco varchar(20) references Disco(Nro_serie_disco),
    Codice_reg varchar(20) references Esecuzione(Codice_reg),
    Nro_prog tinyint unsigned,

    primary key (Nro_serie_disco,Codice_reg)
);

--1
select cantante.nome_cantante
from cantante
inner join esecuzione on esecuzione.Codice_reg = cantante.Codice_reg
inner join autore on esecuzione.Titolo_canzone = autore.Titolo_canzone
where  autore.Nome_Autore like "D%"
group by cantante.Nome_Cantante;

--2
select Titolo_album
from disco
inner join contiene on disco.Nro_serie_disco = contiene.Nro_serie_disco
inner join esecuzione on esecuzione.Codice_reg = contiene.Codice_reg
where  esecuzione.anno = "";

--3
select cantante.Nome_Cantante
from cantante 
inner join cantante as CT1 on cantante.Codice_reg < CT1.Codice_reg
group by cantante.Nome_Cantante;


