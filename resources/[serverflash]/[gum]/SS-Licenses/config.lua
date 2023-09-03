Config = {
    
Align = "right",
PriceCopy = 5,
UseAnimProp = true,
SignText = "West Frontier",
ServerYear = 1890,
    
Licenses = {
["mining"] = {
    Name = "Mining License",
	Price = 8, -- PRICE FOR THIS LICENSE EVERY DAY
    Item = "salt",
    Jobs = {"police"},
},
        
["lumberjack"] = {
    Name = "Forest License",
	Price = 5, -- PRICE FOR THIS LICENSE EVERY DAY
    Item = "forestlicense",
    Jobs = {},
},
        
["hunter"] = {
	Name = "Hunter License",
	Price = 10, -- PRICE FOR THIS LICENSE EVERY DAY
    Item = "hunterlicense",
    Jobs = {},
},
        
["horsetrainer"] = {
	Name = "Horse Trainer",
	Price = 50, -- PRICE FOR THIS LICENSE EVERY DAY
    Item = "horsetrainerlicense",
    Jobs = {},
},
        
["bountyhunter"] = {
	Name = "Bountyhunter License",
	Price = 50, -- PRICE FOR THIS LICENSE  
    Item = "bountylicense",
    Jobs = {},
},
        
["gunsmith"] = {
	Name = "GunSmith License",
	Price = 25, -- PRICE FOR THIS LICENSE  
    Item = "gunsmithlicense",
    Jobs = {},
},

},
    
Texts = {
["reg_license"] = "Register New License",
["desc_reg_license"] = "Register New License",
["renewlicense"] = "Renew Licenses",
["desc_renewlicense"] = "Renew Licenses",
["ask_licensecopy"] = "Request New Copy",
["desc_ask_licensecopy"] = "Ask copy",
        
["license_info"] = "info",
["buy_days"] = "How many days",
["wrong_input"] = "You insert invalid information, please try again !",
        
["license_updated"] = "You renew a license for",
["license_registered"] = "You registered a license for ",
["for"] = "for",
["days"] = "days",
["and_payed"] = "and payed",
["not_allowed"] = "You are not allowed to get this type of license !",
["not_have"] = "You don't have this type of license registered to ask a copy !",
["get_copy"] = "You get a new copy for this license ! ",
["nobody_around"] = "There are nobody around !",
["no_money"] = "You don't have enought money !",
["manage_menu"] = "MANAGE LICENSES",
["manage_menu_desc"] = "Manage Licenses",
["buy_menu"] = "BUY LICENSES",
["buy_menu_desc"] = "Buy Licenses",
["copy_menu"] = "COPY LICENSES",
["copy_menu_desc"] = "Copy Licenses",
},
}

function NOTIFY(text) --SET YOUR NOTIFYCATIONS
TriggerEvent("vorp:TipBottom", text, 5000)       
end  