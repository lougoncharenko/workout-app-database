-- Create Database
CREATE DATABASE WORKOUT_APP;

-- Create table for Clients 
CREATE TABLE Clients (
    id int NOT NULL AUTO_INCREMENT,
    full_name varchar(100) NOT NULL,
    dob DATE NOT NULL,
    address varchar(200),
    weight decimal(10, 2),
    height decimal(10, 2),
    PRIMARY KEY (id)
);

-- Create table for Goals
CREATE TABLE Goals (
    id int NOT NULL AUTO_INCREMENT,
    client_id int NOT NULL,
    goal_type varchar(100) NOT NULL,
    time_frame varchar(100) NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (client_id) REFERENCES Clients(id)
);
-- Create table for Workout plans
CREATE TABLE Workout_Plan (
    id int NOT NULL AUTO_INCREMENT,
    client_id int NOT NULL,
    duration varchar(100) NOT NULL,
    workout_split varchar(100) NOT NULL,
    sessions_per_week int NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (client_id) REFERENCES Clients(id)
);
-- Create table for Workout plan exerscises
CREATE TABLE Workout_Plan_Exerscise (
   id int NOT NULL AUTO_INCREMENT, 
   exercise_id int NOT NULL,
   Workout_plan_id int NOT NULL,
   sets int NOT NULL,
   reps int NOT NULL,
   PRIMARY KEY (id),
   FOREIGN KEY (exercise_id) REFERENCES Exercises(id),
   FOREIGN KEY (Workout_plan_id) REFERENCES Workout_Plan(id)
);
-- Create table for Exerscises
CREATE TABLE Exercises (
    id int NOT NULL AUTO_INCREMENT, 
    name varchar(100) NOT NULL,
    video varchar(100) NOT NULL,
    exerscise_type varchar(100) NOT NULL,
    muscle_group varchar(100) NOT NULL;
    PRIMARY KEY (id)
);


-- Insert into CLIENTS
INSERT INTO Clients 
(full_name, dob, address, weight, height)
VALUES 
('Cindy Crawford', '1989-12-01', '5312 12th street MN USA', 215.03, 5.9),
('Luke Grahamn', '1985-02-13', '6002 Lime street CA USA', 270.12, 6.1),
('Kate Parrie', '2000-10-23', '11295 Hand Blvd FL USA', 196.1, 5.3),
('Demi Lotato', '1999-05-05', '912 Viking Blvd TN USA', 200.7, 5.11),
('Nicky Jonase', '1997-01-11', '5531 Bahia Vista street NY USA', 215.8, 5.7),
('Kim Cardashion', '1995-11-17', '52191 34th Ave GA USA', 279.9, 5.11),
('Courtnee Cardashion', '1996-09-16', '52191 34th Ave GA USA', 267.3, 5.9),
('Timothy Cardashion', '1994-01-23', '52191 34th Ave GA USA', 320.5, 5.8),
('Taylor Swept', '1990-02-16', '900 Charlotte Ave NC USA', 219.9, 5.7),
('Dwayne Johnseen', '1996-01-01', '8234 Angel street  WA USA', 220.3, 6.2); 

-- Insert into GOALS
INSERT INTO Goals 
(client_id, goal_type,  time_frame)
VALUES 
(1, 'lose weight', '6 months'),
(2, 'lose weight', '1 year'),
(3, 'lose weight', '1 year'),
(4, 'build muscle', '2 years'),
(5, 'lose weight and build muscle', '1 year'),
(6, 'lose weight', '1 year'),
(7, 'lose weight', '1 year'),
(8, 'lose weight', '1 year'),
(9, 'lose weight and build muscle', '1.5 years'),
(10, 'build muscle', '1 years');

-- Insert into WORKOUT_PLAN
INSERT INTO Workout_Plan
(client_id, duration, workout_split, sessions_per_week )
VALUES
(1, '6 months', 'full body', 5),
(2, '6 months', 'push pull legs', 6),
(3, '6 months', 'push pull legs full body', 4),
(4, '6 months', 'upper-body lower-body', 6),
(5, '6 months', 'bro split', 5),
(6, '6 months', 'push pull legs', 3),
(7, '6 months', 'push pull legs', 3),
(8, '6 months', 'push pull legs', 3),
(9, '6 months', 'push pull legs cardio', 7),
(10, '6 months', 'bro split', 7);

