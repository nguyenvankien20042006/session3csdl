DROP TABLE IF EXISTS Score;

CREATE TABLE Score (
    student_id INT NOT NULL,
    subject_id INT NOT NULL,
    mid_score DECIMAL(4,2) CHECK (mid_score >= 0 AND mid_score <= 10),
    final_score DECIMAL(4,2) CHECK (final_score >= 0 AND final_score <= 10),
    PRIMARY KEY (student_id, subject_id),
    FOREIGN KEY (student_id) REFERENCES Student(student_id),
    FOREIGN KEY (subject_id) REFERENCES Subject(subject_id)
);

INSERT INTO Score (student_id, subject_id, mid_score, final_score)
VALUES
(1, 1, 7.5, 8.0),
(1, 2, 6.5, 7.0),
(2, 1, 8.0, 8.5),
(2, 3, 7.0, 9.0);

UPDATE Score
SET final_score = 9.5
WHERE student_id = 1 AND subject_id = 1;

SELECT *
FROM Score;

SELECT *
FROM Score
WHERE final_score >= 8;
