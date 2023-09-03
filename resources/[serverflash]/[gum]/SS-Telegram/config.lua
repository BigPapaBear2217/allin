-- Author '🆂🅸🆁🅴🅲#0336'
-- REPORT ANY BUGS ON https://discord.gg/9XNBaQSmMd --

Config = {
Framework = "vorp", -- CHOICE YOUR FRAMEWORK vorp FOR VORP or redemrp FOR REDEM:RP !
Webhook = "https://discord.com/api/webhooks/982293493781262356/bGW4_bj8Jpcz27YCfuYFbxdBRltv9HNM4vySDFAF5RLzrz4LabjTrumcn2IAvCM5ml4s", -- WEBHOOK OF TELEGRAM
WebhookTittle = "NEW TELEGRAM HAS BEEN SENT", -- TITTLE OF WEBHOOK
CustomDate = "08/2022",    
    
Model = "A_C_Pigeon", -- BIRD MODEL EX: A_C_Pigeon
ModelAnonymouse = "a_c_crow_01", -- BIRD MODEL FOR ANONYMUSE TELEGRAM
Align = "right", 
    
Item = "telegram", -- ITEM TO USE FOR TELEGRAM
AnonymousItem = "blacktelegram", -- BLACK TELEGRAM ITEM WITH ANONYMOUS NAME
Key = 0xD9D0E1C0,    
    
Timeout = 10000, -- TIME to recall the telegram default 10000
TimeCheck = 10000, -- TIME to check for new telegram default 10000
ResetTelegram = 240000, -- TIME TO RESET BIRD TELEGRAM IF STUCK OR DIE DEFAULT 240000 (4 MIN) "false" TO TURN OFF !    

Texts = {
["button_key"] = "TÉLÉGRAMME",
["write_telegram"] = "ÉCRIRE UN NOUVEAU TÉLÉGRAMME",
["read_telegram"] = "LIRE LE NOUVEAU TÉLÉGRAMME",
["calltoyou"] = "APPELER LE TÉLÉGRAMME",
        
["texttimeout"] = "Vous devez attendre avant de l'appeler à nouveau",
["notspawned"] = "Vous n'avez aucun télégramme appelé",
["cooming"] = "Attendez que le télégramme vous parvienne",
["newtelegram"] = "Vous avez un nouveau télégramme",
["sendfail"] = "Le destinataire n'a pas été trouvé, assurez-vous d'écrire le bon nom et prénom !",
["sendsuccess"] = "Votre télégramme a été envoyé avec succès !",
["anonymouse"] = "Télégramme anonyme",   
},    
}

function NOTIFY(text) --SET YOUR NOTIFYCATIONS
if Config.Framework == "redemrp" then    
TriggerEvent('redem_roleplay:Tip', text, 5000)    
elseif Config.Framework == "vorp" then
TriggerEvent("vorp:TipBottom", text, 5000) 
end        
end   