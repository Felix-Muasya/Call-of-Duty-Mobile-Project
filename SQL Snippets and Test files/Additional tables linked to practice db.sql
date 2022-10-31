/*
This script contains tables for extra tables with attributes that are specific to the gun class or single gun.
The basic info on all the guns is contained in the table Guns_general.
*/

CREATE TABLE Shotguns
(-- Attributes unique to shotguns
Name VARCHAR(200) NOT NULL,
FOREIGN KEY (Name) REFERENCES Guns_general(Name),
Class VARCHAR(20) NOT NULL, 
Pellets_Per_Shot int NOT NULL
);

CREATE TABLE Burst_Weapons
(/*Attributes unique to burst weapons */ 
Name VARCHAR(200) NOT NULL,
FOREIGN KEY (Name) REFERENCES Guns_general(Name),
Class VARCHAR(20) NOT NULL,
Shots_Per_Burst int,
Fire_Interval_in_Bursts_ms int,
Fire_Interval_Between_Bursts_ms int
);

CREATE TABLE Snipers_Marksman
( -- Unique attributes for snipers and marksman rifles
Name VARCHAR(200) NOT NULL,
FOREIGN KEY (Name) REFERENCES Guns_general(Name),
Class VARCHAR(20) NOT NULL,
Steady_Aim_Countdown_s float NOT NULL
);