Config = {}
Config.CommandName = "mlo"
Config.ActiveCommand = false 
Config.WeatherScript = "gamenative" -- or vSync or standalone or weathersynce
Config.Standalone = "client" -- or server // your time script to re-sync with the other players at the exit of the mapping

Config.Hour = 0
Config.WindLvl = 0.0
Config.DoorsDistance = 1.0

Config.WeatherType = "SUNNY"
Config.WeatherChange = true 
Config.TimeChange = true 
Config.WindChange = true 
Config.DoordsSound = true
Config.NameDoorSound = 'door.mp3'
Config.VolumeSoundDoors = 0.5

Config.CinematicMode = true 
Config.UseScriptNightMlo = true 

-- chair for sd_basement
Config.UseElecChair = true 
Config.Scenario = "PROP_HUMAN_SEAT_CHAIR"
Config.NameElecSound = 'Electric_Chair.mp3'
Config.VolumeElectSound = 0.1
Config.ControlSeat = 0x6319DB71
Config.ControlElectricChair = 0x05CA7C52
Config.StopControlElectricChair = 0x156F7119
Config.DistanceSeat = 5.0
Config.removeHealth = 80
Config.ViewSeatPrompt = 5000
Config.Prompt = {
    [1] = {text = "Sit"},
    [2] = {text = "Electric Chair"},
    [3] = {text = "Electrocute"},
    [4] = {text = "Stop"},
}
--

Config.language = {
    [1] = {text = "Enter"},
    [2] = {text = "Exit"},
    [3] = {text = "Door"},
}

-- sd_basement spawn coords
Config.CoordsEnter = vector3(2840.568, -1193.47, 47.652)
Config.CoordsExit = vector3(2836.642, -1193.81, 47.661)

Config.Ymap = {
    sd_basement = true,
}

