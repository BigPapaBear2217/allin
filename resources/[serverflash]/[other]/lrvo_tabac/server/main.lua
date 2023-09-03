--@ Ciudad Farm JOB @NO EDIT @NO SALE
VorpInv = exports.vorp_inventory:vorp_inventoryApi()
local VorpCore = {}
TriggerEvent("getCore",function(core)
    VorpCore = core
end)



AddEventHandler('onResourceStart', function(resourceName)
    local _source = source    
    if GetCurrentResourceName() ~= resourceName then return end
    Citizen.Wait(10000)
    Citizen.CreateThread(function()                                                                                                                                                                                             
        local version = '2.0.5'  
        print('^4[LRVO tabac] ^2version:' ..version.. ' ^3[FOR VORP]^7')                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     if GetCurrentResourceName() ~= "lrvo_tabac" then print("^1=====================================") print("^1No renombre el Script") print("^1Sera parado si lo haces") print("^1Ponme mi nombre original: ^2lrvo_tabac^1") print("^1=====================================^0") end 
    end)
end)

RegisterNetEvent("lrvo_tabac:DVRAdd:Petrole")
AddEventHandler("lrvo_tabac:DVRAdd:Petrole", function()
    local _source = source
    VorpInv.addItem(_source, Config.item_petrol, Config.item_petrol_count)
end)

RegisterNetEvent("lrvo_tabac:addPetrole")
AddEventHandler("lrvo_tabac:addPetrole", function()
    local _source = source

    local count = VorpInv.getItemCount(_source, Config.item_petrol)
    if count >= Config.item_petrol_count then 
        VorpInv.subItem(_source, Config.item_petrol, Config.item_petrol_count)
        VorpInv.addItem(_source, Config.item_refined, Config.item_petrol_count)
    end
end)

RegisterNetEvent("lrvo_tabac:EmballagePetrole")
AddEventHandler("lrvo_tabac:EmballagePetrole", function()
    local _source = source
    local count = VorpInv.getItemCount(_source, Config.item_refined)

    if count >= Config.item_refined_count then 
        VorpInv.subItem(_source, Config.item_refined, Config.item_petrol_count)
        VorpInv.addItem(_source, Config.item_oilbarrel, Config.item_oilbarrel_count)
    end
end)

RegisterNetEvent("lrvo_tabac:SellPetrole")
AddEventHandler("lrvo_tabac:SellPetrole", function()
    local _source = source
    local count = VorpInv.getItemCount(_source, Config.item_oilbarrel)

    if count >= Config.item_oilbarrel_count then 
        VorpInv.subItem(_source, Config.item_oilbarrel, Config.item_oilbarrel_count)
        TriggerEvent("vorp:addMoney", _source, Config.MoneyType, Config.Price)
        TriggerClientEvent('vorp:Tip', _source, " + " ..Config.Price.. " $", 3000)
    end
end)

RegisterNetEvent("lrvo_tabac:DVRCheckpermissionjob")
AddEventHandler("lrvo_tabac:DVRCheckpermissionjob", function()
    local _source = source
    local User = VorpCore.getUser(_source) 
    local Character = User.getUsedCharacter     

    if Config.AutorizedJob == true then
        if Character.job == Config.JobName then
            TriggerClientEvent('lrvo_tabac:startinservice', _source)
        end
    else
        TriggerClientEvent('lrvo_tabac:startinservice', _source)
    end
end)