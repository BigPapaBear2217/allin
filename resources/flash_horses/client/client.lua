local modelHash = "A_C_Horse_Mustang_WildBay"
local x, y, z = 1380.06, 351.21, 87.69 -- Coordonnées de spawn (exemple) 
local heading = 0.0 -- Orientation du cheval (exemple)

Citizen.CreateThread(function()
    -- Chargement du modèle de cheval
    RequestModel(modelHash)
    while not HasModelLoaded(modelHash) do
        Citizen.Wait(0) -- Attendre une frame
    end
    print("Le modèle du cheval a été chargé avec succès.")

    -- Création du ped du cheval
    local horsePed = CreatePed(4, modelHash, x, y, z, heading, false, false)
    if horsePed ~= 0 then
        print("Le ped du cheval a été créé avec succès.")
        -- Définition du cheval comme étant sauvage
        SetAnimalIsWild(horsePed, true)
        print("Le cheval a été défini comme étant sauvage.")
    else
        print("Erreur : Impossible de créer le ped du cheval.")
    end
end)

