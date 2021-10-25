-- CREATE DATABASE `home_learning`;

USE `home_learning`;

CREATE TABLE `Students` (
	student_id int NOT NULL,
	first_name varchar(20),
    last_name varchar(20),
    age int NOT NULL,
    school varchar(50),
    PRIMARY KEY (student_id)
);

INSERT INTO `Students` VALUE (1, 'James', 'Harden', '15', 'Houston Rockets School');
INSERT INTO `Students` VALUE (2, 'Kevin', 'Durant', '14', 'Brooklyn Nets School');
INSERT INTO `Students` VALUE (3, 'Stephen', 'Curry', '16', 'Golden State School');
INSERT INTO `Students` VALUE (4, 'Luka', 'Doncic', '13', 'Dallas Mavericks School');
INSERT INTO `Students` VALUE (5, 'Damian', 'Lillard', '15', 'Portland Trailblazers School');
INSERT INTO `Students` VALUE (6, 'Chris', 'Paul', '12', 'Phoenix Suns School');
INSERT INTO `Students` VALUE (7, 'Joel', 'Embiid', '17', 'Philadelphia School');
INSERT INTO `Students` VALUE (8, 'Jayson', 'Tatum', '16', 'Boston Celtics School');
INSERT INTO `Students` VALUE (9, 'Kawhi', 'Leonard', '14', 'LA Clippers School');
INSERT INTO `Students` VALUE (10, 'Lebron', 'James', '15', 'LA Lakers School');


DROP TABLE IF EXISTS `Subjects Scores`;

CREATE TABLE `Subjects Scores` (
	student_id int NOT NULL,
    class varchar(10),
    maths int NOT NULL,
    english int NOT NULL,
    science int NOT NULL,
    PRIMARY KEY (student_id),
    FOREIGN KEY (student_id) REFERENCES Students (student_id)
    
);

INSERT INTO `Subjects Scores` VALUE (1, '2A', 50, 67, 79);
INSERT INTO `Subjects Scores` VALUE (2, '2B', 78, 59, 83);
INSERT INTO `Subjects Scores` VALUE (3, '2C', 45, 75, 82);
INSERT INTO `Subjects Scores` VALUE (4, '2D', 58, 91, 77);
INSERT INTO `Subjects Scores` VALUE (5, '2E', 64, 65, 87);
INSERT INTO `Subjects Scores` VALUE (6, '2F', 96, 89, 92);
INSERT INTO `Subjects Scores` VALUE (7, '2G', 87, 81, 57);
INSERT INTO `Subjects Scores` VALUE (8, '2H', 47, 51, 62);
INSERT INTO `Subjects Scores` VALUE (9, '2I', 76, 83, 71);
INSERT INTO `Subjects Scores` VALUE (10, '2J', 59, 66, 53);
