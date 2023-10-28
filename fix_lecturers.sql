SELECT * FROM csdl.lecturers;
SET SQL_SAFE_UPDATES = 0;
--
CREATE TABLE csdl.phone_numbers_lecturers (
  id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
  lecturers_id char(10) NOT NULL,
  phone_number text(100) NOT NULL,
  FOREIGN KEY (lecturers_id) REFERENCES csdl.lecturers (MGV)
);
ALTER TABLE csdl.lecturers DROP COLUMN phone_number;
ALTER TABLE csdl.phone_numbers_lecturers ADD FOREIGN KEY (lecturers_id) REFERENCES csdl.lecturers (MGV);
CREATE TABLE csdl.emails_lecturers (
  id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
  lecturers_id char(10) NOT NULL,
  email_address text(100) NOT NULL,
  FOREIGN KEY (lecturers_id) REFERENCES csdl.lecturers (MGV)
);
ALTER TABLE csdl.lecturers DROP COLUMN Mail;
ALTER TABLE csdl.emails_lecturers ADD FOREIGN KEY (lecturers_id) REFERENCES csdl.lecturers (MGV);