------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------- VORP HUNTING SCRIPT ------------------------------------------------------------------------

Config = {}

Config.DevMode = true -- DIABLE THIS IF YOUR SERVER IS LIVE

----------------------------- TRANSLATE HERE -------------------------------------
Config.Language = {
    NotHoldingAnimal = "Vous n'avez rien   vendre",
    NotInTheButcher = "Je ne prends pas cet animal",
    AnimalSold = "Animal vendu avec succ s",
    SkinnableAnimalstowed = "Tu as recu ",
    stow = "Accrocher",
    press = "Appuyer",
    sell = "Vendre",
    notabutcher = "Vous n' tes pas boucher",
    dollar = " $",
    join = " et ",
    FullInventory = "Votre inventaire est plein."
}


------------------- PROMPT -----------------
Config.keys = {
    G = 0x760A9C6F, -- butcher sell and Stow
}

Config.aiButcherped = true -- spawn ai butched ped set to false if you dont want an ai butcher ped to spawn

Config.joblocked = false -- lock the butcher so only people with the job can access. u can change access to each butcher by editing this  butcherjob = "butcher"

Config.maxpelts = 4 -- max pelts allowed on back of horse

------------------- Item Quantity Instructions -----------------
-- The range for when a skinnableAnimal or Animal has a config value givenAmount of 0.
-- Example: Animals with givenAmount = {0} can be sold to the butcher or be skinned, which will give the player a random number between 1 and 3 amount of givenItem
Config.ItemQuantity = {
    Max = 3,
    Min = 1
}


Config.Butchers2 = {
    { butchername = "Boucher de St Denis", butcherjob = "butcher", blip = 1369919445, npcmodel = "S_M_M_UNIBUTCHERS_01", coords = vector3(2819.54, -1331.21, 44.00), heading = 51.8221321532, radius = 4.0 },
    { butchername = "Boucher de Guarma / viandes argent", butcherjob = "butcher", blip = -1665418949, npcmodel = "S_M_M_UNIBUTCHERS_01", coords = vector3(1279.84, -6893.5, 43.00), heading = 51.8221321532, radius = 4.0 }
}

-----------------ANIMAL INSTRUCTIONS  -----------------
-- 1. To add more rewards on each animal, edit the givenItem table. For example change givenItem ={ "meat"}, to givenItem ={ "meat","feathers"}
-- 2. If using more than one item in givenItem, then you must add another value to givenAmount. For example change givenAmount ={0}, to givenAmount ={0,0}
-- 3. givenAmount = {0} will set an amount to random amount between ItemQuantity Max/Min
-- 4. givenAmount = {{2,5}}  will set an amount to random between the first and second numbers in the supplied table, for the corresponding givenItem.
-- For example: givenItem = {"meat", "feathers", "claws", "beak"}, givenAmount = {{1,4}, {2,5}, 0, 1} will result in 1 to 4 "meat", 2 to 5 "feathers", ItemQuantity.Min to ItemQuanity.Max "claws" and 1 "beak".

----------------- !IMPORTANT! -----------------
-- TO ADD MORE ANIMALS AND FIND HASHES, HOLD ANIMALS OR PELTS AND DO /ANIMAL command
-- YOU CAN SEE WHAT ANIMAL HASH YOU Skined/plucked/stored IN THE f6/f8 logs.
-- THE ITEMS NAME MUST BE IN YOUR DATABASE FOR YOU TO RECEIVE THEM IN YOUR INVENTORY

-- Animals that are skinned/plucked/stored
Config.SkinnableAnimals = {


}

