-- lecturer saw subject 
SELECT Subject_ID, Name_of_subject
FROM csdl.manage
JOIN csdl.subject ON csdl.manage.Subject_ID = csdl.subject.MS
WHERE Lecturers_ID = 'MGV1';
-- list of student learn a class
SELECT Student_ID, Full_name
FROM csdl.register
JOIN csdl.student ON csdl.register.Student_ID = csdl.student.MSV
WHERE Subject_ID = 'MS1';

-- student
SELECT csdl.subject.MS, Name_of_subject, Full_name
FROM csdl.subject
JOIN csdl.manage ON csdl.subject.MS = csdl.manage.Subject_ID
JOIN csdl.lecturers ON csdl.manage.Lecturers_ID = csdl.lecturers.MGV
WHERE csdl.subject.MS NOT IN (
    SELECT Subject_ID
    FROM csdl.register
    WHERE Student_ID = 'MSV1'
);
-- sign subject
