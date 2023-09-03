--@ DVR Petrole JOB @NO EDIT @NO SALE
local jobs = false
local RecoltGroup = GetRandomIntInRange(0, 0xffffff)
local TraitementGroup = GetRandomIntInRange(0, 0xffffff)
local FabricationGroup = GetRandomIntInRange(0, 0xffffff)
local SellGroup = GetRandomIntInRange(0, 0xffffff)
local RecoltPetrole
local TraitementPetrole
local FabricationPetrole
local SellPetrole
local dict = "amb_work@world_human_repair@high@oilcan@male_b@idle_a"

RegisterNetEvent('lrvo_tabac:startTimer')
AddEventHandler('lrvo_tabac:startTimer', function()
	local timer = 30

	Citizen.CreateThread(function()
		while timer > 0 and Petrole do
			Citizen.Wait(1000)

			if timer > 0 then
				timer = timer - 1
			end
		end
	end)

	Citizen.CreateThread(function()
		while Petrole do
			Citizen.Wait(5)
            if Config.DrawTxt then
                DrawTxt("Séchage en cours " ..timer.. ' secondes', 0.48, 0.86, 0.3, 0.3, true, 255, 255, 255, 255, true)
            else
                TriggerEvent('vorp:TipBottom', "~e~Séchage en cours " ..timer.. ' secondes', 3000)
            end
		end
	end)
end)

RegisterNetEvent('lrvo_tabac:startTimerenballage')
AddEventHandler('lrvo_tabac:startTimerenballage', function()
	local timer = 10

	Citizen.CreateThread(function()
		while timer > 0 and PetroleEmballage do
			Citizen.Wait(1000)

			if timer > 0 then
				timer = timer - 1
			end
		end
	end)

	Citizen.CreateThread(function()
		while PetroleEmballage do
			Citizen.Wait(5)
            if Config.DrawTxt then
                DrawTxt("Remplissage de sac " ..timer.. ' secondes', 0.48, 0.86, 0.3, 0.3, true, 255, 255, 255, 255, true)
            else
                TriggerEvent('vorp:TipBottom', "~e~Remplissage de sac " ..timer.. ' secondes', 3000)
            end
		end
	end)
end)


local function RecoltPetrolePrompt()
    Citizen.CreateThread(function()
        local str ="Récolte de tabac"
        local wait = 0
        RecoltPetrole = Citizen.InvokeNative(0x04F97DE45A519419)
        PromptSetControlAction(RecoltPetrole, 0xDEB34313)
        str = CreateVarString(10, 'LITERAL_STRING', str)
        PromptSetText(RecoltPetrole, str)
        PromptSetEnabled(RecoltPetrole, true)
        PromptSetVisible(RecoltPetrole, true)
        PromptSetHoldMode(RecoltPetrole, true)
        PromptSetGroup(RecoltPetrole, RecoltGroup)
        PromptRegisterEnd(RecoltPetrole)
    end)
end

local function RecoltPetroleTraitementPrompt()
    Citizen.CreateThread(function()
        local str ="Sécher le tabac"
        local wait = 0
        TraitementPetrole = Citizen.InvokeNative(0x04F97DE45A519419)
        PromptSetControlAction(TraitementPetrole, 0xDEB34313)
        str = CreateVarString(10, 'LITERAL_STRING', str)
        PromptSetText(TraitementPetrole, str)
        PromptSetEnabled(TraitementPetrole, true)
        PromptSetVisible(TraitementPetrole, true)
        PromptSetHoldMode(TraitementPetrole, true)
        PromptSetGroup(TraitementPetrole, TraitementGroup)
        PromptRegisterEnd(TraitementPetrole)
    end)
end

local function RecoltPetroleFabricPrompt()
    Citizen.CreateThread(function()
        local str ="Mettre le tabac dans des sacs"
        local wait = 0
        FabricationPetrole = Citizen.InvokeNative(0x04F97DE45A519419)
        PromptSetControlAction(FabricationPetrole, 0xDEB34313)
        str = CreateVarString(10, 'LITERAL_STRING', str)
        PromptSetText(FabricationPetrole, str)
        PromptSetEnabled(FabricationPetrole, true)
        PromptSetVisible(FabricationPetrole, true)
        PromptSetHoldMode(FabricationPetrole, true)
        PromptSetGroup(FabricationPetrole, FabricationGroup)
        PromptRegisterEnd(FabricationPetrole)
    end)
