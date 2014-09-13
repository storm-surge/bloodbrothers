#include <macro.h>
/*
	Master Life Configuration File
	This file is to setup variables for the client, there are still other configuration files in the system

*****************************
****** Backend Variables *****
*****************************
*/
life_query_time = time;
life_action_delay = time;
life_trunk_vehicle = Objnull;
life_session_completed = false;
life_garage_store = false;
life_session_tries = 0;
life_net_dropped = false;
life_hit_explosive = false;
life_siren_active = false;
life_ais_medequip_array = [];
life_ais_repairequip_array = [];
life_action_repair = false;
life_clothing_filter = 0;
life_clothing_uniform = -1;
life_redgull_effect = time;
life_is_processing = false;
life_bail_paid = false;
life_down22 =false;
life_sex_ill = 0;
life_checked = 0;
life_is_alive = false;
life_impound_inuse = false;
life_action_inUse = false;
life_spikestrip = ObjNull;
life_respawn_timer = 0.10; //Scaled in minutes
life_has_insurance = false;
life_knockout = false;
life_interrupted = false;
life_respawned = false;
life_removeWanted = false;
life_action_gather = false;
life_drugged_cocaine = -1;
life_drugged_cocaine_duration = 10; // In Minutes
life_drugged_weed = -1;
life_drugged_weed_duration = 3;
life_drugged_alkohol = -1;
life_drugged_alkohol_duration = 5; // In Minutes

//Revive constant variables.
__CONST__(life_revive_cops,FALSE); //Set to false if you don't want cops to be able to revive downed players.
__CONST__(life_revive_fee,250); //Fee for players to pay when revived.

//House Limit
__CONST__(life_houseLimit,2); //Maximum amount of houses a player can buy (TODO: Make Tiered licenses).
__CONST__(life_houseLimitdonator,5); //Maximum amount of houses a player can buy (TODO: Make Tiered licenses).





//Gang related stuff?
__CONST__(life_gangPrice,75000); //Price for creating a gang (They're all persistent so keep it high to avoid 345345345 gangs).
__CONST__(life_gangUpgradeBase,10000); //MASDASDASD
__CONST__(life_gangUpgradeMultipler,2.5); //BLAH

//Uniform price (0),Hat Price (1),Glasses Price (2),Vest Price (3),Backpack Price (4)
life_clothing_purchase = [-1,-1,-1,-1,-1];
/*
*****************************
****** Weight Variables *****
*****************************
*/
life_maxWeight = 64; //Identifies the max carrying weight (gets adjusted throughout game when wearing different types of clothing).
life_maxWeightT = 64; //Static variable representing the players max carrying weight on start.
life_carryWeight = 0; //Represents the players current inventory weight (MUST START AT 0).
player setvariable ["punkte",0];
/*
*****************************
****** Food Variables *******
*****************************
*/
life_eat_Salema = 40;
life_eat_Ornate = 20;
life_eat_Mackerel = 20;
life_eat_Tuna = 100;
life_eat_Mullet = 30;
life_eat_CatShark = 60;
life_eat_Rabbit = 20;
life_eat_Apple = 5;
life_eat_Grapes = 5;
life_eat_turtlesoup = 62;
life_eat_donuts = 30;

/*
*****************************
****** Life Variables *******
*****************************
*/
life_net_dropped = false;
life_hit_explosive = false;
life_siren_active = false;
life_bank_fail = false;
life_use_atm = true;
life_is_arrested = false;
life_delivery_in_progress = false;
life_action_in_use = false;
life_thirst = 100;
life_hunger = 100;
__CONST__(life_paycheck_period,5); //Five minutes
life_bargeld = 0;
__CONST__(life_impound_car,350);
__CONST__(life_impound_boat,250);
__CONST__(life_impound_air,850);
life_istazed = false;
life_my_gang = ObjNull;

