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


Config.Butchers = {
    { butchername = "Boucher de Rhodes", butcherjob = "butcher", blip = 1369919445, npcmodel = "S_M_M_UNIBUTCHERS_01", coords = vector3(1297.578, -1277.589, 74.88102), heading = 146.60472106934, radius = 3.0 },
    { butchername = "Boucher de St Denis", butcherjob = "butcher", blip = 1369919445, npcmodel = "S_M_M_UNIBUTCHERS_01", coords = vector3(2819.54, -1331.21, 45.00), heading = 51.8221321532, radius = 4.0 },
    { butchername = "Boucher d'Annesburg", butcherjob = "butcher", blip = 1369919445, npcmodel = "S_M_M_UNIBUTCHERS_01", coords = vector3(1369.12, -6989.85, 57.26), heading = 51.8221321532, radius = 4.0 }
   -- { butchername = "Carnicero de Guarma", }
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

    --poissons
    [-711779521]   = { name = "L pisost  osseux", givenItem = { "fish" }, givenAmount = { 0 }, givenDisplay = { "Chair de poisson" }, money = 0, gold = 0, rolPoints = 0, xp = 0 },
    [-1553593715]  = { name = "Maskinong ", givenItem = { "fish" }, givenAmount = { 0 }, givenDisplay = { "Chair de poisson" }, money = 0, gold = 0, rolPoints = 0, xp = 0 },
    [-300867788]   = { name = "Esturgeon jaune", givenItem = { "fish" }, givenAmount = { 0 }, givenDisplay = { "Chair de poisson" }, money = 0, gold = 0, rolPoints = 0, xp = 0 },
    [1538187374]   = { name = "Grand Barbue de rivi re", givenItem = { "fish" }, givenAmount = { 0 }, givenDisplay = { "Chair de poisson" }, money = 0, gold = 0, rolPoints = 0, xp = 0 },
    [-2022921611]  = { name = "Barbue de rivi re large", givenItem = { "fish" }, givenAmount = { 0 }, givenDisplay = { "Chair de poisson" }, money = 0, gold = 0, rolPoints = 0, xp = 0 },
    [697075200]    = { name = "Brochet", givenItem = { "fish" }, givenAmount = { 0 }, givenDisplay = { "Chair de poisson" }, money = 0, gold = 0, rolPoints = 0, xp = 0 },
    [1867262572]   = { name = "Crapet arlequin moyen", givenItem = { "fish" }, givenAmount = { 0 }, givenDisplay = { "Chair de poisson" }, money = 0, gold = 0, rolPoints = 0, xp = 0 },
    [-2116748615]  = { name = "Petit Crapet arlequin", givenItem = { "fish" }, givenAmount = { 0 }, givenDisplay = { "Chair de poisson" }, money = 0, gold = 0, rolPoints = 0, xp = 0 },
    [703712157]    = { name = "Barbotte jaune moyenne", givenItem = { "fish" }, givenAmount = { 0 }, givenDisplay = { "Chair de poisson" }, money = 0, gold = 0, rolPoints = 0, xp = 0 },
    [1493541632]   = { name = "Petite Barbotte jaune", givenItem = { "fish" }, givenAmount = { 0 }, givenDisplay = { "Chair de poisson" }, money = 0, gold = 0, rolPoints = 0, xp = 0 },
    [3111984125]   = { name = "Brochet maill ", givenItem = { "fish" }, givenAmount = { 0 }, givenDisplay = { "Chair de poisson" }, money = 0, gold = 0, rolPoints = 0, xp = 0 },
    [-1182983171]  = { name = "Brochet maill  moyen", givenItem = { "fish" }, givenAmount = { 0 }, givenDisplay = { "Chair de poisson" }, money = 0, gold = 0, rolPoints = 0, xp = 0 },
    [264156159]    = { name = "Petit Brochet maill ", givenItem = { "fish" }, givenAmount = { 0 }, givenDisplay = { "Chair de poisson" }, money = 0, gold = 0, rolPoints = 0, xp = 0 },
    [463643368]    = { name = "Grande perche noire", givenItem = { "fish" }, givenAmount = { 0 }, givenDisplay = { "Chair de poisson" }, money = 0, gold = 0, rolPoints = 0, xp = 0 },
    [122748261]    = { name = "Perche noire moyenne", givenItem = { "fish" }, givenAmount = { 0 }, givenDisplay = { "Chair de poisson" }, money = 0, gold = 0, rolPoints = 0, xp = 0 },
    [-452224784]   = { name = "Perche moyenne", givenItem = { "fish" }, givenAmount = { 0 }, givenDisplay = { "Chair de poisson" }, money = 0, gold = 0, rolPoints = 0, xp = 0 },
    [706485280]    = { name = "Petite Perche", givenItem = { "fish" }, givenAmount = { 0 }, givenDisplay = { "Chair de poisson" }, money = 0, gold = 0, rolPoints = 0, xp = 0 },
    [134747314]    = { name = "Grande Truite arc-en-ciel", givenItem = { "fish" }, givenAmount = { 0 }, givenDisplay = { "Chair de poisson" }, money = 0, gold = 0, rolPoints = 0, xp = 0 },
    [490159652]    = { name = "Truite arc-en-ciel moyenne", givenItem = { "fish" }, givenAmount = { 0 }, givenDisplay = { "Chair de poisson" }, money = 0, gold = 0, rolPoints = 0, xp = 0 },
    [-243188398]   = { name = "Brochet d'am rique moyen", givenItem = { "fish" }, givenAmount = { 0 }, givenDisplay = { "Chair de poisson" }, money = 0, gold = 0, rolPoints = 0, xp = 0 },
    [513249462]    = { name = "Petit Brochet d'am rique", givenItem = { "fish" }, givenAmount = { 0 }, givenDisplay = { "Chair de poisson" }, money = 0, gold = 0, rolPoints = 0, xp = 0 },
    [1520661]      = { name = "Petit Crapet de roche", givenItem = { "fish" }, givenAmount = { 0 }, givenDisplay = { "Chair de poisson" }, money = 0, gold = 0, rolPoints = 0, xp = 0 },
    [-1981561472]  = { name = "Crapet de roche moyen", givenItem = { "fish" }, givenAmount = { 0 }, givenDisplay = { "Chair de poisson" }, money = 0, gold = 0, rolPoints = 0, xp = 0 },
    [2410477101]   = { name = "Achigan   petite bouche", givenItem = { "fish" }, givenAmount = { 0 }, givenDisplay = { "Chair de poisson" }, money = 0, gold = 0, rolPoints = 0, xp = 0 }, 
    [543892122]    = { name = "Grand Saumon rouge", givenItem = { "salmon" }, givenAmount = { 0 }, givenDisplay = { "Chair de poisson" }, money = 0, gold = 0, rolPoints = 0, xp = 0 },
    [1702636991]   = { name = "Saumon rouge moyen", givenItem = { "salmon" }, givenAmount = { 0 }, givenDisplay = { "Chair de poisson" }, money = 0, gold = 0, rolPoints = 0, xp = 0 },
    [41707457]     = { name = "Petit Saumon rouge", givenItem = { "salmon" }, givenAmount = { 0 }, givenDisplay = { "Chair de poisson" }, money = 0, gold = 0, rolPoints = 0, xp = 0 },
}

