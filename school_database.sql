
CREATE TABLE students (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    birth_date DATE,
    class_id INT,
    gender VARCHAR(10)
    );

CREATE TABLE teachers (
    teacher_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    subject VARCHAR(50)
);

CREATE TABLE classes (
    class_id INT PRIMARY KEY AUTO_INCREMENT,
    class_name VARCHAR(10),
    class_teacher INT
);

CREATE TABLE subjects (
    subject_id INT PRIMARY KEY AUTO_INCREMENT,
    subject_name VARCHAR(50)
);

CREATE TABLE grades (
    grade_id INT PRIMARY KEY AUTO_INCREMENT,
    student_id INT,
    subject_id INT,
    grade INT,
    exam_date DATE
);


INSERT INTO students (first_name, last_name, birth_date, class_id, gender) VALUES
('Elvin', 'Hüseynov', '2010-03-15', 1, 'Male'),
('Aysel', 'Quliyeva', '2011-07-20', 1, 'Female');


INSERT INTO teachers (first_name, last_name, subject) VALUES
('Rauf', 'Məmmədov', 'Riyaziyyat'),
('Leyla', 'Əliyeva', 'İnformatika');


INSERT INTO classes (class_name, class_teacher) VALUES
('7A', 1);


INSERT INTO subjects (subject_name) VALUES
('Riyaziyyat'),
('İnformatika');

INSERT INTO grades (student_id, subject_id, grade, exam_date) VALUES
(1, 1, 5, '2024-10-10'),
(2, 2, 4, '2024-10-11');
