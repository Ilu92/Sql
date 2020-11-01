-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema shop
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema shop
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `shop` DEFAULT CHARACTER SET utf8 ;
USE `shop` ;

-- -----------------------------------------------------
-- Table `shop`.`categories`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `shop`.`categories` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(100) NULL,
  `description` VARCHAR(255) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `shop`.`goods`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `shop`.`goods` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(100) NULL,
  `description` VARCHAR(255) NULL,
  `price` DECIMAL(10,2) NULL,
  `quantity` INT NULL,
  `categories_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_goods_categories_idx` (`categories_id` ASC) VISIBLE,
  CONSTRAINT `fk_goods_categories`
    FOREIGN KEY (`categories_id`)
    REFERENCES `shop`.`categories` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `shop`.`users`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `shop`.`users` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(100) NULL,
  `surname` VARCHAR(100) NULL,
  `phone` VARCHAR(15) NULL,
  `userscol` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `shop`.`orders`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `shop`.`orders` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `date` DATE NULL,
  `address` VARCHAR(255) NULL,
  `orderscol` VARCHAR(45) NULL,
  `users_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_orders_users1_idx` (`users_id` ASC) VISIBLE,
  CONSTRAINT `fk_orders_users1`
    FOREIGN KEY (`users_id`)
    REFERENCES `shop`.`users` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `shop`.`orders_has_goods`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `shop`.`orders_has_goods` (
  `orders_id` INT NOT NULL,
  `goods_id` INT NOT NULL,
  PRIMARY KEY (`orders_id`, `goods_id`),
  INDEX `fk_orders_has_goods_goods1_idx` (`goods_id` ASC) VISIBLE,
  INDEX `fk_orders_has_goods_orders1_idx` (`orders_id` ASC) VISIBLE,
  CONSTRAINT `fk_orders_has_goods_orders1`
    FOREIGN KEY (`orders_id`)
    REFERENCES `shop`.`orders` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_orders_has_goods_goods1`
    FOREIGN KEY (`goods_id`)
    REFERENCES `shop`.`goods` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
