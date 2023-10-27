CREATE TABLE csdl.register (
  Register_ID INT NOT NULL AUTO_INCREMENT,
  Student_ID CHAR(10) NOT NULL,
  Subject_ID CHAR(10) NOT NULL,
  PRIMARY KEY (Register_ID),
  FOREIGN KEY (Student_ID) REFERENCES csdl.student (MSV),
  FOREIGN KEY (Subject_ID) REFERENCES csdl.subject (MS)
);
CREATE TABLE csdl.manage (
  Manage_ID INT NOT NULL AUTO_INCREMENT,
  Lecturers_ID CHAR(10) NOT NULL,
  Subject_ID CHAR(10) NOT NULL,
  PRIMARY KEY (Manage_ID),
  FOREIGN KEY (Lecturers_ID) REFERENCES csdl.lecturers (MGV),
  FOREIGN KEY (Subject_ID) REFERENCES csdl.subject (MS)
);