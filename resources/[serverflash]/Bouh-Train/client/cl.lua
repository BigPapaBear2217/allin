--| Le script est exécuté côté client.. lors de la déco de l'hôte le train vadrouille sans s'arrêter :O
--| AddEventHandler('playerDropped', function(reason) (ne fonctionne pas)

--| Lors du spawn du train le pnj prend son envole (despawn) et fait s'arrêter le train
--| Pour resoudre le probleme être prêt du lieu de spawn

--* Déclaration des variables
local trainspawned, CURRENT_TRAIN, firstSpawn = false, nil, true

--------------
--* Script *--
--------------
SetMinimapHideFow(true) 

--| Apparition du train
startTrain = function()

    if trainspawned == true then return print('^1[Bouh-Debug - Train]^7 (Code 2)') end --* Vérifie si un train est déjà sur la carte
    DeleteAllTrains() --* Suppresion de tout les trains de la carte
    SetRandomTrains(false) --* Désactive les trains aléatoires

    --* Obtention du model du train 
    local trainWagons = N_0x635423d55ca84fc8(987516329)
    for wagonIndex = 0, trainWagons - 1 do
        local trainWagonModel = N_0x8df5f6a19f99f0d5(987516329, wagonIndex)
        while not HasModelLoaded(trainWagonModel) do
            Citizen.InvokeNative(0xFA28FE3A6246FC30,trainWagonModel,1)
            Citizen.Wait(100)
        end
    end

    --* Apparition du train
	local train = N_0xc239dbd9a57d2a71(987516329, 48.70, 16.49, 102.56, 0, 0, 1, 1) --* Fait apparaitre le train - https://vespura.com/doc/natives/?_0xC239DBD9A57D2A71
    Citizen.InvokeNative(0xBA8818212633500A, train, 0, 1) --* Rendre le train impossible à la conduite
    SetModelAsNoLongerNeeded(train) --* Décharge le model du train
    SetEntityAsMissionEntity(train, true, true) --* Rend l'entitée persistante - https://vespura.com/doc/natives/?_0xDC19C288082E586E
    trainspawned = true --* Marque le train comme apparu
    CURRENT_TRAIN = train
    
    --* Apparition du blips
    local bliphash = -399496385
    local blip = Citizen.InvokeNative(0x23f74c2fda6e7c61, bliphash, train) -- blip for train
    SetBlipScale(blip, 1.5)

    print('^2[Bouh-Debug - Train]^7 (Code 1)')
    trainRoute()

end

trainRoute = function()
    if trainspawned == false then return end --* Vérifie si un train est bien spawn

    while trainspawned == true do --this is the loop for the train to stop at stations
        for i = 1, #stops do
            local coords = GetEntityCoords(CURRENT_TRAIN)
            local trainV = vector3(coords.x, coords.y, coords.z)
            local distance = #(vector3(stops[i]["x"], stops[i]["y"], stops[i]["z"]) - trainV)
    
            --speed--
            local stopspeed = 0.0
            local cruisespeed = 15.0
            local fullspeed = 45.0
            if distance < stops[i]["dst"] then
                SetTrainCruiseSpeed(CURRENT_TRAIN, cruisespeed)
                Wait(200)
                if distance < stops[i]["dst2"] then
                    SetTrainCruiseSpeed(CURRENT_TRAIN, stopspeed)
                    Wait(stops[i]["time"])
                    SetTrainCruiseSpeed(CURRENT_TRAIN, cruisespeed)
                    Wait(1000)
                end
            elseif distance > stops[i]["dst"] then
                SetTrainCruiseSpeed(CURRENT_TRAIN, fullspeed)
                Wait(25)
            end
        end
    end

end

--| Supprime le train de la carte
stopTrain = function()
    if trainspawned == false then return print('^1[Bouh-Debug - Train]^7 (Code 4)') end --* Vérifie si un train est déjà sur la carte

    DeleteEntity(CURRENT_TRAIN) 
    trainspawned, CURRENT_TRAIN = false, nil
end

--------------
--* Ensure *--
--------------

AddEventHandler('playerSpawned', function()
    if firstSpawn then
        LoadBlips()
    end
end)

AddEventHandler("onResourceStop", function()
    stopTrain()
end)

AddEventHandler("onResourceStart", function()
    startTrain()
end)

