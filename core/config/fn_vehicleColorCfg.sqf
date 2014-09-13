/*
	File: fn_vehicleColorCfg.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration for vehicle colors.
*/
private["_vehicle","_ret","_path"];
_vehicle = [_this,0,"",[""]] call BIS_fnc_param;
if(_vehicle == "") exitWith {[]};
_ret = [];

switch (_vehicle) do
{
	case "I_Heli_Transport_02_F": //Mohawk
	{
		_path = "\a3\air_f_beta\Heli_Transport_02\Data\Skins\";
		_ret =
		[
			[_path + "heli_transport_02_1_ion_co.paa","civ",_path + "heli_transport_02_2_ion_co.paa",_path + "heli_transport_02_3_ion_co.paa"],
			[_path + "heli_transport_02_1_dahoman_co.paa","civ",_path + "heli_transport_02_2_dahoman_co.paa",_path + "heli_transport_02_3_dahoman_co.paa"],
			["textures\opfor\mohawk4.jpg","opfor","textures\opfor\mohawk3.jpg","textures\opfor\mohawk2.jpg"]
			
		];
	};
	
	case "B_Truck_01_covered_F": //HMTT transport covered
	{
		_ret = 
		[
			["textures\opfor\hemtt\hemmt_1.jpg","opfor","textures\opfor\hemtt\hemmt_2.jpg","textures\opfor\hemtt\hemmt_3.jpg","textures\opfor\hemtt\hemmt_4.jpg"]
			
		];
	};
	
	case "I_Heli_light_03_unarmed_F": //Hellcat
	{
		_path = "\a3\soft_f_gamma\Hatchback_01\data\";
		_ret =
		[
			["textures\cop\cop_hellcat.jpg","cop"],
			["textures\rebel\hellcat_rebel.jpg","reb"],
			["textures\opfor\hellcat.jpg","opfor"]
			
		];
	};
	
	case "B_Truck_01_transport_F":
	{
		_ret = 
		[
	["textures\civ\tours_1.jpg","cop","textures\civ\tours_2.jpg"]
		];
	};
	case "C_Hatchback_01_sport_F":
	{
		_path = "\a3\soft_f_gamma\Hatchback_01\data\";
		_ret =
		[
			[_path + "hatchback_01_ext_sport01_co.paa","civ"],
			[_path + "hatchback_01_ext_sport02_co.paa","civ"],
			[_path + "hatchback_01_ext_sport03_co.paa","civ"],
			[_path + "hatchback_01_ext_sport04_co.paa","civ"],
			[_path + "hatchback_01_ext_sport05_co.paa","civ"],
			[_path + "hatchback_01_ext_sport06_co.paa","civ"],
			["#(ai,64,64,1)Fresnel(1.3,7)","civ"],
			["textures\civ\hatchback_badmobil.jpg","civ"],
			["textures\civ\civ_hatchback_sport.jpg","civ"],
			["textures\civ\dragon_hatchback_sport.jpg","civ"],
			["textures\civ\redgull_hatchback_sport.jpg","civ"],
			["textures\civ\ghost_hatchback_sport.jpg","civ"],
			["textures\civ\Hellokitty.paa","civ"],
			["textures\cop\cop_hatchback.jpg","cop"]
			
		];
	};
		
	case "C_Offroad_01_F":
	{
		_ret = 
		[
			["\A3\soft_F\Offroad_01\Data\offroad_01_ext_co.paa", "civ"], 
			["\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE01_CO.paa","civ"],
			["\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE02_CO.paa","civ"],
			["\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE03_CO.paa","civ"],
			["\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE04_CO.paa","civ"],
			["\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE05_CO.paa","civ"],
			["#(ai,64,64,1)Fresnel(0.3,3)","civ"],
			["textures\civ\offroad_tuning.jpg","civ"],
			["#(argb,8,8,3)color(0.6,0.3,0.01,1)","civ"],
			["textures\civ\offroad_Rockstar_energy.jpg","civ"],
			["textures\civ\offroad_badmobil.jpg","civ"],
			["#(argb,8,8,3)color(0.6,0.3,0.01,1)","civ"],			
			["textures\civ\civ_offroad.jpg","civ"],
			["textures\adac\adac_offroad.jpg","med"],
			["textures\cop\cop_offroad.jpg","cop"],
			["textures\opfor\offroader.jpg","opfor"]
		];
	};
	
	case "C_Hatchback_01_F":
	{
		_ret =
		[
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base01_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base02_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base03_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base04_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base06_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base07_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base08_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base09_co.paa","civ"]
		];
	};
	
	case "C_SUV_01_F":
	{
		_ret =
		[
			["\a3\soft_f_gamma\SUV_01\Data\suv_01_ext_co.paa","civ"],
			["\a3\soft_f_gamma\SUV_01\Data\suv_01_ext_02_co.paa","civ"],
			["\a3\soft_f_gamma\SUV_01\Data\suv_01_ext_03_co.paa","civ"],
			["\a3\soft_f_gamma\SUV_01\Data\suv_01_ext_04_co.paa","civ"],
			["textures\civ\suv_Ghostrider.jpg","civ"],
			["textures\civ\suv_green_tribal.jpg","civ"],
			["textures\civ\suv_Monster.jpg","civ"],
			["textures\civ\suv_white.jpg","civ"],					
			["textures\civ\ferrari_suv.jpg","civ"],
			["textures\civ\tribal_suv.jpg","civ"],
			["textures\civ\bb_veh.jpg","civ"],
			["textures\medic\medic_suv.jpg","med"],
			["textures\cop\cop_suv.jpg","cop"]
		];
	};
	
	case "C_Van_01_box_F":
	{
		_ret = 
		[
			["\a3\soft_f_gamma\Van_01\Data\van_01_ext_co.paa","civ"],
			["\a3\soft_f_gamma\Van_01\Data\van_01_ext_red_co.paa","civ"]
			
		];
	};
	
	case "C_Van_01_transport_F":
	{
		_ret = 
		[
			["\a3\soft_f_gamma\Van_01\Data\van_01_ext_co.paa","civ"],
			["\a3\soft_f_gamma\Van_01\Data\van_01_ext_red_co.paa","civ"]
		];
	};
	
	case "B_Quadbike_01_F":
	{
		_ret = 
		[
			["textures\cop\cop_quad.jpg","cop"],
			["\A3\Soft_F\Quadbike_01\Data\quadbike_01_opfor_co.paa","reb"],
			["\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_civ_black_co.paa","civ"],
			["\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_civ_blue_co.paa","civ"],
			["\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_civ_red_co.paa","civ"],
			["\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_civ_white_co.paa","civ"],
			["\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_indp_co.paa","civ"],
			["\a3\soft_f_gamma\Quadbike_01\data\quadbike_01_indp_hunter_co.paa","civ"],
			["\a3\soft_f_gamma\Quadbike_01\data\quadbike_01_indp_hunter_co.paa","reb"]
		];
	};
	
	case "B_Heli_Light_01_F": // hummingbird
	{
		_ret = 
		[
			["\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_ion_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_blue_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_indp_co.paa","donate"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_blueline_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_elliptical_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_furious_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_jeans_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_speedy_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_sunset_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_vrana_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_wave_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_digital_co.paa","reb"],
			["#(argb,8,8,3)color(1,1,1,0.8)","med"],
			["textures\cop\hummingbird.jpg","cop"],
			["textures\adac\adac_heli.jpg","med"],
			["textures\civ\weed.jpg","civ"],			
			["textures\opfor\hummingbird.jpg","opfor"],
			["textures\medic\medic_hummingbird.jpg","med"]
		
		];
	};
	case "B_Truck_01_mover_F":    //adac HEMTT
	{
	
	_ret = 
		[
			["textures\adac\hemtt.jpg","adac","textures\adac\hemtt_back.jpg"]
		];
	
	};
	case "O_Heli_Light_02_unarmed_F": // ORCA

	{
		_ret = 
		[
			["\a3\air_f\Heli_Light_02\Data\heli_light_02_ext_co.paa","civ"],
			["\a3\air_f\Heli_Light_02\Data\heli_light_02_ext_civilian_co.paa","civ"],
			["\a3\air_f\Heli_Light_02\Data\heli_light_02_ext_indp_co.paa","donate"],
			["\a3\air_f\Heli_Light_02\Data\heli_light_02_ext_opfor_co.paa","reb"],
			["textures\adac\orca_adac.jpg","med"],
			["textures\cop\cop_orca.jpg","cop"],
			["textures\opfor\orca.jpg","opfor"]
		];
	};
	case "I_MRAP_03_F":
	{
		_ret = 
		[
			["\a3\soft_f_beta\mrap_03\data\mrap_03_ext_indp_co.paa","civ"],
			["textures\cop\strider.jpg","cop"]
		];
	};
	case "O_Truck_03_transport_F":
	{
		_ret = 
		[			
			["textures\opfor\tempest1.jpg","opfor","textures\opfor\tempest2.jpg","textures\opfor\cargo1.jpg","textures\opfor\cargo2.jpg"]
		];
	};
	case "B_MRAP_01_F":
	{
		_ret = 
		[
			["textures\cop\cop_hunter_1.jpg","cop","textures\cop\cop_hunter_2.jpg"],
			["#(argb,8,8,3)color(0.05,0.05,0.05,1)","civ"],
			["textures\opfor\hunter1.jpg","opfor","textures\opfor\hunter2.jpg"],
			["\a3\soft_f\MRAP_01\data\mrap_01_base_co.paa","civ","\a3\soft_f\MRAP_01\data\mrap_01_adds_co.paa"]
			
			
		];
	};
	case "O_MRAP_02_F":
	{
		_ret = 
		[
			["textures\rebel\Ifrit_1.jpg","reb","textures\rebel\Ifrit_2.jpg"],
			["#(argb,8,8,3)color(0.05,0.05,0.05,1)","reb","#(argb,8,8,3)color(0.05,0.05,0.05,1)"]	
		];
	};
	case "I_Truck_02_covered_F":
	{
		_ret = 
		[
			["\A3\Soft_F_Beta\Truck_02\data\truck_02_kab_co.paa","civ","\a3\soft_f_beta\Truck_02\data\truck_02_kuz_co.paa"],
			["#(argb,8,8,3)color(0.05,0.05,0.05,1)","civ"]
		];
	};
	
	case "I_Truck_02_transport_F":
	{
		_ret = 
		[
			["\A3\Soft_F_Beta\Truck_02\data\truck_02_kab_co.paa","civ","\a3\soft_f_beta\Truck_02\data\truck_02_kuz_co.paa"],
			["#(argb,8,8,3)color(0.05,0.05,0.05,1)","civ"]
		];
	};
	case "B_Heli_Transport_01_F":
	{
		_ret = 
		[
			["textures\cop\cop_ghosthawk_1.jpg","cop","textures\cop\cop_ghosthawk_2.jpg"],
			["#(argb,8,8,3)color(0.05,0.05,0.05,1)","civ"]
		];
	};
	case "B_APC_Wheeled_01_cannon_F":
	{
		_ret = 
		[
			["#(argb,8,8,3)color(0.05,0.05,0.05,1)","civ"]
		];
	};
	
	case "O_Heli_Attack_02_black_F":
	{
		_ret = 
		[
			["#(argb,8,8,3)color(0.05,0.05,0.05,1)","civ"]
		];
	};
};

_ret;