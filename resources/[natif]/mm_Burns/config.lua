Config = {}
Config.trigger = {}
Config.ScriptName = "mm_burns"
--------------------------------------------------
-- Object Render  --------------------------------
--------------------------------------------------
Config.trigger.largerobjects = true  -- turn on the rendering of these objects (true) turn off (false)
--- Larger objects are ones that must be adjusted to ground automatically by the script.
Config.largerobjects = {
	-- Macabre Scene Location ----   
   -- {_prop_item= "p_candle02x",     		x=-1747.7938232421875,y= -2214.500244140625,z= 42.04678726196289,   h=90.0, pitch= -0.43240079283714, roll= 3.59556555747985, yaw= 151.30557250976562},  	
   -- {_prop_item= "p_candle02x",     		x=-1748.410888671875,y= -2214.24365234375,z= 41.84352111816406,   h=90.0, pitch= -4.31504535675048, roll= 8.83306503295898, yaw= -20.59869766235351},
    
 	
	}

Config.trigger.smallerobjects = true  -- turn on the rendering of these objects (true) turn off (false)
--- Smaller objects are ones that must be placed exactly where the coordinates are.
Config.smallerobjects = {
	-- Macabre Scene Location ----  
	{_prop_item= "p_bench03x",     		x=2337.89306640625,y= 1613.6876220703125,z= 84.72821044921875,   h=90.0, pitch= 8.30963611602783, roll= -0.58858007192611, yaw= -37.62068176269531},
	{_prop_item= "burdock_p",     		x=2333.53466796875,y= 1613.4718017578125,z= 84.0468130493164,   h=90.0, pitch= 6.59981250762939, roll= -2.64526605606079, yaw= 2.5420274734497},
	{_prop_item= "burdock_p",     		x=2334.95947265625,y= 1613.426513671875,z= 84.0568130493164,   h=90.0, pitch= 6.59981250762939, roll= -2.64526605606079, yaw= 6.5420274734497},
	{_prop_item= "burdock_p",     		x=2334.56640625,y= 1614.3399658203125,z= 84.0468130493164,   h=90.0, pitch= 6.59981250762939, roll= -2.64526605606079, yaw= 4.5420274734497},
	{_prop_item= "burdock_p",     		x=2335.6748046875,y= 1614.925537109375,z= 84.0568130493164,   h=90.0, pitch= 6.59981250762939, roll= -2.64526605606079, yaw= 1.5420274734497},
	{_prop_item= "burdock_p",     		x=2337.466064453125,y= 1610.821533203125,z= 84.0468130493164,   h=90.0, pitch= 6.59981250762939, roll= -2.64526605606079, yaw= 1.5420274734497},
	{_prop_item= "burdock_p",     		x=2337.98486328125,y= 1611.8306884765625,z= 84.0468130493164,   h=90.0, pitch= 6.59981250762939, roll= -2.64526605606079, yaw= 3.5420274734497},
	{_prop_item= "burdock_p",     		x=2339.21923828125,y= 1611.996337890625,z= 84.0568130493164,   h=90.0, pitch= 6.59981250762939, roll= -2.64526605606079, yaw= 7.5420274734497},
	{_prop_item= "s_burdock01x",     	x=2338.0615234375,y= 1611.1578369140625,z= 84.3362045288086,   h=90.0, pitch= 0, roll= 0, yaw= -33.29951477050781},
	{_prop_item= "s_burdock01x",     	x=2334.276123046875,y= 1613.503173828125,z= 84.3362045288086,   h=90.0, pitch= 0, roll= 0, yaw= -22.29951477050781},
	{_prop_item= "s_burdock01x",     	x=2336.26220703125,y= 1615.8974609375,z= 84.3362045288086,   h=90.0, pitch= 0, roll= 0, yaw= -10.29951477050781},
	{_prop_item= "s_burdock01x",     	x=2338.769287109375,y= 1610.961181640625,z= 84.3362045288086,   h=90.0, pitch= 0, roll= 0, yaw= -10.29951477050781},
	{_prop_item= "s_inv_burdock01x",     	x=2334.898681640625,y= 1612.5648193359375,z= 84.26046752929688  , h=90.0, pitch= 0, roll= 0, yaw= -10.29951477050781},
	{_prop_item= "s_inv_burdock01x",     	x=2336.43505859375,y= 1614.4552001953125,z= 84.26046752929688  , h=90.0, pitch= 0, roll= 0, yaw= -15.29951477050781},
	{_prop_item= "s_inv_burdock01x",     	x=2338.357421875,y= 1614.631103515625,z= 84.26046752929688  , h=90.0, pitch= 0, roll= 0, yaw= -18.29951477050781},
	{_prop_item= "s_inv_burdock01x",     	x=2339.522216796875,y= 1613.2591552734375,z= 84.26046752929688  , h=90.0, pitch= 0, roll= 0, yaw= -18.29951477050781},
	{_prop_item= "s_inv_burdock01x",     	x=2336.219482421875,y= 1613.8026123046875,z= 84.26046752929688  , h=90.0, pitch= 0, roll= 0, yaw= -24.29951477050781},
	{_prop_item= "s_inv_burdock01x",     	x=2336.717041015625,y= 1611.654296875,z= 84.26046752929688  , h=90.0, pitch= 0, roll= 0, yaw= -7.29951477050781},
	{_prop_item= "p_books66x",     	x=2334.749267578125,y= 1614.7705078125,z= 84.75372314453125 , h=90.0, pitch= 3.00839638710021, roll= -6.44295787811279, yaw= 57.69955825805664},
	{_prop_item= "p_bookset01x",     	x=2335.44580078125,y= 1614.49755859375,z= 84.80549621582031, h=90.0, pitch=89.00000762939453, roll= -178.0, yaw= 174.75030517578125},
	{_prop_item= "p_books03x",     	x=2335.246337890625,y= 1614.6756591796875,z= 84.84709167480469, h=90.0, pitch=6.0209469795227, roll= 89.21505737304688, yaw= 12.83507347106933},
	{_prop_item= "p_books66x",     	x=2337.474365234375,y= 1614.000732421875,z= 84.75372314453125, h=90.0, pitch=2.00845479965209, roll= 0.55705946683883, yaw= -33.30059051513672},
	{_prop_item= "p_bookset01x",     	x=2337.707763671875,y= 1612.2109375,z= 84.76143646240234, h=90.0, pitch=78.75055694580078, roll= 3.20611214637756, yaw= 103.64197540283203},
	{_prop_item= "mp001_p_mp_bookset05x",     	x=2336.56298828125,y= 1611.349853515625,z= 84.56806945800781, h=90.0, pitch=6.56565237045288, roll= -4.11992740631103, yaw= -22.88308143615722},
	{_prop_item= "p_booksgroup01x",     	x=2335.53515625,y= 1612.9891357421875,z= 84.6500015258789, h=90.0, pitch=0, roll= 0, yaw= -35.49351119995117},
	{_prop_item= "p_candlestand",     	x=2334.615966796875,y= 1613.685546875,z= 84.65738677978516, h=90.0, pitch=0, roll= 0, yaw= -24.51943778991699},
    {_prop_item= "p_candlestand",     	x=2336.94873046875,y= 1610.3958740234375,z= 84.53736114501953, h=90.0, pitch=4.99999856948852, roll= -1.0, yaw= -20.51942825317382},
	{_prop_item= "p_candlestand",     	x=2339.58447265625,y= 1610.837646484375,z= 85.01746368408203, h=90.0, pitch=4.99999856948852, roll= -1.0, yaw= -24.51943778991699},
	{_prop_item= "p_candlestand",     	x=2337.490478515625,y= 1613.9359130859375,z= 85.2175064086914, h=90.0, pitch=7.99999713897705, roll= -3.00000047683715, yaw= -24.51943206787109},
	{_prop_item= "p_candlestand",     	x=2335.864990234375,y= 1615.7493896484375,z= 84.92744445800781, h=90.0, pitch=0, roll= 0, yaw= -24.51943778991699},
	{_prop_item= "p_statue08x",     	x=2337.30419921875,y= 1614.0804443359375,z= 85.19776916503906, h=90.0, pitch=6.99999904632568, roll= 0, yaw= -36.91331481933594},
	{_prop_item= "p_book09x",     	x=2338.16845703125,y= 1613.3895263671875,z= 85.23236846923828, h=90.0, pitch=6.99999284744262, roll= 0, yaw= -47.74162292480469},
	
}

