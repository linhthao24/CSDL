CREATE TABLE csdl.student (
  MSV char(10) NOT NULL PRIMARY KEY,
  Full_name text(50) NOT NULL,
  Date_of_birth date NOT NULL,
  Gender BOOLEAN NOT NULL,
  Address text(300) NOT NULL,
  Subject_studied longtext,
  Major text(50) NOT NULL,
  Phone_number text(100),
  Mail text(100),
  Day_admission date NOT NULL,
  Role int NOT NULL,
  Class char(10),
  Academy_year char(10) GENERATED ALWAYS AS (CONCAT('D', RIGHT(YEAR(Day_admission), 2))) VIRTUAL
);