USE Codm_Guns;
CREATE TABLE Primary_Guns(Category VARCHAR(20),
							/* Base Stats */
							Name VARCHAR(300),
							Damage float NOT NULL,
							Fire_Rate int NOT NULL,
							Accuracy int NOT NULL,
							Mobility int NOT NULL,
							Range Int NOT NULL,
							Control int NOT NULL,
							
							/*More Specific Stats*/
							Fire_Interval_ms float NOT NULL,

							/*For Burst weapons*/
							Shots_Per_Burst int NULL,
							Fire_Interval_in_Bursts_ms int NOT NULL,
							Fire_Interval_Between_Bursts_ms int NULL,

							/*all weapons in general*/
							Sprint_Speed_mps float NOT NULL,
							Aiming_Movement_Speed_mps float NOT NULL,
							Sprint_to_fire_time_ms float NOT NULL,
							Mag_Capacity INT NOT NULL,
							Quick_Reload_Time_s float NOT NULL,
							Empty_Reload_Time_s float NOT NULL,
							Hit_Flinch float NOT NULL,
							Aiming_Time_ms float NOT NULL);

/* Shotguns will have a table of their own maybe*
