Skill_Config = {}

-- Choose your Framework here and be sure you Changed in the FXMANIFEST your Dataview.lua Location.
Skill_Config.VORP = true
Skill_Config.RedEM = false
Skill_Config.GUM = false

---- This Script enable four different Events:
-- Set it in every Client Action you want give or remove the Player HealthEXP or StaminaEXP for their Character.
-- As Example:
-- TriggerEvent("Prime_UpgradeHealthEXP", 10)	-- Gives the Player 10 EXP for HealthEXP
-- 
-- TriggerEvent("Prime_UpgradeHealthEXP", YOURVALUE)
-- TriggerEvent("Prime_RemoveHealthEXP", YOURVALUE)
-- TriggerEvent("Prime_UpgradeStaminaEXP", YOURVALUE)
-- TriggerEvent("Prime_RemoveStaminaEXP", YOURVALUE)


-- DONT USE IN YOUR LIVE SERVER!!!
-- Debug Commands. You can Choose what you want. Dont forget the Amount as first Argument.
-- Dont do Stupid Shit with this Commands. Otherwise you can break the Functions.
-- If you Increase your Level but not the EXP you need Refill the EXP to the level amount etc too.
Skill_Config.Debug = false
Skill_Config.Debug_GetSkills = ""
Skill_Config.Debug_IncreaseHealthEXP = ""
Skill_Config.Debug_IncreaseStaminaEXP = ""
Skill_Config.Debug_IncreaseHealthLevel = ""
Skill_Config.Debug_IncreaseStaminaLevel = ""

Skill_Config.NotifyTimer = 60000 	-- This Checks how often the sends the Saved Changes to Server. (I recommend 60 Seconds is okay. You can Increase)


-- Here you can Setup the Experience wich is needed for Every Level up.
-- The best way is to Configurate it befor you start using the Script.
-- Dont be stupid and Switch the Amounts many time and Report Bugs "Player dont Level up"
Skill_Config.Health_Experience = {
	[1] = 100,
	[2] = 300,
	[3] = 600,
	[4] = 1200,
	[5] = 2400,
	[6] = 4800,
	[7] = 9600,
	[8] = 19200,
	[9] = 38400,
}

Skill_Config.Stam_Experience = {
	[1] = 100,
	[2] = 300,
	[3] = 600,
	[4] = 1200,
	[5] = 2400,
	[6] = 4800,
	[7] = 9600,
	[8] = 19200,
	[9] = 38400,
}

-- Translation Stuff.
-- Header, Text etc.
Skill_Config.Translation = {
	[1] = "Gesundheit",
	[2] = "Ausdauer",
	[3] = "Deine Gesundheit ist gestiegen!",
	[4] = "Deine Ausdauer ist gestiegen!",
}
	