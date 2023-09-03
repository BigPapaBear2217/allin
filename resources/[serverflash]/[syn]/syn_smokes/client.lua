AddEventHandler("onResourceStop",function(resourceName)
    if resourceName == GetCurrentResourceName() then
        if hightypex ~= nil then 
            Citizen.InvokeNative(0x516C6ABD18322B63, PlayerPedId(), false)
            Citizen.InvokeNative(0x95D2D383D5396B8A, PlayerPedId(), false)
            if Citizen.InvokeNative(0x4A123E85D7C4CA0B,hightypex) then 
	    		Citizen.InvokeNative(0xB4FD7446BAB2F394,hightypex)
	    	end
        end
        PromptSetEnabled(PropPrompt, false)
        PromptSetVisible(PropPrompt, false)
        PromptSetEnabled(UsePrompt, false)
        PromptSetVisible(UsePrompt, false)
        PromptSetEnabled(ChangeStance, false)
        PromptSetVisible(ChangeStance, false)
    end
end)
function FPrompt(text, button, hold)
    Citizen.CreateThread(function()
        proppromptdisplayed=false
        PropPrompt=nil
        local str = text or "Put Away"
        local buttonhash = button or 0x3B24C470
        local holdbutton = hold or false
        PropPrompt = PromptRegisterBegin()
        PromptSetControlAction(PropPrompt, buttonhash)
        str = CreateVarString(10, 'LITERAL_STRING', str)
        PromptSetText(PropPrompt, str)
        PromptSetEnabled(PropPrompt, false)
        PromptSetVisible(PropPrompt, false)
        PromptSetHoldMode(PropPrompt, holdbutton)
        PromptRegisterEnd(PropPrompt)
    end)
end

function Anim(actor, dict, body, duration, flags, introtiming, exittiming)
    Citizen.CreateThread(function()
        RequestAnimDict(dict)
        local dur = duration or -1
        local flag = flags or 1
        local intro = tonumber(introtiming) or 1.0
        local exit = tonumber(exittiming) or 1.0
        timeout = 5
        while (not HasAnimDictLoaded(dict) and timeout>0) do
            timeout = timeout-1
            if timeout == 0 then 
                print("Animation Failed to Load")
            end
            Citizen.Wait(300)
        end
        TaskPlayAnim(actor, dict, body, intro, exit, dur, flag --[[1 for repeat--]], 1, false, false, false, 0, true)
        end)
    end
    
    function StopAnim(dict, body)
    Citizen.CreateThread(function()
        StopAnimTask(PlayerPedId(), dict, body, 1.0)
    end)
end

function LMPrompt(text, button, hold)
    Citizen.CreateThread(function()
        UsePrompt=nil
        local str = text or "Use"
        local buttonhash = button or 0x07B8BEAF
        local holdbutton = hold or false
        UsePrompt = PromptRegisterBegin()
        PromptSetControlAction(UsePrompt, buttonhash)
        str = CreateVarString(10, 'LITERAL_STRING', str)
        PromptSetText(UsePrompt, str)
        PromptSetEnabled(UsePrompt, false)
        PromptSetVisible(UsePrompt, false)
        PromptSetHoldMode(UsePrompt, holdbutton)
        PromptRegisterEnd(UsePrompt)
    end)
end

function EPrompt(text, button, hold)
    Citizen.CreateThread(function()
        ChangeStance=nil
        local str = text or "Use"
        local buttonhash = button or 0xD51B784F
        local holdbutton = hold or false
        ChangeStance = PromptRegisterBegin()
        PromptSetControlAction(ChangeStance, buttonhash)
        str = CreateVarString(10, 'LITERAL_STRING', str)
        PromptSetText(ChangeStance, str)
        PromptSetEnabled(ChangeStance, false)
        PromptSetVisible(ChangeStance, false)
        PromptSetHoldMode(ChangeStance, holdbutton)
        PromptRegisterEnd(ChangeStance)
    end)
