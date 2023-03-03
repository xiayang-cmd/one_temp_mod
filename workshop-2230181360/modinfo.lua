name = "  󰀌 Do your map ! 󰀪  "
description = 
[[
󰀔 [ Version 1.0.4 ]
Bored of average maps?
Are World Presets not enough for you?

With this mod, you can configure :

- biome generations,
- islands,
- setpieces,
- wormholes,
- the ocean,
- every important assets of the world,
- for surface and caves !
- and more for the next updates...

󰀏 Make sure to check the workshop tutorial!
							   ⬇Config⬇		  ⬇Info⬇
]]

author = "ADM 󰀃"
version = "1.0.4"

forumthread = ""

api_version = 10

dst_compatible = true
dont_starve_compatible = false
reign_of_giants_compatible = false
hamlet_compatible = false

forge_compatible = true

all_clients_require_mod = true 

icon_atlas = "modicon.xml"
icon = "modicon.tex"

server_filter_tags = {
	"Do your map",
	"adm",
}

	--	Hovers
	local dsc_warning = "WARNING: Be sure to read the tutorial before using!\n"
	local dsc_task = "Add or remove this biome in your world:"
	local dsc_task2 = "The count of optionnal biomes to generate at the surface.\nRandom Biomes start from \"Befriend the pigs\"."
	local dsc_task3 = "The count of optionnal biomes to generate in caves.\nRandom Biomes start from \"Bat Cloister\"."
	local dsc_size = "Add more background rooms to this biome."
	local dsc_misc = "Odd options..."
	local dsc_misc2 = "Spawn in a specific biome.\nBe sure the biome is on Mainland AND enabled!"
	local dsc_misc3 = "Make Cave Exits more or less close to the center."
	local dsc_ocean = "Different ocean generation settings."
	local dsc_ocean2 = "Select how far you want it to be from the mainland."
	local dsc_roads = "Enable or disable roads on the entire map."
	local dsc_region = "Change the region of this biome:"
	local dsc_region2 = "Empty by default, add biomes to generate a new island."
	local dsc_room = " will be more or less frequent in its original locations."
	local dsc_room2 = "Make biomes more or less filled, pushing numbers high is not recommanded."
	local dsc_setpiece = "Guarantees the setpiece spawn at a specific location."
	local dsc_setpiece2 = "Change the count of setpieces from this group."
	local dsc_setpiece3 = "Augment the chance of this setpiece to spawn (in it's original locations)."
	local dsc_startvar = "Use specific plant varieties."
	local dsc_wormhole = "Customise the Wormhole biomes."
	local dsc_wormhole2 = "The count of Wormholes in the map."
	--	Options
	local none = 				{{description = "", data = false}}
	local task = 				{{description = "Disabled", hover = "This biome won't be generated.", data = false}, {description = "Random", hover = "The game will decide to add the biome or not.", data = "random"}, {description = "Enabled", hover = "Add this biome to the world generatation", data = true}}
	local task_req = 			{{description = "Disabled", hover = "WARNING: This biome is required and cannot be removed at the moment!", data = false}, {description = "Enabled", hover = "Add this biome to the world generatation", data = true}}
	local task_rct = 			{{description = "0", data = 0}, {description = "1", data = 1}, {description = "2", data = 2}, {description = "3", data = 3}, {description = "4", data = 4}, {description = "5", hover = "Default", data = 5}, {description = "6", data = 6}, {description = "7", data = 7}, {description = "8", data = 8}, {description = "9", data = 9}, {description = "10", data = 10}}
	local task_rct2 = 			{{description = "0", data = 0}, {description = "1", data = 1}, {description = "2", data = 2}, {description = "3", data = 3}, {description = "4", data = 4}, {description = "5", data = 5}, {description = "6", data = 6}, {description = "7", data = 7}, {description = "8", hover = "Default", data = 8}, {description = "9", data = 9}, {description = "10", data = 10}, {description = "11", data = 11}, {description = "12", data = 12}, {description = "13", data = 13}, {description = "14", data = 14}, {description = "15", data = 15}, {description = "16", data = 16}, {description = "17", data = 17}, {description = "18", data = 18}}
	local task_size = 			{{description = "Default", hover = "Average biome size.", data = false}, {description = "+1", hover = "This biome will have 1 more room generated.", data = 1}, {description = "+2", hover = "This biome will have 2 more rooms generated.", data = 2}, {description = "+3", hover = "This biome will have 3 more rooms generated.", data = 3}, {description = "+4", hover = "This biome will have 4 more rooms generated.", data = 4}, {description = "+5", hover = "This biome will have 6 more rooms generated.", data = 5}, {description = "+6", hover = "This biome will have 6 more rooms generated.", data = 7}, {description = "+7", hover = "This biome will have 7 more rooms generated.", data = 7}, {description = "+8", hover = "This biome will have 8 more rooms generated.", data = 8}, {description = "+9", hover = "This biome will have 9 more rooms generated.", data = 9}, {description = "+10", hover = "This biome will have 10 more rooms generated.", data = 10}}
	local region = 				{{description = "Mainland", hover = "The original region.", data = "mainland"}, {description = "Lunar Island", hover = "Will merges with the Lunar/Moon Island, without Enlightenment.", data = "island1"}, {description = "Custom Island 1", hover = dsc_region2, data = "doyourmap1"}, {description = "Custom Island 2", hover = dsc_region2, data = "doyourmap2"}, {description = "Custom Island 3", hover = dsc_region2, data = "doyourmap3"}, {description = "Custom Island 4", hover = dsc_region2, data = "doyourmap4"}, {description = "Custom Island 5", hover = dsc_region2, data = "doyourmap5"}, {description = "Random (+5)", hover = "Can be Mainland, or one of the 5 Custom Islands.", data = "random"}, {description = "Custom Island 6", hover = dsc_region2, data = "doyourmap6"}, {description = "Custom Island 7", hover = dsc_region2, data = "doyourmap7"}, {description = "Custom Island 8", hover = dsc_region2, data = "doyourmap8"}, {description = "Custom Island 9", hover = dsc_region2, data = "doyourmap9"}, {description = "Custom Island 10", hover = dsc_region2, data = "doyourmap10"}, {description = "Random (+10)", hover = "Can be Mainland, or one of the 10 Custom Islands.", data = "random10"}}
	local percent = 			{{description = "-100%", data = 0}, {description = "-95%", data = 0.05}, {description = "-90%", data = 0.1}, {description = "-85%", data = 0.15}, {description = "-80%", data = 0.2}, {description = "-75%", data = 0.25}, {description = "-70%", data = 0.3}, {description = "-65%", data = 0.35}, {description = "-60%", data = 0.4}, {description = "-55%", data = 0.45}, {description = "-50%", data = 0.5}, {description = "-45%", data = 0.55}, {description = "-40%", data = 0.6}, {description = "-35%", data = 0.65}, {description = "-30%", data = 0.7}, {description = "-25%", data = 0.75}, {description = "-20%", data = 0.8}, {description = "-15%", data = 0.85}, {description = "-10%", data = 0.9}, {description = "-5%", data = 0.95}, {description = "Default", data = 1}, {description = "+5%", data = 1.05}, {description = "+10%", data = 1.1}, {description = "+15%", data = 1.15}, {description = "+20%", data = 1.2}, {description = "+25%", data = 1.25}, {description = "+30%", data = 1.3}, {description = "+35%", data = 1.35}, {description = "+40%", data = 1.4}, {description = "+45%", data = 1.45}, {description = "+50%", data = 1.5}, {description = "+55%", data = 1.55}, {description = "+60%", data = 1.6}, {description = "+65%", data = 1.65}, {description = "+70%", data = 1.7}, {description = "+75%", data = 1.75}, {description = "+80%", data = 1.8}, {description = "+85%", data = 1.85}, {description = "+90%", data = 1.9}, {description = "+95%", data = 1.95}, {description = "+100%", data = 2}}
	local setpiece_all = 		{{description = "Unchanged", hover = "This setpiece will not be forced by the mod.", data = false}, {description = "Random", hover = "This setpiece will spawn... somewhere.", data = "random"}, {description = "Make a pick", data = "Make a pick"}, {description = "Dig that rock", data = "Dig that rock"}, {description = "Great Plains", data = "Great Plains"}, {description = "Squeltch", data = "Squeltch"}, {description = "Beeeees!", data = "Beeeees!"}, {description = "Speak to the king", data = "Speak to the king"}, {description = "Forest hunters", data = "Forest hunters"}, {description = "Badlands", data = "Badlands"}, {description = "For a nice walk", data = "For a nice walk"}, {description = "Lightning Bluff", data = "Lightning Bluff"}}
	local setpiece_marsh = 		{{description = "Unchanged", hover = "This setpiece will not be forced by the mod.", data = false}, {description = "Random", hover = "This setpiece will spawn... somewhere.", data = "random"}, {description = "Squeltch", data = "Squeltch"}}
	local setpiece_rock = 		{{description = "Unchanged", hover = "This setpiece will not be forced by the mod.", data = false}, {description = "Random", hover = "This setpiece will spawn... somewhere.", data = "random"}, {description = "Badlands", data = "Badlands"}, {description = "Dig that rock", data = "Dig that rock"}, {description = "Lightning Bluff", data = "Lightning Bluff"}, {description = "Kill the spiders", data = "Kill the spiders"}, {description = "Mole Colony Rocks", data = "Mole Colony Rocks"}}
	local setpiece_rock2 = 		{{description = "Unchanged", hover = "This setpiece will not be forced by the mod.", data = false}, {description = "Random", hover = "This setpiece will spawn... somewhere.", data = "random"}, {description = "Dig that rock", data = "Dig that rock"}, {description = "Kill the spiders", data = "Kill the spiders"}, {description = "Mole Colony Rocks", data = "Mole Colony Rocks"}}
	local setpiece_savanna =	{{description = "Unchanged", hover = "This setpiece will not be forced by the mod.", data = false}, {description = "Random", hover = "This setpiece will spawn... somewhere.", data = "random"}, {description = "Great Plains", data = "Great Plains"}, {description = "The hunters", data = "The hunters"}}
	local setpiece_maxwell = 	{{description = "0", data = 0}, {description = "1", data = 1}, {description = "2", data = 2}, {description = "3", data = 3}, {description = "4", hover = "Default", data = 4}, {description = "5", data = 5}, {description = "6", data = 6}, {description = "7", data = 7}, {description = "8", data = 8}, {description = "9", data = 9}, {description = "10", data = 10}, {description = "11", data = 11}, {description = "12", data = 12}, {description = "13", data = 13}, {description = "14", data = 14}, {description = "15", data = 15}, {description = "16", data = 16}, {description = "17", data = 17}, {description = "18", data = 18}, {description = "19", data = 19}}
	local startvar_grass = 		{{description = "Default", hover = "Will use the Starting Varieties from the server settings.", data = false}, {description = "Grass", data = "grass"}, {description = "Grass Gecko", data = "grassgekko"}}
	local startvar_twigs = 		{{description = "Default", hover = "Will use the Starting Varieties from the server settings.", data = false}, {description = "Sapling", data = "sapling"}, {description = "Twiggy Tree", data = "twiggytree"}}
	local startvar_berries = 	{{description = "Default", hover = "Will use the Starting Varieties from the server settings.", data = false}, {description = "Berry Bush", data = "berrybush"}, {description = "Juicy Berry Bush", data = "berrybush_juicy"}}
	local wormhole_loc = 		{{description = "Default", hover = "This Wormhole will spawn from the Vanilla biome list.", data = false}, {description = "Make a pick", data = "Make a pick"}, {description = "Dig that rock", data = "Dig that rock"}, {description = "Great Plains", data = "Great Plains"}, {description = "Squeltch", data = "Squeltch"}, {description = "Beeeees!", data = "Beeeees!"}, {description = "Speak to the king", data = "Speak to the king"}, {description = "Forest hunters", data = "Forest hunters"}, {description = "Badlands", data = "Badlands"}, {description = "For a nice walk", data = "For a nice walk"}, {description = "Lightning Bluff", data = "Lightning Bluff"}, {description = "Moon Island", data = "Moon Island"}}
	local wormhole_count = 		{{description = "0", data = 0}, {description = "2", data = 2}, {description = "4", data = 4}, {description = "6", data = 6}, {description = "8", data = 8}}
	local ocean_locations = 	{{description = "Coastal", hover = "Very close from land.", data = "OceanCoastalShore"}, {description = "Shore", hover = "Next to the shore.", data = "OceanCoastal"}, {description = "Swell", hover = "Average ocean depth.", data = "OceanSwell"}, {description = "Rough", hover = "Deep ocean", data = "OceanRough"}, {description = "Hazardous", hover = "The farthest from mainland.", data = "OceanHazardous"}}
	local misc_spawnloc = 		{{description = "Make a pick", hover = "Default", data = "Make a pick"}, {description = "Dig that rock", data = "Dig that rock"}, {description = "Great Plains", data = "Great Plains"}, {description = "Squeltch", data = "Squeltch"}, {description = "Beeeees!", data = "Beeeees!"}, {description = "Speak to the king", data = "Speak to the king"}, {description = "Forest hunters", data = "Forest hunters"}, {description = "Badlands", data = "Badlands"}, {description = "For a nice walk", data = "For a nice walk"}, {description = "Lightning Bluff", data = "Lightning Bluff"}, {description = "Moon Island", data = "MoonIsland_Forest"}, {description = "Random", data = "random"}}
	local misc_caveexit = 		{{description = "Default", hover = "Very far", data = false}, {description = "TIER 3", hover = "Distant", data = 3}, {description = "TIER 2", hover = "Close", data = 2}, {description = "TIER 1", hover = "Very close", data = 1}}
	local misc_roads = 			{{description = "Disabled", data = false}, {description = "Enabled", data = true}}
	
	configuration_options =
	{
		--	Tasks
		{name = "task_forest",					label =	"Biomes (Forest) ",				hover = dsc_task,																options = none,			default = false},
		{name = "task_badlands",				label = "Badlands ",					hover = dsc_task.."\nDragonfly Desert, Tumbleweeds included.",					options = task_req,		default = true},
		{name = "task_beeeees",					label = "Beeeees! ",					hover = dsc_task.."\nBee Queen zone, with some hives.",							options = task_req,		default = true},
		{name = "task_dig_that_rock",			label = "Dig that rock ",				hover = dsc_task.."\nThe Mosaïc biome, and a Meteor Field!",					options = task_req,		default = true},
		{name = "task_for_a_nice_walk",			label = "For a nice walk ",				hover = dsc_task.."\nMandrake Plains, some Forest and a tiny Savanna.",			options = task_req,		default = true},
		{name = "task_forest_hunters",			label = "Forest hunters ",				hover = dsc_task.."\nThe Moon Stone Forest plus a Walrus Camp.",				options = task_req,		default = true},
		{name = "task_great_plains",			label = "Great Plains ",				hover = dsc_task.."\nA large Savanna with Beefalos!",							options = task_req,		default = true},
		{name = "task_lightning_bluff",			label = "Lightning Bluff ",				hover = dsc_task.."\nOasis Desert, angry Antlion included.",					options = task_req,		default = true},
		{name = "task_make_a_pick",				label = "Make a pick ",					hover = dsc_task.."\nThe orignal Florid Postern biome.",						options = task_req,		default = true},
		{name = "task_speak_to_the_king",		label = "Speak to the king ",			hover = dsc_task.."\nThe Deciduous Forest and the Pig King Village.",			options = task_req,		default = true},
		{name = "task_squeltch",				label = "Squeltch ",					hover = dsc_task.."\nThe Swamp, a big one...",									options = task_req,		default = true},
		{name = "task_moon_baths",				label = "Moon Baths (Lunar Island) ",	hover = dsc_task.."\nHot Springs, Saladmanders, and Moon Glass!",				options = task_req,		default = true},
		{name = "task_moon_beach",				label = "Moon Beach (Lunar Island) ",	hover = dsc_task.."\nA long beach of the Lunar Island.",						options = task_req,		default = true},
		{name = "task_moon_forest",				label = "Moon Forest (Lunar Island) ",	hover = dsc_task.."\nThe Moon Forest with Moon plants.",						options = task_req,		default = true},
		{name = "task_moon_islandshards",		label = "Moon Shards (Lunar Island) ",	hover = dsc_task.."\nSome tiny Islands with Anenemies and beach stuff.",		options = task_req,		default = true},
		{name = "task_moon_mine",				label = "Moon Mine (Lunar Island) ",	hover = dsc_task.."\nA mining site on the Moon, with lotsa' Moon Glass!",		options = task_req,		default = true},
		
		{name = "task_forest_randomcount",		label =	"󰀌 Random Biomes 󰀌 ",		hover = dsc_task2,																	options = task_rct,		default = 5},
		{name = "task_befriend_the_pigs",		label = "Befriend the pigs ",		hover = dsc_task.."\nA small Pig Village in a Forest, and a Swamp.",				options = task,			default = "random"},
		{name = "task_frogs_and_bugs",			label = "Frogs and bugs ",			hover = dsc_task.."\nPonds and Beehives, in a Plain.",								options = task,			default = "random"},
		{name = "task_killer_bees",				label = "Killer bees! ",			hover = dsc_task.."\nA Plain full of Bee & Killer Bee Hives.",						options = task,			default = "random"},
		{name = "task_kill_the_spiders",		label = "Kill the spiders ",		hover = dsc_task.."\nA Rocky gold quarry, with hundreds of Spiders!",				options = task,			default = "random"},
		{name = "task_magic_meadow",			label = "Magic meadow ",			hover = dsc_task.."\nSome Forest, with Frogs ponds.",								options = task,			default = "random"},
		{name = "task_make_a_beehat",			label = "Make a Beehat ",			hover = dsc_task.."\nMore Plains with Bees, and a Meteor Field!",					options = task,			default = "random"},
		{name = "task_mole_colony_deciduous",	label = "Mole Colony Deciduous ",	hover = dsc_task.."\nA smaller Deciduous Forest.",									options = task,			default = "random"},
		{name = "task_mole_colony_rocks",		label = "Mole Colony Rocks ",		hover = dsc_task.."\nA Rocky biome.",												options = task,			default = "random"},
		{name = "task_moose_breeding_task",		label = "Moose Breeding ",			hover = dsc_task.."\nFour Moose Nests at the same place, how nice!",				options = task,			default = "random"},
		{name = "task_the_hunters",				label = "The hunters ",				hover = dsc_task.."\nTriple Walrus Camp, in a Savanna, Rocky, and Plain biomes.",	options = task,			default = "random"},
		
		{name = "task_caves",				label =	"Biomes (Caves)",			hover = dsc_task,																	options = none,			default = false},
		{name = "task_blueforest",			label = "Blue Forest ",				hover = dsc_task.."\nA massive Blue Mushtree Forest!",								options = task_req,		default = true},
		{name = "task_bigbatcave",			label = "Big Bat Cave ",			hover = dsc_task.."\nSome Batcaves, rocks, guano, and Nightmare Fissures.",			options = task_req,		default = true},
		{name = "task_greenforest",			label = "Green Forest ",			hover = dsc_task.."\nA big Green Mushtree Forest!",									options = task_req,		default = true},
		{name = "task_lichenland",			label = "Lichen Land ",				hover = dsc_task.."\nSpooky caves full of Lichen, Slurpers, Ponds...",				options = task_req,		default = true},
		{name = "task_mudcave",				label = "Mud Cave ",				hover = dsc_task.."\nA muddy biome with Snurtles but few light.",					options = task_req,		default = true},
		{name = "task_mudlights",			label = "Mud Lights ",				hover = dsc_task.."\nMuddy area with plenty Light Flowers.",						options = task_req,		default = true},
		{name = "task_mudpit",				label = "Mud Pit ",					hover = dsc_task.."\nSmall Muddy biome, full of Snurtles.",							options = task_req,		default = true},
		{name = "task_mudworld",			label = "Mud World ",				hover = dsc_task.."\nA bit of every other mud biomes, and ferns.",					options = task_req,		default = true},
		{name = "task_redforest",			label = "Red Forest ",				hover = dsc_task.."\nA large Red Mushtree Forest!",									options = task_req,		default = true},
		{name = "task_rockyland",			label = "Rocky Land ",				hover = dsc_task.."\nThe Rock Lobster home, full of flintless rocks.",				options = task_req,		default = true},
		{name = "task_spillagmitecaverns",	label = "Spillagmite Caverns ",		hover = dsc_task.."\nA lot of Stalagmites... and Cave Spiders.",					options = task_req,		default = true},
		{name = "task_toadstooltask1",		label = "Toadstool 1 ",				hover = dsc_task.."\nThe first Toadstool arena, surrounded by mud.",				options = task_req,		default = true},
		{name = "task_toadstooltask2",		label = "Toadstool 2 ",				hover = dsc_task.."\nThe second Toadstool arena, with mud.",						options = task_req,		default = true},
		{name = "task_toadstooltask3",		label = "Toadstool 3 ",				hover = dsc_task.."\nThe third Toadstool arena, has some mud around, surprising!",	options = task_req,		default = true},
		{name = "task_atriummaze",			label = "Atrium (Ruins) ",			hover = dsc_task.."\nThe Ancient Fuelweaver arena and maze.",						options = task_req,		default = true},
		{name = "task_thelabyrinth",		label = "Labyrinth (Ruins) ",		hover = dsc_task.."\nThe Ancient Guardian maze, with treasures!",					options = task_req,		default = true},
		{name = "task_military",			label = "Military (Ruins) ",		hover = dsc_task.."\nMazes guarded by Rooks and Bishops.",							options = task_req,		default = true},
		{name = "task_residential",			label = "Residential 1 (Ruins) ",	hover = dsc_task.."\nHalls with Statues, defended by Clockworks.",					options = task_req,		default = true},
		{name = "task_residentia12",		label = "Residential 2 (Ruins) ",	hover = dsc_task.."\nStatue Rooms, surounded by a Jungle.",							options = task_req,		default = true},
		{name = "task_residentia13",		label = "Residential 3 (Ruins) ",	hover = dsc_task.."\nHuge Rooms, with some Altars but many Clockworks.",			options = task_req,		default = true},
		{name = "task_sacred",				label = "Sacred (Ruins) ",			hover = dsc_task.."\nMany Rooms full of Statues, and Bishops!",						options = task_req,		default = true},
		{name = "task_sacredaltar",			label = "Sacred Altar (Ruins) ",	hover = dsc_task.."\nContain the Metheus Chest and a repaired Altar.",				options = task_req,		default = true},
		
		{name = "task_caves_randomcount",	label =	"󰀌 Random Biomes 󰀌 ",		hover = dsc_task3,																	options = task_rct2,	default = 8},
		{name = "task_batcloister",			label = "Bat Cloister ",			hover = dsc_task.."\nAdditional Batcaves and Stalagmites.",							options = task,			default = "random"},
		{name = "task_caveswamp",			label = "Cave Swamp ",				hover = dsc_task.."\nA dark and dangerous swamp...",								options = task,			default = "random"},
		{name = "task_cavejungle",			label = "Cave Jungle ",				hover = dsc_task.."\nA lot of Splumonkey and Banana Trees in the wild.",			options = task,			default = "random"},
		{name = "task_fungalnoiseforest",	label = "Fungal Forest ",			hover = dsc_task.."\nA Mosaïc of different Mushtrees, dirt, and pits.",				options = task,			default = "random"},
		{name = "task_fungalnoisemeadow",	label = "Fungal Meadow ",			hover = dsc_task.."\nThe three Mushtree forest reunited.",							options = task,			default = "random"},
		{name = "task_pleasantsinkhole",	label = "Pleasant Sinkhole ",		hover = dsc_task.."\nSome grass spots around Sinkholes.",							options = task,			default = "random"},
		{name = "task_rabbitcity",			label = "Rabbit City ",				hover = dsc_task.."\nBig Bunnyman Villages!",										options = task,			default = "random"},
		{name = "task_rabbittown",			label = "Rabbit Town ",				hover = dsc_task.."\nSinkholes with some Bunnyman Houses and carrots .",			options = task,			default = "random"},
		{name = "task_rabbitspiderwar",		label = "Rabbit Spider War ",		hover = dsc_task.."\nTwo Sinkhole rooms, one with Bunnymans, one with Spiders!",	options = task,			default = "random"},
		{name = "task_spiderland",			label = "Spider Land ",				hover = dsc_task.."\nA cave forest full of Spiders.",								options = task,			default = "random"},
		{name = "task_swampysinkhole",		label = "Swampy Sinkhole ",			hover = dsc_task.."\nAnother swamp, but with perceptible sunlight.",				options = task,			default = "random"},
		{name = "task_undergroundforest",	label = "Underground Forest ",		hover = dsc_task.."\nA big Evergreen Forest, next to Sinkholes.",					options = task,			default = "random"},
		{name = "task_militarypits",		label = "Military Pits (Ruins) ",	hover = dsc_task.."\nMany Nightmare Lights and Clockworks.",						options = task,			default = "random"},
		{name = "task_morealtars",			label = "More Altars (Ruins) ",		hover = dsc_task.."\nFree Ruins Altar!",											options = task,			default = "random"},
		{name = "task_muddysacred",			label = "Muddy Sacred (Ruins) ",	hover = dsc_task.."\nStatue Halls with Lichens and Ponds next to it.",				options = task,			default = "random"},
		{name = "task_sacreddanger",		label = "Sacred Danger (Ruins) ",	hover = dsc_task.."\nMore Rooks and Bishops waiting for you.",						options = task,			default = "random"},
		
		--	Size
		{name = "size",								label =	"Size ",						hover = dsc_size,	options = none,			default = false},
		{name = "size_Badlands",					label = "Badlands ",					hover = dsc_size,	options = task_size,	default = false},
		{name = "size_Beeeees!",					label = "Beeeees! ",					hover = dsc_size,	options = task_size,	default = false},
		{name = "size_Dig that rock",				label = "Dig that rock ",				hover = dsc_size,	options = task_size,	default = false},
		{name = "size_For a nice walk",			label = "For a nice walk" ,					hover = dsc_size,	options = task_size,	default = false},
		{name = "size_Forest hunters",			label = "Forest hunters ",					hover = dsc_size,	options = task_size,	default = false},
		{name = "size_Great Plains",				label = "Great Plains ",				hover = dsc_size,	options = task_size,	default = false},
		{name = "size_Lightning Bluff",			label = "Lightning Bluff ",					hover = dsc_size,	options = task_size,	default = false},
		{name = "size_Make a pick",				label = "Make a pick ",						hover = dsc_size,	options = task_size,	default = false},
		{name = "size_Speak to the king",			label = "Speak to the king ",			hover = dsc_size,	options = task_size,	default = false},
		{name = "size_Squeltch",					label = "Squeltch ",					hover = dsc_size,	options = task_size,	default = false},
		{name = "size_MoonIsland_Baths",			label = "Moon Baths (Lunar Island) ",	hover = dsc_size,	options = task_size,	default = false},
		{name = "size_MoonIsland_Beach",			label = "Moon Beach (Lunar Island) ",	hover = dsc_size,	options = task_size,	default = false},
		{name = "size_MoonIsland_Forest",			label = "Moon Forest (Lunar Island) ",	hover = dsc_size,	options = task_size,	default = false},
		{name = "size_MoonIsland_IslandShards",	label = "Moon Shards (Lunar Island) ",		hover = dsc_size,	options = task_size,	default = false},
		{name = "size_MoonIsland_Mine",			label = "Moon Mine (Lunar Island) ",		hover = dsc_size,	options = task_size,	default = false},
		
		{name = "size_Befriend the pigs",		label = "Befriend the pigs ",				hover = dsc_size,	options = task_size,	default = false},
		{name = "size_Frogs and bugs",		label = "Frogs and bugs ",						hover = dsc_size,	options = task_size,	default = false},
		{name = "size_Killer bees!",			label = "Killer bees! ",					hover = dsc_size,	options = task_size,	default = false},
		{name = "size_Kill the spiders",		label = "Kill the spiders ",				hover = dsc_size,	options = task_size,	default = false},
		{name = "size_Magic meadow",			label = "Magic meadow ",					hover = dsc_size,	options = task_size,	default = false},
		{name = "size_Make a Beehat",			label = "Make a Beehat ",					hover = dsc_size,	options = task_size,	default = false},
		{name = "size_Mole Colony Deciduous",	label = "Mole Colony Deciduous ",			hover = dsc_size,	options = task_size,	default = false},
		{name = "size_Mole Colony Rocks",		label = "Mole Colony Rocks ",				hover = dsc_size,	options = task_size,	default = false},
		{name = "size_MooseBreedingTask",		label = "Moose Breeding ",					hover = dsc_size,	options = task_size,	default = false},
		{name = "size_The hunters",			label = "The hunters ",							hover = dsc_size,	options = task_size,	default = false},
		
		--	Regions
		{name = "region",							label =	"Regions",						hover = dsc_region,	options = none,		default = false},
		{name = "region_Badlands",					label = "Badlands ",					hover = dsc_region,	options = region,	default = "mainland"},
		{name = "region_Beeeees!",					label = "Beeeees! ",					hover = dsc_region,	options = region,	default = "mainland"},
		{name = "region_Dig that rock",				label = "Dig that rock ",				hover = dsc_region,	options = region,	default = "mainland"},
		{name = "region_For a nice walk",			label = "For a nice walk" ,				hover = dsc_region,	options = region,	default = "mainland"},
		{name = "region_Forest hunters",			label = "Forest hunters ",				hover = dsc_region,	options = region,	default = "mainland"},
		{name = "region_Great Plains",				label = "Great Plains ",				hover = dsc_region,	options = region,	default = "mainland"},
		{name = "region_Lightning Bluff",			label = "Lightning Bluff ",				hover = dsc_region,	options = region,	default = "mainland"},
		{name = "region_Make a pick",				label = "Make a pick ",					hover = dsc_region,	options = region,	default = "mainland"},
		{name = "region_Speak to the king",			label = "Speak to the king ",			hover = dsc_region,	options = region,	default = "mainland"},
		{name = "region_Squeltch",					label = "Squeltch ",					hover = dsc_region,	options = region,	default = "mainland"},
		{name = "region_MoonIsland_Baths",			label = "Moon Baths (Lunar Island) ",	hover = dsc_region,	options = region,	default = "island1"},
		{name = "region_MoonIsland_Beach",			label = "Moon Beach (Lunar Island) ",	hover = dsc_region,	options = region,	default = "island1"},
		{name = "region_MoonIsland_Forest",			label = "Moon Forest (Lunar Island) ",	hover = dsc_region,	options = region,	default = "island1"},
		{name = "region_MoonIsland_IslandShards",	label = "Moon Shards (Lunar Island) ",	hover = dsc_region,	options = region,	default = "island1"},
		{name = "region_MoonIsland_Mine",			label = "Moon Mine (Lunar Island) ",	hover = dsc_region,	options = region,	default = "island1"},
		
		{name = "region_Befriend the pigs",		label = "Befriend the pigs ",				hover = dsc_region,	options = region,	default = "mainland"},
		{name = "region_Frogs and bugs",		label = "Frogs and bugs ",					hover = dsc_region,	options = region,	default = "mainland"},
		{name = "region_Killer bees!",			label = "Killer bees! ",					hover = dsc_region,	options = region,	default = "mainland"},
		{name = "region_Kill the spiders",		label = "Kill the spiders ",				hover = dsc_region,	options = region,	default = "mainland"},
		{name = "region_Magic meadow",			label = "Magic meadow ",					hover = dsc_region,	options = region,	default = "mainland"},
		{name = "region_Make a Beehat",			label = "Make a Beehat ",					hover = dsc_region,	options = region,	default = "mainland"},
		{name = "region_Mole Colony Deciduous",	label = "Mole Colony Deciduous ",			hover = dsc_region,	options = region,	default = "mainland"},
		{name = "region_Mole Colony Rocks",		label = "Mole Colony Rocks ",				hover = dsc_region,	options = region,	default = "mainland"},
		{name = "region_MooseBreedingTask",		label = "Moose Breeding ",					hover = dsc_region,	options = region,	default = "mainland"},
		{name = "region_The hunters",			label = "The hunters ",						hover = dsc_region,	options = region,	default = "mainland"},
		
		--	Setpieces
		{name = "setpiece",						label =	"Setpieces",				hover = dsc_setpiece,	options = none,				default = false},
		{name = "setpiece_maxwell",				label =	"󰀌 Clockworks 󰀌 ",			hover = dsc_setpiece2,	options = setpiece_maxwell,	default = 4},
		{name = "setpiece_beefalofarm",			label =	"Beefalo Pen ",				hover = dsc_setpiece,	options = setpiece_savanna,	default = false},
		{name = "setpiece_firehounds",			label =	"Fire Hounds Trap",			hover = dsc_setpiece,	options = setpiece_all,		default = false},
		{name = "setpiece_graveyard",			label =	"Dev Graveyard ",			hover = dsc_setpiece,	options = setpiece_all,		default = false},
		{name = "setpiece_houndrocks",			label =	"Hound Fortress ",			hover = dsc_setpiece,	options = setpiece_rock,	default = false},
		{name = "setpiece_icehounds",			label =	"Ice Hounds Trap",			hover = dsc_setpiece,	options = setpiece_all,		default = false},
		{name = "setpiece_pigguardberries",		label =	"Pigguard Berries ",		hover = dsc_setpiece,	options = setpiece_all, 	default = false},
		{name = "setpiece_pigguardberrieseasy",	label =	"Pigguard Berries (easy) ",	hover = dsc_setpiece,	options = setpiece_all, 	default = false},
		{name = "setpiece_pigguardgrass",		label =	"Pigguard Grass ",			hover = dsc_setpiece,	options = setpiece_all, 	default = false},
		{name = "setpiece_pigguardgrasseasy",	label =	"Pigguard Grass (easy) ",	hover = dsc_setpiece,	options = setpiece_all, 	default = false},
		{name = "setpiece_reedtrap",			label =	"Reed Trap ",				hover = dsc_setpiece,	options = setpiece_marsh,	default = false},
		{name = "setpiece_rottedbase",			label =	"Rotted Base ",				hover = dsc_setpiece,	options = setpiece_marsh,	default = false},
		{name = "setpiece_sleepingspider",		label =	"Sleeping Spider ",			hover = dsc_setpiece,	options = setpiece_all,		default = false},
		{name = "setpiece_tallbirdrocks",		label =	"Tallbird Fortress ",		hover = dsc_setpiece,	options = setpiece_rock2,	default = false},
		{name = "setpiece_insanepighouse",		label =	"Insane Pighouse (basalt) ",hover = dsc_setpiece,	options = setpiece_all,		default = false},
		--{name = "setpiece_mushroomcircle_luck",	label =	"Mushroom Circle Chance ",	hover = dsc_setpiece3,	options = percent,			default = 1},
		{name = "setpiece_mushroomcircle1",		label =	"Mushroom Circle Small",	hover = dsc_setpiece,	options = setpiece_all,		default = false},
		{name = "setpiece_mushroomcircle2",		label =	"Mushroom Circle Medium",	hover = dsc_setpiece,	options = setpiece_all,		default = false},
		{name = "setpiece_mushroomcircle3",		label =	"Mushroom Circle Large",	hover = dsc_setpiece,	options = setpiece_all,		default = false},
		
		--	Ocean
		{name = "ocean",						label =	"Ocean",					hover = dsc_ocean,							options = none,				default = false},
		{name = "ocean_hermitlocation",			label =	"Hermit Crab Location ",	hover = dsc_ocean2.."\nDefault : Rough",	options = ocean_locations,	default = "OceanRough"},
		{name = "ocean_crabkinglocation",		label =	"Crab King Location ",		hover = dsc_ocean2.."\nDefault : Swell",	options = ocean_locations,	default = "OceanSwell"},
		
		--Starting Varieties
		--{name = "startvar",					label =	"Starting Varieties",		hover = dsc_startvar,	options = none,				default = false},
		--{name = "startvar_grass",				label =	"Grass ",					hover = dsc_startvar,	options = startvar_grass,	default = false},
		--{name = "startvar_twigs",				label =	"Twigs ",					hover = dsc_startvar,	options = startvar_twigs,	default = false},
		--{name = "startvar_berries",			label =	"Berries ",					hover = dsc_startvar,	options = startvar_berries,	default = false},
		
		--	Wormholes
		{name = "wormhole",						label =	"Wormholes",				hover = dsc_wormhole,	options = none,				default = false},
		{name = "wormhole_count",				label =	"Count",					hover = dsc_wormhole2,	options = wormhole_count,	default = 8},
		{name = "wormhole_1",					label =	"󰀯 1 ",						hover = dsc_wormhole,	options = wormhole_loc,		default = false},
		{name = "wormhole_2",					label =	"󰀯 2 ",						hover = dsc_wormhole,	options = wormhole_loc,		default = false},
		{name = "wormhole_3",					label =	"󰀯 3 ",						hover = dsc_wormhole,	options = wormhole_loc,		default = false},
		{name = "wormhole_4",					label =	"󰀯 4 ",						hover = dsc_wormhole,	options = wormhole_loc,		default = false},
		{name = "wormhole_5",					label =	"󰀯 5 ",						hover = dsc_wormhole,	options = wormhole_loc,		default = false},
		{name = "wormhole_6",					label =	"󰀯 6 ",						hover = dsc_wormhole,	options = wormhole_loc,		default = false},
		{name = "wormhole_7",					label =	"󰀯 7 ",						hover = dsc_wormhole,	options = wormhole_loc,		default = false},
		{name = "wormhole_8",					label =	"󰀯 8 ",						hover = dsc_wormhole,	options = wormhole_loc,		default = false},
		
		--	Misc Options
		{name = "misc",							label =	"Misc Options",				hover = dsc_misc,		options = none,				default = false},
		{name = "misc_spawnlocation",			label =	"Spawn Location ",			hover = dsc_misc2,		options = misc_spawnloc,	default = "Make a pick"},
		--{name = "misc_road",					label =	"Roads ",					hover = dsc_roads,		options = misc_roads,		default = true},
		{name = "misc_lock_caveexit",			label =	"Cave Exits Distance ",		hover = dsc_misc3,		options = misc_caveexit,	default = false},
		
		--	Room Percent
		{name = "room_percent",					label =	"󰀕 Density Modifiers",		hover = dsc_warning,			options = none,			default = false},
		{name = "room_percent_plain",			label =	"Plains",					hover = dsc_warning..dsc_room2,	options = percent,		default = 1},
		{name = "room_percent_forest",			label =	"Forests",					hover = dsc_warning..dsc_room2,	options = percent,		default = 1},
		{name = "room_percent_savanna",			label =	"Savannas",					hover = dsc_warning..dsc_room2,	options = percent,		default = 1},
		{name = "room_percent_marsh",			label =	"Swamps",					hover = dsc_warning..dsc_room2,	options = percent,		default = 1},
		{name = "room_percent_rocky",			label =	"Rocky",					hover = dsc_warning..dsc_room2,	options = percent,		default = 1},
		{name = "room_percent_deciduous",		label =	"Deciduous",				hover = dsc_warning..dsc_room2,	options = percent,		default = 1},
		{name = "room_percent_desert",			label =	"Deserts",					hover = dsc_warning..dsc_room2,	options = percent,		default = 1},
		{name = "room_percent_moonisland",		label =	"Moon Island",				hover = dsc_warning..dsc_room2,	options = percent,		default = 1},
		--{name = "room_percent_sinkhole",		label =	"Sinkholes",				hover = dsc_warning..dsc_room2,	options = percent,		default = 1},
		--{name = "room_percent_mud",			label =	"Mud",						hover = dsc_warning..dsc_room2,	options = percent,		default = 1},
		
		--	Room Prefabs
		{name = "room_prefab",					label =	"󰀕 Chance Modifiers",		hover = dsc_warning,										options = none,		default = false},
		{name = "room_prefab_grass",			label =	"Grass ",					hover = dsc_warning.."Grass"..dsc_room,						options = percent,	default = 1},
		{name = "room_prefab_sapling",			label =	"Sapling ",					hover = dsc_warning.."Saplings"..dsc_room,					options = percent,	default = 1},
		{name = "room_prefab_berrybush",		label =	"Berry Bush ",				hover = dsc_warning.."Berry Bushes (or juicy)"..dsc_room,	options = percent,	default = 1},
		{name = "room_prefab_carrot",			label =	"Carrot ",					hover = dsc_warning.."Carrots"..dsc_room,					options = percent,	default = 1},
		{name = "room_prefab_flower",			label =	"Flower ",					hover = dsc_warning.."Flowers"..dsc_room,					options = percent,	default = 1},
		{name = "room_prefab_reeds",			label =	"Reeds ",					hover = dsc_warning.."Reeds"..dsc_room,						options = percent,	default = 1},
		{name = "room_prefab_marshbush",		label =	"Spiky Bush ",				hover = dsc_warning.."Spiky Bushes "..dsc_room,				options = percent,	default = 1},
		{name = "room_prefab_mushroom",			label =	"Mushroom ",				hover = dsc_warning.."Mushrooms (all)"..dsc_room,			options = percent,	default = 1},
		{name = "room_prefab_evergreen",		label =	"Evergreen ",				hover = dsc_warning.."Evergreens"..dsc_room,				options = percent,	default = 1},
		{name = "room_prefab_deciduoustree",	label =	"Deciduous Tree ",			hover = dsc_warning.."Deciduous Trees"..dsc_room,			options = percent,	default = 1},
		{name = "room_prefab_marshtree",		label =	"Spiky Tree ",				hover = dsc_warning.."Spiky Trees "..dsc_room,				options = percent,	default = 1},
		{name = "room_prefab_pond",				label =	"Pond ",					hover = dsc_warning.."Ponds"..dsc_room,						options = percent,	default = 1},
		{name = "room_prefab_pond2",			label =	"Mosquito Pond ",			hover = dsc_warning.."Ponds (swamp)"..dsc_room,				options = percent,	default = 1},
		{name = "room_prefab_rock1",			label =	"Rock (Nitre) ",			hover = dsc_warning.."Rocks"..dsc_room,						options = percent,	default = 1},
		{name = "room_prefab_rock2",			label =	"Rock (Gold) ",				hover = dsc_warning.."Gold Rocks"..dsc_room,				options = percent,	default = 1},
		{name = "room_prefab_flint",			label =	"Flint ",					hover = dsc_warning.."Flint"..dsc_room,						options = percent,	default = 1},
		{name = "room_prefab_pighouse",			label =	"Pig House ",				hover = dsc_warning.."Pig Houses"..dsc_room,				options = percent,	default = 1},
		{name = "room_prefab_mermhouse",		label =	"Merm House ",				hover = dsc_warning.."Merm Houses"..dsc_room,				options = percent,	default = 1},
		{name = "room_prefab_beehive",			label =	"Beehive ",					hover = dsc_warning.."Beehives"..dsc_room,					options = percent,	default = 1},
		{name = "room_prefab_cactus",			label =	"Cactus ",					hover = dsc_warning.."Cactus"..dsc_room,					options = percent,	default = 1},
		{name = "room_prefab_spiderden",		label =	"Spider Den ",				hover = dsc_warning.."Spider Dens"..dsc_room,				options = percent,	default = 1},
		{name = "room_prefab_houndmound",		label =	"Hound Mound ",				hover = dsc_warning.."Hound Mounds"..dsc_room,				options = percent,	default = 1},
		{name = "room_prefab_tentacle",			label =	"Tentacle ",				hover = dsc_warning.."Tentacles"..dsc_room,					options = percent,	default = 1},
		{name = "room_prefab_tumbleweed",		label =	"Tumbleweed Spawner ",		hover = dsc_warning.."Tumbleweeds"..dsc_room,				options = percent,	default = 1},
		{name = "room_prefab_fireflies",		label =	"Fireflies ",				hover = dsc_warning.."Fireflies"..dsc_room,					options = percent,	default = 1},
		--{name = "room_prefab_cavelight",		label =	"Cave Light ",				hover = dsc_warning.."Cave Light"..dsc_room,				options = percent,	default = 1},
		--{name = "room_prefab_lightflower",	label =	"Light Flower ",			hover = dsc_warning.."Light Flowers"..dsc_room,				options = percent,	default = 1},
	}
