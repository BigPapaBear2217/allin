------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------- VORP HUNTING SCRIPT ------------------------------------------------------------------------

Config = {}

Config.DevMode = false -- DIABLE THIS IF YOUR SERVER IS LIVE

Config.Linux = false -- If they use a Linux server, then true

Config.butcherfunction = true -- set to true if you want to use butcher functions
----------------------------- TRANSLATE HERE -------------------------------------
Config.Language = {
    NotHoldingAnimal = "You Got Nothing To Sell",
    NotInTheButcher = "I won't buy that animal",
    AnimalSold = "Thanks for the deal you got ",
    SkinnableAnimalstowed = "Obtained ",
    stow = "Stow",
    press = "Press",
    sell = "Sell",
    notabutcher = "You Dont Have The Right Job",
    dollar = " $",
    join = ", ",
    FullInventory = "Inventory is too full."
}

------------------- PROMPT -----------------
Config.keys = {
    G = 0x760A9C6F, -- butcher sell and Stow
}

Config.aiButcherped = true -- spawn ai butched ped set to false if you dont want an ai butcher ped to spawn

Config.joblocked = false -- lock the butcher so only people with the job can access. u can change access to each butcher by editing this  butcherjob = "butcher"

Config.maxpelts = 3 -- max pelts allowed on back of horse

------------------- Item Quantity Instructions -----------------
-- The range for when a skinnableAnimal or Animal has a config value givenAmount of 0.
-- Example: Animals with givenAmount = {0} can be sold to the butcher or be skinned, which will give the player a random number between 1 and 3 amount of givenItem
Config.ItemQuantity = {
    Max = 3,
    Min = 1
}


Config.Butchers = {
   --[[ { butchername = "Valentine Butcher",   butcherjob = "butcher", blip = 1369919445, npcmodel = "S_M_M_UNIBUTCHERS_01", coords = vector3(-339.0141, 767.6358, 115.5645),   heading = 100.41544342041,  radius = 3.0, showblip = true, butcherped = true },
    { butchername = "Strawberry Butcher",  butcherjob = "butcher", blip = 1369919445, npcmodel = "S_M_M_UNIBUTCHERS_01", coords = vector3(-1753.143, -392.4201, 155.2578),  heading = 181.37438964844,  radius = 3.0, showblip = true, butcherped = true },
    { butchername = "Blackwater Butcher",  butcherjob = "butcher", blip = 1369919445, npcmodel = "S_M_M_UNIBUTCHERS_01", coords = vector3(-754.0, -1285.158, 43.03),        heading = 273.579,          radius = 3.0, showblip = true, butcherped = true },
    { butchername = "Annesburg Butcher",   butcherjob = "butcher", blip = 1369919445, npcmodel = "S_M_M_UNIBUTCHERS_01", coords = vector3(2934.51, 1301.159, 43.48365),     heading = 70.572128295898,  radius = 3.0, showblip = true, butcherped = true },
    { butchername = "Van Horn Butcher",    butcherjob = "butcher", blip = 1369919445, npcmodel = "S_M_M_UNIBUTCHERS_01", coords = vector3(2991.844, 572.0218, 43.36182),    heading = 259.52850341797,  radius = 3.0, showblip = true, butcherped = true },
  
    { butchername = "Armadillo Butcher",   butcherjob = "butcher", blip = 1369919445, npcmodel = "S_M_M_UNIBUTCHERS_01", coords = vector3(-3691.438, -2623.152, -14.75121), heading = 0.46632757782936, radius = 3.0, showblip = true, butcherped = true },
    { butchername = "Tumbleweed Butcher",  butcherjob = "butcher", blip = 1369919445, npcmodel = "S_M_M_UNIBUTCHERS_01", coords = vector3(-5510.371, -2947.005, -1.894515), heading = 251.54911804199,  radius = 3.0, showblip = true, butcherped = true },
    { butchername = "Landing Butcher",     butcherjob = "butcher", blip = 1369919445, npcmodel = "CS_MP_SHAKY",          coords = vector3(-1435.61, -2330.28, 43.66),       heading = 1.15,             radius = 4.0, showblip = true, butcherped = true },]]
    { butchername = "Rhodes Butcher",      butcherjob = "butcher", blip = 1369919445, npcmodel = "S_M_M_UNIBUTCHERS_01", coords = vector3(1297.578, -1277.589, 73.50102),   heading = 146.60472106934,  radius = 3.0, showblip = true, butcherped = true },
    { butchername = "Lakota Butcher",      butcherjob = "butcher", blip = 1369919445, npcmodel = "S_M_M_UNIBUTCHERS_01", coords = vector3(2489.84, 1747.47, 85.40),   heading = 146.60472106934,  radius = 3.0, showblip = true, butcherped = false },
    { butchername = "Kiowa Butcher",      butcherjob = "butcher", blip = 1369919445, npcmodel = "S_M_M_UNIBUTCHERS_01", coords = vector3(-2698.25, -1465.90, 148.588),   heading = 146.60472106934,  radius = 3.0, showblip = true, butcherped = false },
    { butchername = "Guarma Butcher",      butcherjob = "butcher", blip = 1369919445, npcmodel = "S_M_M_UNIBUTCHERS_01", coords = vector3(1270.76, -6894.25, 44.54),   heading = 146.60472106934,  radius = 3.0, showblip = true, butcherped = true },
    { butchername = "Chippewa Butcher",      butcherjob = "butcher", blip = 1369919445, npcmodel = "S_M_M_UNIBUTCHERS_01", coords = vector3(654.7808, -1235.55, 44.122),   heading = 146.60472106934,  radius = 3.0, showblip = true, butcherped = false },
    { butchername = "Saint Denis Butcher", butcherjob = "butcher", blip = 1369919445, npcmodel = "S_M_M_UNIBUTCHERS_01", coords = vector3(2817.76, -1324.42, 45.64),        heading = 51.8221321532,    radius = 4.0, showblip = true, butcherped = true }
}

