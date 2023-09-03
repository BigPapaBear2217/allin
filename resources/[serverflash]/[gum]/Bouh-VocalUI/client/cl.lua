local lvl = 1 -- Niveau de la zone
local show = false

--------------
--* Config *--
--------------

local key = 0x5966D52A -- [B]
local time = 500 -- temps d'apparition de la zone
local scale = { -- taille de la zone
    1.8,
    3.0,
    8.0,
    12.0
}
local couleur = {219, 106, 143, 190} -- couleur de la zone (LAISSE LE ROSE, C'EST JOLIE <3)

--------------
--* Script *--
--------------

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)

        if IsControlJustPressed(0, key) then

            -- apparition de la zone
            show = true
            Citizen.Wait(time)
            show = false
            -- actualisation de la taille de la zonne
            if lvl >= 4 then 
                lvl = 1 
            else
                lvl = lvl + 1
            end 

        end
     end
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)

        local coords = GetEntityCoords(PlayerPedId(),true,true) -- Prend la position du joueur.

        if show then 
            Citizen.InvokeNative(0x2A32FAA57B937173,0x94FDAE17,coords.x,coords.y ,coords.z - 1 ,0,0,0,0,0,0, scale[lvl], scale[lvl], 1.0,couleur[1],couleur[2],couleur[3],couleur[4],0, 0, 2, 0, 0, true, 0)
        end
     end
end)