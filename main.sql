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
    PRIMARY KEY (id)
);

-- Insert into CLIENTS
-- Insert into GOALS
-- Insert into WORKOUT_PLAN
-- Insert into EXERCISES
-- Insert into WORKOUT_PLAN_EXERCISES