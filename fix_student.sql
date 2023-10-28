SELECT * FROM csdl.student;
SET SQL_SAFE_UPDATES = 0;
DELETE FROM csdl.student;
CREATE TABLE csdl.phone_numbers (
  id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
  student_id char(10) NOT NULL,
  phone_number text(100) NOT NULL,
  FOREIGN KEY (student_id) REFERENCES csdl.student (MSV)
);
ALTER TABLE csdl.student DROP COLUMN phone_number;
ALTER TABLE csdl.phone_numbers ADD FOREIGN KEY (student_id) REFERENCES csdl.student (MSV);
CREATE TABLE csdl.emails (
  id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
  student_id char(10) NOT NULL,
  email_address text(100) NOT NULL,
  FOREIGN KEY (student_id) REFERENCES csdl.student (MSV)
);
ALTER TABLE csdl.student DROP COLUMN Mail;
ALTER TABLE csdl.emails ADD FOREIGN KEY (student_id) REFERENCES csdl.student (MSV);