--------------------------------------------------
-- Key for All Promps  ---------------------------
--------------------------------------------------
Config.definedkey = { named = "G", hash = 0x760A9C6F, }
 
--------------------------------------------------
-- Center Point ----------------------------------
--------------------------------------------------

-- Center Point
-- this should either be the center point of the scene, or the center point of your town
Config.scene = {}
Config.scene.fadetimer = 2 
Config.scene.waittimer = 1000 -- 1000 is 1 second  -- If you fall through the map, you may need to increase this time.
Config.scene.distance = 500.0  -- This is the distance from the center point that you want the objects to be rendered and deleted. 
--- This is the location of the door, where the player stands (inside) to exit the Scene.
Config.scene.center = {
	X = 2338.235595703125, 
	Y = 1613.5020751953125, 
	Z = 85.26883697509766
} 
Config.scene.heading = 15.00 -- direction the player faces  
Config.scene.trigger_blip = true -- show blip true or false
Config.scene.blip_sprite = 1865251988
--- https://github.com/femga/rdr3_discoveries/tree/master/useful_info_from_rpfs/textures/blips_mp
--- https://github.com/femga/rdr3_discoveries/tree/master/useful_info_from_rpfs/textures/blips
--------------------------------------------------
-- Story --------------------------------------
--------------------------------------------------

