
Config = {}

Config.vorp = true
Config.redem = false
Config.metadata = true 
-------- only have 1 enabled----------
Config.normaldrawtext = true -- 
Config.drawtext3d = true --
--------------------------------------
Config.discordid = true 
Config.webhook = true -- turn webhooks for each job on or off 
Config.adminwebhook = true -- turn admin webhook on or off 
Config.webhookavatar = "https://findicons.com/files/icons/2453/clipboard/1816/clipboard_paper.png"
Config.adminwebhooklink = "" -- input your webhook
Config.OpenMenu = 0x760A9C6F -- Key: G
Config.unemployed = "unemployed" --- make sure u set this up in vorp core config as well 
Config.salarytime = 15 -- every 30 minutes players get a salary from the jobs ledger (only if the job has a ledger set up and is included in the config below yes the money gets taken out of the ledger)
Config.maxsalary = 0 -- 30$ max salary --max salary job owners are allowed to set to ranks


Config.autocollect = true -- set to false if you dont want bills from the jobs mentioned below to be auto collected on the spot and instead go to the billing menu 
Config.autocollectjob = {}

Config.Locations = { 
	--[[ Valentine = {	   -- you can add more job centers by copy pasting this 
        Pos = {x=-182.842, y=629.662, z=114.08}, -- location of job center 
        blipsprite = -272216216, -- blip sprite for job center
		Name = 'Job Center', -- blip name 
    }, ]]
    --[[ Valentine = {	   -- add more 
        Pos = {x=-182.842, y=629.662, z=114.08}, 
        blipsprite = -272216216, 
		Name = 'Job Center', 
	}, ]]
}