end

local function RecoltPetroleSellPrompt()
    Citizen.CreateThread(function()
        local str ="Vendre du tabac en sac"
        local wait = 0
        SellPetrole = Citizen.InvokeNative(0x04F97DE45A519419)
        PromptSetControlAction(SellPetrole, 0xDEB34313)
        str = CreateVarString(10, 'LITERAL_STRING', str)
        PromptSetText(SellPetrole, str)
        PromptSetEnabled(SellPetrole, true)
        PromptSetVisible(SellPetrole, true)
        PromptSetHoldMode(SellPetrole, true)
        PromptSetGroup(SellPetrole, SellGroup)
        PromptRegisterEnd(SellPetrole)
    end)
end

function DrawTxt(str, x, y, w, h, enableShadow, col1, col2, col3, a, centre)
    local str = CreateVarString(10, "LITERAL_STRING", str)
    SetTextScale(w, h)
    SetTextColor(math.floor(col1), math.floor(col2), math.floor(col3), math.floor(a))
	SetTextCentre(centre)
    if enableShadow then SetTextDropshadow(1, 0, 0, 0, 255) end
	Citizen.InvokeNative(0xADA9255D, 1);
    DisplayText(str, x, y)
end

Citizen.CreateThread(function()
    RecoltPetrolePrompt()
    RecoltPetroleTraitementPrompt()
    RecoltPetroleFabricPrompt()
    RecoltPetroleSellPrompt()
    local blipsPetrole = N_0x554d9d53f696d002(1664425300, 1871.7, -1300.7, 43.1)
    SetBlipSprite(blipsPetrole, 2350572198, 1)
    SetBlipScale(blipsPetrole, 10.0)
    Citizen.InvokeNative(0x9CB1A1623062F402, blipsPetrole, '~t3~Ferme de tabac')
end)

function Distance(coords, coords2)
	return #(coords-coords2)
end

Citizen.CreateThread(function()
    service = true
    while service do 
        Citizen.Wait(8)
        local Inservice = vector3(1871.7, -1300.7, 43.1)
        if Distance(GetEntityCoords(PlayerPedId()), Inservice) <= 1.0 then
            TriggerEvent('vorp:TipBottom', "~t1~[Tabac] ~e~FLECHE DROITE ~q~Prenez votre service | ou arrêter de travailler", 1000)
            Citizen.InvokeNative(0x2A32FAA57B937173, 0x94FDAE17, Inservice.x, Inservice.y, Inservice.z - 1.0, 0, 0, 0, 0, 0, 0, 0.8, 0.8, 0.2, 255, 255, 255, 50, 0, 0, 1, 0, 0, 0, 0)
            Citizen.InvokeNative(0xE9990552DEC71600)
            if IsControlJustPressed(0, 0xDEB34313) then
                TriggerServerEvent('lrvo_tabac:DVRCheckpermissionjob')
            end
        end
    end
end)

