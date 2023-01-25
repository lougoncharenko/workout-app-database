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
-- Create table for Workout plans
-- Create table for Workout plan exerscises
-- Create table for Exerscises