Config.jobs = { 
    
		   

    natif_sauv = {	   
        Pos = { 
            {x=25108.55, y=-11308.52, z =409.0},
        }, -- position of blip
        jobmenu = { 
            {x=25108.55, y=-13108.52, z =409.0},
        }, -- position of job menu
        blipsprite = 778811758, -- sprite of blip. find more here https://filmcrz.github.io/blips/
        showblip = false, -- new line
		Name = 'Police', -- name of blip
        recruitmentrank = 3,
        bossrank = 3, -- the boss rank, able to hire/fire/set salaries (make sure you add the ranks as i did in the database table called society from 0 to the boss rank)
        containerid = 160, -- this has to be a unique number that matches the number set on the database table container ! 
        containername = "Coffre de police", -- the name displayed when the container is open
        billing = true, -- allow players with this job to use billing by doing /bill amount
        webhook = "", -- if you have webhook enabled all the information important to this job will be logged both in the admin webhook and here 
        salary = false, -- (added line) enable/disable salary system.
    },
	police = {	   
        Pos = { 
            {x=2508.55, y=-1308.52, z =49.0},
        }, -- position of blip
        jobmenu = { 
            {x=2508.55, y=-1308.52, z =49.0},
        }, -- position of job menu
        blipsprite = 778811758, -- sprite of blip. find more here https://filmcrz.github.io/blips/
        showblip = true, -- new line
		Name = 'Police', -- name of blip
        recruitmentrank = 3,
        bossrank = 3, -- the boss rank, able to hire/fire/set salaries (make sure you add the ranks as i did in the database table called society from 0 to the boss rank)
        containerid = 1, -- this has to be a unique number that matches the number set on the database table container ! 
        containername = "Coffre de police", -- the name displayed when the container is open
        billing = true, -- allow players with this job to use billing by doing /bill amount
        webhook = "", -- if you have webhook enabled all the information important to this job will be logged both in the admin webhook and here 
        salary = false, -- (added line) enable/disable salary system.
    },
	
	miner = {	   
        Pos = { 
            {x = 2918.86, y = 1379.8, z = 56.27},
        }, -- position of blip
        jobmenu = { 
            {x = 2918.86, y = 1379.8, z = 56.27},
        }, -- position of job menu
        blipsprite = 1220803671, -- sprite of blip. find more here https://filmcrz.github.io/blips/
        showblip = true, -- new line
		Name = 'Bureau de la mine', -- name of blip
        recruitmentrank = 2,
        bossrank = 3, -- the boss rank, able to hire/fire/set salaries (make sure you add the ranks as i did in the database table called society from 0 to the boss rank)
        containerid = 2, -- this has to be a unique number that matches the number set on the database table container ! 
        containername = "Coffre de mine", -- the name displayed when the container is open
			-- allow players with this job to use billing by doing /bill amount
        webhook = "", -- if you have webhook enabled all the information important to this job will be logged both in the admin webhook and here 
        salary = false, -- (added line) enable/disable salary system.
    },
	
	scierie = {	   
        Pos = { 
            {x = 2869.2, y = 1456.12, z = 69.2},
        }, -- position of blip
        jobmenu = { 
            {x = 2869.2, y = 1456.12, z = 69.2},
        }, -- position of job menu
        blipsprite = 1480984695, -- sprite of blip. find more here https://filmcrz.github.io/blips/
        showblip = true, -- new line
		Name = 'Bureau de la scierie', -- name of blip
        recruitmentrank = 2,
        bossrank = 3, -- the boss rank, able to hire/fire/set salaries (make sure you add the ranks as i did in the database table called society from 0 to the boss rank)
        containerid = 3, -- this has to be a unique number that matches the number set on the database table container ! 
        containername = "Coffre de la scierie", -- the name displayed when the container is open
			-- allow players with this job to use billing by doing /bill amount
        webhook = "", -- if you have webhook enabled all the information important to this job will be logged both in the admin webhook and here 
        salary = false, -- (added line) enable/disable salary system.
    },
	
    medicsd = {	   
        Pos = { 
            {x=2733.53, y=-1230.46, z=50.42},
        }, 
        jobmenu = { 
            {x=2733.53, y=-1230.46, z=50.42},
        },
        blipsprite = -592068833,
		Name = 'Docteur Saint Denis',
        recruitmentrank = 4,
        bossrank = 4,
        containerid = 4,
        containername = "Doctor Inv.",
        billing = true,
        webhook = "",
        salary = true,

    },

        ecurie = {
        Pos = { 
            {x = 1458.52, y = 320.39, z = 90.61},
        }, 
        jobmenu = { 
            {x = 1458.52, y = 320.39, z = 90.61},
        },
        blipsprite = 444737100,
        showblip = true,
        Name = 'Emerald Ranch',
        recruitmentrank = 4,
        bossrank = 5,
        containerid = 5,
        containername = "Coffre d'entreprise",
        billing = true,
        webhook = "",
        salary = false,

    },


    f_cereale = {
        Pos = { 
            {x = 1115.08, y = 489.88, z = 97.33},
        }, 
        jobmenu = { 
            {x = 1115.08, y = 489.88, z = 97.33},
        },
        blipsprite = 552659337,
        showblip = true,
        Name = 'La Ferme Preston',
        recruitmentrank = 3,
        bossrank = 3,
        containerid = 6,
        containername = "Coffre de ferme",
        billing = true,
        webhook = "",
        salary = false,

    },

    weapon_j = {
        Pos = { 
            {x = 2714.38, y = -1289.2, z = 49.68},
        }, 
        jobmenu = { 
            {x = 2714.38, y = -1289.2, z = 49.68},
        },
        blipsprite = 202506373,
        showblip = true,
        Name = 'Saint Denis Armurerie',
        recruitmentrank = 3,
        bossrank = 3,
        containerid = 7,
        containername = "Coffre de l'armurerie",
        billing = true,
        webhook = "",
        salary = false,

    },

    sucrerie = {
        Pos = { 
            {x = 1491.69, y = -7155.85, z = 72.78},
        }, 
        jobmenu = { 
            {x = 1491.69, y = -7155.85, z = 72.78},
        },
        blipsprite = 552659337,
        showblip = true,
        Name = 'La Azucarera De Guarma',
        recruitmentrank = 3,
        bossrank = 3,
        containerid = 8,
        containername = "Coffre de la Sucrerie",
        billing = true,
        webhook = "",
        salary = false,

    },
    
    g_distillerie = {
        Pos = { 
            {x = 1473.7, y = -7161.45, z = 72.77},
        }, 
        jobmenu = { 
            {x = 1473.7, y = -7161.45, z = 72.77},
        },
        blipsprite = 1242464081,
        showblip = true,
        Name = 'La bebida de los dioses ',
        recruitmentrank = 3,
        bossrank = 3,
        containerid = 9,
        containername = "Coffre de la distillerie",
        billing = true,
        webhook = "",
        salary = false,

    },

    palais_g = {
        Pos = { 
            {x = 1461.61, y = -7101.34, z = 77.79},
        }, 
        jobmenu = { 
            {x = 1461.61, y = -7101.34, z = 77.79},
        },
        blipsprite = -2024635066,
        showblip = true,
        Name = 'Palais de los reyes',
        recruitmentrank = 3,
        bossrank = 3,
        containerid = 10,
        containername = "Coffre du palais",
        billing = true,
        webhook = "",
        salary = false,

    },


    ecurie_g = {
        Pos = { 
            {x = 1433.47, y = -7112.89, z = 74.82},
        }, 
        jobmenu = { 
            {x = 1433.47, y = -7112.89, z = 74.82},
        },
        blipsprite = 564457427,
        showblip = true,
        Name = 'Rancho de Guarma',
        recruitmentrank = 3,
        bossrank = 3,
        containerid = 11,
        containername = "Coffre du bureau",
        billing = true,
        webhook = "",
        salary = false,

    },

    fermefruit_g = {
        Pos = { 
            {x = 1507.9, y = -7152.91, z = 72.77},
        }, 
        jobmenu = { 
            {x = 1507.9, y = -7152.91, z = 72.77},
        },
        blipsprite = 552659337,
        showblip = true,
        Name = 'Ferme fruitiere guarma',
        recruitmentrank = 3,
        bossrank = 3,
        containerid = 12,
        containername = "Coffre de la ferme",
        billing = true,
        webhook = "",
        salary = false,

    },


    med_g = {
        Pos = { 
            {x = 1328.84, y = -6954.33, z = 60.36},
        }, 
        jobmenu = { 
            {x = 1328.84, y = -6954.33, z = 60.36},
        },
        blipsprite = 0,
        showblip = false,
        Name = 'Bureau Des Docteur',
        recruitmentrank = 3,
        bossrank = 3,
        containerid = 13,
        containername = "Coffre du Bureau",
        billing = true,
        webhook = "",
        salary = false,

    },
	
	
	orfevre_g = {
        Pos = { 
            {x = 1139.98, y = -7291.54, z = 72.95},
        }, 
        jobmenu = { 
            {x = 1139.98, y = -7291.54, z = 72.95},
        },
        blipsprite = 1576459965,
        showblip = true,
        Name = 'Orfèvrerie',
        recruitmentrank = 3,
        bossrank = 3,
        containerid = 14,
        containername = "Coffre du Bureau",
        billing = true,
        webhook = "",
        salary = false,

    },
	
	saloon_g = {
        Pos = { 
            {x = 1364.84, y = -6518.65, z = 42.99},
        }, 
        jobmenu = { 
            {x = 1364.84, y = -6518.65, z = 42.99},
        },
        blipsprite = 935247438,
        showblip = true,
        Name = 'La cantina',
        recruitmentrank = 3,
        bossrank = 3,
        containerid = 15,
        containername = "Coffre de la cantina",
        billing = true,
        webhook = "",
        salary = false,

    },

	annimalerie = {
        Pos = { 
            {x = 1191.62, y = -7072.57, z = 42.34},
        }, 
        jobmenu = { 
            {x = 1191.62, y = -7072.57, z = 42.34},
        },
        blipsprite = -1406874050,
        showblip = true,
        Name = 'Annimalerie de guarma',
        recruitmentrank = 3,
        bossrank = 3,
        containerid = 16,
        containername = "Coffre de la cantina",
        billing = true,
        webhook = "",
        salary = false,



    },

	FAR = {
        Pos = { 
            {x = 998.42, y = -6742.69, z = 58.37},
        }, 
        jobmenu = { 
            {x = 998.42, y = -6742.69, z = 58.37},
        },
        blipsprite = -428972082,
        showblip = true,
        Name = 'Fuerzas Armadas Revolucionario  ',
        recruitmentrank = 4,
        bossrank = 5,
        containerid = 17,
        containername = "Coffre de la Milice",
        billing = true,
        webhook = "",
        salary = true,



    },
    kwanita = {
        Pos = { 
            {x = -156.18, y = 1491.24, z = 116.21},
        }, 
        jobmenu = { 
            {x = -156.18, y = 1491.24, z = 116.21},
        },
        blipsprite = -1606321000,
        showblip = true,
        Name = 'Kwanita',
        recruitmentrank = 5,
        bossrank = 6,
        containerid = 28,
        containername = "Coffre des Kwanita",
        billing = false,
        webhook = "",
        salary = false,
    },

    kwanita_0 = {
        Pos = { 
            {x = -156.18, y = 1491.24, z = 116.21},
        }, 
        jobmenu = { 
            {x = -156.18, y = 1491.24, z = 116.21},
        },
        blipsprite = -1944395098,
        showblip = true,
        Name = 'Kwanita indépendant',
        recruitmentrank = 6,
        bossrank = 2,
        containerid = 28,
        containername = "Coffre des Kwanita",
        billing = false,
        webhook = "",
        salary = false,
    },
	
    us_distillerie = {
        Pos = { 
            {x = 1788.81, y = -812.31, z = 192.65},
        }, 
        jobmenu = { 
            {x = 1788.81, y = -812.31, z = 192.65},
        },
        blipsprite = -392465725,
        showblip = true,
        Name = 'Alcoobro',
        recruitmentrank = 6,
        bossrank = 2,
        containerid = 18,
        containername = "Coffre de la distillerie",
        billing = false,
        webhook = "",
        salary = false,
    },

    juge_st = {
        Pos = { 
            {x = 2373.47, y = -1164.85, z = 47.44},
        }, 
        jobmenu = { 
            {x = 2373.47, y = -1164.85, z = 47.44},
        },
        blipsprite = -1989725258,
        showblip = true,
        Name = 'Bureaux des juges',
        recruitmentrank = 3,
        bossrank = 3,
        containerid = 20,
        containername = "Coffre",
        billing = false,
        webhook = "",
        salary = false,
    },
    gouvernement = {
        Pos = { 
            {x = 2395.69, y = -1083.46, z = 52.48},
        }, 
        jobmenu = { 
            {x = 2395.69, y = -1083.46, z = 52.48},
        },
        blipsprite = -2128054417,
        showblip = true,
        Name = 'Gouvernement',
        recruitmentrank = 6,
        bossrank = 3,
        containerid = 21,
        containername = "Coffre du gouv",
        billing = false,
        webhook = "",
        salary = false,
    },


    lakota = {
        Pos = { 
            {x = 2413.03, y = 1744.08, z = 89.68},
        }, 
        jobmenu = { 
            {x = 2413.03, y = 1744.08, z = 89.68},
        },
        blipsprite = -1944395098,
        showblip = true,
        Name = 'Coffre natif',
        recruitmentrank = 5,
        bossrank = 6,
        containerid = 22,
        containername = "Coffre du natif",
        billing = false,
        webhook = "",
        salary = false,
    },
	
    lakota_0 = {
        Pos = { 
            {x = 2413.03, y = 1744.08, z = 89.68},
        }, 
        jobmenu = { 
            {x = 2413.03, y = 1744.08, z = 89.68},
        },
        blipsprite = -1944395098,
        showblip = true,
        Name = 'Coffre natif indépendant',
        recruitmentrank = 6,
        bossrank = 2,
        containerid = 23,
        containername = "Coffre du natif",
        billing = false,
        webhook = "",
        salary = false,
    },

    lakota_1 = {
        Pos = { 
            {x = 2485.29, y = 1757.81, z = 57.48},
        }, 
        jobmenu = { 
            {x = 2485.29, y = 1757.81, z = 57.48},
        },
        blipsprite = -1944395098,
        showblip = true,
        Name = 'Lakota',
        recruitmentrank = 6,
        bossrank = 2,
        containerid = 24,
        containername = "Coffre du gouv",
        billing = false,
        webhook = "",
        salary = false,
    },

    kiowa = {
        Pos = { 
            {x = -2696.36, y = -1464.31, z = 148.49},
        }, 
        jobmenu = { 
            {x = -2696.36, y = -1464.31, z = 148.49},
        },
        blipsprite = -1944395098,
        showblip = true,
        Name = 'kiowa',
        recruitmentrank = 6,
        bossrank = 6,
        containerid = 26,
        containername = "Coffre des Kiowa",
        billing = false,
        webhook = "",
        salary = false,
    },

    g_weapons = {
        Pos = { 
            {x = 1366.3736572265625, y = -6945.11083984375, z = 61.77038192749023},
        }, 
        jobmenu = { 
            {x = 1366.3736572265625, y = -6945.11083984375, z = 61.77038192749023},
        },
        blipsprite = 202506373,
        showblip = true,
        Name = 'Armuerie de Guarma',
        recruitmentrank = 6,
        bossrank = 6,
        containerid = 27,
        containername = "Coffre des l'armurerie",
        billing = false,
        webhook = "",
        salary = false,
    },

    chippewa = {
        Pos = { 
            {x = 678.7481, y = -1249.71, z = 44.239},
        }, 
        jobmenu = { 
            {x = 678.7481, y = -1249.71, z = 44.239},
        },
        blipsprite = -1944395098,
        showblip = true,
        Name = 'Chippewa',
        recruitmentrank = 6,
        bossrank = 6,
        containerid = 30,
        containername = "Coffre des l'armurerie",
        billing = false,
        webhook = "",
        salary = false,
    },

    s_demo = {
        Pos = { 
            {x =  2639.14, y = -1230.64, z = 53.43},
        }, 
        jobmenu = { 
            {x =  2639.14, y = -1230.64, z = 53.43},
        },
        blipsprite = 1879260108,
        showblip = true,
        Name =  'Saloon Demontazak',
        recruitmentrank = 6,
        bossrank = 6,
        containerid = 31,
        containername = "Coffre du Saloon",
        billing = false,
        webhook = "",
        salary = false,
    },
}
-------------------
Config.alertsfunction = true 

