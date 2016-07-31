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

INSERT INTO examination.user (username, password, role) VALUES ('s1', '123', 'user');
INSERT INTO examination.user (username, password, role) VALUES ('s2', '123', 'user');
INSERT INTO examination.user (username, password, role) VALUES ('s3', '123', 'user');
INSERT INTO examination.user (username, password) VALUES ('admin', '123');

# course
DROP TABLE IF EXISTS examination.course;
CREATE TABLE examination.course (
  id      INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  title   VARCHAR(255),
  time    VARCHAR(255),
  teacher VARCHAR(255),
  score   INT
);

INSERT INTO examination.course VALUES (NULL, 'course1', 'time1', 'teacher1', 1);
INSERT INTO examination.course VALUES (NULL, 'course2', 'time2', 'teacher3', 2);
INSERT INTO examination.course VALUES (NULL, 'course3', 'time3', 'teacher3', 3);

# studentCourse
DROP TABLE IF EXISTS examination.student_course;
CREATE TABLE examination.student_course (
  id        INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  studentId INT UNSIGNED,
  courseId  INT UNSIGNED
);

INSERT INTO examination.student_course VALUE (NULL, 1, 1);
INSERT INTO examination.student_course VALUE (NULL, 2, 1);
INSERT INTO examination.student_course VALUE (NULL, 2, 2);
INSERT INTO examination.student_course VALUE (NULL, 3, 1);
INSERT INTO examination.student_course VALUE (NULL, 3, 2);
INSERT INTO examination.student_course VALUE (NULL, 3, 3);

ALTER TABLE examination.student_course
  ADD CONSTRAINT
  fk_student_course_studentId
FOREIGN KEY (studentId)
REFERENCES examination.user (id);

ALTER TABLE examination.student_course
  ADD CONSTRAINT
  fk_student_course_courseId
FOREIGN KEY (courseId)
REFERENCES examination.course (id);

SELECT *
FROM examination.user;

SELECT *
FROM examination.course;

SELECT *
FROM examination.student_course;

SELECT
  c.title,
  u.username
FROM examination.user u
  JOIN examination.course c
  JOIN examination.student_course s
    ON u.id = s.studentId AND c.id = s.courseId;


SELECT
  u.username,
  c.title
FROM examination.user u
  JOIN examination.course c
  JOIN examination.student_course s
    ON u.id = s.studentId AND c.id = s.courseId;

SELECT *
FROM examination.course;

SELECT *
FROM examination.user;
