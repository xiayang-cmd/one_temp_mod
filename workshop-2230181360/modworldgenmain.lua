modimport("init/init_tuning")

local TASKS_FOREST =
{
	["badlands"] = 				{name = "Badlands", 				locks = {}, keys_given = {}, required = true,	turf = GROUND.DIRT_NOISE,			percent = 0.07,	prefabs = {marsh_bush = 0.05, marsh_tree = 0.2, rock_flintless = 1, grass = 0.1, grassgekko = 0.4, houndbone = 0.2, cactus = 0.2, tumbleweedspawner = .05}},
	["beeeees"] = 				{name = "Beeeees!", 				locks = {}, keys_given = {}, required = true,	turf = GROUND.GRASS,				percent = 0.1,	prefabs = {spiderden=0.001, beehive=0.003, flower=0.112, grass=0.2, smallmammal = {weight = 0.02, prefabs = {"rabbithole", "molehill"}}, carrot_planted=0.05, flint=0.05, berrybush=0.05, berrybush_juicy = 0.025, sapling=0.2, twiggytree = 0.2, ground_twigs = 0.08, tree = {weight = 0.3, prefabs = {"evergreen", "deciduoustree"}}, pond=.001, blue_mushroom = .005, green_mushroom = .003, red_mushroom = .004}},
	["befriend_the_pigs"] = 	{name = "Befriend the pigs", 		locks = {}, keys_given = {}, required = false,	turf = GROUND.FOREST,				percent = 0.65,	prefabs = {gravestone=0.01, pighouse=0.015, spiderden=0.02, grass=0.0025, sapling=0.15, twiggytree = 0.15, ground_twigs = 0.06, berrybush=0.005, berrybush_juicy = 0.0025, rock1=0.004, rock2=0.004, evergreen=1.5, flower=0.05, pond=.003, green_mushroom = .025, red_mushroom = .025}},
	["dig_that_rock"] = 		{name = "Dig that rock", 			locks = {}, keys_given = {}, required = true,	turf = GROUND.GROUND_NOISE,			percent = 0.15,	prefabs = {flint=0.4, rocks=0.4, rock1=0.1, rock2=0.1, grass=0.09, smallmammal = {weight = 0.025, prefabs = {"rabbithole", "molehill"}}, flower=0.003, spiderden=0.001, beehive=0.003, berrybush=0.05, berrybush_juicy = 0.025, sapling=0.2, twiggytree = 0.2, ground_twigs = 0.06, pond=.001, blue_mushroom = .001, green_mushroom = .001, red_mushroom = .001, evergreen=1.5}},
	["for_a_nice_walk"] = 		{name = "For a nice walk", 			locks = {}, keys_given = {}, required = true,	turf = GROUND.FOREST,				percent = 0.5,	prefabs = {gravestone=0.01, pighouse=0.015, spiderden=0.02, grass=0.0025, sapling=0.15, twiggytree = 0.15, ground_twigs = 0.06, berrybush=0.005, berrybush_juicy = 0.0025, rock1=0.004, rock2=0.004, evergreen=1.5, flower=0.05, pond=.003, green_mushroom = .025, red_mushroom = .025}},
	["forest_hunters"] = 		{name = "Forest hunters", 			locks = {}, keys_given = {}, required = true,	turf = GROUND.FOREST,				percent = 0.65,	prefabs = {gravestone=0.01, pighouse=0.015, spiderden=0.02, grass=0.0025, sapling=0.15, twiggytree = 0.15, ground_twigs = 0.06, berrybush=0.005, berrybush_juicy = 0.0025, rock1=0.004, rock2=0.004, evergreen=1.5, flower=0.05, pond=.003, green_mushroom = .025, red_mushroom = .025}},
	["frogs_and_bugs"] = 		{name = "Frogs and bugs", 			locks = {}, keys_given = {}, required = false,	turf = GROUND.GRASS,				percent = 0.1,	prefabs = {spiderden=0.001, beehive=0.003, flower=0.112, grass=0.2, smallmammal = {weight = 0.02, prefabs = {"rabbithole", "molehill"}}, carrot_planted=0.05, flint=0.05, berrybush=0.05, berrybush_juicy = 0.025, sapling=0.2, twiggytree = 0.2, ground_twigs = 0.08, tree = {weight = 0.3, prefabs = {"evergreen", "deciduoustree"}}, pond=.001, blue_mushroom = .005, green_mushroom = .003, red_mushroom = .004}},
	["great_plains"] = 			{name = "Great Plains", 			locks = {}, keys_given = {}, required = true,	turf = GROUND.SAVANNA,				percent = 0.15,	prefabs = {spiderden=0.001, perma_grass =0.09, rabbithole=0.025, flower=0.003}},
	["kill_the_spiders"] = 		{name = "Kill the spiders", 		locks = {}, keys_given = {}, required = false,	turf = GROUND.ROCKY,				percent = 0.25,	prefabs = {flint=0.5, rock1=1, rock2=1, rock_ice=0.4, grassgekko = 0.3}},
	["killer_bees"] = 			{name = "Killer bees!", 			locks = {}, keys_given = {}, required = false,	turf = GROUND.GRASS,				percent = 0.3,	prefabs = {spiderden=0.001, beehive=0.003, flower=0.112, grass=0.2, smallmammal = {weight = 0.02, prefabs = {"rabbithole", "molehill"}}, carrot_planted=0.05, flint=0.05, berrybush=0.05, berrybush_juicy = 0.025, sapling=0.2, twiggytree = 0.2, ground_twigs = 0.08, tree = {weight = 0.3, prefabs = {"evergreen", "deciduoustree"}}, pond=.001, blue_mushroom = .005, green_mushroom = .003, red_mushroom = .004}},
	["lightning_bluff"] = 		{name = "Lightning Bluff", 			locks = {}, keys_given = {}, required = true,	turf = GROUND.DIRT_NOISE,			percent = 0.06,	prefabs = {marsh_bush = 0.15, rock_flintless = .5, houndbone = 0.2, oasis_cactus = 0.2, buzzardspawner = .05}},
	["magic_meadow"] = 			{name = "Magic meadow", 			locks = {}, keys_given = {}, required = false,	turf = GROUND.FOREST,				percent = 0.1,	prefabs = {pighouse=0.015, fireflies = 1, evergreen = 1.5, grass = .1, sapling=.8, twiggytree = 0.8, ground_twigs = 0.06, berrybush=.1, berrybush_juicy = 0.05, beehive=.05, red_mushroom = .01, green_mushroom = .02}},
	["make_a_beehat"] = 		{name = "Make a Beehat", 			locks = {}, keys_given = {}, required = false,	turf = GROUND.GRASS,				percent = 0.1,	prefabs = {spiderden=0.001, beehive=0.003, flower=0.112, grass=0.2, smallmammal = {weight = 0.02, prefabs = {"rabbithole", "molehill"}}, carrot_planted=0.05, flint=0.05, berrybush=0.05, berrybush_juicy = 0.025, sapling=0.2, twiggytree = 0.2, ground_twigs = 0.08, tree = {weight = 0.3, prefabs = {"evergreen", "deciduoustree"}}, pond=.001, blue_mushroom = .005, green_mushroom = .003, red_mushroom = .004}},
	["make_a_pick"] = 			{name = "Make a pick", 				locks = {}, keys_given = {}, required = true,	turf = GROUND.GRASS,				percent = 0.2,	prefabs = {spiderden=0.001, beehive=0.003, flower=0.112, grass=0.2, smallmammal = {weight = 0.02, prefabs = {"rabbithole", "molehill"}}, carrot_planted=0.05, flint=0.05, berrybush=0.05, berrybush_juicy = 0.025, sapling=0.2, twiggytree = 0.2, ground_twigs = 0.08, tree = {weight = 0.3, prefabs = {"evergreen", "deciduoustree"}}, pond=.001, blue_mushroom = .005, green_mushroom = .003, red_mushroom = .004}},
	["mole_colony_deciduous"] = {name = "Mole Colony Deciduous", 	locks = {}, keys_given = {}, required = false,	turf = GROUND.DECIDUOUS,			percent = 0.2,	prefabs = {deciduoustree=6, pighouse=.1, catcoonden=.1, rock1=0.05,rock2=0.05, sapling=1, twiggytree=0.4, grass=0.03, flower=0.75, red_mushroom = 0.3, blue_mushroom = 0.3, green_mushroom = 0.3, berrybush=0.1, berrybush_juicy = 0.05, carrot_planted = 0.1, fireflies = 1, pond=.01}},
	["mole_colony_rocks"] = 	{name = "Mole Colony Rocks", 		locks = {}, keys_given = {}, required = false,	turf = GROUND.ROCKY,				percent = 0.1,	prefabs = {flint=0.5, rock1=1, rock2=1, rock_ice=0.4, grassgekko = 0.3}},
	["moose_breeding_task"] = 	{name = "MooseBreedingTask", 		locks = {}, keys_given = {}, required = false,	turf = GROUND.GRASS,				percent = 0.25,	prefabs = {spiderden=0.001, beehive=0.003, flower=0.112, grass=0.2, smallmammal = {weight = 0.02, prefabs = {"rabbithole", "molehill"}}, carrot_planted=0.05, flint=0.05, berrybush=0.05, berrybush_juicy = 0.025, sapling=0.2, twiggytree = 0.2, ground_twigs = 0.08, tree = {weight = 0.3, prefabs = {"evergreen", "deciduoustree"}}, pond=.001, blue_mushroom = .005, green_mushroom = .003, red_mushroom = .004}},
	["speak_to_the_king"] = 	{name = "Speak to the king", 		locks = {}, keys_given = {}, required = true,	turf = GROUND.DECIDUOUS,			percent = 0.2,	prefabs = {deciduoustree=6, pighouse=.1, catcoonden=.1, rock1=0.05,rock2=0.05, sapling=1, twiggytree=0.4, grass=0.03, flower=0.75, red_mushroom = 0.3, blue_mushroom = 0.3, green_mushroom = 0.3, berrybush=0.1, berrybush_juicy = 0.05, carrot_planted = 0.1, fireflies = 1, pond=.01}},
	["squeltch"] = 				{name = "Squeltch", 				locks = {}, keys_given = {}, required = true,	turf = GROUND.MARSH,				percent = 0.25,	prefabs = {spiderden=0.003, sapling=0.0001, twiggytree = 0.0001, ground_twigs = 0.00003, pond_mos=0.005, reeds=0.005, marsh_bush=0.05, marsh_tree=0.1, blue_mushroom = .01, mermhouse=0.004}},
	["the_hunters"] = 			{name = "The hunters", 				locks = {}, keys_given = {}, required = false,	turf = GROUND.SAVANNA,				percent = 0.15,	prefabs = {spiderden=0.001, perma_grass =0.09, rabbithole=0.025, flower=0.003}},
	["moon_baths"] = 			{name = "MoonIsland_Baths", 		locks = {}, keys_given = {}, required = true,	turf = GROUND.PEBBLEBEACH,			percent = 0.17,	prefabs = {sapling_moon = 1.0, rock_avocado_bush = 1.0, moon_tree = 1.0, moonglass_rock = 1.0, moon_fissure = 1, carrat_planted = .25}},
	["moon_beach"] = 			{name = "MoonIsland_Beach", 		locks = {}, keys_given = {}, required = true,	turf = GROUND.PEBBLEBEACH,			percent = 0.18,	prefabs = {dead_sea_bones = 0.75, trap_starfish = 0.75, bullkelp_beachedroot = 1.25, driftwood_small1 = 0.5, driftwood_small2 = 0.5, driftwood_tall = 0.25, rocks = 0.5, flint = 0.5, rock1 = 0.5, reeds = 0.75, twigs = 0.25}},
	["moon_forest"] = 			{name = "MoonIsland_Forest", 		locks = {}, keys_given = {}, required = true,	turf = GROUND.METEOR,				percent = 0.22,	prefabs = {moon_tree = 0.3, sapling_moon = 0.3, carrat_planted = 0.2, moon_tree_blossom_worldgen = 0.2, ground_twigs = 0.1, rock_avocado_bush = 0.1, moonglass_rock = 0.05, moon_fissure = 0.2}},
	["moon_islandshards"] = 	{name = "MoonIsland_IslandShards", 	locks = {}, keys_given = {}, required = true,	turf = GROUND.PEBBLEBEACH,			percent = 0.17,	prefabs = {trap_starfish = 1.0, bullkelp_beachedroot = 1.5, moon_fissure = 0.5, driftwood_log = 0.5, driftwood_small1 = 0.5, driftwood_small2 = 0.5, dead_sea_bones = 0.75, rocks = 1.0, flint = 0.5, reeds = 0.75, twigs = 0.5, moonglass_rock = 0.3, moonglass = 0.1}},
	["moon_mine"] = 			{name = "MoonIsland_Mine", 			locks = {}, keys_given = {}, required = true,	turf = GROUND.METEORMINE_NOISE,		percent = 0.12,	prefabs = {moonglass_rock = 1, rock1 = 0.4, rock2 = 0.2, rock_moon = 0.2, moonglass = 0.2, moonrocknugget = 0.1, rocks = 0.1, flint = 0.1, moon_fissure = 0.5}},
}

