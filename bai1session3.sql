DROP TABLE IF EXISTS Student;

CREATE TABLE Student (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    date_of_birth DATE,
    email VARCHAR(100) UNIQUE
);

INSERT INTO Student (full_name, date_of_birth, email)
VALUES
('Nguyễn Văn A', '2003-05-12', 'vana@gmail.com'),
('Trần Thị B', '2002-09-20', 'thib@gmail.com'),
('Lê Văn C', '2003-01-08', 'vanc@gmail.com');

SELECT *
FROM Student;

SELECT student_id, full_name
FROM Student;