Config.alerts = { 
    police = { -- job name
        command = "alertpolice",
        jobs = {"police","marshal"}, -- jobs the alert is sent to
        msg = "Quelqu'un à besoin de vous la bas", -- alert sent to the players with the job name 
        isdoctor = false,
        blip = {
            blipsprite = 2119977580,
            Name = 'Crieur de rue (poukave)',
        }
    },
    doctor = {
        command = "alertdoctor",
        jobs = {"medicsd"},
        msg = "Quelqu'un à besoin de vous la bas",
        isdoctor = true,
        blip = {
            blipsprite = 2119977580,
            Name = 'Crieur de rue',
        }
    },
   
}
Config.medicresponse = "resp"
Config.cancelblipcommand = "calert" -- removes alert blips
Config.alertcooldown = 60 -- seconds
Config.viewonduty = "viewduty" -- allows admins or job boss rank to viw who is on duty. for boss rank players its just /viewduty, for admins its /viewduty jobname
Config.ondutycommand = "onduty"
Config.offdutycommad = "offduty"
Config.checkduty = "checkduty"
Config.nosalaryoffduty = true -- dont pay salary to off duty players for the jobs listed below 
Config.dutyjobs = {"police","doctor"}
Config.afkoffdutytimer = 5 -- go off duty if you are alerted and afk for 5 minutes
Config.ondutyinstant = true -- instantly go on duty when command is used 
Config.ondutytime = 2.5 -- minutes 
Config.dutywebhooks = { 
    doctor = "",
    drbarber = "",
    police = "",
    marshal = "",
}

