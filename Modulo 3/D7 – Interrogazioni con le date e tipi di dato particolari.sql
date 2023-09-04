create database ex_d7;
use ex_d7;

create table if not exists Dipartimento(
	id_dipartimento varchar(20),
  nome_dip varchar(20),
  id_manager varchar(20),
  id_location varchar(20),
  primary key (id_dipartimento, id_manager,id_location)
);


create table if not exists Dipendente(
	id varchar(20),
  nome varchar(255),
  cognome varchar(255),
  email varchar(255),
  numerotelefono varchar(15),
  data_assunzione date,
  id_lavoro varchar(20),
  salario decimal(10,2),
  id_manager varchar(20) references Dipartimento(id_manager),
  id_dipartimento varchar(20) references Dipartimento(id_dipartimento),
  primary key (id)
);

INSERT INTO Dipendente (id, nome, cognome, email, numerotelefono, data_assunzione, id_lavoro, salario, id_manager, id_dipartimento)
VALUES
    (1, 'Mario', 'Rossi', 'mario.rossi@email.com', '1234567890', '2023-01-15', 1, 50000.00, 4, 1),
    (2, 'Luca', 'Bianchi', 'luca.bianchi@email.com', '9876543210', '2023-02-20', 2, 55000.00, 4, 2),
    (3, 'Anna', 'Verdi', 'anna.verdi@email.com', '5678901234', '2023-06-10', 1, 48000.00, 5, 1),
    (4, 'Giovanna', 'Marrone', 'giovanna.marrone@email.com', '6789012345', '2010-12-01', 3, 60000.00, 4, 2),
    (5, 'Paolo', 'Giallo', 'paolo.giallo@email.com', '3456789012', '2022-09-05', 2, 52000.00, 5, 3),
    (6, 'Roberto', 'Neri', 'roberto.neri@email.com', '1231231234', '2022-05-15', 2, 49000.00, 5, 2),
    (7, 'Giulia', 'Bianchi', 'giulia.bianchi@email.com', '4564564567', '2022-08-12', 1, 55000.00, 3, 3),
    (8, 'Elena', 'Verdi', 'elena.verdi@email.com', '7897897890', '2022-07-10', 3, 60000.00, 4, 1),
    (9, 'Massimo', 'Giallo', 'massimo.giallo@email.com', '2342342345', '2022-09-20', 1, 48000.00, 5, 2),
    (10, 'Laura', 'Rosa', 'laura.rosa@email.com', '3453453456', '2022-03-05', 2, 52000.00, 6, 3),
    (11, 'Simone', 'Marrone', 'simone.marrone@email.com', '5675675678', '2022-11-18', 1, 49000.00, 5, 1),
    (12, 'Francesca', 'Rossi', 'francesca.rossi@email.com', '7897897890', '2022-10-02', 3, 57000.00, 4, 2),
    (13, 'Marco', 'Neri', 'marco.neri@email.com', '1231231234', '2022-06-25', 2, 52000.00, 6, 3),
    (14, 'Sara', 'Verdi', 'sara.verdi@email.com', '2342342345', '2022-04-15', 1, 46000.00, 3, 1),
    (15, 'Davide', 'Giallo', 'davide.giallo@email.com', '4564564567', '2022-12-28', 2, 49000.00, 4, 2);


INSERT INTO Dipartimento (id_dipartimento, nome_dip, id_manager, id_location)
VALUES
    (1, 'Amministrazione', 4, 101),
    (2, 'Vendite', 5, 102),
    (3, 'Produzione', 6, 103);


-- Query 1: Visualizza la data di assunzione dei manager e i loro id appartenenti al dipartimento "Amministrazione" nel formato Nome mese, giorno, anno
select  concat(dipendente.nome," ",dipendente.cognome) as "Generalità", dipendente.id, CONCAT(DATE_FORMAT(data_assunzione, '%d - %m - %Y')) as "Data Assunzione"
from Dipendente
inner join dipartimento as dp on dp.id_manager = dipendente.id
where dp.nome_dip = "Amministrazione";

-- Query 2: Visualizza il nome e il cognome dei dipendenti assunti nel mese di Giugno
SELECT nome as "Nome", cognome as "Cognome", data_assunzione as "Data assunzione"
FROM Dipendente
WHERE MONTH(data_assunzione) = 6;

-- Query 3: Visualizza gli anni in cui più di 10 dipendenti sono stati assunti
SELECT YEAR(data_assunzione) AS 'Anno assunzione', count(YEAR(data_assunzione)) as "Numero totale assunzioni"
FROM Dipendente
GROUP BY YEAR(data_assunzione)
HAVING COUNT(YEAR(data_assunzione)) > 10;


-- Query 4: Visualizza il nome del dipartimento, il nome del manager e il salario del manager di tutti i manager la cui esperienza è maggiore di 5 anni
select dpo.nome_dip as "Nome Dipartimento", concat(dpe.nome," ",dpe.cognome) as "Manager", dpe.salario as "Salario", Year(dpe.data_assunzione) as "Anno Assunzione"
from dipartimento DPO
inner join dipendente DPE on dpo.id_manager = dpe.id
where datediff(now(),dpe.data_assunzione) > 1825; 
