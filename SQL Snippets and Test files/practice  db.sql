/* I'll create a new db called practice_constraints and new tables, an ERD for the database will be provided
And add new stuff to it, I want to practice SQL constraints, 
Here goes ya boy
After much testing this table will only contain weapon name, class and base stats*/

CREATE TABLE Guns_general
(
/* Base Stats these are an amalgamation of more specific stats */
Name VARCHAR(200) NOT NULL PRIMARY KEY, -- Weapon name must be unique coz its a primary key
Class VARCHAR(20) NOT NULL, -- Weapon class ie assault, smg, sniper etc
Damage float NOT NULL, -- base damage without any specific attachments
Fire_Rate int NOT NULL, -- self explanatory
Accuracy int NOT NULL, -- Ads bullet spread and recoil
Mobility int NOT NULL, -- sprint speed, ads movement speed, ads time n the like
Range Int NOT NULL, -- Damage distribution * Damage drop off and accounting for damage multiplier 
Control int NOT NULL, -- This is the vertical and horizontal recoil after each shot and also inludes hit flinch

/* more specific stats applicable to most weapons or weapon classes, look at more tables for more info */
Fire_Interval_ms float,
Bullet_Speed float,
Sprint_Speed_mps float NOT NULL,
Aiming_Movement_Speed_mps float NOT NULL,
Sprint_to_fire_time_ms float NOT NULL,
Mag_Capacity INT NOT NULL,
Quick_Reload_Time_s float NOT NULL,
Empty_Reload_Time_s float NOT NULL,
Hit_Flinch float NOT NULL,
Aiming_Time_ms float NOT NULL,

);

