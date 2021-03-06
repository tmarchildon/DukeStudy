INSERT INTO Student VALUES
('aa111', 'Amy', 4.0, '1234', 'Jun Yang', 'Computer Science', 'Economics', NULL),
('jb151', 'Jonny', 3.7, '5678', NULL, 'Biomedical Engineering', 'Computer Science','French'),
('mmd21', 'Matt', 3.2, NULL, 'Dorian Canelas', 'Chemistry', 'Math', 'I&E'),
('cfp65', 'Chris', NULL, '1213', 'Steven Wallace', 'Physics', NULL, 'Biomedical Engineering'),
('agp11', 'Gray', NULL, '1234', 'Jun Yang', 'Computer Science', NULL, 'Biomedical Engineering'),
('cs11', 'Chloe', NULL, '1234', 'Steven Wallace', 'Physics', NULL, 'Biomedical Engineering');

INSERT INTO Tutor VALUES
('mmd21', 12.00, 'MTuThFSat'),
('jb151', 9.00, 'MThFSun');

INSERT INTO Course VALUES
('1234','Computer Science', '316', 'CS201, CS101','TuTh 1:25-2:40'),
('5678','Computer Science', '201', 'CS101', 'MW 8:30-9:45'),
('91011','Chemistry', '101', NULL, 'TuTh 8:30-9:45'),
('1213','Biomedical Engineering', '244', 'EGR103', 'WF 3:05-4:20'),
('1415','Math', '356', 'MATH111, MATH112, MATH221, MATH222', 'TuTh 10:05-11:20');

INSERT INTO Tutors_For VALUES
('mmd21', 'CHEM101'),
('jb151', 'CS201');

INSERT INTO Professor VALUES
('Jun Yang', 'Computer Science', 'jun.yang@duke.edu'),
('Dorian Canelas', 'Chemsitry', 'dorian.canelas@duke.edu'),
('Steven Wallace', 'Biomedical Engineering', 'walace.steve@duke.edu'),
('Arya Roy', 'Physics', 'roy.arya@duke.edu'),
('Jeffery Forbes', 'Computer Science', 'forbes.jeffery@duke.edu'),
('Chris Roy', 'Math', 'chris.roy@duke.edu');

INSERT INTO Teaches_Course VALUES
('Jun Yang', 'Computer Science', 'CS316', 'Fall 2018', 01),
('Jeffery Forbes', 'Computer Science', 'CS316', 'Fall 2018', 02),
('Jeffery Forbes', 'Computer Science', 'CS316', 'Fall 2018', 03),
('Jun Yang', 'Computer Science', 'CS316', 'Fall 2017', 03),
('Jun Yang', 'Computer Science', 'CS316', 'Fall 2017', 02),
('Dorian Canelas', 'Chemsitry', 'CHEM101', 'Spring 2018', 001),
('Steven Wallace', 'Biomedical Engineering', 'BME244', 'Spring 2017', 03),
('Arya Roy', 'Physics', 'MATH356', 'Fall 2016', 02);

INSERT INTO TAs_Course VALUES
('mmd21', 'CHEM101', 'Spring 2018', 001),
('cfp65', 'BME244', 'Spring 2017', 03);

INSERT INTO Study_Group VALUES
(1, '1234', 'Fall 2018'),
(2, '91011', 'Spring 2018'),
(3, '1415', 'Fall 2016');

INSERT INTO Takes_Course VALUES
('aa111', 'CS316', 'Fall 2018', 01, 'A'),
('mmd21', 'CHEM101', 'Spring 2018', 001, 'A-'),
('cfp65', 'BME244', 'Spring 2017', 03, 'A+'),
('jb151', 'CS316', 'Fall 2018', 02, 'A'),
('agp11', 'CS316', 'Fall 2017', 02, 'A'),
('cs11', 'CS316','Fall 2017', 02, 'A'),
('agp11', 'BME244', 'Spring 2017', 03, 'A');
INSERT INTO Rates_Course VALUES
('mmd21', 'CHEM101', 'Spring 2018', 001, 5, 5, 3, 3),
('cfp65', 'BME244', 'Spring 2017', 03, 1, 1, 5, 5),
('agp11', 'BME244', 'Spring 2017', 03, 2, 4, 3, 2),
('agp11', 'CS316', 'Fall 2017', 03, 2, 4, 3, 2),
('cs11', 'CS316', 'Fall 2017', 03, 3, 2, 5, 1),
('jb151', 'CS316', 'Fall 2018', 03, 5, 5, 5, 5),
('aa111', 'CS316', 'Fall 2018', 03, 5, 5, 5, 5);
INSERT INTO In_Study_Group VALUES
(1, 'aa111'),
(1, 'jb151'),
(2, 'mmd21');