-- Insert into EXERCISES
INSERT INTO Exercises 
(name, video, exerscise_type, muscle_group)
VALUES
('Barbell Squat', 'barbellsquat.mov', 'strength training', 'legs'),
('Barbell Front Squat', 'frontsquat.mov', 'strength training', 'legs'),
('Barbell Zercher Squat', 'zerchersquat.mov', 'strength training', 'legs'),
('Dumbell Goblet Squat', 'dumbellgobletsquat.mov', 'strength training', 'legs'),
('Bulgarian Split Squat', 'bulgariansplitsquat.mov', 'strength training', 'legs'),
('Barbell Lunges', 'barbelllunges.mov', 'strength training', 'legs'),
('Dumbell Lunges', 'dumbelllunges.mov', 'strength training', 'legs'),
('Side Lunge', 'sidelunge.mov', 'strength training', 'legs'),
('Bulgarian Split Squat', 'bulgariansplitsquat.mov', 'strength training', 'legs'),
('Leg press', 'legpress.mov', 'strength training', 'legs'),
('Quad Extension', 'quadextension.mov', 'strength training', 'legs'),
('Calf raises', 'calfraises.mov', 'strength training', 'legs'),
('barbell hip thrust', 'barbellhipthrust.mov', 'strength training', 'legs/glutes'),
('conventional deadlift', 'conventionaldeadlift.mov', 'strength training', 'legs/glutes/back'),
('sumo deadlift', 'sumodeadlift.mov', 'strength training', 'legs/glutes/back'),
('hamstring curl', 'hamstringcurl.mov', 'strength training', 'legs/hamstrings'),
('nordic curl', 'nordiccurl.mov', 'strength training', 'legs/hamstrings'),
('hack squat', 'hacksquat.mov', 'strength training', 'legs'),
('barbell good mornings', 'goodmornings.mov', 'strength training', 'legs/glutes'),
('barbell row', 'barbellrow.mov', 'strength training', 'back'),
('T-bar row', 'tbarrow.mov', 'strength training', 'back'),
('Dumbell Row', 'dumbellrow.mov', 'strength training', 'back'),
('Cable row', 'cablerow.mov', 'strength training', 'back'),
('barbell row', 'barbellrow.mov', 'strength training', 'back'),
('Pull ups', 'pullups.mov', 'calisthenics', 'back/biceps'),
('Pull-down', 'pulldown.mov', 'strength training', 'back'),
('back extension', 'backextension.mov', 'strength training', 'back'),
('Pendalay row', 'pendalayrow.mov', 'strength training', 'back'),
('Landmine row', 'landminerow.mov', 'strength training', 'back'),
('Rack pulls', 'rackpulls.mov', 'strength training', 'back'),
('Preacher curls', 'preachercurls.mov', 'strength training', 'biceps'),
('Dumbell curls', 'dumbellcurls.mov', 'strength training', 'biceps'),
('Cable curls', 'cablecurls.mov', 'strength training', 'biceps'),
('Hammer curls', 'hammercurls.mov', 'strength training', 'biceps'),
('Skull crushers', 'skullcrushers.mov', 'strength training', 'triceps'),
('Tricep Extensions', 'tricepextensions.mov', 'strength training', 'triceps'),
('Tricep Cable Extensions', 'tricepcableextensions.mov', 'strength training', 'triceps'),
('Tricep Kickbacks', 'tricepkickbacks.mov', 'strength training', 'triceps'),
('Dips', 'dips.mov', 'calisthenics', 'triceps'),
('Push ups', 'pushups.mov', 'calisthenics', 'triceps/chest'),
('Barbell flat press', 'barbellflatpress.mov', 'strength training', 'chest'),
('Dumbell flat press', 'dumbellflatpress.mov', 'strength training', 'chest'),
('Barbell incline press', 'barbellinclinepress.mov', 'strength training', 'chest'),
('Dumbell incline press', 'dumbellinclinepress.mov', 'strength training', 'chest'),
('Barbell flat press', 'barbellflatpress.mov', 'strength training', 'chest'),
('Dumbell flyes', 'dumbellflyes.mov', 'strength training', 'chest'),
('Barbell flat press', 'barbellflatpress.mov', 'strength training', 'chest'),
('cable press', 'cablepress.mov', 'strength training', 'chest'),
('Reverse fly', 'barbellrow.mov', 'strength training', 'shoulders'),
('Barbell flat press', 'barbellflatpress.mov', 'strength training', 'chest'),
('Military press', 'militarypress.mov', 'strength training', 'shoulders'),
('Dumbell shoulder press', 'dumbellshoulderpress.mov', 'strength training', 'shoulders'),
('Side lateral raise', 'sidelateralraise.mov', 'strength training', 'shoulders'),
('Arnold Press', 'arnoldpress.mov', 'strength training', 'shoulders'),
('Front raise', 'frontraise.mov', 'strength training', 'shoulders'),
('Y raise', 'yraise.mov', 'strength training', 'shoulders'),
('Face pulls', 'facepulls.mov', 'strength training', 'shoulders');


