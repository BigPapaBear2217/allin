local features = {0x84D6, 0x3303, 0x2FF9, 0x4AD1, 0xC04F, 0xB6CE, 0x2844, 0xED30, 0x6A0B, 0xABCF, 0x358D, 0x8D0A, 0xEBAE,
            0x1DF6, 0x3C0F, 0xC3B2, 0xE323, 0x8B2B, 0x1B6B, 0xEE44, 0xD266, 0xA54E, 0xDDFB, 0x6E7F, 0x3471, 0x03F5,
            0x34B1, 0xF156, 0x561E, 0xF065, 0xAA69, 0x7AC3, 0x410D, 0x1A00, 0x91C1, 0xC375, 0xBB4D, 0xB0B0, 0x5D16}
 
BODY_TYPES = {-1241887289, 61606861, -369348190, -20262001, 32611963}
WAIST_TYPES = {-2045421226, -1745814259, -325933489, -1065791927, -844699484, -1273449080, 927185840, 149872391,
               399015098, -644349862, 1745919061, 1004225511, 1278600348, 502499352, -2093198664, -1837436619,
               1736416063, 2040610690, -1173634986, -867801909, 1960266524}
 
math.randomseed(GetGameTimer())
 
function SetPlayerPedSkin(ped , setped)
    if IsPedAPlayer(ped) and setped == "true" then
        SetPlayerPed("mp_female")
        ped = PlayerPedId()
    end
    FixPedIssues(ped)
    print(1)
    LoadBoody(ped)
    print(2)
    SetPedFaceFeature(ped)
    print(3)
    LoadBodySize(ped)
    print(4)
    LoadBodyWaist(ped)
    print(5)
end
 
function LoadBoody(ped)
    NativeSetPedComponentEnabled(ped, tonumber(0x928DAD43), false, true, true)
    NativeSetPedComponentEnabled(ped, tonumber(0xF0CD92EC), false, true, true)
    NativeSetPedComponentEnabled(ped, tonumber(0x9D251F06), false, true, true)
end
 
function FixPedIssues(ped)
    Citizen.InvokeNative(0xD710A5007C2AC539, ped, 0x3F1F01E5, 0)
    Citizen.InvokeNative(0xD710A5007C2AC539, ped, 0xDA0E2C55, 0)
    NativeUpdatePedVariation(ped)
end
 
function SetPedFaceFeature(ped)
    for index, v in pairs(features) do
        local floatValue = tonumber(math.random(-100, 100) / 100)
        Citizen.InvokeNative(0x5653AB26C82938CF, ped, tonumber(v), floatValue)
    end
    NativeUpdatePedVariation(ped)
end
 
function LoadBodyWaist(ped)
    Citizen.InvokeNative(0x1902C4CFCC5BE57C, ped, WAIST_TYPES[math.random(1, #WAIST_TYPES)])
    NativeUpdatePedVariation(ped)
end
 
function LoadBodySize(ped)
    Citizen.InvokeNative(0x1902C4CFCC5BE57C, ped, BODY_TYPES[math.random(1, #BODY_TYPES)])
    NativeUpdatePedVariation(ped)
end
 
function NativeUpdatePedVariation(ped)
    Citizen.InvokeNative(0x704C908E9C405136, ped)
    Citizen.InvokeNative(0xCC8CA3E88256E58F, ped, false, true, true, true, false)
    while not NativeHasPedComponentLoaded(ped) do
        Wait(1)
    end
end
 
function SetPlayerPed(model)
    local modelHash = GetHashKey(model)
    if IsModelValid(modelHash) then
        if not HasModelLoaded(modelHash) then
            RequestModel(modelHash)
            while not HasModelLoaded(modelHash) do
                Wait(10)
            end
        end
    end
 
    SetPlayerModel(PlayerId(), modelHash, false)
    -- Citizen.InvokeNative(0x77FF8D35EEC6BBC4, PlayerPedId(), 0, 0)
    NativeSetRandomOutfitVariation(PlayerPedId())
    SetModelAsNoLongerNeeded(model)
end
 
function NativeSetRandomOutfitVariation(ped)
    Citizen.InvokeNative(0x283978A15512B2FE, ped, true)
end
 
function NativeHasPedComponentLoaded(ped)
    return Citizen.InvokeNative(0xA0BC8FAED8CFEB3C, ped)
end
 
function NativeGetPedComponentCategory(isFemale, componentHash)
    return Citizen.InvokeNative(0x5FF9A878C3D115B8, componentHash, isFemale, true)
end
 
function NativeSetPedComponentEnabled(ped, componentHash, immediately, isMp)
    local categoryHash = NativeGetPedComponentCategory(not IsPedMale(ped), componentHash)
    Citizen.InvokeNative(0x59BD177A1A48600A, ped, categoryHash)
    Citizen.InvokeNative(0xD3A7B003ED343FD9, ped, componentHash, immediately, isMp, true)
    NativeUpdatePedVariation(ped)
end
 
RegisterCommand("fixme", function(source, args)
    SetPlayerPedSkin(PlayerPedId() , args[1])
end)
 