-- Inserting data into the Student table
INSERT INTO Student (FirstName, LastName, DateOfBirth, Address, Email, Major)
VALUES
  ('John', 'Doe', '1995-05-15', '123 Main St, Cityville', 'john.doe@email.com', 'Computer Science'),
  ('Jane', 'Smith', '1998-08-22', '456 Oak St, Townsville', 'jane.smith@email.com', 'Biology'),
  ('Bob', 'Johnson', '1997-03-10', '789 Maple St, Villagetown', 'bob.johnson@email.com', 'Mathematics'),
  ('Alice', 'Clark', '1996-11-28', '321 Elm St, Hamletville', 'alice.clark@email.com', 'Physics'),
  ('Eva', 'Williams', '1999-07-03', '555 Pine St, Forestville', 'eva.williams@email.com', 'Chemistry');

-- Inserting data into the Professor table
INSERT INTO Professor (FirstName, LastName, DateOfBirth, Address, Email, Department)
VALUES
  ('Michael', 'Johnson', '1970-02-28', '789 Pine St, Villageton', 'michael.johnson@email.com', 'Computer Science'),
  ('Sarah', 'Miller', '1985-09-12', '101 Elm St, Hamletville', 'sarah.miller@email.com', 'Biology'),
  ('David', 'Brown', '1965-12-05', '222 Oak St, Townsville', 'david.brown@email.com', 'Mathematics'),
  ('Olivia', 'Smith', '1978-07-18', '444 Pine St, Cityville', 'olivia.smith@email.com', 'Physics'),
  ('Andrew', 'Davis', '1980-04-30', '555 Maple St, Forestville', 'andrew.davis@email.com', 'Chemistry');

-- Inserting data into the Course table
INSERT INTO Course (CourseName, Credits, Department)
VALUES
  ('Introduction to Computer Science', 4, 'Computer Science'),
  ('Biology 101', 3, 'Biology'),
  ('Calculus I', 3, 'Mathematics'),
  ('Physics 101', 4, 'Physics'),
  ('Chemistry 101', 4, 'Chemistry');

-- Inserting data into the Department table
INSERT INTO Department (DepartmentName, Location, ChairpersonID)
VALUES
  ('Computer Science', 'Science Building, Room 301', 1), -- Assuming ProfessorID 1 is the chair for Computer Science
  ('Biology', 'Life Sciences Building, Room 201', 2), -- Assuming ProfessorID 2 is the chair for Biology
  ('Mathematics', 'Math Building, Room 101', 3), -- Assuming ProfessorID 3 is the chair for Mathematics
  ('Physics', 'Physics Building, Room 201', 4), -- Assuming ProfessorID 4 is the chair for Physics
  ('Chemistry', 'Chemistry Building, Room 301', 5); -- Assuming ProfessorID 5 is the chair for Chemistry

-- Inserting data into the Enrollment table
INSERT INTO Enrollment (StudentID, CourseID, EnrollmentDate, Grade)
VALUES
  (1, 1, '2023-09-01', 'A'),
  (2, 2, '2023-09-01', 'B+'),
  (3, 3, '2023-09-01', 'A-'),
  (4, 4, '2023-09-01', 'B'),
  (5, 5, '2023-09-01', 'A');

-- Inserting data into the Classroom table
INSERT INTO Classroom (RoomNumber, Building, Capacity)
VALUES
  ('101', 'Science Building', 30),
  ('201', 'Life Sciences Building', 25),
  ('102', 'Math Building', 35),
  ('202', 'Physics Building', 30),
  ('301', 'Chemistry Building', 40);

-- Inserting data into the Assignment table
INSERT INTO Assignment (CourseID, ProfessorID, AssignmentName, DueDate)
VALUES
  (1, 1, 'Programming Assignment 1', '2023-09-15'),
  (2, 2, 'Lab Report 1', '2023-09-20'),
  (3, 3, 'Calculus Project', '2023-09-25'),
  (4, 4, 'Physics Lab Report 1', '2023-09-18'),
  (5, 5, 'Chemistry Experiment Report', '2023-09-22');

-- Inserting data into the DegreeProgram table
INSERT INTO DegreeProgram (ProgramName, TotalCreditsRequired)
VALUES
  ('Bachelor of Computer Science', 120),
  ('Bachelor of Biology', 128),
  ('Bachelor of Mathematics', 124),
  ('Bachelor of Physics', 130),
  ('Bachelor of Chemistry', 132);

-- Inserting data into the Prerequisite table
INSERT INTO Prerequisite (CourseID, PrerequisiteCourseID)
VALUES
  (3, 1),
  (4, 2),
  (5, 3);

-- Inserting data into the Library table
INSERT INTO Library (LibraryName, Location, LibrarianID)
VALUES
  ('University Library', 'Main Building, 2nd Floor', 1),
  ('Science Library', 'Science Building, Basement', 2),
  ('Math Library', 'Math Building, 1st Floor', 3),
  ('Physics Library', 'Physics Building, 3rd Floor', 4),
  ('Chemistry Library', 'Chemistry Building, 2nd Floor', 5);

-- Inserting data into the StudentActivity table
INSERT INTO StudentActivity (StudentID, ActivityName, ActivityDate)
VALUES
  (1, 'Hackathon', '2023-10-05'),
  (2, 'Biology Club Meeting', '2023-09-28'),
  (3, 'Mathematics Quiz Competition', '2023-11-15'),
  (4, 'Physics Symposium', '2023-10-20'),
  (5, 'Chemistry Workshop', '2023-11-10');

-- Inserting data into the ClassSchedule table
INSERT INTO ClassSchedule (CourseID, RoomNumber, StartTime, EndTime, DayOfWeek)
VALUES
  (1, '101', '09:00:00', '10:30:00', 'Monday'),
  (2, '201', '13:00:00', '15:00:00', 'Wednesday'),
  (3, '102', '10:00:00', '11:30:00', 'Tuesday'),
  (4, '202', '14:00:00', '16:00:00', 'Thursday'),
  (5, '301', '11:00:00', '12:30:00', 'Friday');

-- Inserting data into the ResearchProject table
INSERT INTO ResearchProject (ProjectName, ProfessorID, StartDate, EndDate)
VALUES
  ('AI Research Project', 1, '2023-09-01', '2024-03-01'),
  ('Biology Research Study', 2, '2023-10-15', '2024-06-01'),
  ('Mathematics Modeling Project', 3, '2023-11-01', '2024-04-01'),
  ('Physics Quantum Mechanics Study', 4, '2023-09-20', '2024-05-01'),
  ('Chemistry Synthesis Experiment', 5, '2023-10-01', '2024-04-15');

-- Inserting data into the StudentProjectParticipation table
INSERT INTO StudentProjectParticipation (StudentID, ProjectID, Role)
VALUES
  (1, 1, 'Developer'),
  (2, 2, 'Research Assistant'),
  (3, 3, 'Modeler'),
  (4, 4, 'Assistant Researcher'),
  (5, 5, 'Lab Assistant');