-----------------ANIMAL INSTRUCTIONS  -----------------
-- 1. To add more rewards on each animal, edit the givenItem table. For example change givenItem ={ "meat"}, to givenItem ={ "meat","feathers"}
-- 2. If using more than one item in givenItem, then you must add another value to givenAmount. For example change givenAmount ={0}, to givenAmount ={0,0}
-- 3. givenAmount = {0} will set an amount to random amount between ItemQuantity Max/Min
-- 4. givenAmount = {{2,5}} will set an amount to random between the first and second numbers in the supplied table, for the corresponding givenItem.
-- For example: givenItem = {"meat", "feathers", "claws", "beak"}, givenAmount = {{1,4}, {2,5}, 0, 1} will result in 1 to 4 "meat", 2 to 5 "feathers", ItemQuantity.Min to ItemQuanity.Max "claws" and 1 "beak".

----------------- !IMPORTANT! -----------------
-- TO ADD MORE ANIMALS AND FIND HASHES, HOLD ANIMALS OR PELTS AND DO /ANIMAL command
-- YOU CAN SEE WHAT ANIMAL HASH YOU Skined/plucked/stored IN THE f6/f8 logs.
-- THE ITEMS NAME MUST BE IN YOUR DATABASE FOR YOU TO RECEIVE THEM IN YOUR INVENTORY

