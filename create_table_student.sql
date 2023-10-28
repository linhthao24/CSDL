CREATE TABLE csdl.student (
  MSV char(10) NOT NULL PRIMARY KEY,
  Full_name text(50) NOT NULL,
  Date_of_birth date NOT NULL,
  Gender BOOLEAN NOT NULL,
  Address text(300) NOT NULL,
  Subject_studied longtext,
  Major text(50) NOT NULL,
  Day_admission date NOT NULL,
  Role int NOT NULL,
  Class char(10),
  Academy_year char(10) GENERATED ALWAYS AS (CONCAT('D', RIGHT(YEAR(Day_admission), 2))) VIRTUAL
);
CREATE TABLE csdl.phone_numbers_student (
  id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
  student_id char(10) NOT NULL,
  phone_number text(100) NOT NULL,
  FOREIGN KEY (student_id) REFERENCES csdl.student (MSV)
);
CREATE TABLE csdl.emails_student (
  id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
  student_id char(10) NOT NULL,
  email_address text(100) NOT NULL,
  FOREIGN KEY (student_id) REFERENCES csdl.student (MSV)
);