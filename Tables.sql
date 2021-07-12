create table faculty (
	FacID char(4) not null,
    FName varchar(15),
    gender char(1) not null,
    dob date,
    doj date,
    mobileNo bigint,
    deptNo char(4),
    hod char(4) null,
    primary key(FacID),
    check(gender='M' or 'F')
);

create table course (
	courseID char(4) not null,
    courseDesc varchar(25),
    courseType char(9) not null,
    semNo tinyint,
    FacID char(4),
    primary key(courseID),
    foreign key (FacID) references faculty(FacID)
);

create table department(
	deptID char(4),
    deptName varchar(30),
    primary key(deptID)
);

create table student (
	regNo char(5) not null,
    stuName varchar(25),
    gender char(9) not null,
    DOB tinyint,
    mobileNo char(4),
    city varchar(15),
    deptID char(4),
    primary key(regNo),
    foreign key (deptID) references department(deptID)
);

CREATE TABLE assessment (
    regNo CHAR(5) NOT NULL,
    deptID CHAR(4),
    course1 CHAR(4),
    mark1 TINYINT,
    course2 CHAR(4),
    mark2 TINYINT,
    course3 CHAR(4),
    mark3 TINYINT,
    CHECK (mark1 <= 100 AND mark1 >= 0),
    CHECK (mark2 <= 100 AND mark2 >= 0),
    CHECK (mark3 <= 100 AND mark3 >= 0),
    PRIMARY KEY (regNo , deptId),
    FOREIGN KEY (deptID)
        REFERENCES department (deptID)
);
