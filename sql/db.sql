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

# user
DROP TABLE IF EXISTS examination.info;
CREATE TABLE examination.info (
  id        INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  date      VARCHAR(255),
  baoxian   VARCHAR(255),
  gongjijin VARCHAR(255),
  userId    INT UNSIGNED
);

ALTER TABLE examination.info
  ADD CONSTRAINT
  fk_info_userId
FOREIGN KEY (userId)
REFERENCES examination.user (id);

SELECT *
FROM examination.user;

SELECT *
FROM examination.info;