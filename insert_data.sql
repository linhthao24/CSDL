INSERT INTO csdl.student (MSV, Full_name, Date_of_birth, Gender, Address, Major, Day_admission, Role, Class, credit_has_learned)
VALUES
('MSV1', 'John Doe', '2000-01-01', 1, '123 Main St', 'Computer Science', '2021-09-01', 1, 'Class A', 0),
('MSV2', 'Jane Smith', '1999-05-15', 0, '456 Elm St', 'Electrical Engineering', '2021-09-01', 1, 'Class B', 0),
('MSV3', 'Alice Johnson', '2001-03-20', 0, '789 Oak St', 'Mechanical Engineering', '2021-09-01', 1, 'Class A', 0),
('MSV4', 'Bob Williams', '1998-12-10', 1, '101 Pine St', 'Civil Engineering', '2021-09-01', 1, 'Class C', 0),
('MSV5', 'Eve Davis', '2002-07-05', 0, '202 Cedar St', 'Chemistry', '2021-09-01', 1, 'Class B', 0);
INSERT INTO csdl.lecturers (MGV, Full_name, Gender, Major, Role, Teaching_subject, Seniority)
VALUES
('MGV1', 'Dr. Smith', 1, 'Computer Science', 1, 'Data Structures', 'Senior'),
('MGV2', 'Prof. Johnson', 0, 'Electrical Engineering', 1, 'Circuit Design', 'Associate'),
('MGV3', 'Dr. White', 1, 'Mechanical Engineering', 1, 'Thermodynamics', 'Professor'),
('MGV4', 'Prof. Brown', 1, 'Civil Engineering', 1, 'Structural Analysis', 'Senior'),
('MGV5', 'Dr. Lee', 0, 'Chemistry', 1, 'Organic Chemistry', 'Associate');
INSERT INTO csdl.subject (MS, Name_of_subject, Number_of_credits, Major, semester, Prerequisite, Number_of_student)
VALUES
('MS1', 'Mathematics', 4, 'Math', 1, '', 0),
('MS2', 'Physics', 3, 'Physics', 1, '', 0),
('MS3', 'Computer Programming', 3, 'Computer Science', 2, 'Mathematics', 0),
('MS4', 'Digital Electronics', 3, 'Electrical Engineering', 2, 'Physics', 0),
('MS5', 'Mechanics', 4, 'Mechanical Engineering', 3, 'Physics', 0);
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
  INSERT INTO csdl.manage (Lecturers_ID, Subject_ID)
VALUES
  ('MGV1', 'MS1'),
  ('MGV2', 'MS2'),
  ('MGV3', 'MS3'),
  ('MGV4', 'MS4'),
  ('MGV5', 'MS5');
  