RegisterNetEvent('lrvo_tabac:startinservice')
AddEventHandler('lrvo_tabac:startinservice', function()
  
    local car_name = "HUNTERCART01"
    local carHash  = GetHashKey(car_name)
    local ped      = PlayerPedId()

    RequestModel(carHash)

  --  while not HasModelLoaded(carHash) do
 --       Citizen.Wait(8)
  --  end

    startPetrolejob = not startPetrolejob
    if startPetrolejob then
        TriggerEvent('vorp:Tip', "~t6~Employé tabac. Allez au point de récolte (1)", 3000)
    --    car = CreateVehicle(carHash, 983.63, -1996.89, 46.95, 259.4, true, false)
   --     SetVehicleOnGroundProperly(car)
    --    SetModelAsNoLongerNeeded(carHash)
        Zonerecolte = N_0x554d9d53f696d002(1664425300, 1921.4, -1243.0, 42.2)
        SetBlipSprite(Zonerecolte, 1257411558, 1)
        SetBlipScale(Zonerecolte, 0.2)
        Citizen.InvokeNative(0x9CB1A1623062F402, Zonerecolte, 'Zone de collecte (Tabac)')
        Zonetraitement = N_0x554d9d53f696d002(1664425300, 1832.4, -1279.0, 43.3)
        SetBlipSprite(Zonetraitement, 994636947, 1)
        SetBlipScale(Zonetraitement, 0.2)
        Citizen.InvokeNative(0x9CB1A1623062F402, Zonetraitement, 'Zone de séchage (Tabac)')
        Zonefabrication = N_0x554d9d53f696d002(1664425300, 1852.3, -1248.6, 43.1)
        SetBlipSprite(Zonefabrication, 228563269, 1)
        SetBlipScale(Zonefabrication, 0.2)
        Citizen.InvokeNative(0x9CB1A1623062F402, Zonefabrication, 'Zone de mise en sac (Tabac)')
        --Zonevente = N_0x554d9d53f696d002(1664425300, -358.62, 794.74, 116.25)
        --SetBlipSprite(Zonevente, 1675187701, 1)
        --SetBlipScale(Zonevente, 0.2)
        Citizen.InvokeNative(0x9CB1A1623062F402, Zonevente, 'surface de vente (Tabac)')
        TriggerEvent('lrvo_tabac:startJobPetrole')
        TriggerEvent('lrvo_tabac:startTraitement')
        TriggerEvent('lrvo_tabac:startJobPetroleFabrication')
        TriggerEvent('lrvo_tabac:startJobPetrolesell')
    else
        DeleteVehicle(car)
        RemoveBlip(Zonerecolte)
        RemoveBlip(Zonetraitement)
        RemoveBlip(Zonefabrication)
        RemoveBlip(Zonevente)
        Zonerecolte = nil
        Zonetraitement = nil
        Zonefabrication = nil 
        Zonevente = nil
        jobs = false
        jobs2 = false
        jobs3 = false
        jobs4 = false
 
        TriggerEvent('vorp:Tip', "~t6~vous n'êtes plus employé ici", 3000)
    end
end)

RegisterNetEvent("lrvo_tabac:startJobPetrole")
AddEventHandler("lrvo_tabac:startJobPetrole", function()
    jobs = true
    while jobs do 
        Citizen.Wait(8)
        if Config.DrawTxt then
            DrawTxt("Employé tabac", 0.50, 0.0, 0.3, 0.3, true, 255, 255, 255, 255, true)
        else
            TriggerEvent('vorp:Tip', "~t6~Employé tabac", 3000)
        end
        local coords1 = vector3(1921.4, -1243.0, 42.2)
        if Distance(GetEntityCoords(PlayerPedId()), coords1) <= 8.3 then
          --  local vehicle = GetVehiclePedIsIn(PlayerPedId(), false)
          --  if IsPedSittingInVehicle(PlayerPedId(), vehicle, true) then
                local Petrole = CreateVarString(10, 'LITERAL_STRING',"Tabac")
                PromptSetActiveGroupThisFrame(RecoltGroup, Petrole)
                if PromptHasHoldModeCompleted(RecoltPetrole) then
                    if Config.Freeze then
                        FreezeEntityPosition(vehicle, true)
                    end
                    TaskStartScenarioInPlace(PlayerPedId(), GetHashKey('WORLD_HUMAN_CROUCH_INSPECT'), 12000, true, false, false, false)
                    TriggerEvent("vorp:TipBottom", "Cueillette de tabac...", 12000)
                    Wait(10000)
                    ClearPedTasksImmediately(PlayerPedId())
	                Wait(1000)
                    TaskStartScenarioInPlace(PlayerPedId(), GetHashKey('WORLD_HUMAN_FARMER_RAKE'), 18000, true, false, false, false)
                    TriggerEvent("vorp:TipBottom", "Dégage le terrain...", 9000)
                    Wait(10000)
                    ClearPedTasksImmediately(PlayerPedId())
                    TriggerServerEvent('lrvo_tabac:DVRAdd:Petrole')
                    --if Config.Freeze then
                    --    FreezeEntityPosition(vehicle, false)
                    --end
                    Citizen.Wait(100)
					local animation2 = "mech_inventory@binoculars"
        local animation = "mech_inventory@item@fallbacks@tonic_potent@offhand"
    local animation2 = "mech_inventory@binoculars"
    local propName = "crp_tobaccoplant_ac_sim"
    local playerPed = PlayerPedId()
    local x, y, z = table.unpack(GetEntityCoords(playerPed))
    local boneIndex = GetEntityBoneIndexByName(playerPed, "SKEL_R_Hand")
					RequestAnimDict(animation2) 
    while (not HasAnimDictLoaded(animation2)) do 
        Citizen.Wait(100)
    end
    TaskPlayAnim(playerPed, animation, "use_quick", 8.0, -1.0, 120000, 31, 0, true, 0, false, 0, false)
    Citizen.Wait(1000)
    bombProp = CreateObject(GetHashKey(propName), x, y, z,  true,  true, true)
    AttachEntityToEntity(bombProp, playerPed, boneIndex, 0.12, 0.02, -0.15, -60.0, -20.00, 0.00, true, true, false, true, 1, true)
    TaskPlayAnim(playerPed, animation2, "hold", 8.0, -1.0, 120000, 31, 0, true, 0, false, 0, false)
	TriggerEvent("vorp:TipBottom", "Allez dans la zone de séchage (2).", 5000)
                end
            else
                --TriggerEvent("vorp:TipBottom", "Ve a Procesar el Maiz..", 10000)
            end
        end
   -- end
end)

