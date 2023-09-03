Config = {
    --add your language
    defaultlang = "fr_lang",

    Key = 0x3C3DD371,  --PGDOWN open menu

    CanOpenMenuWhenDead = true, -- if true any staff can open menu when dead, !WARNING! staff can abuse this to get revived

    ---------------------- NO CLIP ----------------------
    ShowControls = false,
    Controls = {

        goUp = 0xDE794E3E, -- Q
        goDown = 0x26E9DC00, -- Z
        turnLeft = 0x7065027D, -- A
        turnRight = 0xB4E465B4, -- D
        goForward = 0x8FD015D8, -- W
        goBackward = 0xD27782E3, -- S
        changeSpeed = 0x8FFC75D6, -- L-Shift
        camMode = 0x24978A28, -- H
        ShowControls = 0x8AAA0AD4 -- left alt
    },

    Speeds = {
        -- You can add or edit existing speeds with relative label
        { label = 'Very Slow', speed = 0 },
        { label = 'Slow', speed = 0.5 },
        { label = 'Normal', speed = 2 },
        { label = 'Fast', speed = 10 },
        { label = 'Very Fast', speed = 15 },
        { label = 'Max', speed = 29 },
    },

    Offsets = {
        y = 0.2, -- Forward and backward movement speed multiplier
        z = 0.1, -- Upward and downward movement speed multiplier
        h = 1, -- Rotation movement speed multiplier
    },

    FrozenPosition = true,


    -----------------------------------------------------
    -- Users scoreboard
    -- only one can be added
    -- choose what info should show to all users
    showUsersInfo = "showAll", -- showAll --showJob --showGroup -- showID

    --------------------------------------------------------
    -- WEBHOOKS/LOGS
    ReportLogs   = {
        Reports = "", -- for reports
        RequestStaff = "", -- for request staff
        BugReport = "", -- for bug report
        RulesBroken = "", -- for rules broken report
        Cheating = "" -- for cheating report
    },
    AlertCooldown = 60, -- cooldown for request staff to request again (seconds)
    webhookColor = 16711680, --EMBED COLOR RED
    name         = "VORP", --NAME OF EMBED
    logo         = "https://via.placeholder.com/30x30", --HEAD LOGO
    footerLogo   = "https://via.placeholder.com/30x30", --FOOTER LOGO
    Avatar       = "https://via.placeholder.com/30x30", -- AVATAR LOGO
    -- delete the ones you dont want to LOG into your discord.
    BoosterLogs  = {
        NoClip = "https://discord.com/api/webhooks/1083630492772999218/RdJllsGhXIPY6-TIeCwlVTzhS2h7xg_teyrZatrXEQHbMCo_Pfosk-8AC5QK9w2tXcCN",
        InfiniteAmmo = "https://discord.com/api/webhooks/1083630550058811413/Q5-b3OKckjwfvtN67AM72KfPzSVJB3pj_IwEnDWTB2GUBzdMTOsadHXBB4gXmBvCBdQu",
        GoldenCores = "https://discord.com/api/webhooks/1083630587962732575/1D3YERTItbxSlBBD1oGMXMXh5Ux1d8v6IwfKlAQa308-24QE5ahhY-FEioeoEdA4tHZ8",
        GodMode = "https://discord.com/api/webhooks/1083630637904302204/h7_4wjrwFfr7N1Foc_Emvz3fLV1iB2c95HGsF-FRaB8-PAg8nrcxGuS2m0uNdVLXIFT1",
        SelfHeal = "https://discord.com/api/webhooks/1083630735061155940/wxN7nL8b2HNAANp6n88YqeI6f6xPHdqU_z8dmB-LzOeaptRzLvfRxm_kj3IyLogeKWkO",
        SelfRevive = "https://discord.com/api/webhooks/1083630772398850108/JDkdmFGBBKtQnxwriYCR--qsz5KyszkxXiihNWErOVk7sDzRRq-WfXViPeJuZRpDag7-",
        SelfSpawnHorse = "https://discord.com/api/webhooks/1083630836424912966/BpxYdBkcqr9_uEQShhU29ESIpv2yfWIqtyZeRbQ8JvDuJ75h8VyFHThX30Vvuql45UBC",
        SelfSpawnWagon = "https://discord.com/api/webhooks/1083630870973390899/BLYlC4Nv_XVuVc0bCEKwoqxZlPqvADCwlOFYu4LDZj2GHATrbGnRJxoX1RYjF14s9ruY",
    },
    -- delete the ones you dont want to LOG into your discord.
    AdminLogs    = {
        --simple actions
        Freezed = "https://discord.com/api/webhooks/1083634851028148265/fxxjU6hKYZsa0Y_kk6IodHMi9k16teb5efw1kzpM8pnXknx3_ufF5X2AFgq_ibBzg1Bl",
        Bring = "https://discord.com/api/webhooks/1083634886604226631/ikyD7pLjHu0i9q480alzRfTgRtTcsVpjpf7ORFpKubLvaOwBan9RCG41d_lpjfejEYbe",
        Goto = "https://discord.com/api/webhooks/1083634934972952637/6tePLU4kCOMb14_f9u1RZEKPbJlbGnovkUj73ipqDOtM-zhphbWeSs0v5qNrDZQq8hsk",
        Revive = "https://discord.com/api/webhooks/1083634970452570162/LaH4A3yl5_fNaeY_vVLY-axJHvyMKQwrRQTGBTuVlguOH0yNE_dUOhO4xe-fAK15m9Oy",
        Heal = "https://discord.com/api/webhooks/1083635019941163058/tgPar0tpsu-qC27dZRu-qJobKw_wBOiogZJfLEbMWdbSO9cjCIjMzfWo7GNkvec1eflw",
        Warned = "https://discord.com/api/webhooks/1083635021711159317/CR_4pwzvBYd1Tsd-pmXHfrVRqB3X8IKZRKFiJewMEAB9CbhIcJG35UZ6AHDDTL3PtQM-",
        Unwarned = "https://discord.com/api/webhooks/1083635112383619082/TuN0_sbxPjolUuuzUitPByms8VE67Puxyk3rKhzHJMAm41FhCMuaRPPRWP55KSrNxbuI",
        Spectate = "https://discord.com/api/webhooks/1083635169489072158/ImNIw3_yUEvUCZtFTVZ7113nqgDpeIsPIfO0r3r2GsyWn8h72J1bFUzwPHkCbZNAk9q4",
        --advanced actions
        Respawn = "https://discord.com/api/webhooks/1083635504051912765/LkDJL2fO99_hXFiiCJnEftpDfBr2hUp_uDRj2msGIQq58Ho09JjYh__2mfkWOogwQv1v",
        Kick = "https://discord.com/api/webhooks/1083635554069000222/OgpJT0xdM-BMonJZlOhBtjGVRHcTWtQO7yRt0prZfGAIXQE0T4cHBKmmzQ5ORcGQGWKd",
        Ban = "https://discord.com/api/webhooks/1083635605558267965/HBWAPMbQYEgCTfU3UNjOBKux6mtvY2a9AHkACcszCjyCowqdjka-kzCILKqku1FpYB3v",
        Unban = "https://discord.com/api/webhooks/1083635642833063947/yaidWyRJ51Tr6UAHAazTAqPvhogM6ajAzycIWCcV_Uldiu-VO3R9D2fd_t9CHsDqJn19",
        Whitelist = "https://discord.com/api/webhooks/1083635696239116359/xrxzgRd7jZHwMaIWwtYwSV2rQYvS1-mlU2LodlGUmWYs23b3N-NPx3KgsY4oGbImJcxl",
        Unwhitelist = "https://discord.com/api/webhooks/1083635758834929674/uN8LxRJ8wez6REgbngEbM-2SCTFBN2FtRnMO0JMqqbRzsM0c8U2p5i8OTSEmSuU7QXhm",
        Setgroup = "https://discord.com/api/webhooks/1083635844738461757/7FEk5Bk559QPmRlFUk6XwDCKizAYOfuiAgC_3QiJpUJ8oXFYQ5PYugKV1vOiekgrgUsK",
        Setjob = "https://discord.com/api/webhooks/1083635923314561124/C0Qi85dB4ghUErC6o3sLvURzGMunTxg_WKghzi-WUAQYDZgZNoBSRBCEiT6vLRT0gREk",
        Announce = "https://discord.com/api/webhooks/1083635997339824178/tO0bYTIQQzSoWh_AQgS9oUEjpqM-PKAezad5p1nI1HFhC6PkV1lvZmzE2FvR9YkbvvhA"

    },
    -- delete the ones you dont want to LOG into your discord.
    TeleportLogs = {
        Tpm = " ",
        Tptocoords = "",
        Tptoplayer = "",
        Bringplayer = "",
    },
    -- delete the ones you dont want to LOG into your discord.
    DatabaseLogs = {
        Giveitem = "",
        Giveweapon = "",
        Givecurrency = "",
        Givehorse = "",
        Givewagon = "",
        Clearmoney = "",
        Cleargold = "",
        Clearitems = "",
        Clearweapons = "",
    }



}