Config.story = {}
Config.trigger.story = true -- turn story on or false turn story off
Config.trigger.book = true -- turn book on or false turn book off
Config.story.prompt = "Press [~e~"..  Config.definedkey.named  .."~q~] to read a poem by Robert Burns"
Config.story.TextType = true -- True is 3D like stash scripts false is bottom center of screen
Config.story.language = "This is my story. "
Config.story.distance = 2.0
Config.story.audiofile = "filename"  -- this line doesn't do anything yet.
Config.story.title = "Poetry By Robert Burns"
Config.story.subtext1_title = "To A Mouse" 
Config.story.subtext1  = "Wee, sleekit, cowrin, tim'rous beastie,O, what a panic's in thy breastie! Thou need na start awa sae hasty,Wi' bickering brattle!I wad be laith to rin an' chase thee Wi' murd'ring pattle! I'm truly sorry man's dominion, Has broken nature's social union, An' justifies that ill opinion,What makes thee startleAt me, thy poor, earth-born companion, An' fellow-mortal!"
Config.story.subtext2_title = "A Thrave" 
Config.story.subtext2  = "I doubt na, whiles, but thou may thieve; What then? poor beastie, thou maun live! A daimen icker in a thrave 'S a sma' request; I'll get a blessin wi' the lave,An' never miss't! Thy wee bit housie, too, in ruin! It's silly wa's the win's are strewin!An' naething, now, to big a new ane, O' foggage green! An' bleak December's winds ensuin, Baith snell an' keen! Thou saw the fields laid bare an' waste, An' weary winter comin fast, An' cozie here, beneath the blast, Thou thought to dwell - Till crash! the cruel coulter past Out thro' thy cell." 
Config.story.subtext3_title = "But Mousie" 
Config.story.subtext3  = "That wee bit heap o' leaves an' stibble, Has cost thee mony a weary nibble! Now thou's turn'd out, for a' thy trouble, But house or hald, To thole the winter's sleety dribble, An' cranreuch cauld! But Mousie, thou art no thy lane, In proving foresight may be vain; The best-laid schemes o' mice an' men Gang aft agley, An' lea'e us nought but grief an' pain, For promis'd joy! Still thou art blest, compar'd wi' me; The present only toucheth thee: But och! I backward cast my e'e, On prospects dreaer! An' forward, tho' I canna see, I guess an' fear!" 
Config.story.duration = 50000  -- miliseconds 1000 - 1 seconds 5000 = 5 seconds

-- 316.827 287.352 156.689
--[[
	--]]

--------------------------------------------------
-- Teleport --------------------------------------
--------------------------------------------------

Config.scene.teleportme = false  -- true to turn on, false to disable - persm version in future 
--- Enter scenes
Config.enter_scene = {} 
Config.trigger.enter_scene = false -- true turns on prompt, false turns off prompt
Config.enter_scene.fadetimer = 2 
Config.enter_scene.waittimer = 500 -- 1000 is 1 second  -- If you fall through the map, you may need to increase this time.
Config.enter_scene.distance = 1.0  -- This is the distance from the teleport point that you want the prompt to activate. 
--- This is the location of the door, where the player stands (outside) to enter the Scene. (requires 3 or 4 decimal places)
Config.enter_scene.start = {
	X = -1814.4807, 
	Y = -423.1723, 
	Z = 160.1973
}
--- This is the location of the door, where the player stands (inside) after they have entered. (requires 3 or 4 decimal places)
Config.enter_scene.land = {
	X = 316.827, 
	Y = 287.352, 
	Z = 156.689 
} 
Config.enter_scene.heading = 270.00 -- direction the player faces
Config.enter_scene.language = "Press [~e~".. Config.definedkey.named .."~q~] to Enter"


--- Exit scene
Config.exit_scene = {}
Config.trigger.exit_scene = false -- true turns on prompt, false turns off prompt
Config.exit_scene.fadetimer = 2 
Config.exit_scene.waittimer = 500 -- 1000 is 1 second  -- If you fall through the map, you may need to increase this time.
Config.exit_scene.distance = 1.0  -- This is the distance from the teleport point that you want the prompt to activate. 
--- This is the location of the door, where the player stands (inside) to exit the Scene. (requires 3 or 4 decimal places)
Config.exit_scene.start = {
	X = 316.827, 
	Y = 287.352, 
	Z = 156.689 
}
--- This is the location of the door, where the player stands (outside) after they exit the Scene. (requires 3 or 4 decimal places)
Config.exit_scene.land = {
	X = -1814.4807, 
	Y = -423.1723, 
	Z = 160.1973
}
Config.exit_scene.heading = 0.00 -- direction the player faces
Config.exit_scene.language = "Press [~e~"..  Config.definedkey.named  .."~q~] to Exit"


 