RegisterNetEvent("lrvo_tabac:startTraitement")
AddEventHandler("lrvo_tabac:startTraitement", function()
    RequestAnimDict(dict)
    while not HasAnimDictLoaded(dict) do
        Citizen.Wait(10)
    end

    jobs2 = true
    while jobs2 do 
        Citizen.Wait(8)
        if Config.DrawTxt then
            DrawTxt("Employé tabac", 0.50, 0.0, 0.3, 0.3, true, 255, 255, 255, 255, true)
        else
            TriggerEvent('vorp:Tip', "~t6~Employé tabac", 3000)
        end
        local coords2 = vector3(1832.4, -1279.0, 43.3)
        if Distance(GetEntityCoords(PlayerPedId()), coords2) <= 2.5 then
            local traitmeent = CreateVarString(10, 'LITERAL_STRING',"Tabac")
            PromptSetActiveGroupThisFrame(TraitementGroup, traitmeent)
            if PromptHasHoldModeCompleted(TraitementPetrole) then
                TaskPlayAnim(PlayerPedId(), dict, "idle_a", 1.0, 8.0, -1, 1, 0, false, false, false)
                Wait(5000)
				if Config.Freeze then
                    FreezeEntityPosition(PlayerPedId(), true)
                end
				DeleteEntity(bombProp)
                TriggerEvent('lrvo_tabac:startTimer')
                Petrole = true
                Wait(30000)
                Petrole = false
                TriggerServerEvent('lrvo_tabac:addPetrole')
                if Config.Freeze then
                    FreezeEntityPosition(PlayerPedId(), false)
                end
				local animation2 = "mech_inventory@binoculars"
                local animation = "mech_inventory@item@fallbacks@tonic_potent@offhand"
                local animation2 = "mech_inventory@binoculars"
                local propName = "p_cs_sackcorn01x"
                local playerPed = PlayerPedId()
                local x, y, z = table.unpack(GetEntityCoords(playerPed))
                local boneIndex = GetEntityBoneIndexByName(playerPed, "SKEL_R_Hand")
	            				RequestAnimDict(animation2) 
                while (not HasAnimDictLoaded(animation2)) do 
                    Citizen.Wait(100)
                end
                TaskPlayAnim(playerPed, animation, "use_quick", 8.0, -1.0, 120000, 31, 0, true, 0, false, 0, false)
                Citizen.Wait(1000)
                bombProp = CreateObject(GetHashKey(propName), x, y, z,  true,  true, true)
                AttachEntityToEntity(bombProp, playerPed, boneIndex, 0.12, 0.022, -0.12, -220.0, -140.00, 0.00, true, true, false, true, 1, true)
                TaskPlayAnim(playerPed, animation2, "hold", 8.0, -1.0, 120000, 31, 0, true, 0, false, 0, false)
                ClearPedTasks(PlayerPedId())
				TriggerEvent("vorp:TipBottom", "Allez déposer les feuilles de tabac sèche (3)", 5000)
            end
        end
    end
end)

