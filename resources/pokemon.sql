/*==========================================================================================
Description: 
============================================================================================
A SQL Project I made a while back for searching Pokemon. I use this for myself, but you guys can use it too, OK?

 
                               /\  ___︿ /\ 
                              |{ |(  ︿_) }|   
                           _   >  ◠\/  ◠  <  _
                          ( \ |"/ ()  ()\"| / )
                         (  (\ (    ——    )/)  )
                           (  (\ _  ‿  _ /)  )  
                             \ /  \   /  \ /  
                               |__ \__| __\
                       ________(____)__(___)_____   
                      /                          \
                     |      ☴☁ℂloudωίnℊ☁☴      |            
                      \__________________________/
                      
                 ▼ Scroll to the bottom to search Pokemon! ▼ 
                 
                 

If you'd like more: here's the link to more of my programs: 
https://www.khanacademy.org/computer-programming/my-programs/5563870888067072

============================================================================================Code: 
==========================================================================================*/

CREATE TABLE Pokemon (DexNO NUMERIC PRIMARY KEY, name TEXT, EvolvesFrom TEXT, TypeOne TEXT, TypeTwo TEXT, AbilityOne TEXT, AbilityTwo TEXT, HiddenAbility TEXT, Region TEXT, Status TEXT);
 

 /*What a MESS!*/ 
 
 INSERT INTO Pokemon VALUES(1, "Bulbasaur", "None", "Grass", "Poison", "Overgrow", "None", "Chlorophyll", "Kanto", "Starter"); INSERT INTO Pokemon VALUES(2, "Ivysaur", "Bulbasaur", "Grass", "Poison", "Overgrow", "None", "Chlorophyll", "Kanto", "Starter");INSERT INTO Pokemon VALUES(3, "Venusaur", "Ivysaur", "Grass", "Poison", "Overgrow", "None", "Chlorophyll", "Kanto", "Starter");INSERT INTO Pokemon VALUES(3.1, "Mega Venusaur", "Venusaur", "Grass", "Poison", "Thick Fat", "None", "None", "Kanto", "Mega Starter");INSERT INTO Pokemon VALUES(4, "Charmander", "None", "Fire", "None", "Blaze", "None", "Solar Power", "Kanto", "Starter");INSERT INTO Pokemon VALUES(5, "Charmeleon", "Charmander", "Fire", "None", "Blaze", "None", "Solar Power", "Kanto", "Starter");INSERT INTO Pokemon VALUES(6, "Charizard", "Charmeleon", "Fire", "Flying", "Blaze", "None", "Solar Power", "Kanto", "Starter");INSERT INTO Pokemon VALUES(6.1, "Mega Charizard X", "Charizard", "Fire", "Dragon", "Tough Claws", "None", "None", "Kanto", "Mega Starter");INSERT INTO Pokemon VALUES(6.2, "Mega Charizard  Y", "Charizard", "Fire", "Flying", "Drought" ,"None", "None", "Kanto", "Mega Starter");INSERT INTO Pokemon VALUES(7, "Squirtle", "None", "Water", "None", "Torrent" ,"None", "Rain Dish", "Kanto", "Starter");INSERT INTO Pokemon VALUES(8, "Wartortle", "Squirtle", "Water", "None", "Torrent" ,"None", "Rain Dish", "Kanto", "Starter");INSERT INTO Pokemon VALUES(9, "Blastoise", "Wartortle", "Water", "None", "Torrent" ,"None", "Rain Dish", "Kanto", "Starter");INSERT INTO Pokemon VALUES(9.1, "Mega Blastoise", "Blastoise", "Water", "None", "Mega Launcher" ,"None", "None", "Kanto", "Mega Starter");INSERT INTO Pokemon VALUES(10, "Caterpie", "None", "Bug", "None", "Shield Dust" ,"None", "Run Away", "Kanto", "Normal");INSERT INTO Pokemon VALUES(11, "Metapod", "Caterpie", "Bug", "None", "Shed Skin" ,"None", "None", "Kanto", "Normal");INSERT INTO Pokemon VALUES(12, "Butterfree", "Metapod", "Bug", "Flying", "Compound Eyes" ,"None", "Tinted Lens", "Kanto", "Normal");INSERT INTO Pokemon VALUES(13, "Weedle", "None", "Bug", "Poison", "Shield Dust" ,"None", "Run Away", "Kanto", "Normal");INSERT INTO Pokemon VALUES(14, "Kakuna", "Weedle", "Bug", "Poison", "Shed Skin" ,"None", "None", "Kanto", "Normal"); INSERT INTO Pokemon VALUES(15, "Beedrill", "Kakuna", "Bug", "Poison", "Swarm" ,"None", "Sniper", "Kanto", "Normal"); INSERT INTO Pokemon VALUES(16, "Pidgey", "None", "Normal", "Flying", "Keen Eye" ,"Tangled Feet", "Big Pecks", "Kanto", "Normal"); INSERT INTO Pokemon VALUES(17, "Pidgeotto", "Pidgey", "Normal", "Flying", "Keen Eye" ,"Tangled Feet", "Big Pecks", "Kanto", "Normal"); INSERT INTO Pokemon VALUES(18, "Pidgeot", "Pidgeotto", "Normal", "Flying", "Keen Eye" ,"Tangled Feet", "Big Pecks", "Kanto", "Normal"); INSERT INTO Pokemon VALUES(18.1, "Mega Pidgeot", "Pidgeot", "Normal", "Flying", "No Guard" ,"None", "None", "Kanto", "Mega");
 
 INSERT INTO Pokemon VALUES(25, "Pikachu", "Pichu", "Electric", "None", "Static" ,"None", "Lightning Rod", "Kanto", "Mascot");
 
 INSERT INTO Pokemon VALUES(147, "Dratini", "None", "Dragon", "None", "Shed Skin" ,"None", "Multiscale", "Kanto", "Normal");INSERT INTO Pokemon VALUES(148, "Dragonair", "Dratini", "Dragon", "None", "Inner Focus" ,"None", "Marvel Scale", "Kanto", "Normal");INSERT INTO Pokemon VALUES(149, "Dragonite", "Dragonair", "Dragon", "Flying", "Inner Focus" ,"None", "Multiscale", "Kanto", "Pseudo-Legendary");INSERT INTO Pokemon VALUES(150, "Mewtwo", "None", "Psychic", "None", "Pressure" ,"None", "Unnerve", "Kanto", "False"); INSERT INTO Pokemon VALUES(150.1, "Mega Mewtwo X", "Mewtwo", "Psychic", "Fighting", "Steadfast" ,"None", "None", "Kanto", "Legendary Mega"); INSERT INTO Pokemon VALUES(150.2, "Mega Mewtwo Y", "Mewtwo", "Psychic", "None", "Insomnia" ,"None", "None", "Kanto", "Legendary");INSERT INTO Pokemon VALUES(151, "Mew", "None", "Psychic", "None", "Synchronize" ,"None", "None", "Kanto", "Mythical");  INSERT INTO Pokemon VALUES(152, "Chikorita", "None", "Grass", "None", "Overgrow" ,"None", "Leaf Guard", "Jotho", "Starter");INSERT INTO Pokemon VALUES(153, "Bayleef", "Chikorita", "Grass", "None", "Overgrow" ,"None", "Leaf Guard", "Jotho", "Starter");INSERT INTO Pokemon VALUES(154, "Meganium", "Bayleef", "Grass", "None", "Overgrow" ,"None", "Leaf Guard", "Jotho", "Starter");INSERT INTO Pokemon VALUES(155, "Cyndaquil", "None", "Fire", "None", "Blaze" ,"None", "Flash Fire", "Jotho", "Starter");INSERT INTO Pokemon VALUES(156, "Quilava", "Cyndaquil", "Fire", "None", "Blaze" ,"None", "Flash Fire", "Jotho", "Starter");INSERT INTO Pokemon VALUES(157, "Typhlosion", "Quilava", "Fire", "None", "Blaze" ,"None", "Flash Fire", "Jotho", "Starter");
 
