
local showHud = true









function GetCurentTownName()
    local pedCoords = GetEntityCoords(PlayerPedId())
    local town_hash = Citizen.InvokeNative(0x43AD8FC02B429D33, pedCoords, 1)
    if town_hash == GetHashKey("Annesburg") then
        return "~COLOR_GREEN~Annesburg"
    elseif town_hash == GetHashKey("Armadillo") then
        return "~COLOR_GREEN~Armadillo"
    elseif town_hash == GetHashKey("Blackwater") then
        return "~COLOR_GREEN~Blackwater"
    elseif town_hash == GetHashKey("BeechersHope") then
        return "~COLOR_GREEN~BeechersHope"
    elseif town_hash == GetHashKey("Braithwaite") then
        return "~COLOR_GREEN~Braithwaite"
    elseif town_hash == GetHashKey("Butcher") then
        return "~COLOR_GREEN~Butcher"
    elseif town_hash == GetHashKey("Caliga") then
        return "~COLOR_GREEN~Caliga"
    elseif town_hash == GetHashKey("cornwall") then
        return "~COLOR_GREEN~Cornwall"
    elseif town_hash == GetHashKey("Emerald") then
        return "~COLOR_GREEN~Emerald"
    elseif town_hash == GetHashKey("lagras") then
        return "~COLOR_GREEN~lagras"
    elseif town_hash == GetHashKey("Manzanita") then
        return "~COLOR_GREEN~Manzanita"
    elseif town_hash == GetHashKey("Rhodes") then
        return "~COLOR_GREEN~Rhodes"
    elseif town_hash == GetHashKey("Siska") then
        return "~COLOR_GREEN~Siska"
    elseif town_hash == GetHashKey("StDenis") then
        return "~COLOR_GREEN~Saint Denis"
    elseif town_hash == GetHashKey("Strawberry") then
        return "~COLOR_GREEN~Strawberry"
    elseif town_hash == GetHashKey("Tumbleweed") then
        return "~COLOR_GREEN~Tumbleweed"
    elseif town_hash == GetHashKey("valentine") then
        return "~COLOR_GREEN~Valentine"
    elseif town_hash == GetHashKey("VANHORN") then
        return "~COLOR_GREEN~Vanhorn"
    elseif town_hash == GetHashKey("Wallace") then
        return "~COLOR_GREEN~Wallace"
    elseif town_hash == GetHashKey("wapiti") then
        return "~COLOR_GREEN~Wapiti"
    elseif town_hash == GetHashKey("AguasdulcesFarm") then
        return "~COLOR_GREEN~Aguasdulces Farm"
    elseif town_hash == GetHashKey("AguasdulcesRuins") then
        return "~COLOR_GREEN~Aguasdulces Ruins"
    elseif town_hash == GetHashKey("AguasdulcesVilla") then
        return "~COLOR_GREEN~Aguasdulces Villa"
    elseif town_hash == GetHashKey("Manicato") then
        return "~COLOR_GREEN~Manicato"
    else
        return _U('fuera_ciudad')
    end
end



function DrawTxt(str, x, y, w, h, enableShadow, col1, col2, col3, a, centre)
    local str = CreateVarString(10, "LITERAL_STRING", str)
    --Citizen.InvokeNative(0x66E0276CC5F6B9DA, 2)
    SetTextScale(w, h)
    SetTextColor(math.floor(col1), math.floor(col2), math.floor(col3), math.floor(a))
	SetTextCentre(centre)
    if enableShadow then SetTextDropshadow(1, 0, 0, 0, 255) end
	Citizen.InvokeNative(0xADA9255D, 1)
    DisplayText(str, x, y)
end

function CreateVarString(p0, p1, variadic)
    return Citizen.InvokeNative(0xFA925AC00EB830B9, p0, p1, variadic, Citizen.ResultAsLong())
end

RegisterCommand('hud', function(source, args, rawCommand)
--    if showHud then
--        showHud = false
--    else
--        showHud = true
--    end
    showHud = not showHud
end)
