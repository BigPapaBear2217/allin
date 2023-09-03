Config = {}
Config.keys = {
    -- change the hashes to the keys u want, do not change the writings in qoutes. for example if u wana change B do ["B"] = (CHANGE THIS 0x8AAA0AD4), do not change whats inside those brackets > ["B"]
    ["G"] = 0x760A9C6F,
}

Config.vorp = true 
Config.redem = false 
Config.onesync = true -- newline

Config.locationonly = false -- set to true if you want mail to only be used at the mail box location. otherwise /mail will open up mail interface 
-- note normaly it is not locationonly and it uses a pigeon to send the letters
Config.proptied = false -- enable this if you want mail to be accessable at a prop
Config.prop = "p_mailbox01x" -- you can add this prop to your furniture system and players who buy it will be able to access their mail here 
-- this goes well with location only.
Config.command = "mail"
Config.mailregisterprice = 10

Config.shownmame = true -- if false the letter will not include the senders name but will include the senders address. this allows replies 
-- and annonymos msgs 
Config.showdate = false 

Config.mailregistery = { 
    Valentine = {	   
        Pos = {x= -183.68, y=624.6, z=114.089}, -- location mail registry
		blipsprite = 2119977580, -- blip sprite for wep market
        showblip = true, -- show blip or not 
        Name = 'Bureau de pigeon voyageur', -- blip name 
    },
	Rhodes = {	   
        Pos = {x= 1223.29, y=-1292.9, z=76.9}, -- location mail registry
		blipsprite = 2119977580, -- blip sprite for wep market
        showblip = true, -- show blip or not 
        Name = 'Bureau de pigeon voyageur', -- blip name 
    },
	SD = {	   
        Pos = {x= 2731.3, y=-1402.4, z=46.2}, -- location mail registry
		blipsprite = 2119977580, -- blip sprite for wep market
        showblip = true, -- show blip or not 
        Name = 'Bureau de pigeon voyageur', -- blip name 
    },
	tw = {	   
        Pos = {x=-5528.14,y=-2953.18,z=-0.65,}, -- location mail registry
		blipsprite = 2119977580, -- blip sprite for wep market
        showblip = true, -- show blip or not 
        Name = 'Bureau de pigeon voyageur', -- blip name 
    },
	
}



Config.Language = {
	["presstoshop"] = "Appuyer sur ~e~G~q~ pour y accéder",
	["mailmenu"] = "Menu des lettres",
	["registerplease"] = "Vous devez vous enregistrer dans un bureau de pigeon voyageur",
	["rigster"] = "Ajouter une bague : ",
	["dollar"] = " $",
	["nocash"] = "Vous n'avez pas assez d'argent",
	["adressnotfound"] = "Mauvaise bague",
	["already"] = "Vous avez déja ce contact. type /",
	["openmail"] = "Voir les lettres",
	["letterrecieved"] = "~e~Vous avez reçu un pigeon de  ~q~",
	["gotm"] = "~e~Un pigeon vous est parvenu",-- newline
	["do1"] = "~e~faites /",-- newline
	["do2"] = " pour enlever la notification",-- newline

    
}