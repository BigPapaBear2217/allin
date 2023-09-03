local blips = nil

function LoadBlips()

    if blips == true then return end
        
    for k,v in pairs(stops)do
        --* Config du blips
        local bliphash = 1258184551
        local blip = Citizen.InvokeNative(0x554D9D53F696D002,1664425300, v.x, v.y, v.z)
        SetBlipSprite(blip,bliphash,true)
        SetBlipScale(blip,0.5)
        --* Apparition du blips
        Citizen.InvokeNative(0x9CB1A1623062F402, blip, 'Gare')
    end

    blips = true
    print('^2[Bouh-Debug - Train]^7 (Code 5)')

end

