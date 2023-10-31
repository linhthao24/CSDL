-- Tạo bảng chính
CREATE TABLE csdl.student (
  MSV CHAR(10) NOT NULL PRIMARY KEY,
  Full_name TEXT NOT NULL,
  Date_of_birth DATE NOT NULL,
  Gender BOOLEAN NOT NULL,
  Address TEXT NOT NULL,
  Major TEXT NOT NULL,
  Day_admission DATE NOT NULL,
  Role INT NOT NULL,
  Class CHAR(10),
  Academy_year CHAR(10) GENERATED ALWAYS AS (CONCAT('D', RIGHT(YEAR(Day_admission), 2))) VIRTUAL,
  credit_has_learned INT
);

-- Tạo bảng có khóa ngoại
CREATE TABLE csdl.subject_studied (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  student_id CHAR(10) NOT NULL,
  subject_id CHAR(10) NOT NULL,
  FOREIGN KEY (student_id) REFERENCES csdl.student (MSV),
  FOREIGN KEY (subject_id) REFERENCES csdl.subject (MS)
);

-- Tạo các bảng có khóa ngoại đến csdl.student
CREATE TABLE csdl.phone_numbers_student (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  student_id CHAR(10) NOT NULL,
  phone_number TEXT NOT NULL,
  FOREIGN KEY (student_id) REFERENCES csdl.student (MSV)
);

CREATE TABLE csdl.emails_student (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  student_id CHAR(10) NOT NULL,
  email_address TEXT NOT NULL,
  FOREIGN KEY (student_id) REFERENCES csdl.student (MSV)
);

-- Tạo các hàm và Trigger
DELIMITER $$

CREATE FUNCTION csdl.CalculateCreditLearnedNew(studentID CHAR(10)) RETURNS INT DETERMINISTIC
BEGIN
  DECLARE totalCredits INT;
  SET totalCredits = 0;
  
  SELECT COALESCE(SUM(s.Number_of_credits), 0) 
  INTO totalCredits
  FROM csdl.subject AS s 
  JOIN csdl.subject_studied AS ss ON s.MS = ss.subject_id 
  WHERE ss.student_id = studentID;
  
  RETURN totalCredits;
END $$

DELIMITER ;


DELIMITER $$

CREATE TRIGGER csdl.CalculateCreditTrigger BEFORE INSERT ON csdl.subject_studied
  FOR EACH ROW
  BEGIN
    DECLARE totalCredits INT;
    SET totalCredits = 0;

    SELECT COALESCE(SUM(s.Number_of_credits), 0) 
    INTO totalCredits
    FROM csdl.subject AS s 
    WHERE s.MS = NEW.subject_id;

    UPDATE csdl.student
    SET credit_has_learned = totalCredits
    WHERE MSV = NEW.student_id;
  END $$CalculateCreditLearnedNew

DELIMITER ;
