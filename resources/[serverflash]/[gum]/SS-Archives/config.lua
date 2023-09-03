-- Author '🆂🅸🆁🅴🅲#0336'
-- REPORT ANY BUGS ON https://discord.gg/9XNBaQSmMd --
local VorpCore = {}

TriggerEvent("getCore", function(core)
    VorpCore = core 
end)

Config = {
    
Dev = false,     

NXTInventory = false, -- if you use NXT INVENTORY !
SSHousing = false, -- COOMING SOON !
    
Framework = "vorp", --DON'T TOUCH ON THIS VERSION 
WebHook = "https://discord.com/api/webhooks/1000840339717890082/t03zIOBu4EYuQVLSeOhYujwWXbDFlyhN21k4-Vwb6-SYrSwGhS8e5V3LwfFtBkhT3SD7", -- FOR LOGS    
    
Align = "right", -- ALIGN MENU   
Button = "Appuyer", -- BUTTON NAME
Key = 0xD9D0E1C0, -- KEY TO OPEN
ServerYear = "1890", -- YOUR SERVER PLAYABLE YEAR
    
DrinkItem = "water", -- THE DRINK FOR CANTEEN
FoodItem = "bread", -- THE FOOD FOR CANTEEN
    
BountyHunter = false, -- IF YOU HAVE SS-BOUNTYHUNTER YOU CAN ADD BOUNTY FROM SHERIFF ARCHIVE AND REMOVE IT
PayFromSheriff = false, -- true TAKE MONEY FROM SHERIFF WHEN ADD BOUNTY 
    
AllowedJobs = {"police", "marshal", "sheriff", "somer"}, -- JOBS THAT CAN OPEN THE ARCHIVES
DeleteJobGrade = 6, -- FROM WICH GRADE CAN DELETE DOSSIER ?
    
AutoEject = true, -- EJECT CITIZENS IF THEY ENTER INTO PENITENTIARY ZONE !   
AutoTeleport = true, -- TELEPORT BACK IN PRISON IF PRISONER ESCAPE
AutoDoors = true, -- PUT true TO CLOSE ALL DOORS OF PENITENTIARY, 1 TIME HE WILL NOT CONFLICT WITH YOUR DOORLOCKS SCRIPT !    
NoteBook = "book", -- ITEM TO OPEN SHERIFF'S ARCHIVES
    
TimeToCheckJail = 60000, --CHECK EXPIRED JAIL            
AutoJail = true, -- AUTOJAIL: IF true the POLICE can choice if do MANUAL JAIL or AUTO JAIL ! If false will be available only MANUAL JAIL !
        
Offices = {     
    [1] = {
    	Name = "Blackwater Archive", -- NAME OF BLIP/BUTTON
		Pos = {2513.72, -1300.03, 39.98, 1.91}, -- POS FOR BLIP/MENU
		Blip = 587827268, -- false TO HIDE THE BLIP
    	Distance = 5.0, -- DISTANCE TO OPEN MENU                  
	}    
},
    
Penintetiary = {
    Name = "Sisika Penitetiary", -- PENITENTIARY NAME
    Blip = -1489164512, -- PENITENTIARY BLIP / false TO HIDE    
	Pos = {3363.4689941406, -681.2964477539, 46.466829681396}, -- CENTER OF PENITENTIARY
    CanteenEnter = {3364.3696289062, -701.83612060546, 44.53014755249, 229.82414245606},  -- POS ENTER CANTEEN
    CanteenExit = {3370.509765625, -651.33990478516, 34.507205963134, 28.595823287964}, -- POS EXIT CANTEEN
    Canteen = {3375.0607910156, -657.0014038086, 35.507205963134, 281.05603027344}, -- CANTEEN MENU POSITION
    CanteenName = "Sisika Canteen", -- CANTEEN NAME    
    CanteenBlip = -1138864184, -- CANTEEN BLIP / false TO HIDE    
    CanteenDistance = 2.0, -- CANTEEN DISTANCE
    WalkingPos = {3345.6359863282, -690.7724609375, 43.863018035888}, -- WALKING IN CENTER OF JAIL
    ReleasePos = {2685.7255859375, -1454.185913086, 46.278060913086, 187.82933044434}, -- POSITION WHEN PRISONERS ARE RELEASED
    Range = 100, -- RANGE TO TP INSIDE IF ESCAPE
    NpcMenuModel = "s_m_m_ambientblwpolice_01", -- NPC 1 / false TO HIDE
    NpcMenu = {3353.7534179688, -641.92889404296, 44.29126739502, 13.36182308197}, -- POS NPC 1
    JailPos = {2926.742919921875, -1254.27099609375, 42.38059997558594}, -- POS WHERE TO PLAYER WILL BE JAILED IN MANUAL JAIL
    JailDistance = 2.0, -- FOR MANUAL JAIL / TO TAKE THEM
    SpawnBoat = {2949.8779296875, -1246.3270263671875, 40.50966644287109, -82.29}, -- BOAT FOR MANUAL JAIL
    BoatModel = "rowboat", -- MODE BOAT FOR MANUAL JAIL
    NpcGuardModel = "s_m_m_skpguard_01", -- NPC 2 & BOAT DRIVER
    NpcGuard = {3347.1630859375, -643.75970458984, 44.291255950928, 23.405473709106}, -- POS NPC
},
    
Texts = {
["noinfo"] = "DELETED",        
["added_dossier"] = "You added a DOSSIER for ",       
["youhavejailed"] = "You have been JAILED, your dossier nr is ",
["adddossier"] = "You have added DOSSIER for ",
["you_registered"] = "You have registered an citizen ! ",
["already_register"] = "This person is already registered !",
["no_user"] = "This person dosen't exist, make sure the person id is valid !",
["youhavecharged"] = "You received a FINE and charged ",
["already_released"] = "You have been released from penitentiary, your place is not anymore here !",
["spawnin_jail"] = "Seems you must finish a sentence before you are free to go !",
["alreadyhavefood"] = "You already have some food, eat it to have more !",
["alreadyhavedrink"] = "You already have some drinks, drink it to have more !",
["yougetfood"] = "You got something to eat !",
["yougetdrink"] = "You got something to drink !",
["inv_full"] = "You don't have space to carry this",
["jailed_text"] = "JAILED", 
["jailed_textdesc"] = "You are now prisoner of Sisika Penitentiary",  
["not_allowed"] = "You are not allowed to stay so close to this ZONE !", 
["nomoney_bounty"] = "You don't have enought money to add this BOUNTY !",
["error_insert"] = "The FINE or BOUNTY amount are incorrect, please check it!", 
["jailtime"] = "JAILTIME:", 
["days"] = "Days",         
["hours"] = "Hours",  
["minutes"] = "Minutes",   
["seconds"] = "Seconds",
["m"] = "M",    
["f"] = "F",    
--MENU
["canteen"] = "Canteen Foods",
["canteendesc"] = "Foods for inmates",
["takefood"] = "Take Food",
["takefooddesc"] = "Take some food",
["takedrink"] = "Take Drinks",
["takedrinkdesc"] = "Take some drinks",
["you_getregistered"] = "You have been registered with identity of",
["not_jobgrade"] = "You are not authorized to do this",
["dossier_deleted"] = "You deleted the DOSSIER NR:",
        
--ERRORS INPUTS
["error_description"] = "The DESCRIPTION is required!",
["error_fine"] = "The FINE is required, 0 for NO FINE!",
["error_bounty"] = "The BOUNTY is required, 0 for NO BOUNTY!",
["error_charge"] = "The CHARGE is REQUIRED !",
["error_jail"] = "The JAIL is required, 0 for NO JAIL!",
["error_id"] = "The citizen id is REQUIRED !",
["error_days"] = "The DAY should be composed by 2 numbers like 01,05,18...",
["error_month"] = "The MONTH should be composed by 2 numbers like 01,05,12...",
["error_age"] = "The AGE should be composed by 2 numbers like 21,45,35...",
["error_cm"] = "The CM should be composed over 2 numbers like 80,135,140...",
["error_kg"] = "The KG should be composed over 2 numbers like 55,165,35...",
["error_eyes"] = "The EYES should be composed over 2 letters like blue,black...",
["error_hair"] = "The HAIR should be composed over 2 letters like black,blonde...",
},
    
UI = {
        
-- MAIN PAGE
DATA = "DATE: ",
MAINTITTLE = "Sheriff Archive's",

--SEARCH PAGE
RESULTITTLE = "Search Results",
SEARCHTITTLE = "Search Citizen",    
SFIRSTNAME = "Name: ",
SLASTNAME = "Lastname: ",    
SDOB = "DOB: ", 
SDOSSIER = "Dossier ID: ",  

--BUTTONS        
SEARCHBUTTON = "Search",
CLOSEBUTTON = "CLOSE",
DELETEBUTTON = "DELETE",
ADDDOSSIER = "ADD DOSSIER",
REGISTERTAB = "CREATE IDENTITY",
SEARCHTAB = "Search",
DOSSIERSTAB = "DOSSIERS",
        
--PROPERTY PAGE
PROPERTY = "PROPERTY",
        
-- RECORD DOSSIER
DOSSIER = "DOSSIER : ", -- TITTLE DOSSIER
CITIZEN = "CITIZEN : ", -- 1 ROW
DOB = "DOB: ",
BOUNTY = "BOUNTY: ",
CHARGE = "CHARGE: ",
JAIL = "JAIL: ",
FINE = "FINE: ",
DESCRIPTION = "DESCRIPTION: ",
        
-- PROPERTY DOSSIER
PTITTLE1 = "REGISTERED PROPERTY",
        
--USER DOSSIER
UTITTLE = "ID NR: ",
UNAME = "NAME: ",
UDOB = "DOB: ",
USEX = "SEX: ",
UCM = "CM: ",
UKG = "KG: ",
UEYES = "Eyes Color: ",
UHAIR = "Hair Color: ",
UFINES = "All Fines: ",
UREGISTERED = "Registered On: ",
UCITY = "CITY: ",
UDOSSIERS = "CITIZEN DOSSIERS",
        
--ADD DOSSIER
DOSSIERTITTLE = "ADD DOSSIER: ",
ADOSSIER = "CHARGE",
AJAIL = "JAIL",
AFINE = "FINE",
ABOUNTY = "BOUNTY",
ADESCRIPTION = "Description DOSSIER: ",
        
-- REGISTER CITIZEN
RTITTLE = "REGISTER IDENTITY",
RID = "CITIZEN ID",
RDAY = "BORN DAY",
RMONTH = "BORN MONTH",
RAGE = "CITIZEN AGE",
REYES = "EYES COLOR",
RHAIR = "HAIR COLOR",
RKG = "CITIZEN KG",
RCM = "CITIZEN CM",
}
    
}

function ARCHIVESNOTIFY(text) --SET YOUR NOTIFYCATIONS
--TriggerEvent("vorp:TipBottom", text, 5000) 
VorpCore.NotifyLeft("Archive's", text, "generic_textures", "tick", 5000, "COLOR_WHITE")    
end 