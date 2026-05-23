CREATE TABLE Student (
    student_id VARCHAR(10) PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL
);

CREATE TABLE Subject (
    subject_id VARCHAR(10) PRIMARY KEY,
    subject_name VARCHAR(100) NOT NULL,
    credits INT CHECK (credits > 0)
);

CREATE TABLE Enrollment (
    student_id VARCHAR(10),
    subject_id VARCHAR(10),
    enrollment_date DATE,

    PRIMARY KEY(student_id, subject_id),

    FOREIGN KEY(student_id)
    REFERENCES Student(student_id),

    FOREIGN KEY(subject_id)
    REFERENCES Subject(subject_id)
);