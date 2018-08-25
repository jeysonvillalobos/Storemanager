-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema storemanager
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema storemanager
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `storemanager` DEFAULT CHARACTER SET utf8 ;
USE `storemanager` ;

-- -----------------------------------------------------
-- Table `storemanager`.`usuarios`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `storemanager`.`usuarios` (
  `idusuarios` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`idusuarios`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `storemanager`.`productos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `storemanager`.`productos` (
  `idproductos` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(50) NOT NULL,
  `precio` INT NOT NULL,
  `cantidad` INT NOT NULL,
  PRIMARY KEY (`idproductos`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `storemanager`.`fiados`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `storemanager`.`fiados` (
  `idfiados` INT NOT NULL AUTO_INCREMENT,
  `idusuario` INT NOT NULL,
  `idproducto` INT NOT NULL,
  `cantidad` INT NOT NULL,
  `precio` INT NOT NULL,
  `estado` VARCHAR(13) NOT NULL,
  PRIMARY KEY (`idfiados`),
  INDEX `idusuario` (`idusuario` ASC),
  INDEX `idproducto` (`idproducto` ASC),
  CONSTRAINT `idusuarios`
    FOREIGN KEY (`idusuario`)
    REFERENCES `storemanager`.`usuarios` (`idusuarios`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `idproductos`
    FOREIGN KEY (`idproducto`)
    REFERENCES `storemanager`.`productos` (`idproductos`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