// Kavala SafeZone
life_safezone_penalty = 0;
life_safezone_penalty_time = time;
life_safezone_status = false;
life_safezone_config = [
["safezone","Kavalla",civilian,90,true]
];
life_vehicles = [];
bank_robber = [];
switch (playerSide) do
{
	case west: 
	{
		life_kontogeld = 15000; //Starting Bank Money
		life_paycheck = 3500; //Paycheck Amount
	};
	case civilian: 
	{
		life_kontogeld = 3000; //Starting Bank Money
		life_paycheck = 300; //Paycheck Amount
	};
	case east: 
	{
		life_kontogeld = 5500; //Starting Bank Money
		life_paycheck = 400; //Paycheck Amount
	};
	
	case independent: {
		life_kontogeld = 14500;
		life_paycheck = 1750;
	};
};

/*
	Master Array of items?
*/
life_vShop_rentalOnly = ["B_G_Offroad_01_armed_F"];
__CONST__(life_vShop_rentalOnly,life_vShop_rentalOnly); //These vehicles can never be bought and only 'rented'. Used as a balancer & money sink. If you want your server to be chaotic then fine.. Remove it..

life_inv_items = 
[
	"life_inv_oilu",
	"life_inv_oilp",
	"life_inv_heroinu",
	"life_inv_heroinp",
	"life_inv_cannabis",
	"life_inv_marijuana",
	"life_inv_apple",
	"life_inv_rabbit",
	"life_inv_salema",
	"life_inv_ornate",
	"life_inv_mackerel",
	"life_inv_tuna",
	"life_inv_frog",
	"life_inv_froglegs",
	"life_inv_froglsd",
	"life_inv_mullet",
	"life_inv_catshark",
	"life_inv_turtle",
	"life_inv_fishingpoles",
	"life_inv_water",
	"life_inv_donuts",
	"life_inv_turtlesoup",
	"life_inv_coffee",
	"life_inv_fuelF",
	"life_inv_fuelE",
	"life_inv_pickaxe",
	"life_inv_copperore",
	"life_inv_ironore",
	"life_inv_ironr",
	"life_inv_copperr",
	"life_inv_sand",
	"life_inv_salt",
	"life_inv_saltr",
	"life_inv_glass",
	"life_inv_tbacon",
	"life_inv_lockpick",
	"life_inv_redgull",
	"life_inv_peach",
	"life_inv_diamond",
	"life_inv_coke",
	"life_inv_cokep",
	"life_inv_diamondr",
	"life_inv_spikeStrip",
	"life_inv_rock",
	"life_inv_cement",
	"life_inv_goldbar",
	"life_inv_blastingcharge",
	"life_inv_silver",
	"life_inv_silverr",
	"life_inv_gold",
	"life_inv_goldr",
	"life_inv_coal",
	"life_inv_coalr",
	"life_inv_moonshine",
	"life_inv_vodka",
	"life_inv_grapes",
	"life_inv_boltcutter",
	"life_inv_defusekit",
	"life_inv_storagesmall",
	"life_inv_storagebig",
	"life_inv_defibrilator",
	"life_inv_bandage",
	"life_inv_morphine",
	"life_inv_medkit"
];

//Setup variable inv vars.
{missionNamespace setVariable[_x,0];} foreach life_inv_items;
//Licenses [license var, civ/cop]
life_licenses =
[
	["license_cop_air","cop"],
	["license_cop_swat","cop"],
	["license_cop_cg","cop"],
	["license_civ_driver","civ"],
	["license_civ_air","civ"],
	["license_civ_heroin","civ"],
	["license_civ_marijuana","civ"],
	["license_civ_gang","civ"],
	["license_civ_boat","civ"],
	["license_civ_oil","civ"],
	["license_civ_dive","civ"],
	["license_civ_truck","civ"],
	["license_civ_gun","civ"],
	["license_civ_rebel","civ"],
	["license_civ_coke","civ"],
	["license_civ_diamond","civ"],
	["license_civ_copper","civ"],
	["license_civ_iron","civ"],
	["license_civ_sand","civ"],
	["license_civ_salt","civ"],
	["license_civ_cement","civ"],
	["license_civ_silver","civ"],
	["license_civ_gold","civ"],
	["license_civ_coal","civ"],
	["license_civ_grapes","civ"],
	["license_civ_moonshine","civ"],
	["license_med_air","med"],
	["license_civ_home","civ"]
];