local TASKS_CAVES =
{
	["atriummaze"] = 			{name = "AtriumMaze", 			locks = {}, keys_given = {}, required = true,	turf = GROUND.TILES,		percent = 0,	prefabs = {}},
	["batcloister"] = 			{name = "BatCloister", 			locks = {}, keys_given = {}, required = false,	turf = GROUND.CAVE,			percent = 0,	prefabs = {}},
	["blueforest"] = 			{name = "BlueForest", 			locks = {}, keys_given = {}, required = true,	turf = GROUND.FUNGUS,		percent = 0,	prefabs = {}},
	["bigbatcave"] = 			{name = "BigBatCave", 			locks = {}, keys_given = {}, required = true,	turf = GROUND.CAVE,			percent = 0,	prefabs = {}},
	["caveexittask1"] = 		{name = "CaveExitTask1", 		locks = {}, keys_given = {}, required = true,	turf = GROUND.SINKHOLE,		percent = 0,	prefabs = {}},
	["caveexittask2"] = 		{name = "CaveExitTask2", 		locks = {}, keys_given = {}, required = true,	turf = GROUND.SINKHOLE,		percent = 0,	prefabs = {}},
	["caveexittask3"] = 		{name = "CaveExitTask3", 		locks = {}, keys_given = {}, required = true,	turf = GROUND.SINKHOLE,		percent = 0,	prefabs = {}},
	["caveexittask4"] = 		{name = "CaveExitTask4", 		locks = {}, keys_given = {}, required = true,	turf = GROUND.SINKHOLE,		percent = 0,	prefabs = {}},
	["caveexittask5"] = 		{name = "CaveExitTask5", 		locks = {}, keys_given = {}, required = true,	turf = GROUND.SINKHOLE,		percent = 0,	prefabs = {}},
	["caveexittask6"] = 		{name = "CaveExitTask6", 		locks = {}, keys_given = {}, required = true,	turf = GROUND.SINKHOLE,		percent = 0,	prefabs = {}},
	["caveexittask7"] = 		{name = "CaveExitTask7", 		locks = {}, keys_given = {}, required = true,	turf = GROUND.SINKHOLE,		percent = 0,	prefabs = {}},
	["caveexittask8"] = 		{name = "CaveExitTask8", 		locks = {}, keys_given = {}, required = true,	turf = GROUND.SINKHOLE,		percent = 0,	prefabs = {}},
	["caveexittask9"] = 		{name = "CaveExitTask9", 		locks = {}, keys_given = {}, required = true,	turf = GROUND.SINKHOLE,		percent = 0,	prefabs = {}},
	["caveexittask10"] = 		{name = "CaveExitTask10", 		locks = {}, keys_given = {}, required = true,	turf = GROUND.SINKHOLE,		percent = 0,	prefabs = {}},
	["caveswamp"] = 			{name = "CaveSwamp", 			locks = {}, keys_given = {}, required = false,	turf = GROUND.SWAMP,		percent = 0,	prefabs = {}},
	["cavejungle"] = 			{name = "CaveJungle", 			locks = {}, keys_given = {}, required = false,	turf = GROUND.MUD,			percent = 0,	prefabs = {}},
	["fungalnoiseforest"] = 	{name = "FungalNoiseForest", 	locks = {}, keys_given = {}, required = false,	turf = GROUND.FUNGUS,		percent = 0,	prefabs = {}},
	["fungalnoisemeadow"] = 	{name = "FungalNoiseMeadow", 	locks = {}, keys_given = {}, required = false,	turf = GROUND.FUNGUS,		percent = 0,	prefabs = {}},
	["greenforest"] = 			{name = "GreenForest", 			locks = {}, keys_given = {}, required = true,	turf = GROUND.FUNGUSGREEN,	percent = 0,	prefabs = {}},
	["lichenland"] = 			{name = "LichenLand", 			locks = {}, keys_given = {}, required = true,	turf = GROUND.MUD,			percent = 0,	prefabs = {}},
	["military"] = 				{name = "Military", 			locks = {}, keys_given = {}, required = true,	turf = GROUND.TILES,		percent = 0,	prefabs = {}},
	["militarypits"] = 			{name = "MilitaryPits", 		locks = {}, keys_given = {}, required = false,	turf = GROUND.TILES,		percent = 0,	prefabs = {}},
	["morealtars"] = 			{name = "MoreAltars", 			locks = {}, keys_given = {}, required = false,	turf = GROUND.TILES,		percent = 0,	prefabs = {}},
	["mudcave"] = 				{name = "MudCave", 				locks = {}, keys_given = {}, required = true,	turf = GROUND.MUD,			percent = 0,	prefabs = {}},
	["muddysacred"] = 			{name = "MuddySacred", 			locks = {}, keys_given = {}, required = false,	turf = GROUND.MUD,			percent = 0,	prefabs = {}},
	["mudlights"] = 			{name = "MudLights", 			locks = {}, keys_given = {}, required = true,	turf = GROUND.MUD,			percent = 0,	prefabs = {}},
	["mudpit"] = 				{name = "MudPit", 				locks = {}, keys_given = {}, required = true,	turf = GROUND.MUD,			percent = 0,	prefabs = {}},
	["mudworld"] = 				{name = "MudWorld", 			locks = {}, keys_given = {}, required = true,	turf = GROUND.MUD,			percent = 0,	prefabs = {}},
	["pleasantsinkhole"] = 		{name = "PleasantSinkhole", 	locks = {}, keys_given = {}, required = false,	turf = GROUND.SINKHOLE,		percent = 0,	prefabs = {}},
	["rabbitcity"] = 			{name = "RabbitCity", 			locks = {}, keys_given = {}, required = false,	turf = GROUND.SINKHOLE,		percent = 0,	prefabs = {}},
	["rabbittown"] = 			{name = "RabbitTown", 			locks = {}, keys_given = {}, required = false,	turf = GROUND.SINKHOLE,		percent = 0,	prefabs = {}},
	["rabbitspiderwar"] = 		{name = "RabbitSpiderWar", 		locks = {}, keys_given = {}, required = false,	turf = GROUND.SINKHOLE,		percent = 0,	prefabs = {}},
	["redforest"] = 			{name = "RedForest", 			locks = {}, keys_given = {}, required = true,	turf = GROUND.FUNGUSRED,	percent = 0,	prefabs = {}},
	["residential"] = 			{name = "Residential", 			locks = {}, keys_given = {}, required = true,	turf = GROUND.TILES,		percent = 0,	prefabs = {}},
	["residentia12"] = 			{name = "Residential2", 		locks = {}, keys_given = {}, required = true,	turf = GROUND.TILES,		percent = 0,	prefabs = {}},
	["residential3"] = 			{name = "Residential3", 		locks = {}, keys_given = {}, required = true,	turf = GROUND.TILES,		percent = 0,	prefabs = {}},
	["rockyland"] = 			{name = "RockyLand", 			locks = {}, keys_given = {}, required = true,	turf = GROUND.CAVE,			percent = 0,	prefabs = {}},
	["sacred"] = 				{name = "Sacred", 				locks = {}, keys_given = {}, required = true,	turf = GROUND.TILES,		percent = 0,	prefabs = {}},
	["sacredaltar"] = 			{name = "SacredAltar", 			locks = {}, keys_given = {}, required = true,	turf = GROUND.TILES,		percent = 0,	prefabs = {}},
	["sacreddanger"] = 			{name = "SacredDanger", 		locks = {}, keys_given = {}, required = false,	turf = GROUND.TILES,		percent = 0,	prefabs = {}},
	["spiderland"] = 			{name = "SpiderLand", 			locks = {}, keys_given = {}, required = false,	turf = GROUND.SINKHOLE,		percent = 0,	prefabs = {}},
	["spillagmitecaverns"] = 	{name = "SpillagmiteCaverns",	locks = {}, keys_given = {}, required = true,	turf = GROUND.UNDERROCK,	percent = 0,	prefabs = {}},
	["swampysinkhole"] = 		{name = "SwampySinkhole", 		locks = {}, keys_given = {}, required = false,	turf = GROUND.SWAMP,		percent = 0,	prefabs = {}},
	["thelabyrinth"] = 			{name = "TheLabyrinth", 		locks = {}, keys_given = {}, required = true,	turf = GROUND.TILES,		percent = 0,	prefabs = {}},
	["toadstooltask1"] = 		{name = "ToadStoolTask1", 		locks = {}, keys_given = {}, required = true,	turf = GROUND.MUD,			percent = 0,	prefabs = {}},
	["toadstooltask2"] = 		{name = "ToadStoolTask2", 		locks = {}, keys_given = {}, required = true,	turf = GROUND.MUD,			percent = 0,	prefabs = {}},
	["toadstooltask3"] = 		{name = "ToadStoolTask3", 		locks = {}, keys_given = {}, required = true,	turf = GROUND.MUD,			percent = 0,	prefabs = {}},
	["undergroundforest"] = 	{name = "UndergroundForest", 	locks = {}, keys_given = {}, required = false,	turf = GROUND.SINKHOLE,		percent = 0,	prefabs = {}},
}