INSERT INTO Pokemon VALUES(249, "Lugia", "None", "Psychic", "Flying", "Pressure" ,"None", "Multiscale", "Jotho", "Legendary"); INSERT INTO Pokemon VALUES(250, "Ho-oh", "None", "Fire", "Flying", "Pressure" ,"None", "Regenerator", "Jotho", "Legendary");INSERT INTO Pokemon VALUES(251, "Celebi", "None", "Psychic", "Grass", "Natural Cure", "None", "None", "Jotho", "Mythical");INSERT INTO Pokemon VALUES(252, "Treecko", "None", "Grass", "None", "Overgrow" ,"None", "Unburden", "Hoenn", "Starter");INSERT INTO Pokemon VALUES(253, "Grovyle", "Treecko", "Grass", "None", "Overgrow" ,"None", "Unburden", "Hoenn", "Starter");INSERT INTO Pokemon VALUES(254, "Sceptile", "Grovyle", "Grass", "None", "Overgrow" ,"None", "Unburden", "Hoenn", "Starter");INSERT INTO Pokemon VALUES(254.1, "Mega Sceptile", "Sceptile", "Grass", "Dragon", "Lightning Rod" ,"None", "None", "Hoenn", "Mega Starter");
 
  INSERT INTO Pokemon VALUES(448, "Lucario", "Riolu", "Fighting", "Steel", "Steadfast" ,"Inner Focus", "Justified", "Sinnoh", "Normal");

 INSERT INTO Pokemon VALUES(468, "Togekiss", "Togetic", "Fairy", "Flying", "Hustle" ,"Serene Grace", "Super Luck", "Sinnoh", "Normal");
 
 