-- Animals that are skinned/plucked/stored
Config.SkinnableAnimals = {
    --small animals skin them and sell them at the butcher no need to add them to  CONFIG.ANIMALS
    
}
-- Animals that are traded in to the butcher
Config.Animals = {
    -- Animals
     
        --small animals skin them and sell them at the butcher no need to add them to CONFIG.ANIMALS
        [-1550768676]  = { name = "Tamia", givenItem = { "filandreuse" }, givenAmount = { 1 }, givenDisplay = { "Viande filandreuse" }, money = 0, gold = 0, rolPoints = 0, xp = 0 },
        [-930822792]   = { name = "Grenouille-taureau", givenItem = { "cuisse_de_grenouille" }, givenAmount = { 2 }, givenDisplay = { "Cuisse de grenouille" }, money = 0, gold = 0, rolPoints = 0, xp = 0 },
        [-1797625440]  = { name = "Tatou", givenItem = { "filandreuse" }, givenAmount = { 2 }, givenDisplay = { "Viande filandreuse" }, money = 0, gold = 0, rolPoints = 0, xp = 0 },
        [252669332]    = { name = "Renard roux", givenItem = { "filandreuse" }, givenAmount = { 2 }, givenDisplay = { "Viande filandreuse" }, money = 0, gold = 0, rolPoints = 0, xp = 0 },
        [1755643085]   = { name = "Antilope femelle d'am rique", givenItem = { "venaison" }, givenAmount = { 4 }, givenDisplay = { "Venaison" }, money = 0, gold = 0, rolPoints = 0, xp = 0 },
        [-1134449699]  = { name = "Rat musqu  d'am rique", givenItem = { "filandreuse" }, givenAmount = { 1 }, givenDisplay = { "Viande filandreuse" }, money = 0, gold = 0, rolPoints = 0, xp = 0 },
        [-1170118274]  = { name = "Blaireau", givenItem = { "filandreuse" }, givenAmount = { 2 }, givenDisplay = { "Viande filandreuse" },  money = 0, gold = 0, rolPoints = 0, xp = 0 },
        [846659001]    = { name = "Crotale   queue noire", givenItem = { "serpent" }, givenAmount = { 1 }, givenDisplay = { "Viande de serpent" }, money = 0, gold = 0, rolPoints = 0, xp = 0 },
        [-541762431]   = { name = "Li vre de californie", givenItem = { "cuisse_de_lapin" }, givenAmount = { 2 }, givenDisplay = { "Venaison" }, money = 0, gold = 0, rolPoints = 0, xp = 0 },
        [-2037578922]  = { name = "Crabe", givenItem = { "crustace" }, givenAmount = { 1 }, givenDisplay = { "Chair de crustac " }, money = 0, gold = 0, rolPoints = 0, xp = 0 },
        [-1763055991]  = { name = "Ecrevisse", givenItems = { "crustace"}, givenAmount = { 1 }, givenDisplay = { "Chair de crustac " }, money = 0, gold = 0, rolPoints = 0, xp = 0 },
        [480688259]    = { name = "Coyote", givenItem = { "filandreuse" }, givenAmount = { 2 }, givenDisplay = { "Viande filandreuse" }, money = 0, gold = 0, rolPoints = 0, xp = 0 },
        [-593056309]   = { name = "Iguane du d sert", givenItem = { "sangfroid" }, givenAmount = { 2 }, givenDisplay = { "Viande sang froid" }, money = 0, gold = 0, rolPoints = 0, xp = 0 },
        [457416415]    = { name = "Monstre de Gila", givenItem = { "sangfroid" }, givenAmount = { 2 }, givenDisplay = { "Viande sang froid" }, money = 0, gold = 0, rolPoints = 0, xp = 0 },
        [-1854059305]  = { name = "Iguane vert", givenItem = { "sangfroid" }, givenAmount = { 2 }, givenDisplay = { "Viande sang froid" }, money = 0, gold = 0, rolPoints = 0, xp = 0 },
        [759906147]    = { name = "Castor", givenItem = { "filandreuse" }, givenAmount = { 2 }, givenDisplay = { "Viande filandreuse" }, money = 0, gold = 0, rolPoints = 0, xp = 0 },
        [989669666]    = { name = "Rat", givenItem = { "filandreuse" }, givenAmount = { 1 }, givenDisplay = { "Viande filandreuse" }, money = 0, gold = 0, rolPoints = 0, xp = 0 },
        [1458540991]   = { name = "Raton laveur", givenItem = { "filandreuse" }, givenAmount = { 2 }, givenDisplay = { "Viande filandreuse" }, money = 0, gold = 0, rolPoints = 0, xp = 0 },    
        [-407730502]   = { name = "Tortue alligator", givenItem = { "sangfroid" }, givenAmount = { 2 }, givenDisplay = { "Viande sang froid" }, money = 0, gold = 0, rolPoints = 0, xp = 0 },
        [-1790499186]  = { name = "Boa constricteur", givenItem = { "serpent" }, givenAmount = { 1 }, givenDisplay = { "Viande de serpent" }, money = 0, gold = 0, rolPoints = 0, xp = 0 },
        [1464167925]   = { name = "Fer-De-Lance", givenItem = { "serpent" }, givenAmount = { 1 }, givenDisplay = { "Viande de serpent" }, money = 0, gold = 0, rolPoints = 0, xp = 0 },
        [-1211566332]  = { name = "Moufette ray e", givenItem = { "filandreuse" }, givenAmount = { 2 }, givenDisplay = { "Viande filandreuse" }, money = 0, gold = 0, rolPoints = 0, xp = 0 },
        [1465438313]   = { name = "Ecureuil", givenItem = { "filandreuse"}, givenAmount = { 1 }, givenDisplay = { "Viande filandreuse" }, money = 0, gold = 0, rolPoints = 0, xp = 0 },
        [-229688157]   = { name = "Couleuvre d'eau", givenItem = { "serpent" }, givenAmount = { 1 }, givenDisplay = { "Viande de serpent" }, money = 0, gold = 0, rolPoints = 0, xp = 0 },
        [545068538]    = { name = "Crotale du Texas", givenItem = { "serpent" }, givenAmount = { 1 }, givenDisplay = { "Viande de serpent" }, money = 0, gold = 0, rolPoints = 0, xp = 0 },
        [-1414989025]  = { name = "Opossum de virginie", givenItem = { "filandreuse" }, givenAmount = { 2 }, givenDisplay = { "Viande filandreuse" }, money = 0, gold = 0, rolPoints = 0, xp = 0 },
        [1502581273]   = { name = "Crapaud", givenItem = { "sangfroid" }, givenAmount = { 2 }, givenDisplay = { "Viande sang froid" }, money = 0, gold = 0, rolPoints = 0, xp = 0 },
    
        -- big animals when you skin them it gives you items. if you have it added TO CONFIG.ANIMALS JUST COPY PASTE HERE AND REMOVE THE GIVE MONEY ETC LIKE SHOWN BELOW.
        [730092646]    = { name = "Ours noir", givenItem = { "grosgibier" }, givenAmount = { 4 }, givenDisplay = { "Gros gibier" }, money = 0, gold = 0, rolPoints = 0, xp = 0 },
        [-753902995]   = { name = "Ch vre alpine", givenItem = { "gigot", "laitchevre" }, givenAmount = { 2, 2 }, givenDisplay = { "Gigot", "Lait de ch vre" }, money = 0, gold = 0, rolPoints = 0, xp = 0 },
        [-1892280447]  = { name = "Alligator am ricain", givenItem = { "grosgibier" }, givenAmount = { 4 }, givenDisplay = { "Gros gibier" }, money = 0, gold = 0, rolPoints = 0, xp = 0 },
        [-2004866590]  = { name = "Alligator am ricain", givenItem = { "grosgibier" }, givenAmount = { 4 }, givenDisplay = { "Gros gibier" }, money = 0, gold = 0, rolPoints = 0, xp = 0 },
        [556355544]    = { name = "Boeuf Angus", givenItem = { "vianderouge" }, givenAmount = { 4 }, givenDisplay = { "Viande rouge" }, money = 0, gold = 0, rolPoints = 0, xp = 0 },
        [-1124266369]  = { name = "Grizzli", givenItem = { "grosgibier"}, givenAmount = { 4, 2 }, givenDisplay = { "Gros gibier", "Graisse d'ours" }, money = 0, gold = 0, rolPoints = 0, xp = 0 },
        [-15687816381] = { name = "Mouflon", givenItem = { "gigot" }, givenAmount = { 2 }, givenDisplay = { "Gigot" }, money = 0, gold = 0, rolPoints = 0, xp = 0 },
        [2028722809]   = { name = "Sanglier", givenItem = { "sanglier" }, givenAmount = { 2 }, givenDisplay = { "Venaison" }, money = 0, gold = 0, rolPoints = 0, xp = 0 },
        [-1963605336]  = { name = "Cerf", givenItem = { "cerf" }, givenAmount = { 4 }, givenDisplay = { "Venaison" }, money = 0, gold = 0, rolPoints = 0, xp = 0 },
        [1556473961]   = { name = "Bison", givenItem = { "grosgibier" }, givenAmount = { 4 }, givenDisplay = { "Viande rouge" }, money = 0, gold = 0, rolPoints = 0, xp = 0 },
        [367637652 ]   = { name = "Bison tatanka", givenItem = { "grosgibier" }, givenAmount = { 4 }, givenDisplay = { "Viande rouge" }, money = 0, gold = 0, rolPoints = 0, xp = 0 },
        [1957001316]   = { name = "Boeuf", givenItem = { "vianderouge" }, givenAmount = { 4 }, givenDisplay = { "Viande rouge" }, money = 0, gold = 0, rolPoints = 0, xp = 0 },
        [1007418994]   = { name = "Cochon Berkshire", givenItem = { "longeporc" }, givenAmount = { 2 }, givenDisplay = { "Longe de porc" }, money = 0, gold = 0, rolPoints = 0, xp = 0 },
        [90264823]     = { name = "Cougar", givenItem = { "grosgibier" }, givenAmount = { 4 }, givenDisplay = { "Gros gibier" }, money = 0, gold = 0, rolPoints = 0, xp = 0 },
        [1110710183]   = { name = "Biche", givenItem = { "venaison" }, givenAmount = { 4 }, givenDisplay = { "Venaison" }, money = 0, gold = 0, rolPoints = 0, xp = 0 },
        [1751700893]   = { name = "P cari   collier", givenItem = { "longeporc" }, givenAmount = { 0 }, givenDisplay = { "Longe de porc" }, money = 0, gold = 0, rolPoints = 0, xp = 0 },
        [-2021043433]  = { name = "Wapiti", givenItem = { "venaison" }, givenAmount = { 4 }, givenDisplay = { "Venaison" }, money = 0, gold = 0, rolPoints = 0, xp = 0 },
        [-50684386]    = { name = "Vache", givenItem = { "vianderouge"}, givenAmount = { 4, 2 }, givenDisplay = { "Viande rouge", "Lait de vache" }, money = 0, gold = 0, rolPoints = 0, xp = 0 },
        [40345436]     = { name = "M rinos", givenItem = { "gigot"}, givenAmount = { 2, 2 }, givenDisplay = { "Gigot", "Laine" }, money = 0, gold = 0, rolPoints = 0, xp = 0 },
        [-1098441944]  = { name = "Orignal", givenItem = { "venaison" }, givenAmount = { 4 }, givenDisplay = { "Venaison" }, money = 0, gold = 0, rolPoints = 0, xp = 0 },
        [1654513481]   = { name = "Panth re", givenItem = { "grosgibier" }, givenAmount = { 4 }, givenDisplay = { "Gros gibier" }, money = 0, gold = 0, rolPoints = 0, xp = 0 },
        [-1143398950]  = { name = "Loup gris", givenItem = { "grosgibier", "fourrure" }, givenAmount = { 2 }, givenDisplay = { "Gros gibier", "Fourrure" }, money = 0, gold = 0, rolPoints = 0, xp = 0 },
        [-885451903]   = { name = "Loup gris", givenItem = { "grosgibier", "fourrure" }, givenAmount = { 2 }, givenDisplay = { "Gros gibier", "Fourrure" }, money = 0, gold = 0, rolPoints = 0, xp = 0 },
        [-829273561]   = { name = "Loup gris", givenItem = { "grosgibier", "fourrure" }, givenAmount = { 2 }, givenDisplay = { "Gros gibier", "Fourrure" }, money = 0, gold = 0, rolPoints = 0, xp = 0 },
        
        -- birds
        [1265966684]   = { name = "P lican d'am rique", givenItem = { "exotic" }, givenAmount = { 1 }, givenDisplay = { "Viande exotique" }, money = 0, gold = 0, rolPoints = 0, xp = 0 },
        [-1797450568]  = { name = "Ara bleu", givenItem = { "exotic" }, givenAmount = { 1 }, givenDisplay = { "Viande exotique" }, money = 0, gold = 0, rolPoints = 0, xp = 0 },
        [1205982615]   = { name = "Condor", givenItem = { "gibierplume" }, givenAmount = { 1 }, givenDisplay = { "Gibier   plumes" }, money = 0, gold = 0, rolPoints = 0, xp = 0 },
        [723190474]    = { name = "Bernache du Canada", givenItem = { "volaille" }, givenAmount = { 1 }, givenDisplay = { "Viande de volaille" }, money = 0, gold = 0, rolPoints = 0, xp = 0 },
        [386506078]    = { name = "Plongeon huard", givenItem = { "gibierplume" }, givenAmount = { 1 }, givenDisplay = { "Gibier   plumes" }, money = 0, gold = 0, rolPoints = 0, xp = 0 },
        [-1003616053]  = { name = "Canard colvert", givenItem = { "coin" }, givenAmount = { 2 }, givenDisplay = { "Venaison" }, money = 0, gold = 0, rolPoints = 0, xp = 0 },
        [-2063183075]  = { name = "Poule dominicaine", givenItem = { "volaille", "oeuf" }, givenAmount = { 1, 3 }, givenDisplay = { "Viande de volaille", "Oeufs", }, money = 0, gold = 0, rolPoints = 0, xp = 0 },
        [2023522846]   = { name = "Coq dominicain", givenItem = { "volaille" }, givenAmount = { 1 }, givenDisplay = { "Viande de volaille" }, money = 0, gold = 0, rolPoints = 0, xp = 0 },
        [1459778951]   = { name = "Aigle   t te blanche", givenItem = { "gibierplume" }, givenAmount = { 1 }, givenDisplay = { "Gibier   plumes" }, money = 0, gold = 0, rolPoints = 0, xp = 0 },
        [831859211]    = { name = "Aigrette rouss tre", givenItem = { "gibierplume" }, givenAmount = { 1 }, givenDisplay = { "Gibier   plumes" }, money = 0, gold = 0, rolPoints = 0, xp = 0 },
        [-2145890973]  = { name = "Buse rouilleuse", givenItem = { "gibierplume" }, givenAmount = { 1 }, givenDisplay = { "Gibier   plumes" }, money = 0, gold = 0, rolPoints = 0, xp = 0 },
        [2079703102]   = { name = "T tras des prairies", givenItem = { "volaille" }, givenAmount = { 1 }, givenDisplay = { "Viande de volaille" }, money = 0, gold = 0, rolPoints = 0, xp = 0 },
        [1095117488]   = { name = "Grand h ron", givenItem = { "gibierplume" }, givenAmount = { 1 }, givenDisplay = { "Gibier   plumes" }, money = 0, gold = 0, rolPoints = 0, xp = 0 },
        [-861544272]   = { name = "Grand-duc d'am rique", givenItem = { "gibierplume" }, givenAmount = { 1 }, givenDisplay = { "Gibier   plumes" }, money = 0, gold = 0, rolPoints = 0, xp = 0 },
        [-164963696]   = { name = "Go land argent ", givenItem = { "gibierplume" }, givenAmount = { 1 }, givenDisplay = { "Gibier   plumes" }, money = 0, gold = 0, rolPoints = 0, xp = 0 },
        [2105463796]   = { name = "Caille de californie", givenItem = { "venaison" }, givenAmount = { 1 }, givenDisplay = { "Venaison" }, money = 0, gold = 0, rolPoints = 0, xp = 0 },
        [-1076508705]  = { name = "Spatule ros e", givenItem = { "gibierplume" }, givenAmount = { 1 }, givenDisplay = { "Gibier   plumes" }, money = 0, gold = 0, rolPoints = 0, xp = 0 },
        [-466687768]   = { name = "Fou   pieds rouges", givenItem = { "gibierplume" }, givenAmount = { 1 }, givenDisplay = { "Gibier   plumes" }, money = 0, gold = 0, rolPoints = 0, xp = 0 },
        [1416324601]   = { name = "Faisan   collier", givenItem = { "venaison" }, givenAmount = { 1 }, givenDisplay = { "Venaison" }, money = 0, gold = 0, rolPoints = 0, xp = 0 },
        [1104697660]   = { name = "Urubu   t te rouge", givenItem = { "gibierplume" }, givenAmount = { 1 }, givenDisplay = { "Gibier   plumes" }, money = 0, gold = 0, rolPoints = 0, xp = 0 },
        [-575340245]   = { name = "Grand corbeau", givenItem = { "gibierplume" }, givenAmount = { 1 }, givenDisplay = { "Gibier   plumes" }, money = 0, gold = 0, rolPoints = 0, xp = 0 },
        [-466054788]   = { name = "Dinde sauvage", givenItem = { "volaille" }, givenAmount = { 1 }, givenDisplay = { "Viande de vollaile" }, money = 0, gold = 0, rolPoints = 0, xp = 0 },
        [-2011226991]  = { name = "Dinde sauvage", givenItem = { "volaille" }, givenAmount = { 1 }, givenDisplay = { "Viande de vollaile" }, money = 0, gold = 0, rolPoints = 0, xp = 0 },
        [-166054593]   = { name = "Dinde sauvage", givenItem = { "volaille" }, givenAmount = { 1 }, givenDisplay = { "Viande de vollaile" }, money = 0, gold = 0, rolPoints = 0, xp = 0 },
        [-564099192]   = { name = "Grue blanche", givenItem = { "gibierplume" }, givenAmount = { 1 }, givenDisplay = { "Gibier   plumes" }, money = 0, gold = 0, rolPoints = 0, xp = 0 },
        [1746830155]   = { name = "Conure de Caroline", givenItem = { "gibierplume" }, givenAmount = { 1 }, givenDisplay = { "Gibier   plumes" }, money = 0, gold = 0, rolPoints = 0, xp = 0 },
        [-2073130256]  = { name = "Cormorant   aigrettes", givenItem = { "gibierplume" }, givenAmount = { 1 }, givenDisplay = { "Gibier   plumes" }, money = 0, gold = 0, rolPoints = 0, xp = 0 },
        [98537260]     = { name = "Corneille", givenItem = { "gibierplume" }, givenAmount = { 1 }, givenDisplay = { "Gibier   plumes" }, money = 0, gold = 0, rolPoints = 0, xp = 0 },
        [111281960]    = { name = "Pigeon", givenItem = { "gibierplume" }, givenAmount = { 1 }, givenDisplay = { "Gibier   plumes" }, money = 0, gold = 0, rolPoints = 0, xp = 0 },
}