local ROOMS_FOREST =
{
	"Badlands",
	"BarePlain",
	"BeeClearing",
	"BeefalowPlain",
	"BeeQueenBee",
	"BGBadlands",
	"BGCrappyForest",
	"BGDeciduous",
	"BGDeepForest",
	"BGGrass",
	"BGForest",
	"BGLightningBluff",
	"BGMarsh",
	"BGNoise",
	"BGRocky",
	"BGSavanna",
	"BuzzardyBadlands",
	"Clearing",
	"CrappyDeepForest",
	"CrappyForest",
	"CritterDen",
	"DeciduousClearing",
	"DeciduousMole",
	"DeepDeciduous",
	"DeepForest",
	"DragonflyArena",
	"FlowerPatch",
	"Forest",
	"ForestMole",
	"GenericRockyNoThreat",
	"GrassyMoleColony",
	"Graveyard",
	"HoundyBadlands",
	"LightningBluffAntlion",
	"LightningBluffLightning",
	"LightningBluffOasis",
	"MagicalDeciduous",
	"MandrakeHome",
	"Marsh",
	"MermTown",
	"MolesvilleDeciduous",
	"MolesvilleRocky",
	"MoonbaseOne",
	"MooseGooseBreedingGrounds",
	"RockyBuzzards",
	"PigCity",
	"PigKingdom",
	"PigVillage",
	"Plain",
	"Pondopolis",
	"PondyGrass",
	"SafeSwamp",
	"SlightlyMermySwamp",
	"SpiderMarsh",
	"SpiderForest",
	"SpiderVillage",
	"SpiderVillageSwamp",
	"TallbirdNests",
	"WalrusHut_Grassy",
	"WalrusHut_Plains",
	"WalrusHut_Rocky",
	"Waspnests",
}

