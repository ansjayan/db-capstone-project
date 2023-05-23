-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema LittleLemonDB
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema LittleLemonDB
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `LittleLemonDB` DEFAULT CHARACTER SET utf8 ;
USE `LittleLemonDB` ;

-- -----------------------------------------------------
-- Table `LittleLemonDB`.`Customers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `LittleLemonDB`.`Customers` (
  `CustomerID` VARCHAR(45) NOT NULL,
  `FullName` VARCHAR(45) NULL,
  `Email` VARCHAR(45) NULL,
  `ContactNumber` VARCHAR(15) NULL,
  `City` VARCHAR(45) NULL,
  `PostalCode` VARCHAR(45) NULL,
  `Country` VARCHAR(45) NULL,
  PRIMARY KEY (`CustomerID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `LittleLemonDB`.`MenuItems`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `LittleLemonDB`.`MenuItems` (
  `ItemID` VARCHAR(45) NOT NULL,
  `CourseName` VARCHAR(45) NULL,
  `StarterName` VARCHAR(45) NULL,
  `DesertName` VARCHAR(45) NULL,
  `Sides` VARCHAR(45) NULL,
  `Drink` VARCHAR(45) NULL,
  PRIMARY KEY (`ItemID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `LittleLemonDB`.`Menu`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `LittleLemonDB`.`Menu` (
  `MenuID` VARCHAR(45) NOT NULL,
  `ItemID` VARCHAR(45) NULL,
  `MenuName` VARCHAR(45) NULL,
  `Cusine` VARCHAR(45) NULL,
  `Price` DECIMAL NULL,
  PRIMARY KEY (`MenuID`),
  INDEX `itemid_in_menu_idx` (`ItemID` ASC) VISIBLE,
  CONSTRAINT `itemid_in_menu`
    FOREIGN KEY (`ItemID`)
    REFERENCES `LittleLemonDB`.`MenuItems` (`ItemID`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `LittleLemonDB`.`StaffInformation`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `LittleLemonDB`.`StaffInformation` (
  `StaffID` VARCHAR(45) NOT NULL,
  `StaffName` VARCHAR(45) NULL,
  `Role` VARCHAR(45) NULL,
  `Email` VARCHAR(45) NULL,
  `Salary` DECIMAL NULL,
  `ContactNumber` VARCHAR(45) NULL,
  `Country` VARCHAR(45) NULL,
  `City` VARCHAR(45) NULL,
  `PostalCode` VARCHAR(45) NULL,
  PRIMARY KEY (`StaffID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `LittleLemonDB`.`Orders`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `LittleLemonDB`.`Orders` (
  `OrderID` VARCHAR(45) NOT NULL,
  `MenuID` VARCHAR(45) NULL,
  `CustomerID` VARCHAR(45) NULL,
  `StaffID` VARCHAR(45) NULL,
  `OrderDate` DATE NULL,
  `TableNumber` INT NULL,
  `Quantity` INT NULL,
  `Cost` DECIMAL NULL,
  PRIMARY KEY (`OrderID`),
  INDEX `cus_id_in_order_tab_idx` (`CustomerID` ASC) VISIBLE,
  INDEX `menuid_in_order_tab_idx` (`MenuID` ASC) VISIBLE,
  INDEX `staffid_in_order_tab_idx` (`StaffID` ASC) VISIBLE,
  CONSTRAINT `cus_id_in_order_tab`
    FOREIGN KEY (`CustomerID`)
    REFERENCES `LittleLemonDB`.`Customers` (`CustomerID`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `menuid_in_order_tab`
    FOREIGN KEY (`MenuID`)
    REFERENCES `LittleLemonDB`.`Menu` (`MenuID`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `staffid_in_order_tab`
    FOREIGN KEY (`StaffID`)
    REFERENCES `LittleLemonDB`.`StaffInformation` (`StaffID`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `LittleLemonDB`.`Bookings`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `LittleLemonDB`.`Bookings` (
  `BookingID` VARCHAR(45) NOT NULL,
  `CustomerID` VARCHAR(45) NULL,
  `TableNumber` INT NULL,
  `BookingDate` DATE NULL,
  PRIMARY KEY (`BookingID`),
  INDEX `cusid_in_bok_tab_idx` (`CustomerID` ASC) VISIBLE,
  CONSTRAINT `cusid_in_bok_tab`
    FOREIGN KEY (`CustomerID`)
    REFERENCES `LittleLemonDB`.`Customers` (`CustomerID`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `LittleLemonDB`.`OrderDeliveryStatus`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `LittleLemonDB`.`OrderDeliveryStatus` (
  `DeliveryStatusID` VARCHAR(45) NOT NULL,
  `OrderID` VARCHAR(45) NULL,
  `CustomerID` VARCHAR(45) NULL,
  `DeliveryDate` DATE NULL,
  `DeliveryStatus` VARCHAR(45) NULL,
  `DeliveryCost` DECIMAL NULL,
  PRIMARY KEY (`DeliveryStatusID`),
  INDEX `orderid_in_del_status_idx` (`OrderID` ASC) VISIBLE,
  INDEX `cusid_in_del_status_idx` (`CustomerID` ASC) VISIBLE,
  CONSTRAINT `orderid_in_del_status`
    FOREIGN KEY (`OrderID`)
    REFERENCES `LittleLemonDB`.`Orders` (`OrderID`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `cusid_in_del_status`
    FOREIGN KEY (`CustomerID`)
    REFERENCES `LittleLemonDB`.`Customers` (`CustomerID`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
