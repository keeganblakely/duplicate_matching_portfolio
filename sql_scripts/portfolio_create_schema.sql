-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema keegan_blakely_portfolio
-- -----------------------------------------------------

CREATE SCHEMA IF NOT EXISTS `keegan_blakely_portfolio` DEFAULT CHARACTER SET utf8mb4 ;
USE `keegan_blakely_portfolio` ;

-- -----------------------------------------------------
-- Table `keegan_blakely_portfolio`.`address`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `keegan_blakely_portfolio`.`address` (
  `address_id` INT NOT NULL AUTO_INCREMENT,
  `address_lines` VARCHAR(100) NULL,
  `city` VARCHAR(60) NOT NULL,
  `state` CHAR(2) NOT NULL,
  `zip` VARCHAR(10) NOT NULL,
  `country` CHAR(2) NOT NULL,
  PRIMARY KEY (`address_id`))
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `keegan_blakely_portfolio`.`student`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `keegan_blakely_portfolio`.`student` (
  `student_id` INT NOT NULL AUTO_INCREMENT,
  `last_name` VARCHAR(45) NOT NULL,
  `first_name` VARCHAR(45) NOT NULL,
  `preferred_name` VARCHAR(45) NULL,
  `birth_date` DATE NOT NULL,
  `gender_identity` CHAR(1) NULL,
  `address_id` INT NULL,
  `international_status` CHAR(2) NOT NULL,
  PRIMARY KEY (`student_id`),
  INDEX `fk_student_address1_idx` (`address_id` ASC) VISIBLE,
  CONSTRAINT `fk_student_address`
    FOREIGN KEY (`address_id`)
    REFERENCES `keegan_blakely_portfolio`.`address` (`address_id`)
    ON DELETE SET NULL
    ON UPDATE CASCADE,
  CONSTRAINT chk_student_gender CHECK (gender_identity IN ('M','F','X','U'))
)
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `keegan_blakely_portfolio`.`email`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `keegan_blakely_portfolio`.`email` (
  `student_id` INT NOT NULL,
  `position` INT NOT NULL,
  `email_address` VARCHAR(100) NOT NULL,
  `primary_flag` TINYINT NOT NULL DEFAULT 0,
  PRIMARY KEY (`student_id`, `position`),
  CONSTRAINT `fk_student_email`
    FOREIGN KEY (`student_id`)
    REFERENCES `keegan_blakely_portfolio`.`student` (`student_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT chk_email_primary CHECK (primary_flag IN (0,1)),
  CONSTRAINT uq_student_email UNIQUE (`student_id`,`email_address`)
)
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `keegan_blakely_portfolio`.`phone`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `keegan_blakely_portfolio`.`phone` (
  `student_id` INT NOT NULL,
  `position` INT NOT NULL,
  `phone_number` VARCHAR(20) NOT NULL,
  `primary_flag` TINYINT NOT NULL DEFAULT 0,
  `extension` VARCHAR(10) NULL,
  PRIMARY KEY (`student_id`, `position`),
  CONSTRAINT `fk_student_phone`
    FOREIGN KEY (`student_id`)
    REFERENCES `keegan_blakely_portfolio`.`student` (`student_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT chk_phone_primary CHECK (primary_flag IN (0,1)),
  CONSTRAINT uq_student_phone UNIQUE (`student_id`,`phone_number`)
)
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `keegan_blakely_portfolio`.`alternate_id`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `keegan_blakely_portfolio`.`alternate_id` (
  `student_id` INT NOT NULL,
  `alt_id_type` CHAR(3) NOT NULL,
  `alt_id` INT NOT NULL,
  PRIMARY KEY (`student_id`, `alt_id_type`),
  CONSTRAINT `fk_student_alt_id`
    FOREIGN KEY (`student_id`)
    REFERENCES `keegan_blakely_portfolio`.`student` (`student_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE
)
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `keegan_blakely_portfolio`.`program`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `keegan_blakely_portfolio`.`program` (
  `program_code` CHAR(4) NOT NULL,
  `program_title` VARCHAR(100) NOT NULL,
  `program_level` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`program_code`))
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `keegan_blakely_portfolio`.`course`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `keegan_blakely_portfolio`.`course` (
  `course_id` INT NOT NULL AUTO_INCREMENT,
  `course_code` VARCHAR(9) NOT NULL,
  `course_name` VARCHAR(100) NOT NULL,
  `program_code` CHAR(4) NULL,
  PRIMARY KEY (`course_id`),
  INDEX `fk_course_program_idx` (`program_code` ASC) VISIBLE,
  CONSTRAINT `fk_course_program`
    FOREIGN KEY (`program_code`)
    REFERENCES `keegan_blakely_portfolio`.`program` (`program_code`)
    ON DELETE SET NULL
    ON UPDATE CASCADE,
  CONSTRAINT uq_program_course UNIQUE (`program_code`,`course_code`)
)
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `keegan_blakely_portfolio`.`section`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `keegan_blakely_portfolio`.`section` (
  `section_id` INT NOT NULL AUTO_INCREMENT,
  `course_id` INT NULL,
  `section_number` VARCHAR(6) NULL,
  `start_date` DATE NOT NULL,
  `end_date` DATE NULL,
  `capacity` INT NULL,
  PRIMARY KEY (`section_id`),
  INDEX `fk_section_course1_idx` (`course_id` ASC) VISIBLE,
  CONSTRAINT `fk_section_course1`
    FOREIGN KEY (`course_id`)
    REFERENCES `keegan_blakely_portfolio`.`course` (`course_id`)
    ON DELETE NO ACTION
    ON UPDATE CASCADE,
  CONSTRAINT chk_section_dates CHECK (end_date IS NULL OR end_date >= start_date)
)
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `keegan_blakely_portfolio`.`student_enrolment`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `keegan_blakely_portfolio`.`student_enrolment` (
  `student_enrolment_id` INT NOT NULL AUTO_INCREMENT,
  `section_id` INT NOT NULL,
  `enrolment_date` DATE NOT NULL,
  `student_id` INT NOT NULL,
  PRIMARY KEY (`student_enrolment_id`),
  INDEX `fk_student_enrolment_section1_idx` (`section_id` ASC) VISIBLE,
  INDEX `fk_student_enrolment_student1_idx` (`student_id` ASC) VISIBLE,
  CONSTRAINT `fk_student_enrolment_section1`
    FOREIGN KEY (`section_id`)
    REFERENCES `keegan_blakely_portfolio`.`section` (`section_id`)
    ON DELETE RESTRICT
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_student_enrolment_student1`
    FOREIGN KEY (`student_id`)
    REFERENCES `keegan_blakely_portfolio`.`student` (`student_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE
)
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `keegan_blakely_portfolio`.`student_enrolment_status`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `keegan_blakely_portfolio`.`student_enrolment_status` (
  `student_enrolment_id` INT NOT NULL,
  `position` INT NOT NULL,
  `status` VARCHAR(20) NOT NULL,
  `status_date` DATE NOT NULL,
  PRIMARY KEY (`student_enrolment_id`, `position`),
  CONSTRAINT `fk_student_enrolment_status_student_enrolment1`
    FOREIGN KEY (`student_enrolment_id`)
    REFERENCES `keegan_blakely_portfolio`.`student_enrolment` (`student_enrolment_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
)
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `keegan_blakely_portfolio`.`student_program`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `keegan_blakely_portfolio`.`student_program` (
  `student_id` INT NOT NULL,
  `program_code` CHAR(4) NOT NULL,
  `position` INT NOT NULL,
  `status` VARCHAR(20) NOT NULL,
  `status_date` DATE NOT NULL,
  PRIMARY KEY (`student_id`, `program_code`, `position`),
  INDEX `fk_student_program_program1_idx` (`program_code` ASC) VISIBLE,
  CONSTRAINT `fk_student_program_student1`
    FOREIGN KEY (`student_id`)
    REFERENCES `keegan_blakely_portfolio`.`student` (`student_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_student_program_program1`
    FOREIGN KEY (`program_code`)
    REFERENCES `keegan_blakely_portfolio`.`program` (`program_code`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
)
ENGINE = InnoDB;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;