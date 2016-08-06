DROP DATABASE IF EXISTS examination;
CREATE DATABASE examination;

# user
DROP TABLE IF EXISTS examination.user;
CREATE TABLE examination.user (
  id       INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  username VARCHAR(255),
  password VARCHAR(255),
  truename VARCHAR(255),
  team     VARCHAR(255),
  role     VARCHAR(255) DEFAULT 'admin'
  COMMENT 'admin, employee, leader'
);

# record
DROP TABLE IF EXISTS examination.record;
CREATE TABLE examination.record (
  id      INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  date    DATE,
  content TEXT,
  userId  INT UNSIGNED
);

INSERT INTO examination.user (username, password) VALUES ('admin', '123');

SELECT *
FROM examination.user;

SELECT *
FROM examination.record;

SELECT
  u.truename,
  r.date,
  r.content
FROM examination.user u INNER JOIN examination.record r
    ON r.userId = u.id
  WHERE u.id = 2;
# WHERE u.team = 'team1'