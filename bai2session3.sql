UPDATE Student
SET email = 'newemail@gmail.com'
WHERE student_id = 1;

UPDATE Student
SET email = 'student3@gmail.com'
WHERE student_id = 3;

UPDATE Student
SET date_of_birth = '2002-10-15'
WHERE student_id = 2;

DELETE FROM Student
WHERE student_id = 5;

SELECT *
FROM Student;
