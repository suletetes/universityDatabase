-- Inserting data into the Student table
INSERT INTO Student (FirstName, LastName, DateOfBirth, Address, Email, Major)
VALUES
  ('John', 'Doe', '1995-05-15', '123 Main St, Cityville', 'john.doe@email.com', 'Computer Science'),
  ('Jane', 'Smith', '1998-08-22', '456 Oak St, Townsville', 'jane.smith@email.com', 'Biology'),
  -- Add more rows as needed;

-- Inserting data into the Professor table
INSERT INTO Professor (FirstName, LastName, DateOfBirth, Address, Email, Department)
VALUES
  ('Michael', 'Johnson', '1970-02-28', '789 Pine St, Villageton', 'michael.johnson@email.com', 'Computer Science'),
  ('Sarah', 'Miller', '1985-09-12', '101 Elm St, Hamletville', 'sarah.miller@email.com', 'Biology'),
  -- Add more rows as needed;

-- Inserting data into the Course table
INSERT INTO Course (CourseName, Credits, Department)
VALUES
  ('Introduction to Computer Science', 4, 'Computer Science'),
  ('Biology 101', 3, 'Biology'),
  -- Add more rows as needed;

-- Inserting data into the Department table
INSERT INTO Department (DepartmentName, Location, ChairpersonID)
VALUES
  ('Computer Science', 'Science Building, Room 301', 1), -- Assuming ProfessorID 1 is the chair for Computer Science
  ('Biology', 'Life Sciences Building, Room 201', 2), -- Assuming ProfessorID 2 is the chair for Biology
  -- Add more rows as needed;

-- Inserting data into the Enrollment table
INSERT INTO Enrollment (StudentID, CourseID, EnrollmentDate, Grade)
VALUES
  (1, 1, '2023-09-01', 'A'),
  (2, 2, '2023-09-01', 'B+'),
  -- Add more rows as needed;

-- Inserting data into the Classroom table
INSERT INTO Classroom (RoomNumber, Building, Capacity)
VALUES
  ('101', 'Science Building', 30),
  ('201', 'Life Sciences Building', 25),
  -- Add more rows as needed;

-- Inserting data into the Assignment table
INSERT INTO Assignment (CourseID, ProfessorID, AssignmentName, DueDate)
VALUES
  (1, 1, 'Programming Assignment 1', '2023-09-15'),
  (2, 2, 'Lab Report 1', '2023-09-20'),
  -- Add more rows as needed;

-- Inserting data into the DegreeProgram table
INSERT INTO DegreeProgram (ProgramName, TotalCreditsRequired)
VALUES
  ('Bachelor of Computer Science', 120),
  ('Bachelor of Biology', 128),
  -- Add more rows as needed;

-- Inserting data into the Prerequisite table
INSERT INTO Prerequisite (CourseID, PrerequisiteCourseID)
VALUES
  (1, 5), -- Assuming CourseID 5 is a prerequisite for CourseID 1
  (2, 6), -- Assuming CourseID 6 is a prerequisite for CourseID 2
  -- Add more rows as needed;

-- Inserting data into the Library table
INSERT INTO Library (LibraryName, Location, LibrarianID)
VALUES
  ('University Library', 'Main Building, 2nd Floor', 1), -- Assuming ProfessorID 1 is the librarian
  ('Science Library', 'Science Building, Basement', 2), -- Assuming ProfessorID 2 is the librarian
  -- Add more rows as needed;

-- Inserting data into the StudentActivity table
INSERT INTO StudentActivity (StudentID, ActivityName, ActivityDate)
VALUES
  (1, 'Hackathon', '2023-10-05'),
  (2, 'Biology Club Meeting', '2023-09-28'),
  -- Add more rows as needed;

-- Inserting data into the ClassSchedule table
INSERT INTO ClassSchedule (CourseID, RoomNumber, StartTime, EndTime, DayOfWeek)
VALUES
  (1, '101', '09:00:00', '10:30:00', 'Monday'),
  (2, '201', '13:00:00', '15:00:00', 'Wednesday'),
  -- Add more rows as needed;

-- Inserting data into the ResearchProject table
INSERT INTO ResearchProject (ProjectName, ProfessorID, StartDate, EndDate)
VALUES
  ('AI Research Project', 1, '2023-09-01', '2024-03-01'),
  ('Biology Research Study', 2, '2023-10-15', '2024-06-01'),
  -- Add more rows as needed;

-- Inserting data into the StudentProjectParticipation table
INSERT INTO StudentProjectParticipation (StudentID, ProjectID, Role)
VALUES
  (1, 1, 'Developer'),
  (2, 2, 'Research Assistant'),
  -- Add more rows as needed;
