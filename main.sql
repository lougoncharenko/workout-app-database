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
    exerscise_type varchar(100) NOT NULL
    PRIMARY KEY (id)
);

ALTER TABLE Exercises 
ADD exerscise_type varchar(100) NOT NULL;


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

-- Insert into WORKOUT_PLAN_EXERCISES