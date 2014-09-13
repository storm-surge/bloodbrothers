#include <macro.h>
/*
	File: fn_weaponShopCfg.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for the weapon shops.
	
	Return:
	String: Close the menu
	Array: 
	[Shop Name,
	[ //Array of items to add to the store
		[classname,Custom Name (set nil for default),price]
	]]
*/
private["_shop"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {closeDialog 0}; //Bad shop type passed.

//////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////

switch(_shop) do
{
	case "cop_basic":
	{
		switch(true) do
		{
			case (playerSide != west): {"Du bist kein Polizist!"};
			default
			{
				["Cop Utensilien",
					[
						["arifle_sdar_F","Tazer Rifle",20000],
						["hgun_P07_snds_F","Tazer",2000],					
						["16Rnd_9x21_Mag",nil,50],
                        ["20Rnd_556x45_UW_mag","Taser Rifle Magazine",125],					
						["SMG_01_F",nil,19000],
						["30Rnd_45ACP_Mag_SMG_01",nil,300],
						["30Rnd_45ACP_Mag_SMG_01_tracer_green",nil,300],						
						["SMG_02_ACO_F",nil,19000],							//Direkt mit ACO Visier 
						["30Rnd_9x21_Mag",nil,75],
						["muzzle_snds_L",nil,100],
						["H_Beret_blk_POLICE",nil,1000],
						["Binocular",nil,150],
						["Rangefinder",nil,500],
						["SmokeShell",nil,1000],
						["SmokeShellGreen","Reizgas",200],						
						["SmokeShellBlue",nil,100],
						["ItemGPS",nil,100],
						["Itemwatch",nil,100],
						["ItemCompass",nil,50],
						["ItemMap",nil,50],
						["ToolKit",nil,250],
						["FirstAidKit",nil,150],
						["Medikit",nil,300],
						["MiniGrenade","Flashbang",100],
						["HandGrenade_Stone","Flashbang-neu",170],
						["NVGoggles","Nachtsichtgeraet",2000],
						["NVGoggles_INDEP","Nachtsichtgeraet",2000],
						["NVGoggles_OPFOR","Nachtsichtgeraet",2000]
					]
				];
			};
		};
	};

	case "cop_officer":
	{
		switch(true) do
		{
			case (playerSide != west): {"Du bist kein Polizist!"};
			case (__GETC__(life_coplevel) < 2): {"Du hast nicht den Rang eines Officers!"};
			default
			{
				["Officer Laden",
					[
						["arifle_MXC_Black_F","MX Negra C",30000],					
						["30Rnd_65x39_caseless_mag",nil,100],
						["30Rnd_65x39_caseless_mag_Tracer","Gummigeschosse",100],										
						["arifle_Mk20_plain_F","Mk 20",30000],
						["30Rnd_556x45_Stanag",nil,100],
						["acc_flashlight",nil,750],
						["muzzle_snds_H",nil,100],	
						["H_Beret_grn_SF",nil,1000],
						["optic_Holosight",nil,1200],
						["optic_MRCO",nil,10000]
					]
				];
			};
		};
	};

	case "cop_sergeant":
	{
		switch(true) do
		{
			case (playerSide != west): {"Du bist kein Polizist!"};
			case (__GETC__(life_coplevel) < 3): {"Du hast nicht den Rang eines Sargeants!"};
			default
			{
				["Sergeant Laden",
					[
						["arifle_MX_GL_Black_F","MX Negra GL",15000],											
						["30Rnd_65x39_caseless_mag",nil,100],
						["30Rnd_65x39_caseless_mag_Tracer","Gummigeschosse",100],					
						["optic_Arco",nil,10000],
						["optic_MRCO",nil,10000],						
						["1Rnd_SmokeGreen_Grenade_shell",nil,100],						
						["optic_Holosight",nil,1200],										
						["H_Beret_grn",nil,1000],
						["muzzle_snds_H",nil,100],
						["MiniGrenade","MiniGrenade",3000],
						["B_UAV_01_backpack_F",nil,80000],
						["B_UavTerminal",nil,50000]
					]
				];
			};
		};
	};
	
	case "cop_lieutenant":
	{
		switch(true) do
		{
			case (playerSide != west): {"Du bist kein Polizist!"};
			case (__GETC__(life_coplevel) < 4): {"Du hast nicht den Rang eines Lieutenant!"};
			default
			{
				["Lieutenant Laden",
					[						
						["arifle_MXM_Black_F","MXM Negra",30000],						
						["30Rnd_65x39_caseless_mag",nil,100],
						["100Rnd_65x39_caseless_mag",nil,1000],
						["30Rnd_65x39_caseless_mag_Tracer","Gummigeschosse",100],																	
						["srifle_LRR_F",nil,100000],
						["srifle_LRR_camo_F",nil,100000],
						["7Rnd_408_Mag",nil,1000],
						["muzzle_snds_H",nil,100],
						["H_Beret_red",nil,1000],
						["optic_MRCO",nil,10000],
						["optic_MRD",nil,200],
						["optic_DMS",nil,7500],
						["optic_Arco",nil,10000],
						["optic_SOS",nil,10000],
						["optic_Holosight",nil,1200],
						["MiniGrenade","MiniGrenade",3000],
						["H_Beret_02",nil,1000],
						["acc_pointer_IR",nil,5000]
					]
				];
			};
		};
	};
	case "cop_major":
	{
		switch(true) do
		{
			case (playerSide != west): {"Du bist kein Polizist!"};
			case (__GETC__(life_coplevel) < 6): {"Du hast nicht den Rang eines Majors!"};
			default
			{
				["Major Laden",
					[
						["arifle_MXM_Black_F","MXM Negra",30000],	
						["30Rnd_65x39_caseless_mag",nil,100],
						["30Rnd_65x39_caseless_mag_Tracer","Gummigeschosse",100],
						["srifle_EBR_ACO_F",nil,30000],				
						["20Rnd_762x51_Mag",nil,100],
						["hgun_Pistol_heavy_02_F","Revolver",8000],
						["6Rnd_45ACP_Cylinder","Revolver Speedloader",80],
						["optic_SOS",nil,25000],
						["optic_DMS",nil,10000],		
						["optic_MRD",nil,200],						
						["optic_Arco",nil,10000],
						["optic_MRCO",nil,10000],
						["optic_Holosight",nil,1200],					
						["MiniGrenade","MiniGrenade",1000],
						["muzzle_snds_B",nil,100],					
						["muzzle_snds_H",nil,100],
						["H_Beret_brn_SF",nil,1000],
						["acc_pointer_IR",nil,5000]						
					]
				];
			};
		};
	};
	case "cop_captain":
	{
		switch(true) do
		{
			case (playerSide != west): {"Du bist kein Polizist!"};
			case (__GETC__(life_coplevel) < 5): {"Du hast nicht den Rang eines Captains!"};
			default
			{
				["Captain Laden",
					[
						["arifle_MXM_Black_F","MXM Negra",30000],
						["30Rnd_65x39_caseless_mag",nil,100],
						["30Rnd_65x39_caseless_mag_Tracer","Gummigeschosse",100],
						["srifle_EBR_ACO_F",nil,30000],					
						["20Rnd_762x51_Mag",nil,100],
						["hgun_Pistol_heavy_02_F","Revolver",8000],
						["6Rnd_45ACP_Cylinder","Revolver Speedloader",80],
						["optic_DMS",nil,10000],					
						["optic_Arco",nil,10000],
						["optic_MRCO",nil,10000],
						["optic_MRD",nil,200],
						["optic_Holosight",nil,1200],						
						["MiniGrenade","MiniGrenade",1000],
						["muzzle_snds_B",nil,100],					
						["muzzle_snds_H",nil,100],
						["H_Beret_blk",nil,1000],
						["acc_pointer_IR",nil,5000]
					]
				];
			};
		};
	};
	case "cop_deputy_Chief":
	{
		switch(true) do
		{
			case (playerSide != west): {"Du bist kein Polizist!"};
			case (__GETC__(life_coplevel) < 8): {"Du hast nicht den Rang eines Deputy Chief!"};
			default
			{
				["Chief Laden",
					[
						["arifle_MX_SW_F","MX SW 6.5 mm",30000],	
						["30Rnd_65x39_caseless_mag",nil,100],
						["30Rnd_65x39_caseless_mag_Tracer","Gummigeschosse",100],
						["srifle_EBR_ACO_F",nil,30000],				
						["20Rnd_762x51_Mag",nil,100],
						["hgun_Pistol_heavy_02_F","Revolver",8000],
						["6Rnd_45ACP_Cylinder","Revolver Speedloader",80],
						["optic_SOS",nil,25000],
						["optic_DMS",nil,10000],						
						["optic_Arco",nil,10000],
						["optic_MRD",nil,200],
						["optic_MRCO",nil,10000],
						["optic_Holosight",nil,1200],
                        ["100Rnd_65x39_caseless_mag",nil,1000],						
						["MiniGrenade","MiniGrenade",1000],
						["muzzle_snds_B",nil,100],					
						["muzzle_snds_H",nil,100],
						["H_Beret_brn_SF",nil,1000],
						["acc_pointer_IR",nil,5000]
					]
				];
			};
		};
	};
	
	
	
	
	
	//////////////////////////////////////////////////////////////////////////////////////////////
	//////////////////////////////////////////////////////////////////////////////////////////////
	//////////////////////////////////////////////////////////////////////////////////////////////
	
	
	
	
	case "rebel":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"Du bist kein Rebell!"};
			case (!license_civ_rebel): {"Du hast keine Rebellen Training Lizenz!"};
			default
			{
				["Mohammed's Jihadi Laden",
					[
						["hgun_ACPC2_F",nil,15000],
						["9Rnd_45ACP_Mag",nil,120],						
						["arifle_TRG20_F",nil,60000],
						["arifle_Mk20_F",nil,60000],
						["arifle_TRG21_GL_F",nil,70000],
						["arifle_Mk20_GL_F",nil,70000],
						["30Rnd_556x45_Stanag",nil,1500],
						["30Rnd_556x45_Stanag_Tracer_Red",nil,1300],
						["30Rnd_556x45_Stanag_Tracer_Green",nil,1300],
						["30Rnd_556x45_Stanag_Tracer_Yellow",nil,1300],
						["arifle_Katiba_F",nil,70000],
						["30Rnd_65x39_caseless_green",nil,1500],
						["30Rnd_65x39_caseless_green_mag_Tracer",nil,1300],
						["srifle_DMR_01_F",nil,100000],
						["10Rnd_762x51_Mag",nil,2000],				
						["arifle_MXC_F",nil,70000],
						["arifle_MX_F",nil,70000],
						["arifle_MX_GL_F",nil,80000],
						["30Rnd_65x39_caseless_mag",nil,1500],
						["30Rnd_65x39_caseless_mag_Tracer",nil,500],
						["1Rnd_Smoke_Grenade_shell",nil,2500],
						["1Rnd_SmokeRed_Grenade_shell",nil,2500],
						["1Rnd_SmokeGreen_Grenade_shell",nil,2500],
						["1Rnd_SmokeYellow_Grenade_shell",nil,2500],
						["1Rnd_SmokePurple_Grenade_shell",nil,2500],
						["1Rnd_SmokeBlue_Grenade_shell",nil,2500],
						["1Rnd_SmokeOrange_Grenade_shell",nil,2500],
						["optic_ACO_grn",nil,3500],
						["optic_Hamr",nil,7500],
						["acc_pointer_IR",nil,8000],
						["optic_Holosight",nil,8000],
						["optic_MRCO",nil,10000],
						["optic_DMS",nil,15000],
						["optic_LRPS",nil,20000],
						["optic_NVS",nil,20000],
						["optic_SOS",nil,25000],
						["Rangefinder",nil,10000],
						["Rangefinder",nil,15000],						
						["acc_flashlight",nil,1000],
						["launch_RPG32_F",nil,1500000],
						["RPG32_F",nil,500000],
						["HandGrenade",nil,300000] 
					]
				];
			};
		};
	};
	
	case "gun":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"Du bist kein Zivilist!"};
			case (!license_civ_gun): {"Du hast keinen Waffenschein!"};
			default
			{
				["Billy Joe's Waffenladen",
					[
						["hgun_Rook40_F",nil,6500],
						["hgun_PDW2000_F",nil,20000],
						["SMG_02_F",nil,25000],
						["16Rnd_9x21_Mag",nil,100],
						["30Rnd_9x21_Mag",nil,150],
						["SMG_01_F",nil,25000],
						["30Rnd_45ACP_Mag_SMG_01",nil,300],
						["30Rnd_45ACP_Mag_SMG_01_tracer_green",nil,300],						
						["hgun_Pistol_heavy_02_F",nil,15000],
						["6Rnd_45ACP_Cylinder","Revolver Speedloader",250],
						["arifle_SDAR_F",nil,20000],
						["30Rnd_556x45_Stanag",nil,125],
						["arifle_SDAR_F",nil,45000],
						["20Rnd_556x45_UW_mag",nil,1000],
						["optic_ACO_grn_smg",nil,2500],
						["V_Rangemaster_belt",nil,4900]
					]
				];
			};
		};
	};
	//////////////////////////////////////////////////////////////////////////////////////////////
	//////////////////////////////////////////////////////////////////////////////////////////////
	//////////////////////////////////////////////////////////////////////////////////////////////
	case "donator":
	{
		switch(true) do
		{
			case (__GETC__(life_donator) == 0): {"Du bist kein Donator!"};
			case (__GETC__(life_donator) == 1):
			{
				["STS Donator Laden Tier 1",
					[
						
					]
				];
			};

			case (__GETC__(life_donator) == 2):
			{
				["STS Donator Laden Tier 2",
					[
						
					]
				];
			};

			case (__GETC__(life_donator) >= 3):
			{
				["Donatorwaffen",
					[
						["arifle_MXM_F",nil,50000],
						["30Rnd_65x39_caseless_mag",nil,1000],
						["30Rnd_65x39_caseless_mag_Tracer",nil,850],
						["srifle_GM6_F","GM6 Lynx Illegal",600000],
						["srifle_GM6_camo_F","GM6 Lynx Camo Illegal",600000],
						["5Rnd_127x108_Mag",nil,5000],
						["hgun_ACPC2_F",nil,10000],
						["9Rnd_45ACP_Mag",nil,200],
						["hgun_Pistol_heavy_01_F",nil,10000],
						["11Rnd_45ACP_Mag",nil,200],
						["muzzle_snds_H",nil,25000],
						["optic_MRCO",nil,7500],
						["optic_NVS",nil,7500], 
						["optic_SOS",nil,7500],
						["optic_Holosight",nil,7500],
						["optic_Arco",nil,7500], 
						["optic_Aco",nil,7500], 
						["acc_flashlight",nil,7500], 
						["acc_pointer_IR",nil,7500], 
						["optic_Hamr",nil,7500],
						["optic_DMS",nil,10000],
						["optic_LRPS",nil,10000],
						["Binocular",nil,150],
						["ItemGPS",nil,100],
						["ToolKit",nil,250],
						["FirstAidKit","Erstehilfekasten",150],
						["Medikit",nil,250],
						["ItemCompass",nil,50],
						["Itemwatch",nil,100],
						["ItemMap",nil,50],
						["NVGoggles","Nachtsichtgeraet",1500],
						["NVGoggles_INDEP","Nachtsichtgeraet",1500],
						["NVGoggles_OPFOR","Nachtsichtgeraet",1500],
						["launch_RPG32_F",nil,1000000],
						["RPG32_F",nil,250000],
						["HandGrenade",nil,200000] 

						
					]
				];
			};
		};
	};

	//////////////////////////////////////////////////////////////////////////////////////////////
	case "med_basic":
	{
		switch (true) do 
		{
			case (playerSide != independent): {"Du bist kein ADAC-Mitglied oder Notarzt"};
			default {
				["ADAC/Notarzt Laden",
					[
						["ItemGPS",nil,100],
						["Binocular",nil,150],
						["ToolKit",nil,250],
						["FirstAidKit",nil,150],
						["Medikit",nil,500],
						["NVGoggles",nil,1200],						
						["B_FieldPack_ocamo",nil,3000]
					]
				];
			};
		};
	};
	
	case "gas":
	{
		["Tankstelle",
			[
				["Binocular",nil,150],
				["ItemGPS",nil,100],
				["ToolKit",nil,950],
				["FirstAidKit","Erstehilfekasten",150],
				["ItemCompass",nil,50],
				["Itemwatch",nil,100],
				["ItemMap",nil,50],		
				["NVGoggles","Nachtsichtgeraet",2000],
				["Chemlight_red",nil,300],
				["Chemlight_yellow",nil,300],
				["Chemlight_green",nil,300],
				["Chemlight_blue",nil,300],
				["Medikit",nil,250]
			]
		];
	};
		case "gang":
{
switch(true) do
{
case (playerSide != civilian): {"You are not a civilian!"};
default
{
		["Hideout Armament",
			[
				["hgun_Rook40_F",nil,1500],
				["hgun_Pistol_heavy_02_F",nil,2500],
				["hgun_ACPC2_F",nil,4500],
				["hgun_PDW2000_F",nil,9500],
				["optic_ACO_grn_smg",nil,950],
				["V_Rangemaster_belt",nil,1900],
				["16Rnd_9x21_Mag",nil,25],
				["9Rnd_45ACP_Mag",nil,45],
				["6Rnd_45ACP_Cylinder",nil,50],
				["30Rnd_9x21_Mag",nil,75]
				]
			];
		};
	};
};
//////////////////////////////////////A-TEAM//////////////////////////////////////////////////////
/////////////////////////////////////////////////////
/////////////////////////////////////////////////////
case "ateamshop":
	{
		switch(true) do
		{
			case (__GETC__(life_opforlevel) == 0): {"Du bist kein A-Team Mitglied!"};
			case (__GETC__(life_opforlevel) == 1):
			{
				["A-Team Rekruten",
					[
						["NVGoggles_OPFOR",nil,500],
						["Rangefinder",nil,500],
						["MiniGrenade","Flashbang",100],
						["HandGrenade_Stone","Flashbang-neu",170],
						["arifle_MX_F",nil,70000],
						["arifle_MXC_F",nil,70000],						
						["arifle_MXM_F",nil,50000],
						["30Rnd_65x39_caseless_mag",nil,1500],
						["30Rnd_65x39_caseless_mag_Tracer",nil,500],
						["muzzle_snds_H",nil,100],
						["muzzle_snds_acp",nil,100],
						["hgun_Pistol_heavy_01_F",nil,10000],
						["11Rnd_45ACP_Mag",nil,500],
						["optic_MRD",nil,200],
						["optic_ACO_grn",nil,3500],
						["optic_Hamr",nil,7500],
						["acc_pointer_IR",nil,8000],
						["optic_Holosight",nil,8000],
						["optic_MRCO",nil,10000],
						["optic_DMS",nil,15000],
						["optic_LRPS",nil,20000],
						["optic_NVS",nil,20000],
						["optic_SOS",nil,25000],
						["1Rnd_Smoke_Grenade_shell",nil,2500],
						["1Rnd_SmokeRed_Grenade_shell",nil,2500],
						["1Rnd_SmokeGreen_Grenade_shell",nil,2500],
						["1Rnd_SmokeYellow_Grenade_shell",nil,2500],
						["1Rnd_SmokePurple_Grenade_shell",nil,2500],
						["1Rnd_SmokeBlue_Grenade_shell",nil,2500],
						["1Rnd_SmokeOrange_Grenade_shell",nil,2500]
					]
				];
			};

			case (__GETC__(life_opforlevel) == 2):
			{
				["A-Team Mitglieder",
					[
						["NVGoggles_OPFOR",nil,500],						
						["MiniGrenade","Flashbang",100],
						["HandGrenade_Stone","Flashbang-neu",170],
						["arifle_MX_GL_F",nil,80000],
						["arifle_MX_F",nil,70000],
						["arifle_MX_SW_F",nil,30000],
						["arifle_MXC_F",nil,70000],
						["arifle_MXM_F",nil,50000],
						["30Rnd_65x39_caseless_mag",nil,1500],
						["30Rnd_65x39_caseless_mag_Tracer",nil,500],
						["muzzle_snds_H",nil,100],
						["muzzle_snds_H_SW",nil,100],
						["muzzle_snds_acp",nil,100],
						["hgun_Pistol_heavy_01_F",nil,10000],
						["11Rnd_45ACP_Mag",nil,500],
						["optic_MRD",nil,200],
						["optic_ACO_grn",nil,3500],
						["optic_Hamr",nil,7500],
						["acc_pointer_IR",nil,8000],
						["optic_Holosight",nil,8000],
						["optic_MRCO",nil,10000],
						["optic_DMS",nil,15000],
						["optic_LRPS",nil,20000],
						["optic_NVS",nil,20000],
						["optic_SOS",nil,25000],
						["1Rnd_Smoke_Grenade_shell",nil,2500],
						["1Rnd_SmokeRed_Grenade_shell",nil,2500],
						["1Rnd_SmokeGreen_Grenade_shell",nil,2500],
						["1Rnd_SmokeYellow_Grenade_shell",nil,2500],
						["1Rnd_SmokePurple_Grenade_shell",nil,2500],
						["1Rnd_SmokeBlue_Grenade_shell",nil,2500],
						["1Rnd_SmokeOrange_Grenade_shell",nil,2500]
					]
				];
			};

			case (__GETC__(life_opforlevel) >= 3):
			{
				["A-Team Leader",
					[
						["NVGoggles_OPFOR",nil,500],
						["Rangefinder",nil,500],
						["MiniGrenade","Flashbang",100],
						["HandGrenade_Stone","Flashbang-neu",170],
						["srifle_LRR_F",nil,100000],
						["7Rnd_408_Mag",nil,1000],
						["srifle_EBR_F",nil,90000],
						["20Rnd_762x51_Mag",nil,1000],
						["arifle_MX_GL_F",nil,80000],
						["arifle_MX_F",nil,70000],
						["arifle_MX_SW_F",nil,30000],
						["arifle_MXC_F",nil,70000],
						["arifle_MXM_F",nil,50000],
						["30Rnd_65x39_caseless_mag",nil,1500],
						["30Rnd_65x39_caseless_mag_Tracer",nil,500],
						["muzzle_snds_H",nil,100],
						["muzzle_snds_H_SW",nil,100],
						["muzzle_snds_B",nil,25000],
						["muzzle_snds_acp",nil,100],
						["hgun_Pistol_heavy_01_F",nil,10000],
						["11Rnd_45ACP_Mag",nil,500],
						["optic_MRD",nil,200],
						["optic_ACO_grn",nil,3500],
						["optic_Hamr",nil,7500],
						["acc_pointer_IR",nil,8000],
						["optic_Holosight",nil,8000],
						["optic_MRCO",nil,10000],
						["optic_DMS",nil,15000],
						["optic_LRPS",nil,20000],
						["optic_NVS",nil,20000],
						["optic_SOS",nil,25000],
						["1Rnd_Smoke_Grenade_shell",nil,2500],
						["1Rnd_SmokeRed_Grenade_shell",nil,2500],
						["1Rnd_SmokeGreen_Grenade_shell",nil,2500],
						["1Rnd_SmokeYellow_Grenade_shell",nil,2500],
						["1Rnd_SmokePurple_Grenade_shell",nil,2500],
						["1Rnd_SmokeBlue_Grenade_shell",nil,2500],
						["1Rnd_SmokeOrange_Grenade_shell",nil,2500]
					]
				];
			};
		};
	};



/////////////////////////////////////////////////////
/////////////////////////////////////////////////////
/////////////////////////////////////////////////////
	case "genstore":
	{
		["Altis Gemischwarenladen",
			[
				["Binocular",nil,150],
				["ItemGPS",nil,100],
				["ToolKit",nil,950],
				["FirstAidKit","Erstehilfekasten",150],
				["Medikit",nil,250],
				["ItemCompass",nil,50],
				["Itemwatch",nil,100],
				["ItemMap",nil,50],				
				["NVGoggles","Nachtsichtgeraet",2000],
				["Chemlight_red",nil,300],
				["Chemlight_yellow",nil,300],
				["Chemlight_green",nil,300],
				["Chemlight_blue",nil,300]
			]
		];
	};
};