INSERT INTO Pokemon VALUES(647, "Keldeo", "None", "Water", "Fighting", "Justified" ,"None", "None", "Unova", "Mythical");INSERT INTO Pokemon VALUES(647.1, "Keldeo Resolute", "None", "Water", "Fighting", "Justified" ,"None", "None", "Unova", "Mythical");INSERT INTO Pokemon VALUES(648, "Meloetta", "None", "Normal", "Psychic", "Serene Grace" ,"None", "None", "Unova", "Mythical");INSERT INTO Pokemon VALUES(648.1, "Meloetta Pirouette", "None", "Normal", "Fighting", "Serene Grace" ,"None", "None", "Unova", "Mythical");INSERT INTO Pokemon VALUES(649, "Genesect", "None", "Bug", "Steel", "Download" ,"None", "None", "Unova", "Mythical");INSERT INTO Pokemon VALUES(650, "Chespin", "None", "Grass", "None", "Overgrow" ,"None", "Bulletproof", "Kalos", "Starter");INSERT INTO Pokemon VALUES(651, "Quilladin", "Chespin", "Grass", "None", "Overgrow" ,"None", "Bulletproof", "Kalos", "Starter");INSERT INTO Pokemon VALUES(652, "Chesnaught", "Quilladin", "Grass", "Fighting", "Overgrow" ,"None", "Bulletproof", "Kalos", "Starter");INSERT INTO Pokemon VALUES(653, "Fennekin", "None", "Fire", "None", "Blaze" ,"None", "Magician", "Kalos", "Starter");INSERT INTO Pokemon VALUES(654, "Braixen", "Fennekin", "Fire", "None", "Blaze" ,"None", "Magician", "Kalos", "Starter");INSERT INTO Pokemon VALUES(655, "Delphox", "Braixen", "Fire", "Psychic", "Blaze" ,"None", "Magician", "Kalos", "Starter");
 
INSERT INTO Pokemon VALUES(714, "Noibat", "None", "Flying", "Dragon", "Frisk" ,"Infiltrator", "Telepathy", "Kalos", "Normal");INSERT INTO Pokemon VALUES(715, "Noivern", "Noibat", "Flying", "Dragon", "Frisk" ,"Infiltrator", "Telepathy", "Kalos", "Normal");INSERT INTO Pokemon VALUES(716, "Xerneas", "None", "Fairy", "None", "Fairy Aura" ,"None", "None", "Kalos", "Legendary");INSERT INTO Pokemon VALUES(717, "Yveltal", "None", "Dark", "Flying", "Dark Aura" ,"None", "None", "Kalos", "Legendary");INSERT INTO Pokemon VALUES(718, "Zygarde", "None", "Dragon", "Ground", "Aura Break" ,"None", "None", "Kalos", "Legendary");INSERT INTO Pokemon VALUES(719, "Diancie", "None", "Rock", "Fairy", "Clear Body" ,"None", "None", "Kalos", "Mythical");INSERT INTO Pokemon VALUES(719.1, "Mega Diancie", "Diancie", "Rock", "Fairy", " Magic Bounce" ,"None", "None", "Kalos", "Mythical");INSERT INTO Pokemon VALUES(720, "Hoopa", "None", "Psychic", "Ghost", " Magician" ,"None", "None", "Kalos", "Mythical");INSERT INTO Pokemon VALUES(720.1, "Hoopa Unbound", "Hoopa", "Pyschic", "Dark", "Magician" ,"None", "None", "Kalos", "Mythical");INSERT INTO Pokemon VALUES(721, "Volcanion", "None", "Fire", "Water", "Water Absorb" ,"None", "None", "Kalos", "Mythical");
   
  SELECT MAX(DexNO) AS number_Of_Pokemon FROM Pokemon; 

SELECT DexNO, Name, EvolvesFrom, TypeOne, TypeTwo, AbilityOne, AbilityTwo, HiddenAbility FROM Pokemon;


 SELECT * FROM Pokemon WHERE Name = "Sceptile";/*Search Pokemon here by Name(Be sure not to misspell)*/


