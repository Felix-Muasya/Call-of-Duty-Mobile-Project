# CODM-SQL
The game Call Of Duty Mobile has extensive data, I'll write scripts in python to save the data, export it to an excel file, export the file to an SQL database and work with it from there.  
Honestly this is a lot of work since you can't scrape the data Meaning all entries will be manual.  
The are at least 96 guns in the game each with a minimum of 10* features* (for lack of a better word).  

##  The Data
It should contain the following:
  1. Gun category:  
  Guns in CODM are either *Primary* or *Seconday*.  
  Primary Guns Inlcude the following subcategories: Assault, Sniper, LMG, SMG, Shotgub and Marksman.
  Secondays Guns include the following subcategories: Launcher, Pistol and Melee.
  
  2. Gun Name:  
  This a bit of a Tricky one Since Guns do come in variations eg The AK47 has 3+ variants that inlcude but are not limited to *AK-47 Steel Blue* (Epic variant), *AK-47 Kuromaku* (Legendary Variant) and the *AK-47 Radiance* (Mythic Variant). But I'll just use the base names of the guns since variations are only cosmetic and do not change the base weapon stats.  
  
  3. Fire Rate:  
  This could simply be interpreted as the number of bullets a Gun fires per minute, this number is multiplied by 10  to get the Fire Rate in Rounds Per Minute (RPM). This info however is not an accurate representation of real life phenomena eg In the Game the AK-47 has a fire rate of 55 (550 Rounds Per Minute) but IRL the Fire Rate is 600RPM. The game isn't meant to inform your weapon choice/stats IRL. The FR of each gun is subject to change depending on the in game attachments provided, this means that the FR for some guns will change n others will remain the same.      
    
  4. Fire interval:
  This is interpreted as the *The delay between bullets fired* and like the fire rate is not an accurate representation of RL although it is based on it. This is also subject to change based on the attachments use.  
  
  5. Base Damage:
  This is the Damage done on the hp per shot fired. The AK-47 has a 33 base damage so to kill an enemy with 100hp you will to fire 4 bullets ie 33+33+33+1 = 100, since the enemy can't experience -32 damage on the last bullet they will only experince 1 dmg on the last shot. The base damage for every gun is subject to change based on *the damage distribution on the body*, *Range* (how far away you are from your enemy) and the *ammo type* used. More on these 3 later.
  
  6. Mobility:
  This is basically how fast and agile you are in the game based on the subcategory of gun you use and the atttachment you add onto said weapon. Mobility is split into 5 subcategories; Sprint Speed(How fast you can run), ADS time(The time it takes to Aim Down Your Sights, ADS movement speed(How fast you can move while Aiming Down Sights), Reload Speed(How fasdt you can replace your magazine with a new one) and  sprint to fire time(time taken to fire you weapon while running).  
  7. Range  (Damage dropoff, First Damage Range, Damage Distribution to the body)  
  8. Control (Horizontal, Vertical Recoil and hit flinch)  
  9. Accuracy(ADS bullet spread, hipfire bullet spread, *Steady Aim countdown*)  
  10. Mag capacity  
  
 All in all It should be a huge database with lots of table, primary keys n all the stuff. More documentation wto be provided later  
 I'll try replicating the real thing as best as I can  
 
 ## Why I'm doing this  
 I want to deepen my SQL knowledge, I know the basic but I want to gain some practice with hands on data, This repo will be like a playground for me.
 
 ## Disclaimer  
 Call of Duty data for the guns depending on which game mode you are playing, Like for MultiPlayer the ADS bullet spread is really high as compared to Battle Royale and the damage in BR and MP greatly differ from the Zombies mode (*Base Damage in Zombies is increased*)
 
 
 
 
