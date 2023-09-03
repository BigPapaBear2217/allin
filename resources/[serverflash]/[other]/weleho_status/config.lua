Config = {}

Config.Debug = false

Config.Webhook = 'https://discord.com/api/webhooks/1031983861128769576/ViJK6mPGGj8QfSog2D_1uxeFe9omf3RuLn6OWO-jMiUzEV5RXHlymPSMIvq4gDbQad_S'
Config.ServerName = 'Wanted Nation'

Config.MessageId = 'La tempête approche' --Copy messageid from deployed message and restart script!

Config.UpdateTime = 1000*60*1 -- 1 minute
Config.Use24hClock = true -- false = 12h clock
Config.JoinLink = 'https://cfx.re/join/a3km93' -- Make sure that JoinLink is URL, like: https://cfx.re/join/xp34mg, currenlty does not support Redm

Config.EmbedColor = 3158326

Config.Locale = 'en'

Config.Locales = {
    ['fi'] = {
        ['date'] = 'Jour',
        ['time'] = 'Heure',
        ['players'] = 'Joueurs',
        ['connect'] = 'Connecter au serveur',
    },
    ['en'] = {
        ['date'] = 'Jour',
        ['time'] = 'Heure',
        ['players'] = 'Joueur',
        ['connect'] = 'Se connecter',
    }
}