-- Animals that are traded in to the butcher
Config.Animals = {
    -- Animals
    [111281960]    = { name = "Pigeon", money = 0, gold = 0, rolPoints = 0, xp = 0, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [98537260]     = { name = "Corneille", money = 0, gold = 0, rolPoints = 0, xp = 0, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [-1550768676]  = { name = "Tamia", money = 0, gold = 0, rolPoints = 0, xp = 0, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [-930822792]   = { name = "Grenouille-taureau", money = 0, gold = 0, rolPoints = 0, xp = 0, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [674267496]    = { name = "Chauve-souris", money = 0, gold = 0, rolPoints = 0, xp = 0, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [-1797625440]  = { name = "Tatou", money = 0, gold = 0, rolPoints = 0, xp = 0, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [-1170118274]  = { name = "Blaireau", money = 10, gold = 0, rolPoints = 0, xp = 0, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [-1124266369]  = { name = "Grizzli", money = 0, gold = 0, rolPoints = 0, xp = 0, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = 957520252, good = 143941906, perfect = 1292673537 },
    [-15687816381] = { name = "Moufflon", money = 0, gold = 0, rolPoints = 0, xp = 0, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = 1796037447, good = -476045512, perfect = 1795984405 },
    [2028722809]   = { name = "Sanglier", money = 0, gold = 0, rolPoints = 0, xp = 0, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = 1248540072, good = nil, perfect = -1858513856 },
    [-1963605336]  = { name = "Cerf", money = 0, gold = 0, rolPoints = 0, xp = 0, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = 1603936352, good = -868657362, perfect = -702790226 },
    [1556473961]   = { name = "Bison", money = 0, gold = 0, rolPoints = 0, xp = 0, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = -1730060063, good = -591117838, perfect = -237756948 },
    [367637652 ]   = { name = "Bison tatanka", money = 0, gold = 0, rolPoints = 0, xp = 0, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [1957001316]   = { name = "Taureau", money = 0, gold = 0, rolPoints = 0, xp = 0, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = 9293261, good = -336086818, perfect = -53270317 },
    [1110710183]   = { name = "Biche", money = 0, gold = 0, rolPoints = 0, xp = 0, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = -662178186, good = -1827027577, perfect = -1035515486 },
    [-1003616053]  = { name = "Canard colvert", money = 0, gold = 0, rolPoints = 0, xp = 0, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [1459778951]   = { name = "Aigle   t te blanche", money = 0, gold = 0, rolPoints = 0, xp = 0, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [831859211]    = { name = "Aigrette rouss tre", money = 0, gold = 0, rolPoints = 0, xp = 0, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [-2021043433]  = { name = "Wapiti", money = 0, gold = 0, rolPoints = 0, xp = 0, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = 2053771712, good = 1181652728, perfect = -1332163079 },
    [252669332]    = { name = "Renard roux", money = 0, gold = 0, rolPoints = 0, xp = 0, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = 1647012424, good = 238733925, perfect = 500722008 },
    [-1143398950]  = { name = "Loup gris", money = 0, gold = 0, rolPoints = 0, xp = 0, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = 85441452, good = 1145777975, perfect = 653400939 },
    [-885451903]   = { name = "Loup gris", money = 0, gold = 0, rolPoints = 0, xp = 0, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = 85441452, good = 1145777975, perfect = 653400939 },
    [-829273561]   = { name = "Loup gris", money = 0, gold = 0, rolPoints = 0, xp = 0, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = 85441452, good = 1145777975, perfect = 653400939 },
    [1104697660]   = { name = "Urubu   t te rouge", money = 0, gold = 0, rolPoints = 0, xp = 0, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [-407730502]   = { name = "Tortue alligator", gold = 0, rolPoints = 0, xp = 0, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [-466054788]   = { name = "Dinde sauvage", money = 0, gold = 0, rolPoints = 0, xp = 0, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [-2011226991]  = { name = "Dinde sauvage", money = 0, gold = 0, rolPoints = 0, xp = 0, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [-166054593]   = { name = "Dinde sauvage", money = 0, gold = 0, rolPoints = 0, xp = 0, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [-229688157]   = { name = "Couleuvre d'eau", money = 0, gold = 0, rolPoints = 0, xp = 0, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [-1790499186]  = { name = "Boa constricteur", money = 0, gold = 0, rolPoints = 0, xp = 0, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [1464167925]   = { name = "Fer-De-Lance", money = 0, gold = 0, rolPoints = 0, xp = 0, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [846659001]    = { name = "Crotale   queue noire", money = 0, gold = 0, rolPoints = 0, xp = 0, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [545068538]    = { name = "Crotale du Texas", money = 0, gold = 0, rolPoints = 0, xp = 0, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [-1211566332]  = { name = "Moufette ray e", money = 0, gold = 0, rolPoints = 0, xp = 0, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [40345436]     = { name = "M rinos", money = 0, gold = 0, rolPoints = 0, xp = 0, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = 1729948479, good = -1317365569, perfect = 1466150167 },
    [-164963696]   = { name = "Go land argent ", money = 0, gold = 0, rolPoints = 0, xp = 0, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [-1076508705]  = { name = "Spatule ros e", money = 0, gold = 0, rolPoints = 0, xp = 0, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [2023522846]   = { name = "Coq dominicain", money = 0, gold = 0, rolPoints = 0, xp = 0, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [-466687768]   = { name = "Fou   pieds rouges", money = 0, gold = 0, rolPoints = 0, xp = 0, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [-575340245]   = { name = "Grand corbeau", money = 0, gold = 0, rolPoints = 0, xp = 0, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [1458540991]   = { name = "Raton laveur", money = 0, gold = 0, rolPoints = 0, xp = 0, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [-541762431]   = { name = "Li vre de californie", money = 0, gold = 0, rolPoints = 0, xp = 0, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [1755643085]   = { name = "Antilope femelle d'am rique", money = 0, gold = 0, rolPoints = 0, xp = 3, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = -983605026, good = 554578289, perfect = -1544126829 },
    [2079703102]   = { name = "T tras des prairies", money = 0, gold = 0, rolPoints = 0, xp = 0, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [-1414989025]  = { name = "Opossum de virginie", money = 0, gold = 0, rolPoints = 0, xp = 0, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [1007418994]   = { name = "Cochon Berkshire", money = 0, gold = 0, rolPoints = 0, xp = 0, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = -308965548, good = -57190831, perfect = -1102272634 },
    [1416324601]   = { name = "Faisan   collier", money = 0, gold = 0, rolPoints = 0, xp = 0, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [1265966684]   = { name = "P lican d'am rique", money = 0, gold = 0, rolPoints = 0, xp = 0, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [-1797450568]  = { name = "Ara bleu", gold = 0, rolPoints = 0, xp = 0, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [1654513481]   = { name = "Panther", money = 0, gold = 0, rolPoints = 0, xp = 0, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = 1584468323, good = -395646254, perfect = 1969175294 },
    [1205982615]   = { name = "Condor", money = 0, gold = 0, rolPoints = 0, xp = 0, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [-2063183075]  = { name = "Poule dominicaine", money = 0, gold = 0, rolPoints = 0, xp = 0, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [-2073130256]  = { name = "Cormorant   aigrettes", money = 3, gold = 0, rolPoints = 0, xp = 3, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [90264823]     = { name = "Cougar", money = 0, gold = 0, rolPoints = 0, xp = 0, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = 1914602340, good = 459744337, perfect = -1791452194 },
    [-50684386]    = { name = "Vache", money = 0, gold = 0, rolPoints = 0, xp = 0, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = 334093551, good = 1150594075, perfect = -845037222 },
    [480688259]    = { name = "Coyote", money = 0, gold = 0, rolPoints = 0, xp = 0, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = -1558096473, good = 1150939141, perfect = -794277189 },
    [-564099192]   = { name = "Grue blanche", money = 0, gold = 0, rolPoints = 0, xp = 0, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [457416415]    = { name = "Monstre de Gila", money = 0, gold = 0, rolPoints = 0, xp = 0, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [-753902995]   = { name = "Ch vre alpine", money = 0, gold = 0, rolPoints = 0, xp = 0, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = 699990316, good = 1710714415, perfect = -1648383828 },
    [723190474]    = { name = "Bernache du Canada", money = 0, gold = 0, rolPoints = 0, xp = 0, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [-2145890973]  = { name = "Buse rouilleuse", money = 0, gold = 0, rolPoints = 0, xp = 0, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [1095117488]   = { name = "Grand h ron", money = 0, gold = 0, rolPoints = 0, xp = 0, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [-1854059305]  = { name = "Iguane vert", money = 0, gold = 0, rolPoints = 0, xp = 0, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [-593056309]   = { name = "Iguane du d sert", money = 0, gold = 0, rolPoints = 0, xp = 0, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [1751700893]   = { name = "P cari   collier", money = 0, gold = 0, rolPoints = 0, xp = 0, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = -99092070, good = -1379330323, perfect = 1963510418 },
    [386506078]    = { name = "Plongeon huard", money = 0, gold = 0, rolPoints = 0, xp = 0, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [-1098441944]  = { name = "Orignal", money = 0, gold = 0, rolPoints = 0, xp = 0, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = 1868576868, good = 1636891382, perfect = -217731719 },
    [-1134449699]  = { name = "Rat musqu  d'am rique", money = 0, gold = 0, rolPoints = 0, xp = 0, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [-861544272]   = { name = "Grand-duc d'am rique", money = 0, gold = 0, rolPoints = 0, xp = 0, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [556355544]    = { name = "Boeuf Angus", money = 0, gold = 0, rolPoints = 0, xp = 0, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = 4623248928, good = 1208128650, perfect = 659601266 },
    [-1892280447]  = { name = "Alligator am ricain", money = 0, gold = 0, rolPoints = 0, xp = 0, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = 1806153689, good = -802026654, perfect = -1625078531 },
    [-2004866590]  = { name = "Alligator am ricain", money = 0, gold = 0, rolPoints = 0, xp = 0, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 3, poor = -1243878166, good = nil, perfect = -1475338121 },
    [759906147]    = { name = "Castor", money = 0, gold = 0, rolPoints = 0, xp = 0, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = -1569450319, good = -2059726619, perfect = 854596618 },
    [730092646]    = { name = "Ours noir", money = 0, gold = 0, rolPoints = 0, xp = 0, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = 1083865179, good = 1490032862, perfect = 663376218 },
    [1746830155]   = { name = "Conure de Caroline", money = 0, gold = 0, rolPoints = 0, xp = 0, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [1502581273]   = { name = "Crapaud", money = 0, gold = 0, rolPoints = 0, xp = 0, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },

    -- Fish
    [-711779521]   = { name = "L pisost  osseux", money = 6, gold = 0, rolPoints = 0, xp = 0, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [-1553593715]  = { name = "Maskinong ", money = 10, gold = 0, rolPoints = 0, xp = 0, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [-300867788]   = { name = "Esturgeon jaune", money = 6, gold = 0, rolPoints = 0, xp = 0, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [1538187374]   = { name = "Grand Barbue de rivi re", money = 6, gold = 0, rolPoints = 0, xp = 0, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [-2022921611]  = { name = "Barbue de rivi re large", money = 10, gold = 0, rolPoints = 0, xp = 0, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [697075200]    = { name = "Brochet", money = 10, gold = 0, rolPoints = 0, xp = 0, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [1867262572]   = { name = "Crapet arlequin moyen", money = 2, gold = 0, rolPoints = 0, xp = 0, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [-2116748615]  = { name = "Petit Crapet arlequin", money = 1, gold = 0, rolPoints = 0, xp = 0, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [703712157]    = { name = "Barbotte jaune moyenne", money = 2, gold = 0, rolPoints = 0, xp = 0, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [1493541632]   = { name = "Petite Barbotte jaune", money = 1, gold = 0, rolPoints = 0, xp = 0, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [3111984125]   = { name = "Grand brochet maill ", money = 4, gold = 0, rolPoints = 0, xp = 0, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [-1182983171]  = { name = "Brochet maill  moyen", money = 2, gold = 0, rolPoints = 0, xp = 0, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [264156159]    = { name = "Petit Brochet maill ", money = 1, gold = 0, rolPoints = 0, xp = 0, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [463643368]    = { name = "Grande perche noire", money = 6, gold = 0, rolPoints = 0, xp = 0, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [122748261]    = { name = "Perche noire moyenne", money = 4, gold = 0, rolPoints = 0, xp = 0, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [-452224784]   = { name = "Perche moyenne", money = 4, gold = 0, rolPoints = 0, xp = 0, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [706485280]    = { name = "Petite Perche", money = 2, gold = 0, rolPoints = 0, xp = 0, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [134747314]    = { name = "Grande Truite arc-en-ciel", money = 10, gold = 0, rolPoints = 0, xp = 0, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [490159652]    = { name = "Truite arc-en-ciel moyenne", money = 8, gold = 0, rolPoints = 0, xp = 0, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [-243188398]   = { name = "Brochet d'am rique moyen", money = 2, gold = 0, rolPoints = 0, xp = 0, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [513249462]    = { name = "Petit Brochet d'am rique", money = 1, gold = 0, rolPoints = 0, xp = 0, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [1520661]      = { name = "Petit Crapet de roche", money = 1, gold = 0, rolPoints = 0, xp = 0, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [-1981561472]  = { name = "Crapet de roche moyen", money = 2, gold = 0, rolPoints = 0, xp = 0, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [-1884490195]  = { name = "Large achigan   petite bouche", money = 4, gold = 0, rolPoints = 0, xp = 0, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil }, 
    [1860580756]   = { name = "Achigan   petite bouche moyen", money = 2, gold = 0, rolPoints = 0, xp = 0, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [543892122]    = { name = "Grand Saumon rouge", money = 10, gold = 0, rolPoints = 0, xp = 0, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [1702636991]   = { name = "Saumon rouge moyen", money = 8, gold = 0, rolPoints = 0, xp = 0, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
    [41707457]     = { name = "Petit Saumon rouge", money = 6, gold = 0, rolPoints = 0, xp = 0, poorQualityMultiplier = 1.0, goodQualityMultiplier = 1.5, perfectQualityMultiplier = 2, poor = nil, good = nil, perfect = nil },
}
