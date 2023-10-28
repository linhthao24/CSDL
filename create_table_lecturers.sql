create table csdl.lecturers(
 	MGV char(10) not null primary key,
    Full_name text(50) not null,
    Gender BOOLEAN not null,
    Major text(50) not null,
    Role int not null,
    Teaching_subject longtext not null,
    Seniority text not null
);
CREATE TABLE csdl.phone_numbers_lecturers (
  id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
  lecturers_id char(10) NOT NULL,
  phone_number text(100) NOT NULL,
  FOREIGN KEY (lecturers_id) REFERENCES csdl.lecturers (MGV)
);
CREATE TABLE csdl.emails_lecturers (
  id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
  lecturers_id char(10) NOT NULL,
  email_address text(100) NOT NULL,
  FOREIGN KEY (lecturers_id) REFERENCES csdl.lecturers (MGV)
);