//Setup License Variables
{missionNamespace setVariable[(_x select 0),false];} foreach life_licenses;

life_dp_points = ["dp_1","dp_2","dp_3","dp_4","dp_5","dp_6","dp_7","dp_8","dp_9","dp_10","dp_11","dp_12","dp_13","dp_14","dp_15","dp_15","dp_16","dp_17","dp_18","dp_19","dp_20","dp_21","dp_22","dp_23","dp_24","dp_25"];
//[shortVar,reward]
life_illegal_items = [["heroinu",2000],["heroinp",4500],["cocaine",3000],["cocainep",7500],["marijuana",5200],["froglsd",2900],["turtle",9500],["froglegs",500],["frog",1500],["moonshine",1800],["cannabis",1000],["spikeStrip",1200]];
life_illegal_item_cleared = ["heroinu","heroinp","cocaine","cocainep","marijuana","turtle","moonshine","froglsd","froglegs","frog","cannabis"];

life_taxi_stands =
[
	["taxi_spawn_kavala","Kavala",civilian],
	["taxi_spawn_athira","Athira",civilian], 
	["taxi_spawn_pyrgos","Pyrgos",civilian], 
	["taxi_spawn_sofia","Sofia",civilian], 
	["taxi_spawn_airfield","Airfield",civilian],
					["taxi_spawn_kavala","Kavala",east],
					["taxi_spawn_athira","Athira",east], 
					["taxi_spawn_pyrgos","Pyrgos",east], 
					["taxi_spawn_sofia","Sofia",east], 
					["taxi_spawn_airfield","Airfield",east],
					["taxi_spawn_ateam","A-Team Base",east],
	["taxi_spawn_kavalap","Kavala",west],
	["taxi_spawn_athirap","Athira",west],
	["taxi_spawn_pyrgosp","Pyrgos",west], 
	["taxi_spawn_sofiap","HW Patrol",west], 
	["taxi_spawn_airfieldp","Air HQ",west],
	["taxi_spawn_rebhq","Rebellen HQ",civilian]
];

/*
	Sell / buy arrays
*/
sell_array = 
[
	["turtle",9500],
	["turtlesoup",1000],
	["froglegs",500],
	["froglsd",2900],
	["frog",1500],
	["heroinu",2000],
	["heroinp",4500],
	["marijuana",5200],
	["cocaine",3000],
	["cocainep",7500],
	["glass",1250],
	["salt_r",1650],
	["cement",1950],
	["iron_r",2400],
	["copper_r",2500],
	["coalr",1550],
	["coal",500],
	["oilu",1700],
	["oilp",3200],
	["silverr",3250],
	["silver",1250],
	["goldr",4500],
	["gold",1500],
	["diamond",1500],
	["diamondc",4750],
	["apple",50],
	["salema",45],
	["ornate",40],
	["mackerel",175],
	["tuna",700],
	["mullet",250],
	["catshark",300],
	["rabbit",65],
	["water",5],
	["coffee",5],
	["donuts",60],
	["tbacon",25],
	["lockpick",150],
	["pickaxe",750],
	["redgull",200],
	["peach",55],
	["fuelF",500],
	["spikeStrip",1200],
	["moonshine",1800],
	["vodka",255],
	["grapes",70],
	["goldbar",153000]
];
__CONST__(sell_array,sell_array);