end



local hightypex
RegisterNetEvent('syn_smoke:gethigh')
AddEventHandler('syn_smoke:gethigh', function(hightype,highduration) 
    Wait(5000)
    hightypex = hightype
    local drunkamount = 0
    local drunkscreen = 0
    local playerPed = PlayerPedId()
     drunkamount = drunkamount + 200.0
    Citizen.InvokeNative(0xF6A7C08DF2E28B28, playerPed, 0, drunkamount)
    Citizen.InvokeNative(0xF6A7C08DF2E28B28, playerPed, 1, drunkamount)
    Citizen.InvokeNative(0x516C6ABD18322B63, playerPed, true)
    Citizen.InvokeNative(0x95D2D383D5396B8A, playerPed, true) 
    drunkscreen = drunkscreen + 10.0
    if drunkscreen > 10.0 then
        Citizen.InvokeNative(0x516C6ABD18322B63, playerPed, false)
        Citizen.InvokeNative(0x95D2D383D5396B8A, playerPed, false)
        drunkscreen = 0.0
        drunkamount = 0.0
        ClearTimecycleModifier()
        --Citizen.InvokeNative(0x406CCF555B04FAD3 , PlayerPedId(), 1, 0.0) drunk walk
        if Citizen.InvokeNative(0x4A123E85D7C4CA0B,hightype) then 
            Citizen.InvokeNative(0xB4FD7446BAB2F394,hightype)
        end
        --ApplyDamageToPed(playerPed, 5000, true, true, true, true)
    elseif drunkscreen >= 2.0 then
        ClearTimecycleModifier()
        Citizen.InvokeNative(0x4102732DF6B4005F, hightype, 0, true)
       -- Citizen.InvokeNative(0x406CCF555B04FAD3, PlayerPedId(), 1, 0.95)
    else
        Citizen.InvokeNative(0xFA08722A5EA82DA7, hightype)
        Citizen.InvokeNative(0xFDB74C9CC54C3F37, drunkscreen)
    end
    Wait(highduration)
    Citizen.InvokeNative(0x516C6ABD18322B63, playerPed, false)
    Citizen.InvokeNative(0x95D2D383D5396B8A, playerPed, false)
    drunkscreen = drunkscreen - 10.0
    drunkamount = drunkamount - 200.0
    if drunkscreen >= 2.0 then
        ClearTimecycleModifier()
        Citizen.InvokeNative(0x4102732DF6B4005F, hightype, 0, true)
    --    Citizen.InvokeNative(0x406CCF555B04FAD3, PlayerPedId(), 1, 0.95)
    elseif drunkscreen >= 0.5 then
        ClearTimecycleModifier()
    --	Citizen.InvokeNative(0x406CCF555B04FAD3 , PlayerPedId(), 1, 0.0)
        if Citizen.InvokeNative(0x4A123E85D7C4CA0B,hightype) then 
            Citizen.InvokeNative(0xB4FD7446BAB2F394,hightype)
        end
        Citizen.InvokeNative(0xFA08722A5EA82DA7, hightype)
        Citizen.InvokeNative(0xFDB74C9CC54C3F37, drunkscreen)
    else
        ClearTimecycleModifier()
    --	Citizen.InvokeNative(0x406CCF555B04FAD3 , PlayerPedId(), 1, 0.0)
        if Citizen.InvokeNative(0x4A123E85D7C4CA0B,hightype) then 
            Citizen.InvokeNative(0xB4FD7446BAB2F394,hightype)
        end
    end
end)
RegisterNetEvent('syn_smoke:inhale')
AddEventHandler('syn_smoke:inhale', function(typeof,high,hightype,highduration) 
    if high then 
        TriggerEvent("syn_smoke:gethigh",hightype,highduration)
    end
    if typeof == "cigarette" then
        FPrompt("Finish Smoking", 0x3B24C470, false)
        LMPrompt("Inhale", 0x07B8BEAF, false)
        EPrompt("Change Stance", 0xD51B784F, false)
        ExecuteCommand('close')
        local ped = PlayerPedId()
        local male = IsPedMale(ped)
        local x,y,z = table.unpack(GetEntityCoords(ped, true))
        local cigarette = CreateObject(GetHashKey('P_CIGARETTE01X'), x, y, z + 0.2, true, true, true)
        local righthand = GetEntityBoneIndexByName(ped, "SKEL_R_Finger13")
        local mouth = GetEntityBoneIndexByName(ped, "skel_head")
        --Citizen.InvokeNative( 0xF6A7C08DF2E28B28, PlayerPedId(), 0, 500.0, false )
        --PlaySoundFrontend("Core_Fill_Up", "Consumption_Sounds", true, 0)
        
        if male then
            AttachEntityToEntity(cigarette, ped, mouth, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, true, true, false, true, 1, true)
            Anim(ped,"amb_rest@world_human_smoking@male_c@stand_enter","enter_back_rf",9400,0)
            Wait(1000)
            AttachEntityToEntity(cigarette, ped, righthand, 0.03, -0.01, 0.0, 0.0, 90.0, 0.0, true, true, false, true, 1, true)
            Wait(1000)
            AttachEntityToEntity(cigarette, ped, mouth, -0.017, 0.1, -0.01, 0.0, 90.0, -90.0, true, true, false, true, 1, true)
            Wait(3000)
            AttachEntityToEntity(cigarette, ped, righthand, 0.017, -0.01, -0.01, 0.0, 120.0, 10.0, true, true, false, true, 1, true)
            Wait(1000)
            Anim(ped,"amb_rest@world_human_smoking@male_c@base","base",-1,30)
            RemoveAnimDict("amb_rest@world_human_smoking@male_c@stand_enter")
            Wait(1000)
        else --female
            AttachEntityToEntity(cigarette, ped, mouth, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, true, true, false, true, 1, true)
            Anim(ped,"amb_rest@world_human_smoking@female_c@base","base",-1,30)
            Wait(1000)
            AttachEntityToEntity(cigarette, ped, righthand, 0.01, 0.0, 0.01, 0.0, -160.0, -130.0, true, true, false, true, 1, true)
            Wait(2500)
        end
    
        local stance="c"
    
        if proppromptdisplayed == false then
            PromptSetEnabled(PropPrompt, true)
            PromptSetVisible(PropPrompt, true)
            PromptSetEnabled(UsePrompt, true)
            PromptSetVisible(UsePrompt, true)
            PromptSetEnabled(ChangeStance, true)
            PromptSetVisible(ChangeStance, true)
            proppromptdisplayed = true
        end
    
        if male then
            while  IsEntityPlayingAnim(ped, "amb_rest@world_human_smoking@male_c@base","base", 3)
                or IsEntityPlayingAnim(ped, "amb_rest@world_human_smoking@nervous_stressed@male_b@base","base", 3)
                or IsEntityPlayingAnim(ped, "amb_rest@world_human_smoking@male_d@base","base", 3)
                or IsEntityPlayingAnim(ped, "amb_wander@code_human_smoking_wander@male_a@base","base", 3) do
    
                Wait(5)
                if IsControlJustReleased(0, 0x3B24C470) then
                    PromptSetEnabled(PropPrompt, false)
                    PromptSetVisible(PropPrompt, false)
                    PromptSetEnabled(UsePrompt, false)
                    PromptSetVisible(UsePrompt, false)
                    PromptSetEnabled(ChangeStance, false)
                    PromptSetVisible(ChangeStance, false)
                    proppromptdisplayed = false
    
                    ClearPedSecondaryTask(ped)
                    Anim(ped, "amb_rest@world_human_smoking@male_a@stand_exit", "exit_back", -1, 1)
                    Wait(2800)
                    DetachEntity(cigarette, true, true)
                    SetEntityVelocity(cigarette, 0.0,0.0,-1.0)
                    Wait(1500)
                    ClearPedSecondaryTask(ped)
                    ClearPedTasks(ped)
                    Wait(10)
                end
                if IsControlJustReleased(0, 0xD51B784F) then
                    if stance=="c" then
                        Anim(ped, "amb_rest@world_human_smoking@nervous_stressed@male_b@base", "base", -1, 30)
                        Wait(1000)
                        while not IsEntityPlayingAnim(ped,"amb_rest@world_human_smoking@nervous_stressed@male_b@base", "base", 3) do
                            Wait(100)
                        end    
                        stance="b"
                    elseif stance=="b" then
                        Anim(ped, "amb_rest@world_human_smoking@male_d@base", "base", -1, 30)
                        Wait(1000)
                        while not IsEntityPlayingAnim(ped,"amb_rest@world_human_smoking@male_d@base","base", 3) do
                            Wait(100)
                        end
                        stance="d"
                    elseif stance=="d" then
                        Anim(ped, "amb_rest@world_human_smoking@male_d@trans", "d_trans_a", -1, 30)
                        Wait(4000)
                        Anim(ped, "amb_wander@code_human_smoking_wander@male_a@base", "base", -1, 30, 0)
                        while not IsEntityPlayingAnim(ped,"amb_wander@code_human_smoking_wander@male_a@base","base", 3) do
                            Wait(100)
                        end
                        stance="a"
                    else --stance=="a"
                        Anim(ped, "amb_rest@world_human_smoking@male_a@trans", "a_trans_c", -1, 30)
                        Wait(4233)
                        Anim(ped,"amb_rest@world_human_smoking@male_c@base","base",-1,30,0)
                        while not IsEntityPlayingAnim(ped,"amb_rest@world_human_smoking@male_c@base","base", 3) do
                            Wait(100)
                        end
                        stance="c"
                    end
                end
            
                if stance=="c" then
                    if IsControlJustReleased(0, 0x07B8BEAF) then
                        Wait(500)
                        if IsControlPressed(0, 0x07B8BEAF) then
                            Anim(ped, "amb_rest@world_human_smoking@male_c@idle_a","idle_b", -1, 30, 0)
                            Wait(21166)
                            Anim(ped, "amb_rest@world_human_smoking@male_c@base","base", -1, 30, 0)
                            Wait(100)
                        else
                            Anim(ped, "amb_rest@world_human_smoking@male_c@idle_a","idle_a", -1, 30, 0)
                            Wait(8500)
                            Anim(ped, "amb_rest@world_human_smoking@male_c@base","base", -1, 30, 0)
                            Wait(100)
                        end
                    end
                elseif stance=="b" then
                    if IsControlJustReleased(0, 0x07B8BEAF) then
                        Wait(500)
                        if IsControlPressed(0, 0x07B8BEAF) then
                            Anim(ped, "amb_rest@world_human_smoking@nervous_stressed@male_b@idle_c","idle_g", -1, 30, 0)
                            Wait(13433)
                            Anim(ped, "amb_rest@world_human_smoking@nervous_stressed@male_b@base", "base", -1, 30, 0)
                            Wait(100)
                        else
                            Anim(ped, "amb_rest@world_human_smoking@nervous_stressed@male_b@idle_a", "idle_a", -1, 30, 0)
                            Wait(3199)
                            Anim(ped, "amb_rest@world_human_smoking@nervous_stressed@male_b@base", "base", -1, 30, 0)
                            Wait(100)
                        end
                    end
                elseif stance=="d" then
                    if IsControlJustReleased(0, 0x07B8BEAF) then
                        Wait(500)
                        if IsControlPressed(0, 0x07B8BEAF) then
                            Anim(ped, "amb_rest@world_human_smoking@male_d@idle_a","idle_b", -1, 30, 0)
                            Wait(7366)
                            Anim(ped, "amb_rest@world_human_smoking@male_d@base", "base", -1, 30, 0)
                            Wait(100)
                        else
                            Anim(ped, "amb_rest@world_human_smoking@male_d@idle_c", "idle_g", -1, 30, 0)
                            Wait(7866)
                            Anim(ped, "amb_rest@world_human_smoking@male_d@base", "base", -1, 30, 0)
                            Wait(100)
                        end
                    end
                else --stance=="a"
                    if IsControlJustReleased(0, 0x07B8BEAF) then
                        Wait(500)
                        if IsControlPressed(0, 0x07B8BEAF) then
                            Anim(ped, "amb_rest@world_human_smoking@male_a@idle_a", "idle_b", -1, 30, 0)
                            Wait(12533)
                            Anim(ped, "amb_wander@code_human_smoking_wander@male_a@base", "base", -1, 30, 0)
                            Wait(100)
                        else
                            Anim(ped, "amb_rest@world_human_smoking@male_a@idle_a","idle_a", -1, 30, 0)
                            Wait(8200)
                            Anim(ped, "amb_wander@code_human_smoking_wander@male_a@base", "base", -1, 30, 0)
                            Wait(100)
                        end
                    end
                end
            end
        else --if female
            while  IsEntityPlayingAnim(ped,"amb_rest@world_human_smoking@female_c@base", "base", 3) 
                or IsEntityPlayingAnim(ped,"amb_rest@world_human_smoking@female_b@base", "base", 3)
                or IsEntityPlayingAnim(ped,"amb_rest@world_human_smoking@female_a@base", "base", 3)do
    
                Wait(5)
                if IsControlJustReleased(0, 0x3B24C470) then
                    PromptSetEnabled(PropPrompt, false)
                    PromptSetVisible(PropPrompt, false)
                    PromptSetEnabled(UsePrompt, false)
                    PromptSetVisible(UsePrompt, false)
                    PromptSetEnabled(ChangeStance, false)
                    PromptSetVisible(ChangeStance, false)
                    proppromptdisplayed = false
    
                    ClearPedSecondaryTask(ped)
                    Anim(ped, "amb_rest@world_human_smoking@female_b@trans", "b_trans_fire_stand_a", -1, 1)
                    Wait(3800)
                    DetachEntity(cigarette, true, true)
                    Wait(800)
                    ClearPedSecondaryTask(ped)
                    ClearPedTasks(ped)
                    Wait(10)
                end
                if IsControlJustReleased(0, 0xD51B784F) then
                    if stance=="c" then
                        Anim(ped, "amb_rest@world_human_smoking@female_b@base", "base", -1, 30)
                        Wait(1000)
                        while not IsEntityPlayingAnim(ped,"amb_rest@world_human_smoking@female_b@base", "base", 3) do
                            Wait(100)
                        end    
                        stance="b"
                    elseif stance=="b" then
                        Anim(ped, "amb_rest@world_human_smoking@female_b@trans", "b_trans_a", -1, 30)
                        Wait(5733)
                        Anim(ped, "amb_rest@world_human_smoking@female_a@base", "base", -1, 30, 0)
                        while not IsEntityPlayingAnim(ped,"amb_rest@world_human_smoking@female_a@base","base", 3) do
                            Wait(100)
                        end
                        stance="a"
                    else --stance=="a"
                        Anim(ped,"amb_rest@world_human_smoking@female_c@base","base",-1,30)
                        Wait(1000)
                        while not IsEntityPlayingAnim(ped,"amb_rest@world_human_smoking@female_c@base","base", 3) do
                            Wait(100)
                        end
                        stance="c"
                    end
                end
            
                if stance=="c" then
                    if IsControlJustReleased(0, 0x07B8BEAF) then
                        Wait(500)
                        if IsControlPressed(0, 0x07B8BEAF) then
                            Anim(ped, "amb_rest@world_human_smoking@female_c@idle_a","idle_a", -1, 30, 0)
                            Wait(9566)
                            Anim(ped, "amb_rest@world_human_smoking@female_c@base","base", -1, 30, 0)
                            Wait(100)
                        else
                            Anim(ped, "amb_rest@world_human_smoking@female_c@idle_b","idle_f", -1, 30, 0)
                            Wait(8133)
                            Anim(ped, "amb_rest@world_human_smoking@female_c@base","base", -1, 30, 0)
                            Wait(100)
                        end
                    end
                elseif stance=="b" then
                    if IsControlJustReleased(0, 0x07B8BEAF) then
                        Wait(500)
                        if IsControlPressed(0, 0x07B8BEAF) then
                            Anim(ped, "amb_rest@world_human_smoking@female_b@idle_b","idle_f", -1, 30, 0)
                            Wait(8033)
                            Anim(ped, "amb_rest@world_human_smoking@female_b@base", "base", -1, 30, 0)
                            Wait(100)
                        else
                            Anim(ped, "amb_rest@world_human_smoking@female_b@idle_a", "idle_b", -1, 30, 0)
                            Wait(4266)
                            Anim(ped, "amb_rest@world_human_smoking@female_b@base", "base", -1, 30, 0)
                            Wait(100)
                        end
                    end
                else --stance=="a"
                    if IsControlJustReleased(0, 0x07B8BEAF) then
                        Wait(500)
                        if IsControlPressed(0, 0x07B8BEAF) then
                            Anim(ped, "amb_rest@world_human_smoking@female_a@idle_b", "idle_d", -1, 30, 0)
                            Wait(14566)
                            Anim(ped, "amb_rest@world_human_smoking@female_a@base", "base", -1, 30, 0)
                            Wait(100)
                        else
                            Anim(ped, "amb_rest@world_human_smoking@female_a@idle_a","idle_b", -1, 30, 0)
                            Wait(6100)
                            Anim(ped, "amb_rest@world_human_smoking@female_a@base", "base", -1, 30, 0)
                            Wait(100)
                        end
                    end
                end
            end
        end
    
        PromptSetEnabled(PropPrompt, false)
        PromptSetVisible(PropPrompt, false)
        PromptSetEnabled(UsePrompt, false)
        PromptSetVisible(UsePrompt, false)
        PromptSetEnabled(ChangeStance, false)
        PromptSetVisible(ChangeStance, false)
        proppromptdisplayed = false
    
        DetachEntity(cigarette, true, true)
        ClearPedSecondaryTask(ped)
        RemoveAnimDict("amb_wander@code_human_smoking_wander@male_a@base")
        RemoveAnimDict("amb_rest@world_human_smoking@male_a@idle_a")
        RemoveAnimDict("amb_rest@world_human_smoking@nervous_stressed@male_b@base")
        RemoveAnimDict("amb_rest@world_human_smoking@nervous_stressed@male_b@idle_a")
        RemoveAnimDict("amb_rest@world_human_smoking@nervous_stressed@male_b@idle_g")
        RemoveAnimDict("amb_rest@world_human_smoking@male_c@base")
        RemoveAnimDict("amb_rest@world_human_smoking@male_c@idle_a")
        RemoveAnimDict("amb_rest@world_human_smoking@male_d@base")
        RemoveAnimDict("amb_rest@world_human_smoking@male_d@idle_a")
        RemoveAnimDict("amb_rest@world_human_smoking@male_d@idle_c")
        RemoveAnimDict("amb_rest@world_human_smoking@male_a@trans")
        RemoveAnimDict("amb_rest@world_human_smoking@male_c@trans")
        RemoveAnimDict("amb_rest@world_human_smoking@male_d@trans")
        RemoveAnimDict("amb_rest@world_human_smoking@female_a@base")
        RemoveAnimDict("amb_rest@world_human_smoking@female_a@idle_a")
        RemoveAnimDict("amb_rest@world_human_smoking@female_a@idle_b")
        RemoveAnimDict("amb_rest@world_human_smoking@female_b@base")
        RemoveAnimDict("amb_rest@world_human_smoking@female_b@idle_a")
        RemoveAnimDict("amb_rest@world_human_smoking@female_b@idle_b")
        RemoveAnimDict("amb_rest@world_human_smoking@female_c@base")
        RemoveAnimDict("amb_rest@world_human_smoking@female_c@idle_a")
        RemoveAnimDict("amb_rest@world_human_smoking@female_c@idle_b")
        RemoveAnimDict("amb_rest@world_human_smoking@female_b@trans")
        Wait(100)
        ClearPedTasks(ped)
    elseif typeof == "cigar" then 
        ExecuteCommand('close')
    FPrompt('Stop Smoking', 0x3B24C470, false)
    local prop_name = 'P_CIGAR01X'
    local ped = PlayerPedId()
    local dict = 'amb_rest@world_human_smoke_cigar@male_a@idle_b'
    local anim = 'idle_d'
    local x,y,z = table.unpack(GetEntityCoords(ped, true))
    local prop = CreateObject(GetHashKey(prop_name), x, y, z + 0.2, true, true, true)
    local boneIndex = GetEntityBoneIndexByName(ped, 'SKEL_R_Finger12')
    local smoking = false
    
    if not IsEntityPlayingAnim(ped, dict, anim, 3) then
    
        local waiting = 0
        RequestAnimDict(dict)
        while not HasAnimDictLoaded(dict) do
            waiting = waiting + 100
            Citizen.Wait(100)
            if waiting > 5000 then
                print('RedM Fucked up this animation')
                break
            end
        end
    
        Wait(100)
        AttachEntityToEntity(prop, ped,boneIndex, 0.01, -0.00500, 0.01550, 0.024, 300.0, -40.0, true, true, false, true, 1, true)
        TaskPlayAnim(ped, dict, anim, 8.0, -8.0, -1, 31, 0, true, 0, false, 0, false)
        Wait(1000)

        if proppromptdisplayed == false then
		    PromptSetEnabled(PropPrompt, true)
		    PromptSetVisible(PropPrompt, true)
		    proppromptdisplayed = true
        end
        
        smoking = true
        while smoking do
            if IsEntityPlayingAnim(ped, dict, anim, 3) then

                DisableControlAction(0, 0x07CE1E61, true)
                DisableControlAction(0, 0xF84FA74F, true)
                DisableControlAction(0, 0xCEE12B50, true)
                DisableControlAction(0, 0xB2F377E8, true)
                DisableControlAction(0, 0x8FFC75D6, true)
                DisableControlAction(0, 0xD9D0E1C0, true)

                if IsControlPressed(0, 0x3B24C470) then
                    PromptSetEnabled(PropPrompt, false)
                    PromptSetVisible(PropPrompt, false)
                    proppromptdisplayed = false
                    smoking = false
                    ClearPedSecondaryTask(ped)
                    DeleteObject(prop)
                    RemoveAnimDict(dict)
                    break
                end
            else
                TaskPlayAnim(ped, dict, anim, 8.0, -8.0, -1, 31, 0, true, 0, false, 0, false)
            end
            Wait(0)
        end
    end
    elseif typeof == "pipe" then 
        FPrompt("Put Away", 0x3B24C470, false)
    LMPrompt("Use", 0x07B8BEAF, false)
    EPrompt("Pose", 0xD51B784F, false)
    ExecuteCommand('close')
    local ped = PlayerPedId()
    local male = IsPedMale(ped)
    local x,y,z = table.unpack(GetEntityCoords(ped, true))
    local syn = CreateObject(GetHashKey('P_PIPE01X'), x, y, z + 0.2, true, true, true)
    local righthand = GetEntityBoneIndexByName(ped, "SKEL_R_Finger13")
    AttachEntityToEntity(syn, ped, righthand, 0.005, -0.045, 0.0, -170.0, 10.0, -15.0, true, true, false, true, 1, true)
    Anim(ped,"amb_wander@code_human_smoking_wander@male_b@trans","nopipe_trans_pipe",-1,30)
    Wait(9000)
    Anim(ped,"amb_rest@world_human_smoking@male_b@base","base",-1,31)
    Citizen.InvokeNative(0xF6A7C08DF2E28B28, ped, 0, 2500.0)
    Citizen.InvokeNative(0xF6A7C08DF2E28B28, ped, 1, 2500.0)
    PlaySoundFrontend("Core_Fill_Up", "Consumption_Sounds", true, 0)


    

    while not IsEntityPlayingAnim(ped,"amb_rest@world_human_smoking@male_b@base","base", 3) do
        Wait(100)
    end

    if proppromptdisplayed == false then
        PromptSetEnabled(PropPrompt, true)
        PromptSetVisible(PropPrompt, true)
        PromptSetEnabled(UsePrompt, true)
        PromptSetVisible(UsePrompt, true)
        PromptSetEnabled(ChangeStance, true)
        PromptSetVisible(ChangeStance, true)
        proppromptdisplayed = true
	end

    while IsEntityPlayingAnim(ped, "amb_rest@world_human_smoking@male_b@base","base", 3) do

        Wait(5)
		if IsControlJustReleased(0, 0x3B24C470) then
            PromptSetEnabled(PropPrompt, false)
            PromptSetVisible(PropPrompt, false)
            PromptSetEnabled(UsePrompt, false)
            PromptSetVisible(UsePrompt, false)
            PromptSetEnabled(ChangeStance, false)
            PromptSetVisible(ChangeStance, false)
            proppromptdisplayed = false

            Anim(ped, "amb_wander@code_human_smoking_wander@male_b@trans", "pipe_trans_nopipe", -1, 30)
            Wait(6066)
            DeleteEntity(syn)
            ClearPedSecondaryTask(ped)
            ClearPedTasks(ped)
            Wait(10)
		end
        
        if IsControlJustReleased(0, 0xD51B784F) then
            Anim(ped, "amb_rest@world_human_smoking@pipe@proper@male_d@wip_base", "wip_base", -1, 30)
            Wait(5000)
            Anim(ped, "amb_rest@world_human_smoking@male_b@base","base", -1, 31)
            Wait(100)
        end

        if IsControlJustReleased(0, 0x07B8BEAF) then
            Wait(500)
            if IsControlPressed(0, 0x07B8BEAF) then
                Anim(ped, "amb_rest@world_human_smoking@male_b@idle_b","idle_d", -1, 30, 0)
                Wait(15599)
                Anim(ped, "amb_rest@world_human_smoking@male_b@base","base", -1, 31, 0)
                Wait(100)
            else
                Anim(ped, "amb_rest@world_human_smoking@male_b@idle_a","idle_a", -1, 30, 0)
                Wait(22600)
                Anim(ped, "amb_rest@world_human_smoking@male_b@base","base", -1, 31, 0)
                Wait(100)
            end
        end
    end

    PromptSetEnabled(PropPrompt, false)
    PromptSetVisible(PropPrompt, false)
    PromptSetEnabled(UsePrompt, false)
    PromptSetVisible(UsePrompt, false)
    PromptSetEnabled(ChangeStance, false)
    PromptSetVisible(ChangeStance, false)
    proppromptdisplayed = false

    DetachEntity(syn, true, true)
    ClearPedSecondaryTask(ped)
    RemoveAnimDict("amb_wander@code_human_smoking_wander@male_b@trans")
    RemoveAnimDict("amb_rest@world_human_smoking@male_b@base")
    RemoveAnimDict("amb_rest@world_human_smoking@pipe@proper@male_d@wip_base")
    RemoveAnimDict("amb_rest@world_human_smoking@male_b@idle_a")
    RemoveAnimDict("amb_rest@world_human_smoking@male_b@idle_b")
    Wait(100)
    ClearPedTasks(ped)
    end


end)