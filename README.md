# Intoduction and Scope of the Project
#### Inspirations for this project: [Kamal Carter](https://www.youtube.com/watch?v=ne9bmMX82iY) and [River's Educational Channel](https://www.youtube.com/watch?v=LXA7zXVz8A4)
Call of Duty Mobile is a free to play online game with at least 70 Million players Worldwide. As with other games CODM has a a lot of bots to fill in for real player and make it easier for new players to go up the learning curve. The game has a ranking for the players based on the points a player has.  
The in game ranks are as follows:   *Rookie Tier*(1 - 1000 points), *Veteran Tier*( 1001 - 2000 points), *Elite Tier* (2001 - 3000 points), *Pro Tier* (3001 - 4500 points), *Master Tier* (4501 - 6000 points), *GrandMaster Tier* (6001 - 8000), *Legendary Tier* (8000+ points).

 ### Why I'm doing this  
 a. I aim to expand my SQL knowldge; By making database(s) I want to get more hand on practice with SQL   
   
 b. Try my hand at building a bot that will possibly write SQL queries, returning output to the user.  
   
 c. Challenge myself in building a bot that can play the game and hopefully rank up to legendary, I know this will not be easy but I'm patient enough to see it through. Why bother with the batabase if you want to make a bot? I need to better understand most if not all of the games stats so I can give the bot a better chance of winning with different guns, situations and maps.  
   
 d. In building the bot I will learn more about ML and AI outisde of my usual academic setting.  
   
 e. Enjoy myself.  
   
 I intend to create something similar to [this](https://www.icloud.com/numbers/0dt7hWv0j7OPGLUlv1fDrZ1Wg#COD_Mobile_Gun_Data), but update it to account for recoil, headshot accuracy, bullet spread accuracy, percantage of shots landed, range and anything else relevant to the current state of the game. 
 



##  The Data
For purposes of simplicity I'll use the **AK-47** as a reference gun  
<br />
![AK-47 Full](https://user-images.githubusercontent.com/66355304/197142661-0d8cad72-b0b1-4465-bbd6-84b532f74865.png)
<br />


The data should contain the following:
  ### 1.1 Gun category:  
  Guns in CODM are either *Primary* or *Seconday*.  
  Primary Guns Inlcude the following subcategories: Assault, Sniper, LMG, SMG, Shotgun and Marksman.  
  <br />
  ![Primary Weapons](https://user-images.githubusercontent.com/66355304/197142923-77c79f71-b38e-4f43-8124-1dcd2408b8ea.png)  
  <br />
  Secondays Guns include the following subcategories: Launcher, Pistol and Melee.  
  <br />
  ![Secondary Weapons](https://user-images.githubusercontent.com/66355304/197143061-df91c962-7ec4-4a59-9a5a-d94a62ac57fd.png)
  <br />

  
  
  ### 1.2 Gun Name:  
  ![AK-47 name](https://user-images.githubusercontent.com/66355304/197145111-2f4e3ba2-280a-47c8-876a-43249c46de23.png)

  This a bit of a Tricky one Since Guns do come in variations eg The AK47 has 3+ variants that inlcude but are not limited to *AK-47 Steel Blue* (Epic variant), *AK-47 Kuromaku* (Legendary Variant) and the *AK-47 Radiance* (Mythic Variant). But I'll just use the base names of the guns since variations are only cosmetic and do not change the base weapon stats.  
  
  ### 1.3 Fire Rate:  
  ![AK-47 FR](https://user-images.githubusercontent.com/66355304/197145310-1435bd46-b0eb-40a3-9e49-c84e2980332d.png)

  This could simply be interpreted as the number of bullets a Gun fires per minute, this number is multiplied by 10  to get the Fire Rate in Rounds Per Minute (RPM). The AK-47 has an FR of 55 (550RPM) or when equipped with 5.45 Caliber Ammo it's 58(580RPM).  
  
  
  ### 1.4 Fire interval:  
  ![AK-47 FI](https://user-images.githubusercontent.com/66355304/197145392-d810677b-610a-4594-b079-096c919de219.png)  
   <br />
  This is interpreted as the *The delay between bullets fired*  measured in milliseconds (ms) and like the fire rate is not an accurate representation of RL although it is based on it. This is also subject to change based on the attachments used.  
 

 
  
  ### 1.5 Base Damage:  
 ![AK-47 BD](https://user-images.githubusercontent.com/66355304/197148052-a9d1b9c7-c488-4c52-ac0e-b21122c6baf1.png)  

  
  This is the Damage done on the hp per shot fired. The AK-47 has a 33 base damage, so to kill an enemy with 100hp you will to fire 4 bullets ie 33+33+33+1 = 100, since the enemy can't experience -32 damage on the last bullet they will only experince 1 dmg on the last shot. The base damage for every gun is subject to change based on *the damage distribution on the body*, *Range* (how far away you are from your enemy) and the *ammo type* used. More on these 3 later.
  
  
  ### 1.6 Mobility:  
 ![AK-47 Sprint](https://user-images.githubusercontent.com/66355304/197148485-7b81db6a-7fd9-4afe-ad8d-beb25b99ad49.png)  
 ![ADS time](https://user-images.githubusercontent.com/66355304/197149524-b798182d-2165-42f7-a7b9-12d407e9a54b.png)  
   ![AK-47 Reload](https://user-images.githubusercontent.com/66355304/197149639-608f1fce-5769-4e95-acf3-0169272440a4.png)  


  This is basically how fast and agile you are in the game based on the subcategory of gun you use and the atttachment you add onto said weapon. Mobility is split into 5 subcategories namely:   
  Sprint Speed(How fast you can run), ADS time/Aiming time(The time it takes to Aim Down Your Sights/Aim your weapon), ADS movement speed(How fast you can move while Aiming Down Sights), Reload Speed(How fast you can replace your magazine with a new one) and  sprint to fire time(time taken to fire your weapon while running).   
 

  
 ### 1.7 Range  (Damage dropoff, First Damage Range, Damage Distribution to the body)  
   ![AK-47 Damage Distribution with Range](https://user-images.githubusercontent.com/66355304/197187003-b9062b92-a7e0-4041-8447-6e4a2b81f4e2.png)  
   ![AK-47 Body Damage Distribution](https://user-images.githubusercontent.com/66355304/197186189-0b028afa-449b-4983-992c-39aa9c3748bd.png)
![Damage_multiplier](https://user-images.githubusercontent.com/66355304/197186843-d9dfa4a7-3a7b-49c2-962e-b0f61dd66a1e.png)  
This is how much damage the AK-47 does at any given range and how much damge each shot does to a specific zone of the body ie a hit box. So to know how much damge each shot does, take the base damage at each range zone * the damage multiplier  




 
 1.9 Control (Horizontal, Vertical Recoil and hit flinch)  
 1.10 Accuracy(ADS bullet spread, hipfire bullet spread, *Steady Aim countdown*)  
 1.11 Mag capacity  
  
 All in all It should be a huge database with lots of table, primary keys n all the stuff. More documentation wto be provided later  
 I'll try replicating the real thing as best as I can  
 

 
 ### Disclaimer  
 Call of Duty data for the guns depending on which game mode you are playing, Like for MultiPlayer the ADS bullet spread is really high as compared to Battle Royale and the damage in BR and MP greatly differ from the Zombies mode (*Base Damage in Zombies is increased*)  
 <br />
<br />

 
 
 
 
 