buy_array = 
[
	["BluKingBurger",100],
	["RoyalPita",195],
	["KingBurger",295],	
	["BurstKoke",10],
	["Gyros",200],
	["SubZeroEis",60],
	["Snake",150],
	["DoppelWhopperMenu",350],	
	["apple",65],
	["rabbit",75],	
	["salema",55],
	["ornate",50],
	["mackerel",200],
	["tuna",900],
	["mullet",300],
	["catshark",350],
	["water",10],	
	["turtlesoup",2500],
	["donuts",120],
	["coffee",10],
	["tbacon",75],
	["lockpick",5000],
	["pickaxe",1200],
	["redgull",1500],
	["fuelF",850],
	["peach",68],	
	["spikeStrip",2500],	
	["vodka",400],
	["grapes",95],
	["blastingcharge",35000],
	["boltcutter",125000],
	["defusekit",2500],
	["storagesmall",100000],
	["storagebig",250000],
	["medkit",500],
	["defibrilator",1000],
	["morphine",50],
	["bandage",25]
	
];
__CONST__(buy_array,buy_array);

life_weapon_shop_array =
[
	["arifle_sdar_F",7500],
	["hgun_P07_snds_F",650],
	["hgun_P07_F",1500],
	["Binocular",50],
	["ItemGPS",45],
	["ToolKit",75],
	["FirstAidKit",65],
	["Medikit",450],
	["NVGoggles",980],
	["16Rnd_9x21_Mag",15],
	["20Rnd_556x45_UW_mag",35],
	["ItemMap",35],
	["ItemCompass",25],
	["Chemlight_blue",50],
	["Chemlight_yellow",50],
	["Chemlight_green",50],
	["Chemlight_red",50],
	["hgun_Rook40_F",500],
	["arifle_Katiba_F",5000],
	["30Rnd_556x45_Stanag",65],
	["20Rnd_762x51_Mag",85],
	["30Rnd_65x39_caseless_green",50],
	["DemoCharge_Remote_Mag",7500],
	["SLAMDirectionalMine_Wire_Mag",2575],
	["optic_ACO_grn",250],
	["acc_flashlight",100],
	["srifle_EBR_F",15000],
	["arifle_TRG21_F",3500],
	["optic_MRCO",5000],
	["optic_Aco",850],
	["arifle_MX_F",7500],
	["arifle_MXC_F",5000],
	["arifle_MXM_F",8500],
	["MineDetector",500],
	["optic_Holosight",275],
	["acc_pointer_IR",175],
	["arifle_TRG20_F",2500],
	["SMG_01_F",1500],
	["arifle_Mk20C_F",4500],
	["30Rnd_45ACP_Mag_SMG_01",60],
	["30Rnd_9x21_Mag",30],
	["mini_Grenade",10]
];
__CONST__(life_weapon_shop_array,life_weapon_shop_array);

life_garage_prices =
[
	["B_QuadBike_01_F",550],
	["C_Hatchback_01_F",1500],
	["C_Offroad_01_F", 2500],
	["B_G_Offroad_01_F",3500],
	["C_SUV_01_F",5250],
	["C_Van_01_transport_F",7890],
	["C_Hatchback_01_sport_F",2350],
	["C_Van_01_fuel_F",4500],
	["I_Heli_Transport_02_F",100000],
	["B_Heli_Transport_01_F",100000],
	["C_Van_01_box_F",9000],
	["I_Truck_02_transport_F",12000],
	["I_Truck_02_covered_F",14500],
	["B_Truck_01_transport_F",25650],
	["B_Truck_01_box_F", 35000],
	["O_MRAP_02_F",45000],
	["B_Heli_Light_01_F",45000],
	["O_Heli_Light_02_unarmed_F",65000],
	["C_Rubberboat",400],
	["C_Boat_Civil_01_F",4500],
	["B_Boat_Transport_01_F",450],
	["C_Boat_Civil_01_police_F",3500],
	["B_Boat_Armed_01_minigun_F",16500],
	["B_SDV_01_F",25000],
	["B_MRAP_01_F",7500]
];
__CONST__(life_garage_prices,life_garage_prices);

