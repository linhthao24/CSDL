INSERT INTO csdl.student (MSV, Full_name, Date_of_birth, Gender, Address, Subject_studied, Major, Day_admission, Role, Class)
VALUES
  ('MSV1', 'Nguyen Van A', '1990-01-01', 1, '123 ABC Street', NULL, 'Major A', '2020-01-01', 1, 'Class A'),
  ('MSV2', 'Tran Thi B', '1991-02-02', 0, '456 XYZ Street', NULL, 'Major B', '2020-01-01', 2, 'Class B'),
  ('MSV3', 'Le Van C', '1992-03-03', 1, '789 PQR Street', NULL, 'Major C', '2020-01-01', 1, 'Class A'),
  ('MSV4', 'Pham Thi D', '1993-04-04', 0, '321 DEF Street', NULL, 'Major A', '2020-01-01', 2, 'Class B'),
  ('MSV5', 'Hoang Van E', '1994-05-05', 1, '654 GHI Street', NULL, 'Major B', '2020-01-01', 1, 'Class A');
  INSERT INTO csdl.phone_numbers_student (student_id, phone_number)
VALUES
  ('MSV1', '0123456789'),
  ('MSV2', '0123456798'),
  ('MSV3', '0123456879'),
  ('MSV4', '0123456789'),
  ('MSV5', '0123456798');
  INSERT INTO csdl.emails_student (student_id, email_address)
VALUES
  ('MSV1', 'example1@example.com'),
  ('MSV2', 'example2@example.com'),
  ('MSV3', 'example3@example.com'),
  ('MSV4', 'example4@example.com'),
  ('MSV5', 'example5@example.com');
  INSERT INTO csdl.lecturers (MGV, Full_name, Gender, Major, Role, Teaching_subject, Seniority)
VALUES
  ('MGV1', 'Nguyen Van X', 1, 'Major A', 1, 'Subject A, Subject B', '5 years'),
  ('MGV2', 'Tran Thi Y', 0, 'Major B', 2, 'Subject C, Subject D', '10 years'),
  ('MGV3', 'Le Van Z', 1, 'Major C', 1, 'Subject E, Subject F', '3 years'),
  ('MGV4', 'Pham Thi W', 0, 'Major A', 2, 'Subject G, Subject H', '7 years'),
  ('MGV5', 'Hoang Van V', 1, 'Major B', 1, 'Subject I, Subject J', '2 years');
  INSERT INTO csdl.phone_numbers_lecturers (lecturers_id, phone_number)
VALUES
  ('MGV1', '0123456789'),
  ('MGV2', '0123456798'),
  ('MGV3', '0123456879'),
  ('MGV4', '0123456789'),
  ('MGV5', '0123456798');
  INSERT INTO csdl.emails_lecturers (lecturers_id, email_address)
VALUES
  ('MGV1', 'example11@example.com'),
  ('MGV2', 'example12@example.com'),
  ('MGV3', 'example13@example.com'),
  ('MGV4', 'example14@example.com'),
  ('MGV5', 'example15@example.com');
  INSERT INTO csdl.subject (MS, Name_of_subject, Number_of_credits, Major, semester, Prerequisite, Number_of_student)
VALUES
  ('MS1', 'Subject A', 3, 'Major A', 1, 'Prerequisite A', 50),
  ('MS2', 'Subject B', 4, 'Major A', 2, 'Prerequisite B', 60),
  ('MS3', 'Subject C', 3, 'Major B', 1, 'Prerequisite C', 70),
  ('MS4', 'Subject D', 4, 'Major B', 2, 'Prerequisite D', 80),
  ('MS5', 'Subject E', 3, 'Major C', 1, 'Prerequisite E', 90);
  INSERT INTO csdl.register (Student_ID, Subject_ID)
VALUES
  ('MSV1', 'MS1'),
  ('MSV2', 'MS2'),
  ('MSV3', 'MS3'),
  ('MSV4', 'MS4'),
  ('MSV5', 'MS5');
  INSERT INTO csdl.manage (Lecturers_ID, Subject_ID)
VALUES
  ('MGV1', 'MS1'),
  ('MGV2', 'MS2'),
  ('MGV3', 'MS3'),
  ('MGV4', 'MS4'),
  ('MGV5', 'MS5');
  
  
  
  
  