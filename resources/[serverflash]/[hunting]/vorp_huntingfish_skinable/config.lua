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


Config.Butchers4 = {
    { butchername = "Poissonnier de Lagras / Argent", butcherjob = "butcher", blip = 1369919445, npcmodel = "S_M_M_UNIBUTCHERS_01", coords = vector3(2080.45, -593.22, 42.18), heading = 51.8221321532, radius = 4.0 },
    { butchername = "Poissonnier de Guarma/ Argent", butcherjob = "butcher", blip = 1369919445, npcmodel = "S_M_M_UNIBUTCHERS_01", coords = vector3(1290.91, -6878.1, 42.62), heading = 111.20, radius = 4.0 }
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
Config.SkinnableAnimals4 = {
    --small animals skin them and sell them at the butcher no need to add them to CONFIG.ANIMALS

}
-- Animals that are traded in to the butcher
Config.Animals4 = {


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
