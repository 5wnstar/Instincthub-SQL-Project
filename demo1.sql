DROP DATABASE IF EXISTS faculty_of_computing;

CREATE DATABASE faculty_of_computing;
USE faculty_of_computing;

CREATE TABLE `faculty_of_computing`.`computer_science`( 
`student_id` INT NOT NULL,     
`first_name` VARCHAR(255) NOT NULL,     
`last_name` VARCHAR(255) NOT NULL,     
`department` VARCHAR(255) NOT NULL,     
PRIMARY KEY (`student_id`)
);


INSERT INTO `computer_science` VALUES ("001", "Adisa", "Kayode", "computer science");
INSERT INTO `computer_science` VALUES ("002", "Adebayo", "segun", "computer science");
INSERT INTO `computer_science` VALUES ("003", "Ade", "segun", "computer science");


CREATE TABLE `faculty_of_computing`.`cyber_security` (  
`student_id` INT NOT NULL,      
`first_name` VARCHAR(255) NOT NULL,     
`last_name` VARCHAR(255) NOT NULL,     
`department` VARCHAR(255) NOT NULL,     
PRIMARY KEY (`student_id`)
);
INSERT INTO `cyber_security` VALUES ("001", "Edward", "Egewa", "cyber security");
INSERT INTO `cyber_security` VALUES ("002", "Humairah", "Adamu", "cyber security");

CREATE TABLE `faculty_of_computing`.`course` (  
`course_id` INT NOT NULL,         
`course_name` VARCHAR(255) NOT NULL,
`student_id` INT NOT NULL,   
`department` VARCHAR(255) NOT NULL,     
 PRIMARY KEY(`course_id`),
KEY `FK_student_id` (`student_id`),
CONSTRAINT `FK_student_id` FOREIGN KEY (`student_id`) REFERENCES `computer_science` (`student_id`) ON DELETE RESTRICT ON UPDATE CASCADE
);
