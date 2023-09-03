AnimationDictionary = {} 
 
function MyAnimation(AnimationActive,AnimationName)
    print("Start "..AnimationName.." Animation")  
    -- works best if not holding a weapon
    SetCurrentPedWeapon(PlayerPedId(), 'WEAPON_UNARMED', true)
    -- gather player data
    local player = PlayerPedId()  
    local coords = GetEntityCoords(player)  
    local heading = GetEntityHeading(player)  
    -- verify ped is not active in a scenario or task already. 
    local scenarioPlaying = IsPedActiveInScenario(PlayerPedId())   
    if scenarioPlaying == true then 
        ClearPedTasksImmediately(player)
    end 
    -- set specifics
    local duration = -1 -- -1 -- is full length of the animation  
    TaskStartScenarioInPlace(PlayerPedId(), GetHashKey(AnimationActive), duration, true, "StartScenario", 0, false)    
end 
 
function stop_MyAnimation(AnimationActive,AnimationName)
    print("Stop "..AnimationName.." Animation")  
    -- player data
    local player = PlayerPedId() 
    --- end scenario
    local scenarioPlaying = IsPedActiveInScenario(PlayerPedId())   
    if scenarioPlaying == true then 
        ClearPedTasksImmediately(player)
    end 
    -- clear the scenario from memory
    RemoveAnimSceneEntity( GetHashKey(AnimationActive), retval_entity) 
    --- slight paise
    Citizen.Wait(1000)  
    -- see if animation included an object spawned autoamtically, and remove if needed
    retval_entity = GetEntityAttachedTo( player)
    DetachEntity(retval_entity, true, true) -- p1, collision  
    DeleteObject(retval_entity)
    SetObjectAsNoLongerNeeded(retval_entity) 
end 


---- List of potential tasks to test
---- https://raw.githubusercontent.com/kibook/spooner/master/data/rdr3/scenarios.lua

function task_KNEEL()  
    if IsPedMale() then 
        AnimationActive = "WORLD_PLAYER_DYNAMIC_KNEEL_FIRE_CRAFT" -- male ?? | female NO
    else 
        --AnimationActive = "WORLD_PLAYER_DYNAMIC_KNEEL_FIRE_CRAFT_MP_FEMALE_A"   -- male ?? | female NO
        AnimationActive = "WORLD_HUMAN_CROUCH_INSPECT"   -- male ?? | female YES
    end 
    AnimationName = "KNEEL"
    print("AnimationName, AnimationActive",AnimationName, AnimationActive )
    MyAnimation(AnimationActive,AnimationName)
    Citizen.Wait(Config.AnimationPause)  
    stop_MyAnimation(AnimationActive,AnimationName)
end 

function task_WHITTLE()       
    if IsPedMale() then 
        AnimationActive = "WORLD_HUMAN_SIT_GROUND_WHITTLE"  -- male ?? | female NO
    else 
        AnimationActive = "WORLD_HUMAN_CROUCH_INSPECT"   -- male ?? | female YES
    end  
    AnimationName = "WHITTLE"
    print("AnimationName, AnimationActive",AnimationName, AnimationActive )
    MyAnimation(AnimationActive,AnimationName)    
    Citizen.Wait(Config.AnimationPause)  
    stop_MyAnimation(AnimationActive,AnimationName) 
end   


function task_TENDFIRE()       
    if IsPedMale() then 
        AnimationActive = "WORLD_HUMAN_FIRE_KNEEL_TEND"   -- male ?? | female NO
        -- "PROP_CAMP_FIRE_SEATED_TEND_FIRE",
        -- "PROP_CAMP_FIRE_SEATED_TEND_FIRE_MALE_A",
        -- "WORLD_HUMAN_FIRE_TEND_KNEEL",
        -- openiv says male 
        --- script_story@ntv1@unapproved@amb_rest@world_human_fire_kneel_tend@male_a@enter.ycd
        --- script_story@ntv1@unapproved@amb_rest@world_human_fire_kneel_tend@male_a@exit.ycd
        --- amb_camp@world_human_fire_tend@female_a@wip_base.ycd
        --- amb_camp@world_human_fire_tend@female_b@wip_base.ycd
    else 
        AnimationActive = "WORLD_HUMAN_FIRE_TEND"   -- male ?? | female NO
    end  
    AnimationName = "TENDFIRE"
    print("AnimationName, AnimationActive",AnimationName, AnimationActive )
    MyAnimation(AnimationActive,AnimationName)    
    Citizen.Wait(Config.AnimationPause)  
    stop_MyAnimation(AnimationActive,AnimationName) 
end   

function task_HAMMER()  
    if IsPedMale() then 
        AnimationActive = "WORLD_HUMAN_HAMMER_KNEEL"  -- male ?? | female NO
    else 
        AnimationActive = "WORLD_HUMAN_CROUCH_INSPECT"   -- male ?? | female YES
    end       
    AnimationName = "HAMMER"
    print("AnimationName, AnimationActive",AnimationName, AnimationActive )
    MyAnimation(AnimationActive,AnimationName)   
    Citizen.Wait(Config.AnimationPause)  
    stop_MyAnimation(AnimationActive,AnimationName)   
end 

function task_HAMMERSTAKES()  
    if IsPedMale() then 
        AnimationActive = "WORLD_HUMAN_HAMMER_KNEEL_STAKES"  -- male ?? | female NO
        -- amb_work@world_human_hammer_kneel_stakes@male@male_a@base.ycd
    else 
        AnimationActive = "WORLD_HUMAN_CROUCH_INSPECT"   -- male ?? | female YES
    end       
    AnimationName = "HAMMERSTAKES"
    print("AnimationName, AnimationActive",AnimationName, AnimationActive )
    MyAnimation(AnimationActive,AnimationName)   
    Citizen.Wait(Config.AnimationPause)  
    stop_MyAnimation(AnimationActive,AnimationName)   
end 

function task_INSPECT()  
    if IsPedMale() then 
        AnimationActive = "WORLD_HUMAN_CROUCH_INSPECT"  -- male ?? | female YES
    else 
        AnimationActive = "WORLD_HUMAN_CROUCH_INSPECT"  -- male ?? | female YES
    end       
    AnimationName = "INSPECT"
    print("AnimationName, AnimationActive",AnimationName, AnimationActive )
    MyAnimation(AnimationActive,AnimationName)
    Citizen.Wait(Config.AnimationPause)  
    stop_MyAnimation(AnimationActive,AnimationName)      
end  
 