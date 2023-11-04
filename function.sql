-- xoa du lieu
SET SQL_SAFE_UPDATES = 0;
delete from csdl.emails_student;
delete from csdl.phone_numbers_student;
delete from csdl.subject_studied;
delete from csdl.register;
delete from csdl.student;
delete from csdl.lecturers; 
delete from csdl.emails_lecturers;
delete from csdl.phone_numbers_lecturers;
delete from csdl.manage;
delete from csdl.subject;
-- show table
select * from csdl.emails_student;
select * from csdl.phone_numbers_student;
select * from csdl.subject_studied;
select * from csdl.register;
select * from csdl.student;
select * from csdl.lecturers; 
select * from csdl.emails_lecturers;
select * from csdl.phone_numbers_lecturers;
select * from csdl.manage;
select * from csdl.subject;
-- lecturer
-- giang vien dang ky day
SELECT l.MGV, l.Full_name, m.Subject_ID, s.Name_of_subject
FROM csdl.lecturers AS l
JOIN csdl.manage AS m ON l.MGV = m.Lecturers_ID
JOIN csdl.subject AS s ON m.Subject_ID = s.MS;
-- giang vien xem danh sach sinh vien dang ky lop minh
SELECT s.MSV, s.Full_name, s.Class
FROM csdl.student AS s
JOIN csdl.register AS r ON s.MSV = r.Student_ID
JOIN csdl.manage AS m ON r.Subject_ID = m.Subject_ID
JOIN csdl.lecturers AS l ON m.Lecturers_ID = l.MGV
WHERE l.MGV = 'Lecturer_id';
-- student
-- Xem sanh sach cac mon và giang vien dạy mon do
SELECT s.MS, s.Name_of_subject, s.Number_of_credits, l.Full_name, s.semester
FROM csdl.subject AS s
JOIN csdl.manage AS m ON s.MS = m.Subject_ID
JOIN csdl.lecturers AS l ON m.Lecturers_ID = l.MGV;
-- xem dach sach mon da dang ky hoc
SELECT s.MS, s.Name_of_subject
FROM csdl.subject AS s
JOIN csdl.register AS r ON s.MS = r.Subject_ID
WHERE r.Student_ID = 'STUDENT_ID';