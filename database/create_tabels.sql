-- MySQL Script generated by MySQL Workbench
-- Fri Nov 24 15:29:12 2023
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema vifter
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema vifter
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `vifter` DEFAULT CHARACTER SET utf8 COLLATE utf8_danish_ci ;
USE `vifter` ;

-- -----------------------------------------------------
-- Table `vifter`.`kunde`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `vifter`.`kunde` ;

CREATE TABLE IF NOT EXISTS `vifter`.`kunde` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `email` VARCHAR(100) NOT NULL,
  `first_name` VARCHAR(45) NOT NULL,
  `last_name` VARCHAR(45) NOT NULL,
  `postkode` CHAR(4) NOT NULL,
  `adresse` VARCHAR(45) NOT NULL,
  `poststed` VARCHAR(45) NOT NULL,
  `passord` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `vifter`.`produkt`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `vifter`.`produkt` ;

CREATE TABLE IF NOT EXISTS `vifter`.`produkt` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `storrelse` VARCHAR(45) NOT NULL,
  `hastighet` VARCHAR(45) NOT NULL,
  `navn` VARCHAR(45) NOT NULL,
  `pris` INT NOT NULL,
  `bilde_url` VARCHAR(128) NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `produkt_navn_UNIQUE` (`navn` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `vifter`.`bestilling`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `vifter`.`bestilling` ;

CREATE TABLE IF NOT EXISTS `vifter`.`bestilling` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `kunde_id` INT NOT NULL,
  `bestillingstid` DATETIME NOT NULL DEFAULT NOW(),
  PRIMARY KEY (`id`),
  INDEX `fk_kunde_id_idx` (`kunde_id` ASC),
  CONSTRAINT `fk_kunde_id`
    FOREIGN KEY (`kunde_id`)
    REFERENCES `vifter`.`kunde` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `vifter`.`produkt_i_bestilling`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `vifter`.`produkt_i_bestilling` ;

CREATE TABLE IF NOT EXISTS `vifter`.`produkt_i_bestilling` (
  `antall` INT NOT NULL,
  `produkt_id` INT NOT NULL,
  `bestilling_id` INT NOT NULL,
  INDEX `fk_produkt_id_idx` (`produkt_id` ASC),
  INDEX `fk_bestilling_id_idx` (`bestilling_id` ASC),
  PRIMARY KEY (`produkt_id`, `bestilling_id`),
  CONSTRAINT `fk_produkt_id`
    FOREIGN KEY (`produkt_id`)
    REFERENCES `vifter`.`produkt` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_bestilling_id`
    FOREIGN KEY (`bestilling_id`)
    REFERENCES `vifter`.`bestilling` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;