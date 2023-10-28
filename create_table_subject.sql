create table csdl.subject(
    MS char(10) not null primary key,
    Name_of_subject text(100) not null,
    Number_of_credits int not null,
    Major text(50) not null,
    semester int not null,
    Prerequisite longtext not null,
    Number_of_student int 
);
-- add data
INSERT INTO csdl.subject (MS, Name_of_subject, Number_of_credits, Major, semester, Prerequisite, Number_of_student)
VALUES 
  ('MS001', 'Mathematics', 3, 'Mathematics', 1, 'None', 50),
  ('MS002', 'Physics', 4, 'Physics', 2, 'None', 40),
  ('MS003', 'Chemistry', 3, 'Chemistry', 1, 'None', 45),
  ('MS004', 'Biology', 3, 'Biology', 2, 'None', 35),
  ('MS005', 'Computer Science', 4, 'Computer Science', 1, 'None', 60),
  ('MS006', 'English Literature', 3, 'English Literature', 2, 'None', 55),
  ('MS007', 'History', 3, 'History', 1, 'None', 50),
  ('MS008', 'Geography', 3, 'Geography', 2, 'None', 40),
  ('MS009', 'Economics', 3, 'Economics', 1, 'None', 45),
  ('MS010', 'Psychology', 3, 'Psychology', 2, 'None', 35);