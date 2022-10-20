USE Codm_Guns;
CREATE TABLE Primary_Guns(category VARCHAR(10),
							Name VARCHAR(30),
							Fire_Interval VARCHAR(5),
							Sprint_Speed VARCHAR(6),
							Aiming_Movement_Speed VARCHAR(6),
							Sprint_to_fire_time VARCHAR (5),
							Mag_Capacity VARCHAR(4),
							Quick_Reload_Time VARCHAR(5),
							Empty_Reload_Time VARCHAR(5),
							Hit_Flinch VARCHAR(4),
							Aiming_Time VARCHAR (7));

SELECT * FROM dbo.Primary_Guns;