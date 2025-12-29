DROP TABLE IF EXISTS Subject;

CREATE TABLE Subject (
    subject_id INT AUTO_INCREMENT PRIMARY KEY,
    subject_name VARCHAR(100) NOT NULL,
    credit INT NOT NULL CHECK (credit > 0)
);

INSERT INTO Subject (subject_name, credit)
VALUES
('Cơ sở dữ liệu', 3),
('Lập trình Java', 4),
('Cấu trúc dữ liệu', 3);

UPDATE Subject
SET credit = 4
WHERE subject_id = 1;

UPDATE Subject
SET subject_name = 'Lập trình Java nâng cao'
WHERE subject_id = 2;

SELECT *
FROM Subject;
