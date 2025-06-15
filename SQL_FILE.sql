create database db_03;

use db_03;

CREATE TABLE User (
    User_ID INT PRIMARY KEY,
    Name VARCHAR(255),
    Email VARCHAR(255) UNIQUE,
    Type VARCHAR(50),
    Phone VARCHAR(20)
);

CREATE TABLE Event (
    Event_ID INT PRIMARY KEY,
    Name VARCHAR(255),
    Description TEXT,
    Date_Time DATETIME,
    Rules TEXT,
    Reg_Fee DECIMAL(10,2),
    Max_Participants INT
);

CREATE TABLE Venue (
    Venue_ID INT PRIMARY KEY,
    Name VARCHAR(255),
    Location VARCHAR(255),
    Capacity INT
);

CREATE TABLE Sponsor (
    Sponsor_ID INT PRIMARY KEY,
    Name VARCHAR(255),
    Company VARCHAR(255),
    Event_ID INT,
    FOREIGN KEY (Event_ID) REFERENCES Event(Event_ID)
);

CREATE TABLE Participant (
    Participant_ID INT PRIMARY KEY,
    Name VARCHAR(255),
    Email VARCHAR(255) UNIQUE,
    University VARCHAR(255)
);

CREATE TABLE Judge (
    Judge_ID INT PRIMARY KEY,
    Name VARCHAR(255),
    Email VARCHAR(255) UNIQUE
);

CREATE TABLE Payment (
    Payment_ID INT PRIMARY KEY,
    Type VARCHAR(50),
    Amount DECIMAL(10,2),
    Status VARCHAR(50),
    User_ID INT,
    FOREIGN KEY (User_ID) REFERENCES User(User_ID)
);

CREATE TABLE Accommodation (
    Accom_ID INT PRIMARY KEY,
    Room_No VARCHAR(50),
    Cost DECIMAL(10,2),
    Check_In_Date DATE,
    Check_Out_Date DATE
);

CREATE TABLE Score (
    Score_ID INT PRIMARY KEY,
    Score_Value INT,
    Judge_ID INT,
    Event_ID INT,
    FOREIGN KEY (Judge_ID) REFERENCES Judge(Judge_ID),
    FOREIGN KEY (Event_ID) REFERENCES Event(Event_ID)
);

CREATE TABLE Manages (
    User_ID INT,
    Event_ID INT,
    PRIMARY KEY (User_ID, Event_ID),
    FOREIGN KEY (User_ID) REFERENCES User(User_ID),
    FOREIGN KEY (Event_ID) REFERENCES Event(Event_ID)
);

CREATE TABLE Register_For (
    Participant_ID INT,
    Event_ID INT,
    PRIMARY KEY (Participant_ID, Event_ID),
    FOREIGN KEY (Participant_ID) REFERENCES Participant(Participant_ID),
    FOREIGN KEY (Event_ID) REFERENCES Event(Event_ID)
);

CREATE TABLE Assign_To (
    Event_ID INT,
    Judge_ID INT,
    PRIMARY KEY (Event_ID, Judge_ID),
    FOREIGN KEY (Event_ID) REFERENCES Event(Event_ID),
    FOREIGN KEY (Judge_ID) REFERENCES Judge(Judge_ID)
);

CREATE TABLE Gives (
    Judge_ID INT,
    Score_ID INT,
    PRIMARY KEY (Judge_ID, Score_ID),
    FOREIGN KEY (Judge_ID) REFERENCES Judge(Judge_ID),
    FOREIGN KEY (Score_ID) REFERENCES Score(Score_ID)
);

CREATE TABLE Funds (
    Sponsor_ID INT,
    Event_ID INT,
    PRIMARY KEY (Sponsor_ID, Event_ID),
    FOREIGN KEY (Sponsor_ID) REFERENCES Sponsor(Sponsor_ID),
    FOREIGN KEY (Event_ID) REFERENCES Event(Event_ID)
);

CREATE TABLE Request (
    Participant_ID INT,
    Accom_ID INT,
    PRIMARY KEY (Participant_ID, Accom_ID),
    FOREIGN KEY (Participant_ID) REFERENCES Participant(Participant_ID),
    FOREIGN KEY (Accom_ID) REFERENCES Accommodation(Accom_ID)
);

CREATE TABLE Has (
    Event_ID INT,
    Venue_ID INT,
    PRIMARY KEY (Event_ID, Venue_ID),
    FOREIGN KEY (Event_ID) REFERENCES Event(Event_ID),
    FOREIGN KEY (Venue_ID) REFERENCES Venue(Venue_ID)
);