local ROOMS_OCEAN =
{
	["OceanCoastalShore"] = 	{setpieces = false},
	["OceanCoastal"] =			{setpieces = false},
	["OceanSwell"] =			{setpieces = "CrabKing"},
	["OceanRough"] =			{setpieces = "HermitcrabIsland"},
	["OceanHazardous"] =		{setpieces = false},
}

--	Rooms

local function ForestRoomPrefabs(room)
	if room ~= nil and room.value ~= nil and room.contents.distributepercent ~= nil then
		if room.value == GROUND.GRASS then
			room.contents.distributepercent = room.contents.distributepercent * GLOBAL.TUNING.DYM.ROOM_PLAIN
		elseif room.value == GROUND.FOREST then
			room.contents.distributepercent = room.contents.distributepercent * GLOBAL.TUNING.DYM.ROOM_FOREST
		elseif room.value == GROUND.SAVANNA then
			room.contents.distributepercent = room.contents.distributepercent * GLOBAL.TUNING.DYM.ROOM_SAVANNA
		elseif room.value == GROUND.MARSH then
			room.contents.distributepercent = room.contents.distributepercent * GLOBAL.TUNING.DYM.ROOM_MARSH
		elseif room.value == GROUND.ROCKY then
			room.contents.distributepercent = room.contents.distributepercent * GLOBAL.TUNING.DYM.ROOM_ROCKY
		elseif room.value == GROUND.DECIDUOUS then
			room.contents.distributepercent = room.contents.distributepercent * GLOBAL.TUNING.DYM.ROOM_DECIDUOUSFOREST
		elseif room.value == GROUND.DIRT_NOISE then
			room.contents.distributepercent = room.contents.distributepercent * GLOBAL.TUNING.DYM.ROOM_DESERT
		elseif room.value == GROUND.METEORCOAST_NOISE then
			room.contents.distributepercent = room.contents.distributepercent * GLOBAL.TUNING.DYM.ROOM_MOONISLAND
		end
	end
	
	if room ~= nil and room.contents.distributeprefabs ~= nil then
		if room.contents.distributeprefabs.grass ~= nil and GLOBAL.TUNING.DYM.ROOM_GRASS ~= 1 then
			room.contents.distributeprefabs.grass = room.contents.distributeprefabs.grass * GLOBAL.TUNING.DYM.ROOM_GRASS
		end
		if room.contents.distributeprefabs.perma_grass ~= nil and GLOBAL.TUNING.DYM.ROOM_GRASS ~= 1 then
			room.contents.distributeprefabs.perma_grass = room.contents.distributeprefabs.perma_grass * GLOBAL.TUNING.DYM.ROOM_GRASS
		end
		if room.contents.distributeprefabs.sapling ~= nil and GLOBAL.TUNING.DYM.ROOM_SAPLING ~= 1 then
			room.contents.distributeprefabs.sapling = room.contents.distributeprefabs.sapling * GLOBAL.TUNING.DYM.ROOM_SAPLING
		end
		if room.contents.distributeprefabs.berrybush ~= nil and GLOBAL.TUNING.DYM.ROOM_BERRYBUSH ~= 1 then
			room.contents.distributeprefabs.berrybush = room.contents.distributeprefabs.berrybush * GLOBAL.TUNING.DYM.ROOM_BERRYBUSH
		end
		if room.contents.distributeprefabs.berrybush_juicy ~= nil and GLOBAL.TUNING.DYM.ROOM_BERRYBUSH ~= 1 then
			room.contents.distributeprefabs.berrybush_juicy = room.contents.distributeprefabs.berrybush_juicy * GLOBAL.TUNING.DYM.ROOM_BERRYBUSH
		end
		if room.contents.distributeprefabs.evergreen ~= nil and GLOBAL.TUNING.DYM.ROOM_EVERGREEN ~= 1 then
			room.contents.distributeprefabs.evergreen = room.contents.distributeprefabs.evergreen * GLOBAL.TUNING.DYM.ROOM_EVERGREEN
		end
		if room.contents.distributeprefabs.carrot_planted ~= nil and GLOBAL.TUNING.DYM.ROOM_CARROT ~= 1 then
			room.contents.distributeprefabs.carrot_planted = room.contents.distributeprefabs.carrot_planted * GLOBAL.TUNING.DYM.ROOM_CARROT
		end
		if room.contents.distributeprefabs.flower ~= nil and GLOBAL.TUNING.DYM.ROOM_FLOWER ~= 1 then
			room.contents.distributeprefabs.flower = room.contents.distributeprefabs.flower * GLOBAL.TUNING.DYM.ROOM_CARROT
		end
		if room.contents.distributeprefabs.reeds ~= nil and GLOBAL.TUNING.DYM.ROOM_REEDS ~= 1 then
			room.contents.distributeprefabs.reeds = room.contents.distributeprefabs.reeds * GLOBAL.TUNING.DYM.ROOM_CARROT
		end
		if room.contents.distributeprefabs.marsh_bush ~= nil and GLOBAL.TUNING.DYM.ROOM_MARSHBUSH ~= 1 then
			room.contents.distributeprefabs.marsh_bush = room.contents.distributeprefabs.marsh_bush * GLOBAL.TUNING.DYM.ROOM_MARSHBUSH
		end
		if room.contents.distributeprefabs.red_mushroom ~= nil and GLOBAL.TUNING.DYM.ROOM_MUSHROOM ~= 1 then
			room.contents.distributeprefabs.red_mushroom = room.contents.distributeprefabs.red_mushroom * GLOBAL.TUNING.DYM.ROOM_MUSHROOM
		end
		if room.contents.distributeprefabs.green_mushroom ~= nil and GLOBAL.TUNING.DYM.ROOM_MUSHROOM ~= 1 then
			room.contents.distributeprefabs.green_mushroom = room.contents.distributeprefabs.green_mushroom * GLOBAL.TUNING.DYM.ROOM_MUSHROOM
		end
		if room.contents.distributeprefabs.blue_mushroom ~= nil and GLOBAL.TUNING.DYM.ROOM_MUSHROOM ~= 1 then
			room.contents.distributeprefabs.blue_mushroom = room.contents.distributeprefabs.blue_mushroom * GLOBAL.TUNING.DYM.ROOM_MUSHROOM
		end
		if room.contents.distributeprefabs.cactus ~= nil and GLOBAL.TUNING.DYM.ROOM_CACTUS ~= 1 then
			room.contents.distributeprefabs.cactus = room.contents.distributeprefabs.cactus * GLOBAL.TUNING.DYM.ROOM_CACTUS
		end
		if room.contents.distributeprefabs.oasis_cactus ~= nil and GLOBAL.TUNING.DYM.ROOM_CACTUS ~= 1 then
			room.contents.distributeprefabs.oasis_cactus = room.contents.distributeprefabs.oasis_cactus * GLOBAL.TUNING.DYM.ROOM_CACTUS
		end
		if room.contents.distributeprefabs.evergreen_sparse ~= nil and GLOBAL.TUNING.DYM.ROOM_EVERGREEN ~= 1 then
			room.contents.distributeprefabs.evergreen_sparse = room.contents.distributeprefabs.evergreen_sparse * GLOBAL.TUNING.DYM.ROOM_EVERGREEN
		end
		if room.contents.distributeprefabs.deciduoustree ~= nil and GLOBAL.TUNING.DYM.ROOM_DECIDUOUS ~= 1 then
			room.contents.distributeprefabs.deciduoustree = room.contents.distributeprefabs.deciduoustree * GLOBAL.TUNING.DYM.ROOM_DECIDUOUS
		end
		if room.contents.distributeprefabs.marsh_tree ~= nil and GLOBAL.TUNING.DYM.ROOM_MARSHTREE ~= 1 then
			room.contents.distributeprefabs.marsh_tree = room.contents.distributeprefabs.marsh_tree * GLOBAL.TUNING.DYM.ROOM_MARSHTREE
		end
		if room.contents.distributeprefabs.pond ~= nil and GLOBAL.TUNING.DYM.ROOM_POND ~= 1 then
			room.contents.distributeprefabs.pond = room.contents.distributeprefabs.pond * GLOBAL.TUNING.DYM.ROOM_POND
		end
		if room.contents.distributeprefabs.pond_mos ~= nil and GLOBAL.TUNING.DYM.ROOM_POND2 ~= 1 then
			room.contents.distributeprefabs.pond_mos = room.contents.distributeprefabs.pond_mos * GLOBAL.TUNING.DYM.ROOM_POND2
		end
		if room.contents.distributeprefabs.rock1 ~= nil and GLOBAL.TUNING.DYM.ROOM_ROCK1 ~= 1 then
			room.contents.distributeprefabs.rock1 = room.contents.distributeprefabs.rock1 * GLOBAL.TUNING.DYM.ROOM_ROCK1
		end
		if room.contents.distributeprefabs.rock2 ~= nil and GLOBAL.TUNING.DYM.ROOM_ROCK2 ~= 1 then
			room.contents.distributeprefabs.rock2 = room.contents.distributeprefabs.rock2 * GLOBAL.TUNING.DYM.ROOM_ROCK2
		end
		if room.contents.distributeprefabs.flint ~= nil and GLOBAL.TUNING.DYM.ROOM_FLINT ~= 1 then
			room.contents.distributeprefabs.flint = room.contents.distributeprefabs.flint * GLOBAL.TUNING.DYM.ROOM_FLINT
		end
		if room.contents.distributeprefabs.pighouse ~= nil and GLOBAL.TUNING.DYM.ROOM_PIGHOUSE ~= 1 then
			room.contents.distributeprefabs.pighouse = room.contents.distributeprefabs.pighouse * GLOBAL.TUNING.DYM.ROOM_PIGHOUSE
		end
		if room.contents.distributeprefabs.mermhouse ~= nil and GLOBAL.TUNING.DYM.ROOM_MERMHOUSE ~= 1 then
			room.contents.distributeprefabs.mermhouse = room.contents.distributeprefabs.mermhouse * GLOBAL.TUNING.DYM.ROOM_MERMHOUSE
		end
		if room.contents.distributeprefabs.beehive ~= nil and GLOBAL.TUNING.DYM.ROOM_BEEHIVE ~= 1 then
			room.contents.distributeprefabs.beehive = room.contents.distributeprefabs.beehive * GLOBAL.TUNING.DYM.ROOM_BEEHIVE
		end
		if room.contents.distributeprefabs.spiderden ~= nil and GLOBAL.TUNING.DYM.ROOM_SPIDERDEN ~= 1 then
			room.contents.distributeprefabs.spiderden = room.contents.distributeprefabs.spiderden * GLOBAL.TUNING.DYM.ROOM_SPIDERDEN
		end
		if room.contents.distributeprefabs.houndmound ~= nil and GLOBAL.TUNING.DYM.ROOM_HOUNDMOUND ~= 1 then
			room.contents.distributeprefabs.houndmound = room.contents.distributeprefabs.houndmound * GLOBAL.TUNING.DYM.ROOM_HOUNDMOUND
		end
		if room.contents.distributeprefabs.tentacle ~= nil and GLOBAL.TUNING.DYM.ROOM_TENTACLE ~= 1 then
			room.contents.distributeprefabs.tentacle = room.contents.distributeprefabs.tentacle * GLOBAL.TUNING.DYM.ROOM_TENTACLE
		end
		if room.contents.distributeprefabs.tumbleweedspawner ~= nil and GLOBAL.TUNING.DYM.ROOM_TUMBLEWEED ~= 1 then
			room.contents.distributeprefabs.tumbleweedspawner = room.contents.distributeprefabs.tumbleweedspawner * GLOBAL.TUNING.DYM.ROOM_TUMBLEWEED
		end
		if room.contents.distributeprefabs.fireflies ~= nil and GLOBAL.TUNING.DYM.ROOM_FIREFLIES ~= 1 then
			room.contents.distributeprefabs.fireflies = room.contents.distributeprefabs.fireflies * GLOBAL.TUNING.DYM.ROOM_FIREFLIES
		end
		--[[ caves config soon
		if room.contents.distributeprefabs.cavelight ~= nil and GLOBAL.TUNING.DYM.ROOM_CAVELIGHT ~= 1 then
			room.contents.distributeprefabs.cavelight = room.contents.distributeprefabs.cavelight * GLOBAL.TUNING.DYM.ROOM_CAVELIGHT
		end
		if room.contents.distributeprefabs.cavelight_double ~= nil and GLOBAL.TUNING.DYM.ROOM_CAVELIGHT ~= 1 then
			room.contents.distributeprefabs.cavelight_double = room.contents.distributeprefabs.cavelight_double * GLOBAL.TUNING.DYM.ROOM_CAVELIGHT
		end
		if room.contents.distributeprefabs.cavelight_double ~= nil and GLOBAL.TUNING.DYM.ROOM_CAVELIGHT ~= 1 then
			room.contents.distributeprefabs.cavelight_double = room.contents.distributeprefabs.cavelight_double * GLOBAL.TUNING.DYM.ROOM_CAVELIGHT
		end
		if room.contents.distributeprefabs.cavelight_triple ~= nil and GLOBAL.TUNING.DYM.ROOM_CAVELIGHT ~= 1 then
			room.contents.distributeprefabs.cavelight_triple = room.contents.distributeprefabs.cavelight_triple * GLOBAL.TUNING.DYM.ROOM_CAVELIGHT
		end
		if room.contents.distributeprefabs.flower_cave ~= nil and GLOBAL.TUNING.DYM.ROOM_LIGHTFLOWER ~= 1 then
			room.contents.distributeprefabs.flower_cave = room.contents.distributeprefabs.flower_cave * GLOBAL.TUNING.DYM.ROOM_LIGHTFLOWER
		end]]
	end
