create table csdl.lecturers(
 	MGV char(10) not null primary key,
    Full_name text(50) not null,
    Gender BOOLEAN not null,
    Major text(50) not null,
    Phone_number text(100) not null,
    Mail text(100) not null,
    Role int not null,
    Teaching_subject longtext not null,
    Seniority text not null
);