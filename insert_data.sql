INSERT INTO csdl.student (MSV, Full_name, Date_of_birth, Gender, Address, Major, Day_admission, Role, Class, credit_has_learned)
VALUES
('MSV1', 'John Doe', '2000-01-01', 1, '123 Main St', 'Computer Science', '2021-09-01', 1, 'Class A', 0),
('MSV2', 'Jane Smith', '1999-05-15', 0, '456 Elm St', 'Electrical Engineering', '2021-09-01', 1, 'Class B', 0),
('MSV3', 'Alice Johnson', '2001-03-20', 0, '789 Oak St', 'Mechanical Engineering', '2021-09-01', 1, 'Class A', 0),
('MSV4', 'Bob Williams', '1998-12-10', 1, '101 Pine St', 'Civil Engineering', '2021-09-01', 1, 'Class C', 0),
('MSV5', 'Eve Davis', '2002-07-05', 0, '202 Cedar St', 'Chemistry', '2021-09-01', 1, 'Class B', 0);
INSERT INTO csdl.lecturers (MGV, Full_name, Gender, Major, Role, Teaching_subject, Seniority)
VALUES
('MGV1', 'V.T.T.Hà', 'Male', 'Internet', 'Role1', 'Cơ sở dữ liệu', 'Senior'),
('MGV2', 'N.Đ.Long', 'Male', 'Internet', 'Role2', 'Internet và giao thức', 'Associate'),
('MGV3', 'N.T.Trà', 'Female', 'CNTT', 'Role3', 'An toàn mạng thông tin', 'Professor'),
('MGV4', 'N.T.T.Nga', 'Female', 'TTQ', 'Role4', 'Mạng truyền thông quang', 'Senior'),
('MGV5', 'N.V.Đảm', 'Male', 'Telecommunication', 'Role5', 'Thông tin di động', ‘Associate’),
('MGV6', 'P.T.T.Hiền', 'Telecommunication', 'Major6', 'Role6', 'Thông tin di động', 'Senior'),
('MGV7', 'N.T.K.Chi', 'Female', 'KNM', 'Role7', 'PPLNCKH', 'Senior');
INSERT INTO csdl.subject (MS, Name_of_subject, Number_of_credits, Major, semester, Prerequisite, Number_of_student)
VALUES
('TEL1343', 'Cơ sở dữ liệu', 3, 'Telecommunication', 1,'None',78),
('TEL1469', 'Internet và các giao thức', 3, 'Internet', 2,'None',60),
('TEL1401', 'An toàn mạng thông tin', 3, 'Security', 1, 'None',34),
('TEL1346', 'Mạng truyền thông quang', 3, 'Telecommunication', 2,'None', 45),
('SKD1108', 'Phương pháp luận nghiên cứu khoa học', 2, 'Kỹ năng', 3, 'None', 80),
('TEL1415', 'Thông tin di động', 3, 'Telecommunication', 7, 'None', 56),
('BAS1153', 'Lịch sử Đảng cộng sản Việt Nam', 2, 'Triết học', 4, 'None',67);
INSERT INTO csdl.subject_studied (student_id, subject_id)
VALUES
('MSV1', 'MS1'),
('MSV1', 'MS3'),
('MSV2', 'MS1'),
('MSV2', 'MS4'),
('MSV3', 'MS2'),
('MSV4', 'MS2'),
('MSV4', 'MS3'),
('MSV5', 'MS1'),
('MSV5', 'MS4');
INSERT INTO csdl.register (Student_ID, Subject_ID)
VALUES
('MSV1', 'MS1'),
('MSV2', 'MS1'),
('MSV3', 'MS2'),
('MSV4', 'MS3'),
('MSV5', 'MS4');
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
  INSERT INTO csdl.phone_numbers_lecturers (lecturers_id, phone_number)
VALUES
  ('MGV1', '0915054369'),
  ('MGV2', '0987335421'),
  ('MGV3', '0953226734'),
  ('MGV4', '0946553630'),
  ('MGV5', '0982950357'),
  ('MGV6', '0975435730'),
  ('MGV7', '0937865247');
  INSERT INTO csdl.emails_lecturers (lecturers_id, email_address)
VALUES
  ('MGV1', 'havt@ptit.edu.vn'),
  ('MGV2', 'longnd@ptit.edu.vn'),
  ('MGV3', 'trant@ptit.edu.vn'),
  ('MGV4', 'ngantt@ptit.edu.vn'),
  ('MGV5', 'damnv@ptit.edu.vn'),
  ('MGV6', 'hienptt@ptit.edu.vn'),
  ('MGV7', 'chintk@ptit.edu.vn');
  INSERT INTO csdl.manage (Lecturers_ID, Subject_ID)
VALUES
('MGV1', 'TEL1343'),
('MGV2', 'TEL1343'),
('MGV3', 'TEL1343'),
('MGV4', 'TEL1343'),
('MGV5', 'TEL1469'),
('MGV6', 'TEL1469'),
('MGV2', 'TEL1469'),
('MGV3', 'TEL1401'),
('MGV5', 'TEL1401'),
('MGV6', 'TEL1401'),
('MGV4', 'TEL1346'),
('MGV3', 'TEL1346'),
('MGV2', 'TEL1346'),
('MGV7', 'SKD1108'),
('MGV2', 'TEL1415'),
('MGV3', 'TEL1415'),
('MGV1', 'TEL1415'); 
