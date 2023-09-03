--------------
--* Config *--
--------------
--| Discord API (https://discord.com/developers/applications/) (uniquement des chiffres pas de parenthèse)
local DiscordAPI = 1086341812341444660
--| Logo: Nom de l'image dans le Rich Presence (https://discord.com/developers/applications/1016416524174631053/rich-presence/assets) 
local logo = "logo"
--| Nom du serveur
local ServeurName = "Wanted Nation"
--| Activer les sous-menus
local d, ts = true, true
--| Lien du discord
local Discord = "https://discord.gg/TNJmGd3bGN"
--| Lien du Topserveur
local TopServeur = "https://top-serveurs.net/rdr/wanted-nation"

--------------
--* Script *--
--------------

Citizen.CreateThread(function()
    while true do
        local PlayerName = GetPlayerName(PlayerId())
        local id = GetPlayerServerId(PlayerId())
        
        SetDiscordAppId(DiscordAPI)
        
        SetRichPresence(" ["..id.."] - " .. PlayerName) 
        
        SetDiscordRichPresenceAsset(logo)
        SetDiscordRichPresenceAssetText(ServeurName)

        if d then
            SetDiscordRichPresenceAction(0, "Discord", Discord)
        end

        if ts then
            SetDiscordRichPresenceAction(1, "Top Serveur", TopServeur)
        end

        Citizen.Wait(60000)
    end
end)