Config.dutystationsenabled = true -- 
Config.menuoption = true -- if set to true players can still use the onduty command but will be prompted to select their region
Config.dutystationjobs = {"police"}
Config.dutystationlocations = {
    ["armadillo"] = {
        coords = {x = -3620.92, y = -2606.35, z = -13.33},
        job = {"police","marshal"},
        showblip = true,
        blipname = "Armadillo Duty Station",
        blipsprite = -1656531561,
    },
    ["blackwater"] = {
        coords = {x = -761.7, y = -1268.1, z = 44.0},
        job = {"police","marshal"},
        showblip = true,
        blipname = "Blackwater Duty Station",
        blipsprite = -1656531561,
    },
    ["strawberry"] = {
        coords = {x = -1814.0, y = -354.8, z = 164.6},
        job = {"police","marshal"},
        showblip = true,
        blipname = "Strawberry Duty Station",
        blipsprite = -1656531561,
    },
    ["valentine"] = {
        coords = {x = -278.4, y = 805.3, z = 119.3},
        job = {"police","marshal"},
        showblip = true,
        blipname = "Valentine Duty Station",
        blipsprite = -1656531561,
    },
    ["annes"] = {
        coords = {x = 2908.3, y = 1308.9, z = 44.9},
        job = {"police","marshal"},
        showblip = true,
        blipname = "Annesburg Duty Station",
        blipsprite = -1656531561,
    },
    ["rhodes"] = {
        coords = {x = 1361.95, y = -1298.9, z = 77.76},
        job = {"police","marshal"},
        showblip = true,
        blipname = "Rhodes Duty Station",
        blipsprite = -1656531561,
    },
    ["sd"] = {
        coords = {x = 2511.99, y = -1309.1, z = 48.95},
        job = {"police","marshal"},
        showblip = true,
        blipname = "Saint Denis Duty Station",
        blipsprite = -1656531561,
    },
}