-- Insert into WORKOUT_PLAN_EXERCISE
INSERT INTO Workout_Plan_Exerscise
(exercise_id, Workout_plan_id, sets, reps)
VALUES
(1, 1, 4, 10),
(2, 1, 4, 10),
(6, 1, 4, 10),
(8, 1, 4, 10),
(14, 1, 4, 10),
(20, 1, 4, 10),
(25, 1, 4, 10),
(40, 1, 4, 10),
(41, 2, 3, 10),
(43, 2, 3, 10),
(51, 2, 3, 10),
(22, 2, 3, 10),
(26, 2, 3, 10),
(31, 2, 3, 10),
(4, 2, 3, 10),
(6, 2, 3, 10),
(11, 2, 3, 10),
(1, 3, 4, 12),
(2, 3, 4, 12),
(3, 3, 4, 12),
(7, 3, 4, 12),
(14, 3, 4, 10),
(20, 3, 4, 10),
(21, 3, 4, 10),
(32, 3, 4, 10),
(35, 3, 4, 10),
(36, 3, 4, 10),
(40, 3, 4, 10),
(41, 3, 4, 10),
(43, 3, 4, 10),
(53, 3, 4, 10),
(57, 3, 4, 10),
(5, 4, 5, 8),
(7, 4, 5, 8),
(10, 4, 5, 8),
(11, 4, 5, 8),
(18, 4, 5, 8),
(21, 4, 5, 8),
(23, 4, 5, 8),
(28, 4, 5, 8),
(31, 4, 5, 8),
(48, 4, 5, 8),
(53, 4, 5, 8),
(54, 4, 5, 8),
(57, 5, 5, 5),
(55, 5, 5, 5),
(54, 5, 5, 5),
(52, 5, 5, 5),
(48, 5, 5, 5),
(47, 5, 5, 5),
(46, 5, 5, 5),
(41, 5, 5, 5),
(38, 5, 5, 5),
(36, 5, 5, 5),
(35, 5, 5, 5),
(34, 5, 5, 5),
(33, 5, 5, 5),
(31, 5, 5, 5),
(29, 5, 5, 5),
(28, 5, 5, 5),
(26, 5, 5, 5),
(24, 5, 5, 5),
(19, 5, 5, 5),
(18, 5, 5, 5),
(15, 5, 5, 5),
(11, 5, 5, 5),
(7, 5, 5, 5),
(3, 5, 5, 5),
(1, 6, 3, 10),
(2, 6, 3, 10),
(4, 6, 3, 10),
(7, 6, 3, 10),
(11, 6, 3, 10),
(17, 6, 3, 10),
(22, 6, 3, 10),
(26, 6, 3, 10),
(31, 6, 3, 10),
(39, 6, 3, 10),
(40, 6, 3, 10),
(41, 6, 3, 10),
(43, 6, 3, 10),
(51, 6, 3, 10),
(52, 6, 3, 10),
(56, 6, 3, 10),
(1, 7, 3, 10),
(2, 7, 3, 10),
(4, 7, 3, 10),
(7, 7, 3, 10),
(11, 7, 3, 10),
(17, 7, 3, 10),
(22, 7, 3, 10),
(26, 7, 3, 10),
(31, 7, 3, 10),
(39, 7, 3, 10),
(40, 7, 3, 10),
(41, 7, 3, 10),
(43, 7, 3, 10),
(51, 7, 3, 10),
(52, 7, 3, 10),
(56, 7, 3, 10),
(1, 8, 3, 10),
(2, 8, 3, 10),
(4, 8, 3, 10),
(7, 8, 3, 10),
(11, 8, 3, 10),
(17, 8, 3, 10),
(22, 8, 3, 10),
(26, 8, 3, 10),
(31, 8, 3, 10),
(39, 8, 3, 10),
(40, 8, 3, 10),
(41, 8, 3, 10),
(43, 8, 3, 10),
(51, 8, 3, 10),
(52, 8, 3, 10),
(56, 8, 3, 10),
(2, 9, 4, 10),
(3, 9, 4, 10),
(8, 9, 4, 10),
(10, 9, 4, 10),
(12, 9, 4, 10),
(19, 9, 4, 10),
(20, 9, 4, 10),
(22, 9, 4, 10),
(30, 9, 4, 10),
(31, 9, 4, 10),
(34, 9, 4, 10),
(35, 9, 4, 10),
(38, 9, 4, 10),
(39, 9, 4, 10),
(40, 9, 4, 10),
(41, 9, 4, 10),
(43, 9, 4, 10),
(48, 9, 4, 10),
(52, 9, 4, 10),
(54, 9, 4, 10),
(56, 9, 4, 10),
(57, 10, 5, 5),
(55, 10, 5, 5),
(54, 10, 5, 5),
(52, 10, 5, 5),
(48, 10, 5, 5),
(47, 10, 5, 5),
(46, 10, 5, 5),
(41, 10, 5, 5),
(38, 10, 5, 5),
(36, 10, 5, 5),
(35, 10, 5, 5),
(34, 10, 5, 5),
(33, 10, 5, 5),
(31, 10, 5, 5),
(29, 10, 5, 5),
(28, 10, 5, 5),
(26, 10, 5, 5),
(24, 10, 5, 5),
(19, 10, 5, 5),
(18, 10, 5, 5),
(15, 10, 5, 5),
(11, 10, 5, 5),
(7, 10, 5, 5),
(3, 10, 5, 5);