end

for k, v in pairs(ROOMS_FOREST) do
	AddRoomPreInit(v, function(room)
		ForestRoomPrefabs(room)
	end)
end

--	Tasks
	
local tasksfile = require("map/tasks")
local randomregions = {"mainland", "doyourmap1", "doyourmap2", "doyourmap3", "doyourmap4", "doyourmap5"}
local randomregions2 = {"mainland", "doyourmap1", "doyourmap2", "doyourmap3", "doyourmap4", "doyourmap5", "doyourmap6", "doyourmap7", "doyourmap8", "doyourmap9", "doyourmap10"}

AddLevelPreInitAny(function(tasksetdata)
	thetasks = GLOBAL.ArrayUnion(tasksetdata.tasks, tasksetdata.optionaltasks)
	for i, name in ipairs(thetasks) do
		task = tasksfile.GetTaskByName(name)
		if task ~= nil then
			--	Regions
			local region = GetModConfigData("region_"..name)
			if region then
				if region == "random" then
					region = randomregions[math.random(#randomregions)]
				elseif region == "random10" then
					region = randomregions2[math.random(#randomregions2)]
				end
				task.region_id = region
				if region ~= "mainland" then
					task.room_tags = GLOBAL.ArrayUnion(task.room_tags,{"not_mainland"})
					print("Do Your Map :", "Changed "..name.." region")
				end
			end
			--	Size
			local size = GetModConfigData("size_"..name)
			local bgroom = task.background_room
			if size and size ~= false and bgroom ~= nil then
				task.room_choices[bgroom] = size
			end
		end
	end
end)

--	Tasksets

local function Forest(taskset)
	if taskset ~= nil and taskset.location == "forest" then
		for k, v in pairs(TASKS_FOREST) do
			if GetModConfigData("task_"..k) == true then
				table.insert(taskset.tasks, v.name)
				if v.required == false then
					for k2, optional in pairs(taskset.optionaltasks) do
						if optional == task then
							table.remove(taskset.optionaltasks, k2)
						end
					end
					print("Do Your Map :", "Added "..v.name.." to worldgen")
				end
			elseif GetModConfigData("task_"..k) == false then
				if v.required == true then
					for k2, required in pairs(taskset.tasks) do
						if required == task then
							table.remove(taskset.tasks, k2)
						end
					end
				elseif v.required == false then
					for k2, optional in pairs(taskset.optionaltasks) do
						if optional == task then
							table.remove(taskset.optionaltasks, k2)
						end
					end
				end
				print("Do Your Map :", "Removed "..v.name.." from worldgen")
			end
		end
		if taskset.numoptionaltasks ~= nil then
			taskset.numoptionaltasks = GetModConfigData("task_forest_randomcount")
			print("Do Your Map :", taskset.numoptionaltasks.." random task will be selected at the surface")
		end
		
		local spawnloc = GetModConfigData("misc_spawnlocation")
		if spawnloc == "random" then
			spawnloc = TASKS_FOREST[math.random(#TASKS_FOREST)]
		else
			taskset.valid_start_tasks = {spawnloc}
		end
	end
end

local function Caves(taskset)
	if taskset ~= nil and taskset.location == "cave" then
		for k, v in pairs(TASKS_CAVES) do
			if GetModConfigData("task_"..k) == true then
				table.insert(taskset.tasks, v.name)
				if v.required == false then
					for k2, optional in pairs(taskset.optionaltasks) do
						if optional == task then
							table.remove(taskset.optionaltasks, k2)
						end
					end
					print("Do Your Map :", "Added "..v.name.." to worldgen")
				end
			elseif GetModConfigData("task_"..k) == false then
				if v.required == true then
					for k2, required in pairs(taskset.tasks) do
						if required == task then
							table.remove(taskset.tasks, k2)
						end
					end
				elseif v.required == false then
					for k2, optional in pairs(taskset.optionaltasks) do
						if optional == task then
							table.remove(taskset.optionaltasks, k2)
						end
					end
				end
				print("Do Your Map :", "Removed "..v.name.." from worldgen")
			end
		end
		if taskset.numoptionaltasks ~= nil then
			taskset.numoptionaltasks = GetModConfigData("task_caves_randomcount")
			print("Do Your Map :", taskset.numoptionaltasks.." random task will be selected in caves")
		end
	end
end

AddTaskSetPreInitAny(Forest)

AddTaskSetPreInitAny(Caves)

--	Ocean

for k, v in pairs(ROOMS_OCEAN) do
	local hermitisland = GetModConfigData("ocean_crabkinglocation")
	local crabking = GetModConfigData("ocean_hermitlocation")
	AddRoomPreInit(k, function(room)
		if hermitisland == k then
			room.countstaticlayouts = {["HermitcrabIsland"] = 1}
		else
			room.countstaticlayouts = {["HermitcrabIsland"] = 0}
		end
		if crabking == k then
			room.countstaticlayouts = {["CrabKing"] = 1}
		else
			room.countstaticlayouts = {["CrabKing"] = 0}
		end
	end)
end

--	Setpieces

local randomsetpiece_default = {"Badlands", "Beeeees!", "Dig that rock", "For a nice walk", "Forest hunters", "Great Plains", "Lightning Bluff", "Make a pick", "Speak to the king", "Squeltch"}
local randomsetpiece_marsh = {"Squeltch"}
local randomsetpiece_rock = {"Badlands", "Dig that rock", "Lightning Bluff"}
local randomsetpiece_rock2 = {"Dig that rock", "Kill the spiders", "Mole Colony Rocks"}
local randomsetpiece_savanna = {"Great Plains", "The hunters"}

local SETPIECES =
{
	["beefalofarm"] =			{setpiece = "Beefalo Farm", 			prefab = "treasurechest",	random = randomsetpiece_savanna},
	["firehounds"] =			{setpiece = "Fire Hounds", 				prefab = "firestaff",		random = randomsetpiece_default},
	["graveyard"] =				{setpiece = "Dev Graveyard", 			prefab = "gravestone",		random = randomsetpiece_default},
	["houndrocks"] =			{setpiece = "hound_rocks", 				prefab = "houndmound",		random = randomsetpiece_rock},
	["icehounds"] =				{setpiece = "Ice Hounds", 				prefab = "icestaff",		random = randomsetpiece_default},
	["insanepighouse"] =		{setpiece = "InsanePighouse", 			prefab = "basalt",			random = randomsetpiece_default},
	["mushroomcircle1"] =		{setpiece = "MushroomRingSmall", 		prefab = nil,				random = randomsetpiece_rock2},
	["mushroomcircle2"] =		{setpiece = "MushroomRingMedium", 		prefab = nil,				random = randomsetpiece_rock2},
	["mushroomcircle3"] =		{setpiece = "MushroomRingLarge", 		prefab = nil,				random = randomsetpiece_rock2},
	["pigguardberries"] =		{setpiece = "pigguard_berries_easy", 	prefab = "pigtorch",		random = randomsetpiece_default},
	["pigguardberrieseasy"] =	{setpiece = "pigguard_berries", 		prefab = "pigtorch",		random = randomsetpiece_default},
	["pigguardgrass"] =			{setpiece = "pigguard_grass", 			prefab = "pigtorch",		random = randomsetpiece_default},
	["pigguardgrasseasy"] =		{setpiece = "pigguard_grass_easy",		prefab = "pigtorch",		random = randomsetpiece_default},
	["reedtrap"] =				{setpiece = "tenticle_reeds", 			prefab = "tentacle",		random = randomsetpiece_marsh},
	["rottedbase"] =			{setpiece = "Rotted Base", 				prefab = "treasurechest",	random = randomsetpiece_marsh},
	["sleepingspider"] =		{setpiece = "Sleeping Spider", 			prefab = "spider_warrior",	random = randomsetpiece_default},
	["tallbirdrocks"] =			{setpiece = "tallbird_rocks", 			prefab = "tallbirdnest",	random = randomsetpiece_rock2},
}

for k, v in pairs(SETPIECES) do
	local config = GetModConfigData("setpiece_"..k)
	
	if config ~= false then
		for k2, v2 in pairs(TASKS_FOREST) do
			if config == "random" then
				config = v.random[math.random(#v.random)]
			end
			if config == v2.name then
				local ground = v2.turf
				local percent = v2.percent
				local prefabs = v2.prefabs
				AddRoom("DYM_"..k, { colour = {r = 0.5, g = 0.6, b = 0.08, a = 0.1},
				value = ground,
				required_prefabs 		= {v.prefab},
				contents = {
					distributepercent	= percent,
					distributeprefabs	= prefabs,
					countstaticlayouts	= {[v.setpiece] = 1}
				}})
				AddTaskPreInit(v2.name, function(task)
					task.room_choices["DYM_"..k] = 1
					print("Do Your Map :", "Created a dedicated room for the "..v.setpiece.." setpiece in "..config)
				end)
			end
		end
	end
end

--	Wormholes

local Layouts = GLOBAL.require("map/layouts").Layouts
local StaticLayout = GLOBAL.require("map/static_layout")

local wormholedefault = {"Make a pick", "Dig that rock", "Great Plains", "Squeltch", "Beeeees!", "Speak to the king", "Forest hunters", "Befriend the pigs", "For a nice walk", "Kill the spiders", "Killer bees!", "Make a Beehat", "The hunters", "Magic meadow", "Frogs and bugs", "Badlands"}
local wormholemoonisland = {"MoonIsland_IslandShards", "MoonIsland_Beach", "MoonIsland_Forest", "MoonIsland_Mine", "MoonIsland_Baths"}
local wormholecount = GetModConfigData("wormhole_count")

AddTaskSetPreInitAny(function(taskset)
	if taskset.location == "forest" then
		taskset.set_pieces["WormholeGrass"] = {count = 0, tasks = wormholedefault}
		if wormholecount >= 2 then
			for i = 1, wormholecount do
				Layouts["WormholeDYM"..i] = StaticLayout.Get("map/static_layouts/wormhole_grass")
				
				local wormholetask = wormholedefault
				if GetModConfigData("wormhole_"..i) ~= false then
					if GetModConfigData("wormhole_"..i) == "Moon Island" then
						wormholetask = wormholemoonisland
					else
						wormholetask = {GetModConfigData("wormhole_"..i)}
					end
				end
				
				taskset.set_pieces["WormholeDYM"..i] = {count = 1, tasks = wormholetask}
			end
		end
	end
end)


--	Cave Exits
local caveexit_lock = GetModConfigData("misc_lock_caveexit")

if caveexit_lock ~= false then
	for i = 1, 10 do
		AddTaskPreInit("CaveExitTask"..i, function(task)
			if caveexit_lock == 3 then
				task.locks = {LOCKS.TIER3}
			elseif caveexit_lock == 2 then
				task.locks = {LOCKS.TIER2}
			elseif caveexit_lock == 1 then
				task.locks = {LOCKS.TIER1}
			end
		end)
	end
end