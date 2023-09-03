local VorpCore = {}

TriggerEvent("getCore",function(core)
    VorpCore = core
end)

VorpInv = exports.vorp_inventory:vorp_inventoryApi()

RegisterServerEvent('Bounty_Annesburg:AddSomeMoney')
AddEventHandler('Bounty_Annesburg:AddSomeMoney', function()
    local _source = source
    local price = Config.Price
    local xp = Config.Xp
    local Character = VorpCore.getUser(_source).getUsedCharacter
    Character.addCurrency(0, price)
    Character.addXp(xp)
    VorpInv.addItem(source, "package", 2)
end)