CREATE TABLE Made_By (
    User_ID INT,
    Payment_ID INT,
    PRIMARY KEY (User_ID, Payment_ID),
    FOREIGN KEY (User_ID) REFERENCES User(User_ID),
    FOREIGN KEY (Payment_ID) REFERENCES Payment(Payment_ID)
);

INSERT INTO Participant (Participant_ID, Name, Email, University) VALUES
(1, 'Alice Smith', 'alice.smith@email.com', 'Harvard University'),
(2, 'Bob Johnson', 'bob.johnson@email.com', 'Stanford University'),
(3, 'Charlie Lee', 'charlie.lee@email.com', 'MIT'),
(4, 'Diana King', 'diana.king@email.com', 'Oxford University'),
(5, 'Ethan Brown', 'ethan.brown@email.com', 'Cambridge University'),
(6, 'Fiona White', 'fiona.white@email.com', 'Yale University'),
(7, 'George Black', 'george.black@email.com', 'Princeton University'),
(8, 'Hannah Green', 'hannah.green@email.com', 'Columbia University'),
(9, 'Ian Gray', 'ian.gray@email.com', 'Caltech'),
(10, 'Julia Blue', 'julia.blue@email.com', 'UCLA');

select * from user;

INSERT INTO venue (Venue_ID, Name, Location, Capacity) VALUES
(1, 'Grand Ballroom', 'Main Campus, Building A', 500),
(2, 'Tech Innovation Hub', 'Engineering Block, 2nd Floor', 200),
(3, 'Business Conference Center', 'Business School Complex', 350),
(4, 'University Auditorium', 'Central Administration Building', 800),
(5, 'Greenfield Hall', 'East Campus, Block D', 150),
(6, 'STEM Research Center', 'Science Faculty Wing', 120),
(7, 'Creative Arts Theater', 'Arts Quadrangle', 300),
(8, 'Alumni Convention Hall', 'West Campus', 600),
(9, 'Sports Complex Arena', 'University Stadium', 2000),
(10, 'Library Conference Room', 'Central Library, 3rd Floor', 80);


SELECT 
        Venue_ID,
        Name,
        Location,
        Capacity
      FROM venue;



      
INSERT INTO Event (Event_ID, Name, Description, Rules, Reg_Fee, Max_Participants, Date_Time)
VALUES
(2, 'Tech Talk 2025', 'A seminar on emerging technologies.', 'Follow the code of conduct.', 500, 100, '2025-06-15 10:00:00'),

(3, 'Startup Pitch', 'Pitch your startup idea.', 'Team of max 5 allowed.', 1000, 50, '2025-06-16 11:00:00'),

(4, 'Gaming Tournament', 'Compete in CS:GO.', 'Bring your own gear.', 300, 64, '2025-06-17 14:00:00'),

(5, 'AI Hackathon', 'Build AI projects in 24 hours.', 'Teams of 3-5 members.', 1500, 30, '2025-06-18 09:00:00'),

(6, 'Web Dev Workshop', 'Learn full-stack dev.', 'Open to all.', 200, 80, '2025-06-19 13:00:00'),

(7, 'Robotics Challenge', 'Build and compete.', 'Safety first.', 1200, 25, '2025-06-21 09:00:00'),

(8, 'App Design Contest', 'Design the best app UI/UX.', 'Original work only.', 400, 50, '2025-06-22 12:00:00'),

(9, 'Finance Quiz', 'Test your finance knowledge.', 'Solo event.', 100, 100, '2025-06-23 11:00:00'),

(10, 'E-Sports Marathon', '24-hour gaming session.', 'Follow the gaming rules.', 600, 80, '2025-06-24 15:00:00');

SELECT Event_ID, Name, Description, Date_Time,Rules,Reg_Fee,Max_Participants FROM event

INSERT INTO Sponsor (Sponsor_ID, Name, Company, Event_ID) VALUES
(1, 'Michael Scott', 'Dunder Mifflin', 2),
(2, 'Pam Beesly', 'Artistic Creations', 3),
(3, 'Jim Halpert', 'Athlead', 4),
(4, 'Dwight Schrute', 'Schrute Farms', 5),
(5, 'Stanley Hudson', 'Hudson Accounting', 6),
(6, 'Phyllis Vance', 'Vance Refrigeration', 7),
(7, 'Angela Martin', 'Cat Party', 8),
(8, 'Oscar Martinez', 'Accounting Pros', 9),
(9, 'Kevin Malone', 'Malone's Sweets', 10),
(10, 'Creed Bratton', 'Creed Thoughts', 2);

