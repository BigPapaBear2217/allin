Config = {}
Config.trigger = {}
Config.ScriptName = "mm_Native_Totem"
--------------------------------------------------
-- Object Render  --------------------------------
--------------------------------------------------
Config.trigger.largerobjects = true  -- turn on the rendering of these objects (true) turn off (false)
--- Larger objects are ones that must be adjusted to ground automatically by the script.
Config.largerobjects = {
	-- Macabre Scene Location ----   
	-- {_prop_item= "p_candle02x",          x=-1747.7938232421875,y= -2214.500244140625,z= 42.04678726196289,   h=90.0, pitch= -0.43240079283714, roll= 3.59556555747985, yaw= 151.30557250976562},  	
	-- {_prop_item= "p_candle02x",     	x=-1748.410888671875,y= -2214.24365234375,z= 41.84352111816406,   h=90.0, pitch= -4.31504535675048, roll= 8.83306503295898, yaw= -20.59869766235351},
    {_prop_item= "mlo_totempole",  x=2834.404296875,y= -2406.2275390625,z= 53.63488388061523 ,  h=90.0, pitch= 0.00, 				roll= 0.00, 			 yaw= 171.99758911132812},
 



}
 
--------------------------------------------------
-- Key for All Promps  ---------------------------
--------------------------------------------------
Config.definedkey = { named = "G", hash = 0x760A9C6F, }
 
--------------------------------------------------
-- Center Point ----------------------------------
--------------------------------------------------
--- to make it moveable we need two sets of coords. 
--- The script will calculate the objects position from the OLD coords. 
--- Then it uses those results to caculate the new position of the objects based on the NEW center point.
-- Center Point 

Config.scene = {}

Config.scene.OLD = { --- this is where you build the scene originally  
X= 2834.404296875,
Y= -2406.2275390625,
Z=53.63488388061523
}  
-- if you find your scene is missing or floating in the air, this center point (Above) must be at the same z height as the objects. 

--- This is the location of the door, where the player stands (inside) to exit the Scene.
Config.scene.NEW = { --- this is where you want the scene placed now
X= 2834.404296875,
Y= -2406.2275390625,
Z=53.63488388061523
} 


--------------------------------------------------
-- Player commands  --------------------------------------
--------------------------------------------------
Config.HowManyAPlayerCanSpawn = 1 
Config.ObjectOrSceneName = "totem"
Config.promptspawncommand = "totem"
Config.promptclueaupcommand = "dtotem"
Config.AnimationPause = 10000  -- milliseconds, = 3000 = 3 secpmds
   