-- Animals that are traded in to the butcher
Config.Animals2 = {
    -- Animals
    [111281960]    = { name = "Pigeon", money = 0.40, gold = 0, rolPoints = 0, xp = 0, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [98537260]     = { name = "Corneille", money = 0.50, gold = 0, rolPoints = 0, xp = 0, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [-1550768676]  = { name = "Tamia", money = 0, gold = 0, rolPoints = 0, xp = 0, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [-930822792]   = { name = "Grenouille-taureau", money = 0.60, gold = 0, rolPoints = 0, xp = 0, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [674267496]    = { name = "Chauve-souris", money = 0.20, gold = 0, rolPoints = 0, xp = 0, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [-1797625440]  = { name = "Tatou", money = 0.10, gold = 0, rolPoints = 0, xp = 0, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [-1170118274]  = { name = "Blaireau", money = 10, gold = 0, rolPoints = 0, xp = 0, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [-1124266369]  = { name = "Grizzli", money = 5, gold = 0, rolPoints = 0, xp = 0, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = 957520252, good = 143941906, perfect = 1292673537 },
    [-15687816381] = { name = "Moufflon", money = 2, gold = 0, rolPoints = 0, xp = 0, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = 1796037447, good = -476045512, perfect = 1795984405 },
    [2028722809]   = { name = "Sanglier", money = 1, gold = 0, rolPoints = 0, xp = 0, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = 1248540072, good = nil, perfect = -1858513856 },
    [-1963605336]  = { name = "Cerf", money = 2, gold = 0, rolPoints = 0, xp = 0, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = 1603936352, good = -868657362, perfect = -702790226 },
    [1556473961]   = { name = "Bison", money = 5, gold = 0, rolPoints = 0, xp = 0, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = -1730060063, good = -591117838, perfect = -237756948 },
    [367637652 ]   = { name = "Bison tatanka", money = 6, gold = 0, rolPoints = 0, xp = 0, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [1957001316]   = { name = "Taureau", money = 5, gold = 0, rolPoints = 0, xp = 0, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = 9293261, good = -336086818, perfect = -53270317 },
    [1110710183]   = { name = "Biche", money = 2, gold = 0, rolPoints = 0, xp = 0, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = -662178186, good = -1827027577, perfect = -1035515486 },
    [-1003616053]  = { name = "Canard colvert", money = 2, gold = 0, rolPoints = 0, xp = 0, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [1459778951]   = { name = "Aigle a tete blanche", money = 2, gold = 0, rolPoints = 0, xp = 0, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [831859211]    = { name = "Aigrette roussetre", money = 0.20, gold = 0, rolPoints = 0, xp = 0, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [-2021043433]  = { name = "Wapiti", money = 2, gold = 0, rolPoints = 0, xp = 0, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = 2053771712, good = 1181652728, perfect = -1332163079 },
    [252669332]    = { name = "Renard roux", money = 1, gold = 0, rolPoints = 0, xp = 0, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = 1647012424, good = 238733925, perfect = 500722008 },
    [-1143398950]  = { name = "Loup gris", money = 3, gold = 0, rolPoints = 0, xp = 0, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = 85441452, good = 1145777975, perfect = 653400939 },
    [-885451903]   = { name = "Loup gris", money = 3, gold = 0, rolPoints = 0, xp = 0, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = 85441452, good = 1145777975, perfect = 653400939 },
    [-829273561]   = { name = "Loup gris", money = 3, gold = 0, rolPoints = 0, xp = 0, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = 85441452, good = 1145777975, perfect = 653400939 },
    [1104697660]   = { name = "Urubu a tete rouge", money = 0.20, gold = 0, rolPoints = 0, xp = 0, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [-407730502]   = { name = "Tortue alligator", gold = 5, rolPoints = 0, xp = 0, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [-466054788]   = { name = "Dinde sauvage", money = 2, gold = 0, rolPoints = 0, xp = 0, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [-2011226991]  = { name = "Dinde sauvage", money = 2, gold = 0, rolPoints = 0, xp = 0, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [-166054593]   = { name = "Dinde sauvage", money = 2, gold = 0, rolPoints = 0, xp = 0, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [-229688157]   = { name = "Couleuvre d'eau", money = 1, gold = 0, rolPoints = 0, xp = 0, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [-1790499186]  = { name = "Boa constricteur", money = 3, gold = 0, rolPoints = 0, xp = 0, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [1464167925]   = { name = "Fer-De-Lance", money = 1, gold = 0, rolPoints = 0, xp = 0, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [846659001]    = { name = "Crotale a queue noire", money = 0.70, gold = 0, rolPoints = 0, xp = 0, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [545068538]    = { name = "Crotale du Texas", money = 0.80, gold = 0, rolPoints = 0, xp = 0, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [-1211566332]  = { name = "Moufette rayee", money = 0.90, gold = 0, rolPoints = 0, xp = 0, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [40345436]     = { name = "Merinos", money = 1, gold = 0, rolPoints = 0, xp = 0, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = 1729948479, good = -1317365569, perfect = 1466150167 },
    [-164963696]   = { name = "Goeland argent ", money = 1, gold = 0, rolPoints = 0, xp = 0, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [-1076508705]  = { name = "Spatule rosee", money = 0.60, gold = 0, rolPoints = 0, xp = 0, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [2023522846]   = { name = "Coq dominicain", money = 0.50, gold = 0, rolPoints = 0, xp = 0, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [-466687768]   = { name = "Fou a pieds rouges", money = 0.50, gold = 0, rolPoints = 0, xp = 0, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [-575340245]   = { name = "Grand corbeau", money = 1, gold = 0, rolPoints = 0, xp = 0, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [1458540991]   = { name = "Raton laveur", money = 0.50, gold = 0, rolPoints = 0, xp = 0, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [-541762431]   = { name = "Lievre de californie", money = 1, gold = 0, rolPoints = 0, xp = 0, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [1755643085]   = { name = "Antilope femelle d'amerique", money = 3, gold = 0, rolPoints = 0, xp = 3, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = -983605026, good = 554578289, perfect = -1544126829 },
    [2079703102]   = { name = "T tras des prairies", money = 0.50, gold = 0, rolPoints = 0, xp = 0, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [-1414989025]  = { name = "Opossum de virginie", money = 0.50, gold = 0, rolPoints = 0, xp = 0, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [1007418994]   = { name = "Cochon Berkshire", money = 5, gold = 0, rolPoints = 0, xp = 0, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = -308965548, good = -57190831, perfect = -1102272634 },
    [1416324601]   = { name = "Faisan a collier", money = 0.90, gold = 0, rolPoints = 0, xp = 0, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [1265966684]   = { name = "Pelican d'amerique", money = 2, gold = 0, rolPoints = 0, xp = 0, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [-1797450568]  = { name = "Ara bleu", gold = 1, rolPoints = 0, xp = 0, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [1654513481]   = { name = "Panther", money = 8, gold = 0, rolPoints = 0, xp = 0, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = 1584468323, good = -395646254, perfect = 1969175294 },
    [1205982615]   = { name = "Condor", money = 2, gold = 0, rolPoints = 0, xp = 0, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [-2063183075]  = { name = "Poule dominicaine", money = 1, gold = 0, rolPoints = 0, xp = 0, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [-2073130256]  = { name = "Cormorant   aigrettes", money = 1, gold = 0, rolPoints = 0, xp = 3, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [90264823]     = { name = "Cougar", money = 8, gold = 0, rolPoints = 0, xp = 0, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = 1914602340, good = 459744337, perfect = -1791452194 },
    [-50684386]    = { name = "Vache", money = 10, gold = 0, rolPoints = 0, xp = 0, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = 334093551, good = 1150594075, perfect = -845037222 },
    [480688259]    = { name = "Coyote", money = 2, gold = 0, rolPoints = 0, xp = 0, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = -1558096473, good = 1150939141, perfect = -794277189 },
    [-564099192]   = { name = "Grue blanche", money = 0.90, gold = 0, rolPoints = 0, xp = 0, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [457416415]    = { name = "Monstre de Gila", money = 0.90, gold = 0, rolPoints = 0, xp = 0, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [-753902995]   = { name = "Chevre alpine", money = 2, gold = 0, rolPoints = 0, xp = 0, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = 699990316, good = 1710714415, perfect = -1648383828 },
    [723190474]    = { name = "Bernache du Canada", money = 0.90, gold = 0, rolPoints = 0, xp = 0, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [-2145890973]  = { name = "Buse rouilleuse", money = 0.90, gold = 0, rolPoints = 0, xp = 0, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [1095117488]   = { name = "Grand heron", money = 1, gold = 0, rolPoints = 0, xp = 0, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [-1854059305]  = { name = "Iguane vert", money = 1, gold = 0, rolPoints = 0, xp = 0, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [-593056309]   = { name = "Iguane du desert", money = 1, gold = 0, rolPoints = 0, xp = 0, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [1751700893]   = { name = "Pecari a collier", money = 2, gold = 0, rolPoints = 0, xp = 0, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = -99092070, good = -1379330323, perfect = 1963510418 },
    [386506078]    = { name = "Plongeon huard", money = 0.90, gold = 0, rolPoints = 0, xp = 0, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [-1098441944]  = { name = "Orignal", money = 9, gold = 0, rolPoints = 0, xp = 0, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = 1868576868, good = 1636891382, perfect = -217731719 },
    [-1134449699]  = { name = "Rat musque  d'amerique", money = 0.70, gold = 0, rolPoints = 0, xp = 0, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [-861544272]   = { name = "Grand-duc d'am rique", money = 0.90, gold = 0, rolPoints = 0, xp = 0, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [556355544]    = { name = "Boeuf Angus", money = 8, gold = 0, rolPoints = 0, xp = 0, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = 4623248928, good = 1208128650, perfect = 659601266 },
    [-1892280447]  = { name = "Alligator americain", money = 5, gold = 0, rolPoints = 0, xp = 0, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = 1806153689, good = -802026654, perfect = -1625078531 },
    [-2004866590]  = { name = "Alligator americain", money = 5, gold = 0, rolPoints = 0, xp = 0, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 3, poor = -1243878166, good = nil, perfect = -1475338121 },
    [759906147]    = { name = "Castor", money = 5, gold = 0, rolPoints = 0, xp = 0, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = -1569450319, good = -2059726619, perfect = 854596618 },
    [730092646]    = { name = "Ours noir", money = 3, gold = 0, rolPoints = 0, xp = 0, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = 1083865179, good = 1490032862, perfect = 663376218 },
    [1746830155]   = { name = "Conure de Caroline", money = 0.90, gold = 0, rolPoints = 0, xp = 0, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [1502581273]   = { name = "Crapaud", money = 0.20, gold = 0, rolPoints = 0, xp = 0, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },

}
