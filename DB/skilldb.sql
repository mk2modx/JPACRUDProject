-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema skilldb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `skilldb` ;

-- -----------------------------------------------------
-- Schema skilldb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `skilldb` DEFAULT CHARACTER SET utf8 ;
USE `skilldb` ;

-- -----------------------------------------------------
-- Table `skill`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `skill` ;

CREATE TABLE IF NOT EXISTS `skill` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `skill_name` VARCHAR(300) NOT NULL,
  `description` VARCHAR(5000) NULL,
  `proficiency` VARCHAR(3) NULL,
  `point_value` INT NULL,
  `link` VARCHAR(500) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS skilluser@localhost;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'skilluser'@'localhost' IDENTIFIED BY 'skilluser';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'skilluser'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `skill`
-- -----------------------------------------------------
START TRANSACTION;
USE `skilldb`;
INSERT INTO `skill` (`id`, `skill_name`, `description`, `proficiency`, `point_value`, `link`) VALUES (1, 'Tie Knots', 'Learn to tie Knots', 'BEG', 200, 'https://www.animatedknots.com/basic-knots');
INSERT INTO `skill` (`id`, `skill_name`, `description`, `proficiency`, `point_value`, `link`) VALUES (2, 'First Aid', 'Learn First Aid and Safety', 'BEG', 300, 'https://kidshealth.org/en/parents/firstaid-safe/');
INSERT INTO `skill` (`id`, `skill_name`, `description`, `proficiency`, `point_value`, `link`) VALUES (3, 'Saving Money', 'Learn to Save Money', 'ADV', 1000, 'https://www.themint.org/kids/saving-tricks.html');
INSERT INTO `skill` (`id`, `skill_name`, `description`, `proficiency`, `point_value`, `link`) VALUES (4, 'Hand Tools', 'Introduction to hand tools', 'INT', 500, 'https://www.familyhandyman.com/tools/diy-for-kids/');
INSERT INTO `skill` (`id`, `skill_name`, `description`, `proficiency`, `point_value`, `link`) VALUES (5, 'Inventions', 'Learn to invent', 'BEG', 200, 'https://sciencing.com/ideas-kid-inventions-6303021.html');
INSERT INTO `skill` (`id`, `skill_name`, `description`, `proficiency`, `point_value`, `link`) VALUES (6, 'How Things Work', 'Learn about how things work', 'BEG', 300, 'https://www.howstuffworks.com/');
INSERT INTO `skill` (`id`, `skill_name`, `description`, `proficiency`, `point_value`, `link`) VALUES (7, 'How to Code ', 'Learn to Code for Beginners', 'BEG', 300, 'https://www.tynker.com/');
INSERT INTO `skill` (`id`, `skill_name`, `description`, `proficiency`, `point_value`, `link`) VALUES (8, 'Puppet Show', 'Learn to  be a puppeteer', 'ADV', 500, 'https://www.youtube.com/watch?v=rTlAWshiWc4');
INSERT INTO `skill` (`id`, `skill_name`, `description`, `proficiency`, `point_value`, `link`) VALUES (9, 'Become a Ninja', 'Learn to be a ninjutsu master', 'ADV', 9999, 'https://www.kidzworld.com/article/6973-becoming-a-ninja');

COMMIT;

