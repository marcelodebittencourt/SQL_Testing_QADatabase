-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema SQLTestingQA
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema SQLTestingQA
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `SQLTestingQA` DEFAULT CHARACTER SET utf8 ;
USE `SQLTestingQA` ;

-- -----------------------------------------------------
-- Table `SQLTestingQA`.`book`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `SQLTestingQA`.`book` (
  `book_id` INT NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(150) NOT NULL,
  `year` YEAR(4) NOT NULL,
  PRIMARY KEY (`book_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `SQLTestingQA`.`author`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `SQLTestingQA`.`author` (
  `author_id` INT NOT NULL AUTO_INCREMENT,
  `first_name` VARCHAR(45) NOT NULL,
  `last_name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`author_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `SQLTestingQA`.`book_has_author`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `SQLTestingQA`.`book_has_author` (
  `book_book_id` INT NOT NULL,
  `author_author_id` INT NOT NULL,
  PRIMARY KEY (`book_book_id`, `author_author_id`),
  INDEX `fk_book_has_author_author1_idx` (`author_author_id` ASC) VISIBLE,
  INDEX `fk_book_has_author_book_idx` (`book_book_id` ASC) VISIBLE,
  CONSTRAINT `fk_book_has_author_book`
    FOREIGN KEY (`book_book_id`)
    REFERENCES `SQLTestingQA`.`book` (`book_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_book_has_author_author1`
    FOREIGN KEY (`author_author_id`)
    REFERENCES `SQLTestingQA`.`author` (`author_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;