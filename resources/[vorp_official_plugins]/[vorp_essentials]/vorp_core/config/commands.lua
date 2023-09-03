local T = Translation[Lang].Commands
--============================
--? EXAMPLE
-- * in this file is where vorp core commands are registered
-- * you can register your own commands here too
-- * it has features such as : arguments needed , is user in game , groups allowed ,aces allowed ,jobs allowed, webhooks and chat suggestions
-- * callfunction bellow, will return a table  with    {source , args , rawCommand , config} config is the value on this file the parameters of the command used like commandName
-- TODO job grade support

--[[ addgroup = {
        webhook = "", -- discord log when someone uses this command leave to false if you dont need
        custom = "\n**PlayerID** `%d`\n**Group given** `%s`", -- for webhook
        title = "📋 `/Group command`", -- webhook title
        ---#end webhook
        commandName = "addGroup", -- name of the command to use
        label = "set players group", -- label of command when using
        suggestion = { -- chat arguments needed
            { name = "Id",    help = T.Commands.help1 }, -- add how many you need
            { name = "Group", help = T.Commands.help2 },
        },
        userCheck = true, -- does this command need to check if user is playing ?
        groupAllowed = { "admin" }, -- from users table in the database this group will be allowed to use this command
        aceAllowed = 'vorpcore.setGroup.Command', -- dont touch,
        --jobsAllow = {}, -- jobs allowed ? remove or leave empty if not needed
        callFunction = function(...) -- dont touch
            -- this is a function
            -- you can run code here trigger client events or server events , exports etc,
            -- get source local data = ...
            --local source = data.source
            SetGroup(...)
        end

    },]]
--END

