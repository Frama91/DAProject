/*Nota bene
La creazione del database e delle tabelle, sono stati eseguiti attraverso i tools del workbench e, successivamente, è stato creato lo script. Questo giustifica la presenza di argomenti non trattati.
*/

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

CREATE SCHEMA IF NOT EXISTS `esercizio_d4` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `esercizio_d4` ;

CREATE TABLE IF NOT EXISTS `esercizio_d4`.`aereo` (
  `Tipo_Aereo` VARCHAR(45) NOT NULL,
  `Num_Passeggeri` MEDIUMINT NULL DEFAULT NULL,
  `Qta_Merci` MEDIUMINT NULL DEFAULT NULL,
  PRIMARY KEY (`Tipo_Aereo`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

CREATE TABLE IF NOT EXISTS `esercizio_d4`.`aeroporto` (
  `Città` VARCHAR(30) NOT NULL,
  `Nazione` VARCHAR(45) NULL DEFAULT NULL,
  `NumPiste` TINYINT NULL DEFAULT NULL,
  PRIMARY KEY (`Città`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

CREATE TABLE IF NOT EXISTS `esercizio_d4`.`volo` (
  `IdVolo` VARCHAR(45) NOT NULL,
  `Giorno_Sett` VARCHAR(10) NOT NULL,
  `Citta_Part` VARCHAR(45) NOT NULL,
  `Ora_Part` TINYINT NOT NULL,
  `Citta_Arr` VARCHAR(45) NULL DEFAULT NULL,
  `Ora_Arr` TINYINT NULL DEFAULT NULL,
  `Tipo_Aereo` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`IdVolo`),
  INDEX `Tipo-Aereo_idx` (`Tipo_Aereo` ASC) VISIBLE,
  CONSTRAINT `Tipo-Aereo`
    FOREIGN KEY (`Tipo_Aereo`)
    REFERENCES `esercizio_d4`.`aereo` (`Tipo_Aereo`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;


select esercizio_d4.aeroporto.Città
from esercizio_d4.aeroporto
where esercizio_d4.aeroporto.NumPiste is Null ;

select Tipo_Aereo	
from esercizio_d4.volo
where esercizio_d4.volo.Citta_Part = "Torino" ;

select Citta_Part
from Volo
where volo.Citta_arr = "Bologna";

select Citta_Part, Citta_Arr
from volo
where IdVolo = "AZ274";

select Tipo_Aereo, Giorno_Sett, Ora_Part
from volo
where volo.Citta_Part like "b%o%" and volo.Citta_Arr like "%e%a";