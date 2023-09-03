Config = {}

Config.JobMessage = "No tienes permitido entrar" -- Message when you don't have the job to access

Config.KeyEnter =  0xCEFD9220
Config.KeyExit = 0xCEFD9220

Config.PromptEnter = "Entrer"   -- Enter button text.
Config.PromptExit = "Sortir" --Exit button text.

Config.VarStringEnter = "Entrer dans cette : " -- Text before the name of the enter house
Config.VarStringExit = "Sortir de cette: " -- Text before the name of the exit house

Config.DrawMarkerColor = {r = 0, g = 128, b = 0}

Config.Locations = { 
    {
        name = "Escalier inférieur",    --  Location name
        enterPos = vector3(2500.7, -1303.22, 49.0),   -- Position of enter prompt and enter spawn
        exitPos = vector3(2497.22, -1316.34, 42.81), -- Position of exit prompt and exit spawn
        exit = true,    -- Enable exit prompt (true) or remove exit prompt(false), if you can leave tents by walking through the wall, wall has collision bugs.
        job = false,    -- Jobs to enter {"job1","job2"} , or false for no job.
        blip = {enable = true, sprite = 1},    -- Enable o disable blip (true/false) and sprite (hash blip).
        showentercircle = false, --Enable o disable circle on the ground
        showexitcircle = false --Enable o disable circle on the ground
    },

        {
        name = "Eglise",    --  Location name
        enterPos = vector3(2740.84, -1264.27, 50.66),   -- Position of enter prompt and enter spawn
        exitPos = vector3(2748.4, -1265.3, 31.31), -- Position of exit prompt and exit spawn
        exit = true,    -- Enable exit prompt (true) or remove exit prompt(false), if you can leave tents by walking through the wall, wall has collision bugs.
        job = false,    -- Jobs to enter {"job1","job2"} , or false for no job.
        blip = {enable = true, sprite = 1},    -- Enable o disable blip (true/false) and sprite (hash blip).
        showentercircle = false, --Enable o disable circle on the ground
        showexitcircle = false --Enable o disable circle on the ground
    },	
        {
        name = "Bureau de la scierie",    --  Location name
        enterPos = vector3(2866.62, 1448.52, 69.17),   -- Position of enter prompt and enter spawn
        exitPos = vector3(2865.56, 1448.7, 69.21), -- Position of exit prompt and exit spawn
        exit = true,    -- Enable exit prompt (true) or remove exit prompt(false), if you can leave tents by walking through the wall, wall has collision bugs.
        job = false,    -- Jobs to enter {"job1","job2"} , or false for no job.
        blip = {enable = true, sprite = 1},    -- Enable o disable blip (true/false) and sprite (hash blip).
        showentercircle = false, --Enable o disable circle on the ground
        showexitcircle = false --Enable o disable circle on the ground
    },		
    {
        name = "Bureau Guarma",    --  Location name
        enterPos = vector3(1380.47, -6933.68, 61.0),   -- Position of enter prompt and enter spawn
        exitPos = vector3(1381.99, -6931.48, 61.36), -- Position of exit prompt and exit spawn
        exit = true,    -- Enable exit prompt (true) or remove exit prompt(false), if you can leave tents by walking through the wall, wall has collision bugs.
        job = false,    -- Jobs to enter {"job1","job2"} , or false for no job.
        blip = {enable = true, sprite = 1},    -- Enable o disable blip (true/false) and sprite (hash blip).
        showentercircle = false, --Enable o disable circle on the ground
        showexitcircle = false --Enable o disable circle on the ground
    },	
    {
        name = "Tribunale",    --  Location name
        enterPos = vector3(2531.01, -1202.27, 53.68),   -- Position of enter prompt and enter spawn
        exitPos = vector3(2544.08, -1202.34, 36.48), -- Position of exit prompt and exit spawn
        exit = true,    -- Enable exit prompt (true) or remove exit prompt(false), if you can leave tents by walking through the wall, wall has collision bugs.
        job = false,    -- Jobs to enter {"job1","job2"} , or false for no job.
        blip = {enable = true, sprite = 1},    -- Enable o disable blip (true/false) and sprite (hash blip).
        showentercircle = false, --Enable o disable circle on the ground
        showexitcircle = false --Enable o disable circle on the ground
    },	
    {
        name = "Prison 1",    --  Location name
        enterPos = vector3(1464.86, -7134.07, 75.84),   -- Position of enter prompt and enter spawn
        exitPos = vector3(1464.35, -7132.25, 75.96), -- Position of exit prompt and exit spawn
        exit = true,    -- Enable exit prompt (true) or remove exit prompt(false), if you can leave tents by walking through the wall, wall has collision bugs.
        job = {"FAR"},    -- Jobs to enter {"job1","job2"} , or false for no job.
        blip = {enable = true, sprite = 1},    -- Enable o disable blip (true/false) and sprite (hash blip).
        showentercircle = false, --Enable o disable circle on the ground
        showexitcircle = false --Enable o disable circle on the ground
    },	
    {
        name = "Prison 2",    --  Location name
        enterPos = vector3(1468.29, -7132.59, 75.9),   -- Position of enter prompt and enter spawn
        exitPos = vector3(1467.06, -7130.87, 75.95), -- Position of exit prompt and exit spawn
        exit = true,    -- Enable exit prompt (true) or remove exit prompt(false), if you can leave tents by walking through the wall, wall has collision bugs.
        job = {"FAR"},    -- Jobs to enter {"job1","job2"} , or false for no job.
        blip = {enable = true, sprite = 1},    -- Enable o disable blip (true/false) and sprite (hash blip).
        showentercircle = false, --Enable o disable circle on the ground
        showexitcircle = false --Enable o disable circle on the ground
    },	
    {
        name = "Prison 3",    --  Location name
        enterPos = vector3(1482.25, -7126.22, 75.89),   -- Position of enter prompt and enter spawn
        exitPos = vector3(1481.11, -7124.25, 75.96), -- Position of exit prompt and exit spawn
        exit = true,    -- Enable exit prompt (true) or remove exit prompt(false), if you can leave tents by walking through the wall, wall has collision bugs.
        job = {"FAR"},    -- Jobs to enter {"job1","job2"} , or false for no job.
        blip = {enable = true, sprite = 1},    -- Enable o disable blip (true/false) and sprite (hash blip).
        showentercircle = false, --Enable o disable circle on the ground
        showexitcircle = false --Enable o disable circle on the ground
    },
    {
        name = "Prison 4",    --  Location name
        enterPos = vector3(1487.64, -7121.78, 76.05),   -- Position of enter prompt and enter spawn
        exitPos = vector3(1484.4, -7122.67, 76.06), -- Position of exit prompt and exit spawn
        exit = true,    -- Enable exit prompt (true) or remove exit prompt(false), if you can leave tents by walking through the wall, wall has collision bugs.
        job = {"FAR"},    -- Jobs to enter {"job1","job2"} , or false for no job.
        blip = {enable = true, sprite = 1},    -- Enable o disable blip (true/false) and sprite (hash blip).
        showentercircle = false, --Enable o disable circle on the ground
        showexitcircle = false --Enable o disable circle on the ground
    },
    {
        name = "Prison 5",    --  Location name
        enterPos = vector3(1488.05, -7121.87, 76.06),   -- Position of enter prompt and enter spawn
        exitPos = vector3(1486.05, -7119.85, 76.13), -- Position of exit prompt and exit spawn
        exit = true,    -- Enable exit prompt (true) or remove exit prompt(false), if you can leave tents by walking through the wall, wall has collision bugs.
        job = {"FAR"},    -- Jobs to enter {"job1","job2"} , or false for no job.
        blip = {enable = true, sprite = 1},    -- Enable o disable blip (true/false) and sprite (hash blip).
        showentercircle = false, --Enable o disable circle on the ground
        showexitcircle = false --Enable o disable circle on the ground
    },

    {
        name = "Crypte",    --  Location name
        enterPos = vector3(2764.46, -1276.68, 31.81),   -- Position of enter prompt and enter spawn
        exitPos = vector3(2778.09, -1271.40, 25.00), -- Position of exit prompt and exit spawn
        exit = true,    -- Enable exit prompt (true) or remove exit prompt(false), if you can leave tents by walking through the wall, wall has collision bugs.
        job = false,    -- Jobs to enter {"job1","job2"} , or false for no job.
        blip = {enable = true, sprite = 1},    -- Enable o disable blip (true/false) and sprite (hash blip).
        showentercircle = false, --Enable o disable circle on the ground
        showexitcircle = false --Enable o disable circle on the ground
    },
}