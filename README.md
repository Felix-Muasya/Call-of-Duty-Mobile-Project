# CODM-SQL
The game Call Of Duty Mobile has extensive data, I'll write scripts in python to save the data, export it to an excel file, export the file to an SQL database and work with it from there.  
Honestly this is a lot of work since you can't scrape the data Meaning all entries will be manual.  
The are at least 96 guns in the game each with a minimum of 10* features* (for lack of a better word).  


For purposes of simplicity I'll use the **AK-47** as a reference gun  
<br />
![AK-47 Full](https://user-images.githubusercontent.com/66355304/197142661-0d8cad72-b0b1-4465-bbd6-84b532f74865.png)
<br />


##  The Data
It should contain the following:
  ### 1. Gun category:  
  Guns in CODM are either *Primary* or *Seconday*.  
  Primary Guns Inlcude the following subcategories: Assault, Sniper, LMG, SMG, Shotgun and Marksman.  
  <br />
  ![Primary Weapons](https://user-images.githubusercontent.com/66355304/197142923-77c79f71-b38e-4f43-8124-1dcd2408b8ea.png)  
  <br />
  Secondays Guns include the following subcategories: Launcher, Pistol and Melee.  
  <br />
  ![Secondary Weapons](https://user-images.githubusercontent.com/66355304/197143061-df91c962-7ec4-4a59-9a5a-d94a62ac57fd.png)
  <br />

  
  
  ### 2. Gun Name:  
  ![AK-47 name](https://user-images.githubusercontent.com/66355304/197145111-2f4e3ba2-280a-47c8-876a-43249c46de23.png)

  This a bit of a Tricky one Since Guns do come in variations eg The AK47 has 3+ variants that inlcude but are not limited to *AK-47 Steel Blue* (Epic variant), *AK-47 Kuromaku* (Legendary Variant) and the *AK-47 Radiance* (Mythic Variant). But I'll just use the base names of the guns since variations are only cosmetic and do not change the base weapon stats.  
  
  ### 3. Fire Rate:  
  ![AK-47 FR](https://user-images.githubusercontent.com/66355304/197145310-1435bd46-b0eb-40a3-9e49-c84e2980332d.png)

  This could simply be interpreted as the number of bullets a Gun fires per minute, this number is multiplied by 10  to get the Fire Rate in Rounds Per Minute (RPM). The AK-47 has an FR of 55 (550RPM) or when equipped with 5.45 Caliber Ammo it's 58(580RPM).  
  
  
  ### 4. Fire interval:  
  ![AK-47 FI](https://user-images.githubusercontent.com/66355304/197145392-d810677b-610a-4594-b079-096c919de219.png)  
   <br />
  This is interpreted as the *The delay between bullets fired*  measured in milliseconds (ms) and like the fire rate is not an accurate representation of RL although it is based on it. This is also subject to change based on the attachments used.  
 

 
  
  ### 5. Base Damage:  
 ![AK-47 BD](https://user-images.githubusercontent.com/66355304/197148052-a9d1b9c7-c488-4c52-ac0e-b21122c6baf1.png)  

  
  This is the Damage done on the hp per shot fired. The AK-47 has a 33 base damage, so to kill an enemy with 100hp you will to fire 4 bullets ie 33+33+33+1 = 100, since the enemy can't experience -32 damage on the last bullet they will only experince 1 dmg on the last shot. The base damage for every gun is subject to change based on *the damage distribution on the body*, *Range* (how far away you are from your enemy) and the *ammo type* used. More on these 3 later.
  
  
  ### 6. Mobility:  
 ![AK-47 Sprint](https://user-images.githubusercontent.com/66355304/197148485-7b81db6a-7fd9-4afe-ad8d-beb25b99ad49.png)  
 ![ADS time](https://user-images.githubusercontent.com/66355304/197149524-b798182d-2165-42f7-a7b9-12d407e9a54b.png)  
   ![AK-47 Reload](https://user-images.githubusercontent.com/66355304/197149639-608f1fce-5769-4e95-acf3-0169272440a4.png)  


  This is basically how fast and agile you are in the game based on the subcategory of gun you use and the atttachment you add onto said weapon. Mobility is split into 5 subcategories namely:   
  Sprint Speed(How fast you can run), ADS time/Aiming time(The time it takes to Aim Down Your Sights/Aim your weapon), ADS movement speed(How fast you can move while Aiming Down Sights), Reload Speed(How fast you can replace your magazine with a new one) and  sprint to fire time(time taken to fire your weapon while running).   
 

  
 ### 7. Range  (Damage dropoff, First Damage Range, Damage Distribution to the body)  
   ![AK-47 Damage Distribution with Range](https://user-images.githubusercontent.com/66355304/197187003-b9062b92-a7e0-4041-8447-6e4a2b81f4e2.png)  
   ![AK-47 Body Damage Distribution](https://user-images.githubusercontent.com/66355304/197186189-0b028afa-449b-4983-992c-39aa9c3748bd.png)
![Damage_multiplier](https://user-images.githubusercontent.com/66355304/197186843-d9dfa4a7-3a7b-49c2-962e-b0f61dd66a1e.png)  
This is how much damage the AK-47 does at any given range and how much damge each shot does to a specific zone of the body ie a hit box. So to know how much damge each shot does, take the base damage at each range zone * the damage multiplier  




 
 9. Control (Horizontal, Vertical Recoil and hit flinch)  
 10. Accuracy(ADS bullet spread, hipfire bullet spread, *Steady Aim countdown*)  
 11. Mag capacity  
  
 All in all It should be a huge database with lots of table, primary keys n all the stuff. More documentation wto be provided later  
 I'll try replicating the real thing as best as I can  
 
 ### Why I'm doing this  
 I want to deepen my SQL knowledge, I know the basic but I want to gain some practice with hands on data, This repo will be like a playground for me.
 
 ### Disclaimer  
 Call of Duty data for the guns depending on which game mode you are playing, Like for MultiPlayer the ADS bullet spread is really high as compared to Battle Royale and the damage in BR and MP greatly differ from the Zombies mode (*Base Damage in Zombies is increased*)  
 <br />
<br />
c
 
 
 
 
 