--==============================
Commands = {
    addgroup = {
        webhook = "https://discord.com/api/webhooks/1109170334004949113/7LwFGYK9vP3pJWN8GULrU38gkuB7C48qtaK7hBT_-d-Lg1Zm8ODl8OocUNis_B6MGgnE",
        custom = T.addGroup.custom,
        title = T.addGroup.tittle,
        ---#end webhook
        commandName = "addGroup",
        label = T.addGroup.label,
        suggestion = {
            { name = T.addGroup.name,  help = T.addGroup.help },
            { name = T.addGroup.name1, help = T.addGroup.help1 },
        },
        userCheck = true,
        groupAllowed = { "admin" },
        aceAllowed = 'vorpcore.setGroup.Command',
        callFunction = function(...)
            SetGroup(...)
        end
    },
    addJob = {
        webhook = "https://discord.com/api/webhooks/1109170410681024554/eRXo9hxqHrmnGm2SZqFshyd_CLGnzD88uorkUVbfc6TquWQZerFzHdrXggxblggPF1lC",
        custom = T.addJob.custom,
        title = T.addJob.title,
        ---#end webhook
        commandName = "addJob",
        label = T.addJob.label,
        suggestion = {
            { name = T.addJob.name,  help = T.addJob.help },
            { name = T.addJob.name1, help = T.addJob.help1 },
            { name = T.addJob.name2, help = T.addJob.help2 },
        },
        userCheck = true,
        groupAllowed = { "admin" },
        aceAllowed = 'vorpcore.setJob.Command',
        callFunction = function(...)
            AddJob(...)
        end
    },
    addItem = {
        webhook = "",
        custom = T.addItem.custom,
        title = T.addItem.title,
        ---#end webhook
        commandName = "addItems",
        label = T.addItem.label,
        suggestion = {
            { name = T.addItem.name,  help = T.addItem.help },
            { name = T.addItem.name1, help = T.addItem.help1 },
            { name = T.addItem.name2, help = T.addItem.help2 },
        },
        userCheck = true,
        groupAllowed = { "admin" },
        aceAllowed = 'vorpcore.additems.Command',
        callFunction = function(...)
            AddItems(...)
        end
    },
    addWeapon = {
        webhook = "https://discord.com/api/webhooks/1109170472060469337/3HlIoyiRlIkuSNkCNtfNk6lfk41lnoXOVASk-r1jDoKdkI2qbAvgu5EMq56E09C8bOku",
        custom = T.addWeapon.custom,
        title = T.addWeapon.title,
        ---#end webhook
        commandName = "addWeapon",
        label = T.addWeapon.label,
        suggestion = {
            { name = T.addWeapon.name,  help = T.addWeapon.help },
            { name = T.addWeapon.name1, help = T.addWeapon.help1 },
        },
        userCheck = true,
        groupAllowed = { "admin" },
        aceAllowed = 'vorpcore.addweapons.Command',
        callFunction = function(...)
            AddWeapons(...)
        end
    },
    delMoney = {
        webhook = "https://discord.com/api/webhooks/1109170539072847964/Ul-jUtSmHgpfNjdMtfidMVUi8t8YlngWE64L2N1z2ozCWBkOyE_2BgB3VGJPfELbOaQj",
        custom = T.delMoney.custom,
        title = T.delMoney.title,
        ---#end webhook
        commandName = "delMoney",
        label = T.delMoney.label,
        suggestion = {
            { name = T.delMoney.name,  help = T.delMoney.help },
            { name = T.delMoney.name1, help = T.delMoney.help1 },
            { name = T.delMoney.name2, help = T.delMoney.help2 },
        },
        userCheck = true,
        groupAllowed = { "admin" },
        aceAllowed = 'vorpcore.delCurrency.Command',
        callFunction = function(...)
            RemmoveCurrency(...)
        end
    },
    addMoney = {
        webhook = "https://discord.com/api/webhooks/1109170604218794076/DFsZl9ouNWgoVyiT5BE2aEoxYV92jdXJ7NLdbzzIXC87b5CHp4kDe7qUnWBbtH7b_bV-",
        custom = T.addMoney.custom,
        title = T.addMoney.title,
        ---#end webhook
        commandName = "addMoney",
        label = T.addMoney.label,
        suggestion = {
            { name = T.addMoney.name,  help = T.addMoney.help },
            { name = T.addMoney.name1, help = T.addMoney.help1 },
            { name = T.addMoney.name2, help = T.addMoney.help2 },

        },
        userCheck = true,
        groupAllowed = { "admin" },
        aceAllowed = 'vorpcore.setGroup.Command',
        callFunction = function(...)
            AddMoney(...)
        end
    },
    delWagons = {
        webhook = "https://discord.com/api/webhooks/1109170655666131027/lCW21Ic5tlJ_uyvB1Fv5h_oP9u8OtjCyZAGrKathJEgTmL3DfSBHyHR7S7Q8NcBcFehB",
        custom = T.delWagons.custom,
        title = T.delWagons.title,
        ---#end webhook
        commandName = "delWagons",
        label = T.delWagons.label,
        suggestion = {
            { name = T.delWagons.name, help = T.delWagons.help },
        },
        userCheck = false,
        groupAllowed = { "admin" },
        aceAllowed = 'vorpcore.delwagons.Command',
        callFunction = function(...)
            DeleteWagons(...)
        end
    },
    revive = {
        webhook = "https://discord.com/api/webhooks/1109170704617844792/eQiNvLogCjYlVCSlK2PA2Agocj6op4b9fMw9jn4P8QrHISn8WDreL3aFKR04NiefpzYR",
        custom = T.revive.custom,
        title = T.revive.title,
        commandName = "revive",
        label = T.revive.label,
        suggestion = {
            { name = T.revive.name, help = T.revive.help }
        },
        userCheck = true,
        groupAllowed = { "admin" },
        aceAllowed = 'vorpcore.reviveplayer.Command',
        callFunction = function(...)
            RevivePlayer(...)
        end
    },
    teleport = {
        webhook = "https://discord.com/api/webhooks/1109170758292349009/Y-GfA18dHSy69jtKl00cUSBG-va0xkUiBws-44_6S-JR1OLNhE8D3P6R7_RnQTDEjiYK",
        custom = T.teleport.custom,
        title = T.teleport.title,
        commandName = "tpm",
        label = T.teleport.label,
        suggestion = {},
        userCheck = false,
        groupAllowed = { "admin" },
        aceAllowed = 'vorpcore.tpm.Command',
        callFunction = function(...)
            TeleporPlayer(...)
        end
    },
    delHorse = {
        webhook = "https://discord.com/api/webhooks/1109170806744961034/HlLae4rREaE1WjqvIsVQwAV_6I9h-Twwt3z75oDVNoGqhItyOITLeJf3ewbFqhVcPqyM",
        custom = T.delHorse.custom,
        title = T.delHorse.title,
        commandName = "delHorse",
        label = T.delHorse.label,
        suggestion = {},
        userCheck = false,
        groupAllowed = { "admin" },
        aceAllowed = 'vorpcore.delhorse.Command',
        callFunction = function(...)
            DeleteHorse(...)
        end
    },
    heal = {
        webhook = "https://discord.com/api/webhooks/1109170875879661588/N7_9o418A_Dc78nm-k3SSzJDkCWCJYhOxGWSdMUEwsqZLNzYYmcNT5ZzN3oiwvhfrRQ4",
        custom = T.heal.custom,
        title = T.heal.title,
        commandName = "heal",
        label = T.heal.label,
        suggestion = {
            { name = T.heal.name, help = T.heal.help }
        },
        userCheck = true,
        groupAllowed = { "admin" },
        aceAllowed = 'vorpcore.healplayer.Command',
        callFunction = function(...)
            local data = ...
            -- in here you can add your metabolism events
            TriggerClientEvent("vorpmetabolism:changeValue", data.source, "Thirst", 1000)
            TriggerClientEvent("vorpmetabolism:changeValue", data.source, "Hunger", 1000)
            HealPlayers(...)
        end
    },
 --[[   addWhitelist = {
        webhook = "",
        custom = T.addWhitelist.custom,
        title = T.addWhitelist.title,
        commandName = "addWhtelist",
        label = T.addWhitelist.label,
        suggestion = {
            { name = T.addWhitelist.name, help = T.addWhitelist.help },
        
        },
        userCheck = false,
        groupAllowed = { "admin" },
        aceAllowed = 'vorpcore.wlplayer.Command',
        callFunction = function(...)
            AddPlayerToWhitelist(...)
        end
    },
    unWhitelist = {
        webhook = "",
        custom = T.unWhitelist.custom,
        title = T.unWhitelist.title,
        commandName = "unWhitelist",
        label = T.unWhitelist.label,
        suggestion = {
            { name = T.unWhitelist.name, help = T.unWhitelist.help },
        },
        userCheck = false,
        groupAllowed = { "admin" },
        aceAllowed = 'vorpcore.unwlplayer.Command',
        callFunction = function(...)
            RemovePlayerFromWhitelist(...)
        end
    }, ]]
    ban = {
        webhook = "https://discord.com/api/webhooks/1109170937548517416/ThILzI8Qhn2fS-Lad2tjEaEU6yrMrv8skkL8-6CBk_VYwrClN-tkITd-NKd6ccxk5bBi",
        custom = T.ban.custom,
        title = T.ban.title,
        commandName = "ban",
        label = T.ban.label,
        suggestion = {
            { name = T.ban.name, help = T.ban.help },
            { name = T.ban.name1, help = T.ban.help1 },
        },
        userCheck = false,
        groupAllowed = { "admin" },
        aceAllowed = 'vorpcore.ban.Command',
        callFunction = function(...)
            BanPlayers(...)
        end
    },
    unBan = {
        webhook = "https://discord.com/api/webhooks/1109171060001222766/m4pkOfvWkrhgqbAwqq4_n9l528aAfnGFNs_qUgbPfSqwI-N4P2Hy5zE7g0S5i-IXi9jQ",
        custom = T.unBan.custom,
        title = T.unBan.title,
        commandName = "unBan",
        label = T.unBan.label,
        suggestion = {
            { name = T.unBan.name, help = T.unBan.help },
        },
        userCheck = false,
        groupAllowed = { "admin" },
        aceAllowed = 'vorpcore.unban.Command',
        callFunction = function(...)
            UnBanPlayers(...)
        end
    },
    warn = {
        webhook = "https://discord.com/api/webhooks/1109171064786927637/7oKce2juHlkf_jbMpg1sic0dy6T3PqyqYP0HExiEpzL02reaVZ6N8HEMZJA5TJbOry9W",
        custom = T.warn.custom,
        title = T.warn.title,
        commandName = "warn",
        label = T.warn.label,
        suggestion = {
            { name = T.warn.name, help = T.warn.help },
        },
        userCheck = false,
        groupAllowed = { "admin" },
        aceAllowed = 'vorpcore.warn.Command',
        callFunction = function(...)
            WarnPlayers(...)
        end
    },
    unWarn = {
        webhook = "https://discord.com/api/webhooks/1109171163508265001/sWsHpmwPSpoQ6ZYRnrZYvvM6BDifyM4xMDB8FSfUxxzMFfbfPbIh5-QNK1kQCD9EoR4J",
        custom = T.unWarn.custom,
        title = T.unWarn.title,
        commandName = "unWarn",
        label = T.unWarn.label,
        suggestion = {
            { name = T.unWarn.name, help = T.unWarn.help }
        },
        userCheck = false,
        groupAllowed = { "admin" },
        aceAllowed = 'vorpcore.unwarn.Command',
        callFunction = function(...)
            UnWarnPlayer(...)
        end
    },
    charName = {
        webhook = "https://discord.com/api/webhooks/1109171254667255920/FhQTG5bfYNPGzOhB2xeim_SMhhI_anKFycOc5sUgQYlp8RyK93FSMueyWS7lca68oHk8",
        custom = T.charName.custom,
        title = T.charName.title,
        commandName = "modifyCharName",
        label = T.charName.label,
        suggestion = {
            { name = T.charName.name, help = T.charName.help },
            { name = T.charName.name1, help = T.charName.help1 },
            { name = T.charName.name2, help = T.charName.help2 },

        },
        userCheck = true,
        groupAllowed = { "admin" },
        aceAllowed = 'vorpcore.changeCharName',
        callFunction = function(...)
            ModifyCharName(...)
        end
    },
    charCreateAdd = {
        webhook = "https://discord.com/api/webhooks/1109171432447021097/8_2gdXGDgX7dUdzVYFG-kg1iuWK0qbCHQfJVl_Icey9vcbUOHWfs_QTPDy_qo1-N6cyO",
        custom =T.charCreateAdd.custom,
        title = T.charCreateAdd.title,
        commandName = "addChar",
        label = T.charCreateAdd.label,
        suggestion = {
            { name = T.charCreateAdd.name, help = T.charCreateAdd.help },
        },
        userCheck = false,
        groupAllowed = { "admin" },
        aceAllowed = 'vorpcore.addchar.Command',
        callFunction = function(...)
            AddCharCanCreateMore(...)
        end
    },
    charCreateRemove = {
        webhook = "https://discord.com/api/webhooks/1109171475233128618/jADcPzDd3j4sGehfUREiPm72sCKh354IeIUMX0fFggAP7arIuVM7OpV2Ag0G3NGt_Qcd",
        custom = T.charCreateRemove.custom,
        title = T.charCreateRemove.title,
        --end webhook
        commandName = "removeChar",
        label = T.charCreateRemove.label,
        suggestion = {
            { name = T.charCreateRemove.name, help = T.charCreateRemove.help },
        },
        userCheck = false,
        groupAllowed = { "admin" },
        aceAllowed = 'vorpcore.removechar.Command',
        callFunction = function(...)
            RemoveCharCanCreateMore(...)
        end
    },
    myJob = {
        webhook = "https://discord.com/api/webhooks/1109171532275662919/EBW3FVwTf-dZW-qsbbBB3iASJsiedt1bFkXlx2N9SfDoLybMqREpsoWMcMYGhBWE1Y7T",
        commandName = "myJob",
        label = T.myJob.label,
        suggestion = {},
        userCheck = false,
        groupAllowed = {}, -- leave empty anyone can use
        aceAllowed = nil,  -- leave nil anyone can use
        callFunction = function(...)
            MyJob(...)
        end
    },
    myHours = {
        webhook = "https://discord.com/api/webhooks/1109171571349803069/Mm4XiB42qDSz3QywJ6Bg5KqMNI155jPz-FY9sFl-zoHaBhckwI9XzB_5EdV9ZcMkNwRO",
        commandName = "myHours",
        label = T.myHours.label,
        suggestion = {},
        userCheck = false,
        groupAllowed = {}, -- leave empty anyone can use
        aceAllowed = nil,  -- leave nil anyone can use
        callFunction = function(...)
            MyHours(...)
        end
    },
    -- create your commands here just copy from above , see first line on how to do it

}
