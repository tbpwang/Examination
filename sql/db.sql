DROP DATABASE IF EXISTS examination;
CREATE DATABASE examination;

# user
DROP TABLE IF EXISTS examination.user;
CREATE TABLE examination.user (
  id       INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  username VARCHAR(255),
  password VARCHAR(255),
  role     VARCHAR(255) DEFAULT 'admin'
);

INSERT INTO examination.user (username, password) VALUES ('admin', '123');
INSERT INTO examination.user (username, password, role) VALUES ('user1', '123', 'user');
INSERT INTO examination.user (username, password, role) VALUES ('user2', '123', 'user');
INSERT INTO examination.user (username, password, role) VALUES ('user3', '123', 'user');

# course
DROP TABLE IF EXISTS examination.course;
CREATE TABLE examination.course (
  id      INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  title   VARCHAR(255),
  time    VARCHAR(255),
  teacher VARCHAR(255),
  score   INT
);

# studentCourse
DROP TABLE IF EXISTS examination.studentCourse;
CREATE TABLE examination.studentCourse (
  id        INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  studentId INT UNSIGNED,
  courseId  INT UNSIGNED
);

ALTER TABLE examination.studentcourse
  ADD CONSTRAINT
  fk_studentCourse_studentId
FOREIGN KEY (studentId)
REFERENCES examination.user (id);

ALTER TABLE examination.studentcourse
  ADD CONSTRAINT
  fk_studentCourse_courseId
FOREIGN KEY (courseId)
REFERENCES examination.course (id);

SELECT *
FROM examination.user;

SELECT *
FROM examination.course;