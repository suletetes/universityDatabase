-- MySQL Script generated by MySQL Workbench
-- Sat Nov 11 23:44:30 2023
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`Student`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Student` (
  `studentID` INT NOT NULL,
  `firstName` VARCHAR(50) NOT NULL,
  `lastName` VARCHAR(50) NOT NULL,
  `dateOfBirth` DATE NOT NULL,
  `address` VARCHAR(50) NOT NULL,
  `email` VARCHAR(100) NOT NULL,
  `major` VARCHAR(50) NULL,
  PRIMARY KEY (`studentID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Professor`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Professor` (
  `professorID` INT NOT NULL,
  `firstName` VARCHAR(50) NOT NULL,
  `lastName` VARCHAR(50) NOT NULL,
  `dateOfBirth` DATE NOT NULL,
  `address` VARCHAR(100) NOT NULL,
  `department` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`professorID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Course`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Course` (
  `courseID` INT NOT NULL,
  `courseName` VARCHAR(100) NOT NULL,
  `credits` INT NOT NULL,
  `department` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`courseID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Department`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Department` (
  `departmentID` INT NOT NULL,
  `departmentName` VARCHAR(50) NOT NULL,
  `location` VARCHAR(100) NULL,
  `chairPersonID` INT NOT NULL,
  PRIMARY KEY (`departmentID`),
  INDEX `professorID_idx` (`chairPersonID` ASC) VISIBLE,
  CONSTRAINT `professorID`
    FOREIGN KEY (`chairPersonID`)
    REFERENCES `mydb`.`Professor` (`professorID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Classroom`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Classroom` (
  `roomNumber` VARCHAR(50) NOT NULL,
  `building` VARCHAR(50) NULL,
  `capacity` INT NULL,
  PRIMARY KEY (`roomNumber`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Assignment`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Assignment` (
  `assignmentID` INT NOT NULL,
  `courseID` INT NOT NULL,
  `professorID` INT NOT NULL,
  `assignmentName` VARCHAR(100) NOT NULL,
  `dueDate` DATE NULL,
  PRIMARY KEY (`assignmentID`),
  INDEX `courseID_idx` (`courseID` ASC) VISIBLE,
  INDEX `professorID_idx` (`professorID` ASC) VISIBLE,
  CONSTRAINT `courseID`
    FOREIGN KEY (`courseID`)
    REFERENCES `mydb`.`Course` (`courseID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `professorID`
    FOREIGN KEY (`professorID`)
    REFERENCES `mydb`.`Professor` (`professorID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`DegreeProgram`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`DegreeProgram` (
  `programID` INT NOT NULL,
  `programName` VARCHAR(50) NOT NULL,
  `totalCreditsRequired` INT NOT NULL,
  PRIMARY KEY (`programID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Prerequisite`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Prerequisite` (
  `prerequisiteID` INT NOT NULL,
  `courseID` INT NULL,
  `prerequisiteCourseID` INT NULL,
  INDEX `courseID_idx` (`courseID` ASC) VISIBLE,
  CONSTRAINT `courseID`
    FOREIGN KEY (`courseID`)
    REFERENCES `mydb`.`Course` (`courseID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `prerequisiteCourseID`
    FOREIGN KEY (`courseID`)
    REFERENCES `mydb`.`Course` (`courseID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Library`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Library` (
  `libraryID` INT NOT NULL,
  `libraryName` VARCHAR(50) NOT NULL,
  `location` VARCHAR(100) NOT NULL,
  `librarianID` INT NULL,
  PRIMARY KEY (`libraryID`),
  INDEX `librarianID_idx` (`librarianID` ASC) VISIBLE,
  CONSTRAINT `librarianID`
    FOREIGN KEY (`librarianID`)
    REFERENCES `mydb`.`Professor` (`professorID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`StudentActivity`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`StudentActivity` (
  `activityID` INT NOT NULL,
  `studentID` INT NOT NULL,
  `activityName` VARCHAR(100) NOT NULL,
  `activityDate` DATE NOT NULL,
  PRIMARY KEY (`activityID`),
  INDEX `studentID_idx` (`studentID` ASC) VISIBLE,
  CONSTRAINT `studentID`
    FOREIGN KEY (`studentID`)
    REFERENCES `mydb`.`Student` (`studentID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Enrollment`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Enrollment` (
  `enrollmentID` INT NOT NULL,
  `courseID` INT NOT NULL,
  `studentID` INT NOT NULL,
  `enrollmentDate` DATE NOT NULL,
  `grade` VARCHAR(2) NOT NULL,
  PRIMARY KEY (`enrollmentID`),
  INDEX `studentID_idx` (`studentID` ASC) VISIBLE,
  INDEX `courseID_idx` (`courseID` ASC) VISIBLE,
  CONSTRAINT `studentID`
    FOREIGN KEY (`studentID`)
    REFERENCES `mydb`.`Student` (`studentID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `courseID`
    FOREIGN KEY (`courseID`)
    REFERENCES `mydb`.`Course` (`courseID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`ClassSchedule`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`ClassSchedule` (
  `scheduleID` INT NOT NULL,
  `courseID` INT NOT NULL,
  `roomNumber` VARCHAR(10) NOT NULL,
  `startTime` TIME NOT NULL,
  `endTime` TIME NOT NULL,
  `dayOfWeek` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`scheduleID`),
  INDEX `courseID_idx` (`courseID` ASC) VISIBLE,
  INDEX `roomNumber_idx` (`roomNumber` ASC) VISIBLE,
  CONSTRAINT `courseID`
    FOREIGN KEY (`courseID`)
    REFERENCES `mydb`.`Course` (`courseID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `roomNumber`
    FOREIGN KEY (`roomNumber`)
    REFERENCES `mydb`.`Classroom` (`roomNumber`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`ResearchProject`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`ResearchProject` (
  `projectID` INT NOT NULL,
  `projectName` VARCHAR(100) NOT NULL,
  `professorID` INT NOT NULL,
  `startDate` DATE NOT NULL,
  `endDate` DATE NOT NULL,
  PRIMARY KEY (`projectID`),
  INDEX `professorID_idx` (`professorID` ASC) VISIBLE,
  CONSTRAINT `professorID`
    FOREIGN KEY (`professorID`)
    REFERENCES `mydb`.`Professor` (`professorID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`StudentProjectParticipation`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`StudentProjectParticipation` (
  `participationID` INT NOT NULL,
  `studentID` INT NOT NULL,
  `projectID` INT NOT NULL,
  `role` VARCHAR(50) NULL,
  PRIMARY KEY (`participationID`),
  INDEX `studentID_idx` (`studentID` ASC) VISIBLE,
  INDEX `projectID_idx` (`projectID` ASC) VISIBLE,
  CONSTRAINT `studentID`
    FOREIGN KEY (`studentID`)
    REFERENCES `mydb`.`Student` (`studentID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `projectID`
    FOREIGN KEY (`projectID`)
    REFERENCES `mydb`.`ResearchProject` (`projectID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