-- Query 1 Description: Select all the customer???s whose goal is to lose weight
SELECT Clients.full_name 
FROM Clients
JOIN Goals
ON Clients.id = Goals.client_id
WHERE Goals.goal_type LIKE '%lose weight%';

-- Query 2 Description: Find all the exercises on Taylor Swept???s workout plan

SELECT Exercises.name FROM Exercises
JOIN Workout_Plan_Exerscise
ON Exercises.id = Workout_Plan_Exerscise.exercise_id
JOIN Workout_Plan
ON Workout_Plan.id = Workout_Plan_Exerscise.Workout_plan_id
JOIN Clients
ON Clients.id = Workout_Plan.client_id
WHERE Clients.full_name = 'Taylor Swept';


-- Query 3
SELECT Exercises.name, COUNT(Workout_Plan_Exerscise.exercise_id) AS 'Total' 
FROM Exercises
JOIN Workout_Plan_Exerscise
ON Exercises.id = Workout_Plan_Exerscise.exercise_id
GROUP BY Exercises.name
ORDER BY Total DESC;

-- Query 4
SELECT Exercises.id, Exercises.name, Exercises.muscle_group FROM Exercises
LEFT JOIN Workout_Plan_Exerscise
ON Exercises.id = Workout_Plan_Exerscise.exercise_id
WHERE Workout_Plan_Exerscise.Workout_plan_id is NULL;

SELECT height, cast(height) AS Integer, height - cast(height) AS Decimal
FROM Clients

-- query 5
SELECT full_name, height , weight,
(FLOOR(height)*12) + ((height-FLOOR(height))*10) AS Height_in_Inches,
ROUND((((weight/POWER((FLOOR(height)*12) + ((height-FLOOR(height))*10),2)))*703), 2) AS BMI
 FROM Clients
 ORDER BY BMI DESC;

SELECT Clients.full_name AS Name, COUNT(Exercises.name) AS 'Total Exercises'
FROM Exercises
JOIN Workout_Plan_Exerscise
ON Exercises.id = Workout_Plan_Exerscise.exercise_id
JOIN Workout_Plan
ON Workout_Plan.id = Workout_Plan_Exerscise.Workout_plan_id
JOIN Clients
ON Clients.id = Workout_Plan.client_id
GROUP BY Clients.full_name
ORDER BY COUNT(Exercises.name) DESC
LIMIT 3
OFFSET 5;

SELECT Clients.full_name, 
Goals.goal_type, 
Workout_Plan.workout_split, 
Workout_Plan.sessions_per_week
FROM Clients
JOIN Workout_Plan ON Clients.id = Workout_Plan.client_id
JOIN Goals ON Clients.id = Goals.client_id;

SELECT (COUNT(Exercises.name)
FROM Exercises
JOIN Workout_Plan_Exerscise
ON Exercises.id = Workout_Plan_Exerscise.exercise_id;


SELECT muscle_group, COUNT(muscle_group) AS 'Exerscises per muscle group'
FROM Exercises
GROUP BY muscle_group
ORDER BY COUNT(muscle_group) DESC;

SELECT Clients.full_name, Workout_Plan.sessions_per_week
FROM Clients
JOIN Workout_Plan ON Clients.id = Workout_Plan.client_id
ORDER BY Workout_Plan.sessions_per_week DESC
LIMIT 3; 