life_garage_sell =
[
		["B_Quadbike_01_F",3000],
		["C_Hatchback_01_F",10000],
		["C_Offroad_01_F", 15000],
		["B_G_Offroad_01_F",15000],
		["C_SUV_01_F",25000],
		["C_Van_01_transport_F",75000],
		["C_Hatchback_01_sport_F",30000],
		["C_Van_01_fuel_F",30000],
		["I_Heli_Transport_02_F",2500000],
		["B_Heli_Transport_01_F",1000000],
		["C_Van_01_box_F",100000],
		["I_Truck_02_transport_F",200000],
		["I_Truck_02_covered_F",250000],
		["B_Truck_01_transport_F",1000000],
		["B_Truck_01_box_F", 2500000],
		["O_MRAP_02_F",750000],
		["B_Heli_Light_01_F",1250000],
		["O_Heli_Light_02_unarmed_F",3000000],
		["C_Rubberboat",950],
		["C_Boat_Civil_01_F",6800],
		["B_Boat_Transport_01_F",850],
		["C_Boat_Civil_01_police_F",4950],
		["B_Boat_Armed_01_minigun_F",21000],
		["B_SDV_01_F",45000],
		["B_MRAP_01_F",150000],
		["C_Kart_01_Blu_F",5000],
		["C_Kart_01_Fuel_F",5000],
		["C_Kart_01_Red_F",5000],
		["C_Kart_01_Vrana_F",5000],
		["I_Truck_02_medical_F",1000000],
		["O_Truck_03_medical_F",1000000],
		["B_Truck_01_medical_F",1000000],
		["B_Truck_01_ammo_F",1000000],
		["B_Truck_01_fuel_F",200000],
		["B_Truck_01_covered_F",1500000],
		["O_Truck_03_transport_F",500000],
		["B_G_Offroad_01_armed_F",1],
		["I_Heli_light_03_unarmed_F",1000000],
		["I_MRAP_03_F",100000],
		["B_MRAP_01_hmg_F",2500000],
		["I_MRAP_03_hmg_F",2500000]
];
__CONST__(life_garage_sell,life_garage_sell);

////////////CHOPSHOP

life_chopshop_sell =
[
		["B_Quadbike_01_F",3000],
		["C_Hatchback_01_F",10000],
		["C_Offroad_01_F", 15000],
		["B_G_Offroad_01_F",15000],
		["C_SUV_01_F",25000],
		["C_Van_01_transport_F",75000],
		["C_Hatchback_01_sport_F",30000],
		["C_Van_01_fuel_F",30000],
		["I_Heli_Transport_02_F",2500000],
		["B_Heli_Transport_01_F",1000000],
		["C_Van_01_box_F",100000],
		["I_Truck_02_transport_F",200000],
		["I_Truck_02_covered_F",250000],
		["B_Truck_01_transport_F",1000000],
		["B_Truck_01_box_F", 2500000],
		["O_MRAP_02_F",750000],
		["B_Heli_Light_01_F",1250000],
		["O_Heli_Light_02_unarmed_F",3000000],
		["C_Rubberboat",950],
		["C_Boat_Civil_01_F",6800],
		["B_Boat_Transport_01_F",850],
		["C_Boat_Civil_01_police_F",4950],
		["B_Boat_Armed_01_minigun_F",21000],
		["B_SDV_01_F",45000],
		["B_MRAP_01_F",150000],
		["C_Kart_01_Blu_F",5000],
		["C_Kart_01_Fuel_F",5000],
		["C_Kart_01_Red_F",5000],
		["C_Kart_01_Vrana_F",5000],
		["I_Truck_02_medical_F",1000000],
		["O_Truck_03_medical_F",1000000],
		["B_Truck_01_medical_F",1000000],
		["B_Truck_01_ammo_F",1000000],
		["B_Truck_01_fuel_F",200000],
		["B_Truck_01_covered_F",1500000],
		["O_Truck_03_transport_F",500000],
		["B_G_Offroad_01_armed_F",1],
		["I_Heli_light_03_unarmed_F",1000000],
		["I_MRAP_03_F",100000],
		["B_MRAP_01_hmg_F",2500000],
		["I_MRAP_03_hmg_F",2500000]
];
__CONST__(life_chopshop_sell,life_chopshop_sell);