RegisterNetEvent("lrvo_tabac:startJobPetroleFabrication")
AddEventHandler("lrvo_tabac:startJobPetroleFabrication", function()
    RequestAnimDict(dict)
    while not HasAnimDictLoaded(dict) do
        Citizen.Wait(10)
    end

    jobs3 = true
    while jobs3 do 
        Citizen.Wait(8)
        if Config.DrawTxt then
            DrawTxt("Employé tabac", 0.50, 0.0, 0.3, 0.3, true, 255, 255, 255, 255, true)
        else
            TriggerEvent('vorp:Tip', "~t6~Employé tabac", 3000)
        end
        local coords3 = vector3(1852.3, -1248.6, 43.1)
        if Distance(GetEntityCoords(PlayerPedId()), coords3) <= 1.3 then
            local fabric = CreateVarString(10, 'LITERAL_STRING',"Tabac")
            PromptSetActiveGroupThisFrame(FabricationGroup, fabric)
            if PromptHasHoldModeCompleted(FabricationPetrole) then
                if Config.Freeze then
				TaskStartScenarioInPlace(PlayerPedId(), GetHashKey('PROP_HUMAN_SACK_STORAGE_IN'), 7000, true, false, false, false)
                FreezeEntityPosition(PlayerPedId(), true)
                end
				DeleteEntity(bombProp)
                TriggerEvent('lrvo_tabac:startTimerenballage')
                PetroleEmballage = true
                Wait(10000)
                TriggerServerEvent('lrvo_tabac:EmballagePetrole')
                PetroleEmballage = false
                if Config.Freeze then
                    FreezeEntityPosition(PlayerPedId(), false)
                end
                ClearPedTasks(PlayerPedId())
				TriggerEvent("vorp:TipBottom", "Vous pouvez aller vendre les sacs de tabac à la boutique fermier de ~t6~[VALENTINE]", 10000)
            end
        end
    end
end)

RegisterNetEvent("lrvo_tabac:startJobPetrolesell")
AddEventHandler("lrvo_tabac:startJobPetrolesell", function()
    jobs4 = false
    while jobs4 do 
        Citizen.Wait(8)
        if Config.DrawTxt then
            DrawTxt("Empleado Ganadero ", 0.50, 0.0, 0.3, 0.3, true, 255, 255, 255, 255, true)
        else
            TriggerEvent('vorp:Tip', "~t6~Todavía Empleado Ganadero", 3000)
        end
        local coords4 = vector3(-358.62, 794.74, 116.25)
        if Distance(GetEntityCoords(PlayerPedId()), coords4) <= 1.3 then
           -- local vehicle = GetVehiclePedIsIn(PlayerPedId(), false)
          --  if IsPedSittingInVehicle(PlayerPedId(), vehicle, true) then
                local sell = CreateVarString(10, 'LITERAL_STRING',"Sac de Tabac")
				--TriggerEvent('vorp:Tip', "~t6~Nesesitas Maiz", 1000)
                PromptSetActiveGroupThisFrame(SellGroup, sell)
                if PromptHasHoldModeCompleted(SellPetrole) then
                    TriggerServerEvent('lrvo_tabac:SellPetrole')
                end
            else
              --  TriggerEvent('vorp:Tip', "~t6~Para abandonar el vehiculos Sal de Servicio!", 3000)
            end
        end
   -- end
end)

AddEventHandler('onResourceStop', function(resource)
	if resource == GetCurrentResourceName() then    
        DeleteVehicle(car) 
        RemoveBlip(Zonerecolte)
        RemoveBlip(Zonetraitement)
        RemoveBlip(Zonefabrication)
        RemoveBlip(Zonevente)
        Zonerecolte = nil
        Zonetraitement = nil
        Zonefabrication = nil 
        Zonevente = nil
        jobs = false
        jobs2 = false
        jobs3 = false
        jobs4 = false
    end
end)

RegisterCommand('debugp', function()
    debug.start = not debug.start
    if Config.Debug then 
        if debug.start then
            TriggerEvent('lrvo_tabac:startJobPetrole')
            TriggerEvent('lrvo_tabac:startTraitement')
            TriggerEvent('lrvo_tabac:startJobPetroleFabrication')
            TriggerEvent('lrvo_tabac:startJobPetrolesell')
        else
            DeleteVehicle(car)
            RemoveBlip(Zonerecolte)
            RemoveBlip(Zonetraitement)
            RemoveBlip(Zonefabrication)
            RemoveBlip(Zonevente)
            Zonerecolte = nil
            Zonetraitement = nil
            Zonefabrication = nil 
            Zonevente = nil
            Petrole = false
            jobs = false
            jobs2 = false
            jobs3 = false
            jobs4 = false
        end
    end
end)