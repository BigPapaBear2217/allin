Config = {}
Config.trigger = {}
Config.ScriptName = "mm_Native_Tipi"
--------------------------------------------------
-- Object Render  --------------------------------
--------------------------------------------------
Config.trigger.largerobjects = true  -- turn on the rendering of these objects (true) turn off (false)
--- Larger objects are ones that must be adjusted to ground automatically by the script.
Config.largerobjects = {
	-- Macabre Scene Location ----   
	-- {_prop_item= "p_candle02x",          x=-1747.7938232421875,y= -2214.500244140625,z= 42.04678726196289,   h=90.0, pitch= -0.43240079283714, roll= 3.59556555747985, yaw= 151.30557250976562},  	
	-- {_prop_item= "p_candle02x",     	x=-1748.410888671875,y= -2214.24365234375,z= 41.84352111816406,   h=90.0, pitch= -4.31504535675048, roll= 8.83306503295898, yaw= -7.8436255455017},
    {_prop_item= "themlohub_tipi_01",  x=461.07305908203125,y= -1710.9041748046875,z= 35.04707336425781,  h=0.00, pitch= 0.00, 				roll= 0.00, 			 yaw=154.73147583007812},
  --   {_prop_item= "p_campfire03x",  x=692.9090576171875,y= 63.14718627929687,z= 150.77940368652344,  h=0.00, pitch= 0.00, 				roll= 0.00, 			 yaw=-119.51508331298828},

 



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
X= 461.07305908203125,
Y= -1710.9041748046875,
Z= 41.04707336425781 

}  
-- if you find your scene is missing or floating in the air, this center point (Above) must be at the same z height as the objects. 

--- This is the location of the door, where the player stands (inside) to exit the Scene.
Config.scene.NEW = { --- this is where you want the scene placed now
X= 461.07305908203125,
Y= -1710.9041748046875,
Z= 40.04707336425781 
} 

--------------------------------------------------------------------------------------------------
-- this should either be the center point of the scene, or the center point of your town
Config.scene.fadetimer = 2 
Config.scene.waittimer = 1000 -- 1000 is 1 second  -- If you fall through the map, you may need to increase this time.
Config.scene.distance = 500.0  -- This is the distance from the center point that you want the objects to be rendered and deleted. 
Config.scene.heading = 15.00 -- direction the player faces  
Config.scene.trigger_blip = true -- show blip true or false
Config.scene.blip_sprite = -1693203215
--- https://github.com/femga/rdr3_discoveries/tree/master/useful_info_from_rpfs/textures/blips_mp
--- https://github.com/femga/rdr3_discoveries/tree/master/useful_info_from_rpfs/textures/blips

--------------------------------------------------
-- Player commands  --------------------------------------
--------------------------------------------------
Config.HowManyAPlayerCanSpawn = 1 
Config.ObjectOrSceneName = "tipi"
Config.promptspawncommand = "tipi"
Config.promptclueaupcommand = "dtipi"
Config.AnimationPause = 10000  -- milliseconds, = 3000 = 3 secpmds
--------------------------------------------------
-- Story --------------------------------------
--------------------------------------------------
Config.story = {}
Config.trigger.story = false -- turn story on or false turn story off
Config.trigger.book = false -- turn book on or false turn book off
Config.story.prompt = "Press [~e~"..  Config.definedkey.named  .."~q~] for Story"
Config.story.TextType = true -- True is 3D like stash scripts false is bottom center of screen
Config.story.language = "This is my story. "
Config.story.distance = 2.0
Config.story.audiofile = "filename"  -- this line doesn't do anything yet.
Config.story.title = string.upper(Config.ObjectOrSceneName)
Config.story.subtext1_title = string.upper(Config.ObjectOrSceneName)
Config.story.subtext1  = "Have a fun "..Config.ObjectOrSceneName.." on the beach? In a prarie? On the top of a montain? Your choice. Enjoy."
Config.story.subtext2_title = "Spawn my "..Config.ObjectOrSceneName 
Config.story.subtext2  = "To spawn this "..Config.ObjectOrSceneName.." at your house type /".. Config.promptspawncommand .." in the chat window."
Config.story.subtext3_title = "Delete my "..Config.ObjectOrSceneName
Config.story.subtext3  = "To delete your "..Config.ObjectOrSceneName.." type /"..Config.promptclueaupcommand.." in the chat window." 
Config.story.duration = 50000  -- miliseconds 1000 - 1 seconds 5000 = 5 seconds
   
