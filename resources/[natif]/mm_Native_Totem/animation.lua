BookModel = 'p_openbook01x'  -- p_openbook01x  -- p_book01x
BookObject = 0
AnimationDictionary = {} 

function CreateBook()  
    local player = PlayerPedId()
    local coords = GetEntityCoords(player)     
    RequestModel(BookModel)
    while not HasModelLoaded(BookModel) do
        Wait(10)
    end 
    -- v1 by me
    BookObject = CreateObject(BookModel, coords.x+0.2,coords.y+0.4,coords.z, true, true, true) 
    SetEntityRotation(BookObject, 0, 2, 0,  0, true)
    PlaceObjectOnGroundProperly(BookObject)  

    -- for clean up
    table.insert(BooksSpawned, BookObject)
    SetModelAsNoLongerNeeded(BookModel) 
end

function DeleteBook() 
    -- if we generate the book manually
    DeleteObject(BookObject)
    SetEntityAsNoLongerNeeded(BookObject)
    BookObject = nil 
    -- if the cfx function generates it automatically
    local player = PlayerPedId()
    retval_entity = GetEntityAttachedTo( player)
    DetachEntity(retval_entity, true, true) -- p1, collision
    RemoveAnimSceneEntity( GetHashKey("WORLD_HUMAN_SIT_GROUND_READING_BOOK"), retval_entity) 
    Citizen.Wait(1000)  
    DeleteObject(retval_entity)
    SetObjectAsNoLongerNeeded(retval_entity)
end 
 
function StartBook()       
    print("Start Reading Animation")  
    SetCurrentPedWeapon(PlayerPedId(), 'WEAPON_UNARMED', true)
    local player = PlayerPedId()  
    local coords = GetEntityCoords(player)  
    local bookDictLoaded = false 
    local heading = GetEntityHeading(player)  
    local scenarioPlaying = IsPedActiveInScenario(PlayerPedId())   
    if scenarioPlaying == true then 
        ClearPedTasksImmediately(player)
    end 
    local duration = -1 -- -1 -- is full length of the animation  
    TaskStartScenarioInPlace(PlayerPedId(), GetHashKey("WORLD_HUMAN_SIT_GROUND_READING_BOOK"), duration, true, "StartScenario", 0, false)
    PromptSetEnabled(PropPrompt, true)
    PromptSetVisible(PropPrompt, true) 
end 


function EndBook()   
    ClearPedTasks(PlayerPedId())
    Citizen.Wait(5000)  
    PromptSetEnabled(PropPrompt, false)
	PromptSetVisible(PropPrompt, false) 
    SetCurrentPedWeapon(PlayerPedId(), 'WEAPON_UNARMED', true)
    Citizen.Wait(1000)  
    DeleteBook()
end 
 