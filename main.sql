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


-- Insert into WORKOUT_PLAN_EXERCISES
INSERT INTO Exercises 
()
VALUES