----------------
Config.Language = {
    usestation = "You Need To Use A Duty Station To Go On Duty", -- new language
    SelectedJob = "You have selected the job :", -- new language
    goonduty = "Press (G) To Go On Duty At: ", -- new language
    dutyregions = " Duty Regions", -- new language
    changingroom = "Changing Room",
    manageemployees = "Manage Employees",
    jobmenu = "Job Menu",
    nooutfits = "No saved outfits",
    outfits = "Outfits",
    yourjobis = "your job title is : ",
    hire = "Hire",
    fire = "Fire",
    setsalary = "Set Salary",
    setrank = "Set Rank",
    cantfire = "Cant Fire Yourself",
    canthire = "Cant Hire Yourself",
    youhired = "You Hired ",
    youfired = "You Fired ",
    hired = "You Were Hired as ",
    fired = "You Were Fired From ",
    changerank = "You Changed The Job Rank of ",
    rankchanged = "your Job Rank Was Changed To ",
    cantchangerank = "You Cant Change Your Own Rank",
    highestrank = "You Cant Rank Above Or Equal To The Highest Rank, Rank: ",
    Torank = " To Rank: ",
    listrank = " // Rank: ",
    confirm = "Confirm",
    playerid = "Player ID",
    rank = "Rank",
    salarys = "Salary",
    salary = "You Recieved A Salary Payment of: ",
    maxsalary = "Cannot exceed max salary of : ",
    salaryupdated = "You Updated The Salary Of Rank ",
    to = " To ",
    from = " From ",
    noledgercash = "Your Society Ledger Doesnt Have Enough Cash To Pay Salary",
    ledger = "Ledger",
    ledgercash = "Job Ledger Cash: ",
    depositcash = "Deposit Cash",
    withdrawcash = "Withdraw Cash",
    deposited = "You Deposited : ",
    invalidamount = "Invalid Amount",
    withdrew = "You Withdrew : ",
    inventory = "Inventory",
    qt = "Invalid quantity",
    carry = "You cant carry more items",
    limit = "You reached the limit for this item",
    someoneisclose = "Someone is too close to you",
    noplayer = "No Person Nearby",
    finesent = "You Sent A Bill Amount Of :",
    finerecieve = "You Recieved A Bill Amount Of :",
    bills = "Your Bills:",
    billpaid = "You Paid A Bill Amount Of: ",
    takena = " Has Taken A ",
    taken = " Has Taken ",
    put = " Deposited ",
    issuedbill = " Issued A Bill Amount Of ",
    paidbill = " Paid A Bill Amount Of",
    withdrews = " Withdrew An Amount Of ",
    deposits = " Deposited An Amount Of ",
    billss = "Bills:",
    viewbills = "View Bills",
    drawtextjobmenu = "Press G For Job Menu", 
    drawtextjobcenter = "Press G For Job Center", 
    nocash1 = "You Dont Have Enough Money", 
    maxslots = "cant store more items, slot limit is ", -- newline	
    dothis = "~e~do /",
    toremovenoti = " to remove notifications",
    needsyourhelp = "someone needs your help, check your map for a blip do ~e~(/",
    needsyourhelp2 = "~e~someone needs your help, check your map for a blip",
    torespond = ")~q~ to respond", 
    docontheway = "~e~Doctor is on the way",
    nodoc = "~e~ No Doctors Available",
    youonduty = "~e~ You Are on Duty",
    youoffduty = "~e~ You Are off Duty",
    duty = " On Duty",
    offD = " Off Duty",
    serverid = "Server ID: ",
    noneavailable = "None Available", 
    waitafew = "Cant Spam Wait a Few", 
    alertsent = "Alert Sent", 
    afkoffduty = "You were taken off duty for being AFK",
    wentonduty = "Is on Duty",
    wentoffduty = "Is off Duty",
    cantgoonduty = "cant go on duty if hogtied,dead or cuffed"
}
