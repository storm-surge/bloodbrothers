/*
	File: fn_clothing_reb.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for Reb shop.
*/
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Mohammed's Jihadi Shop"];

switch (_filter) do
{
	//Uniforms
	case 0:
	{
		[
			["U_I_G_Story_Protagonist_F",nil,17500],
			["U_BG_Guerilla1_1",nil,17500],
			["U_BG_Guerrilla_6_1",nil,17500],
			["U_BG_leader",nil,17500],
			["U_B_HeliPilotCoveralls",nil,17500],
			["U_I_HeliPilotCoveralls",nil,17500],
			["U_I_G_resistanceLeader_F",nil,17500],
			["U_I_CombatUniform",nil,17500],
			["U_I_CombatUniform_shortsleeve",nil,17500],
			["U_I_OfficerUniform",nil,17500],
			["U_O_CombatUniform_ocamo",nil,17500],
			["U_O_CombatUniform_oucamo",nil,17500],
			["U_O_OfficerUniform_ocamo",nil,17500],
			["U_O_PilotCoveralls",nil,17500],
			["U_O_SpecopsUniform_ocamo",nil,17500],
			["U_B_GhillieSuit",nil,50000],
			["U_O_GhillieSuit",nil,50000],
			["U_I_GhillieSuit",nil,50000]
			
		];
	};
	
	//Hats
	case 1:
	{
		[
			["H_ShemagOpen_tan",nil,850],
			["H_Shemag_olive",nil,850],			
			["H_HelmetO_ocamo",nil,2500],
			["H_MilCap_oucamo",nil,1200],
			["H_Bandanna_camo",nil,650],
			["H_Watchcap_cbr",nil,650],
			["H_Watchcap_camo",nil,650],
			["H_Watchcap_blk",nil,650],
			["H_Watchcap_khk",nil,650],
			["H_Booniehat_khk_hs",nil,650],
			["H_Hat_camo",nil,650],
			["H_Bandanna_khk_hs",nil,650],
			["H_ShemagOpen_khk",nil,650],
			["H_ShemagOpen_tan",nil,650],
			["H_Shemag_olive",nil,650],
			["H_Shemag_olive_hs",nil,650]
		];
	};
	
	//Glasses
	case 2:
	{
		[
			["G_Shades_Black",nil,25],
			["G_Shades_Blue",nil,20],
			["G_Sport_Blackred",nil,20],
			["G_Sport_Checkered",nil,20],
			["G_Sport_Blackyellow",nil,20],
			["G_Sport_BlackWhite",nil,20],
			["G_Squares",nil,10],
			["G_Aviator",nil,100],
			["G_Lady_Mirror",nil,150],
			["G_Lady_Dark",nil,150],
			["G_Lady_Blue",nil,150],
			["G_Lowprofile",nil,30],
			["G_Combat",nil,55],
			["G_Bandanna_shades",nil,150],
			["G_Bandanna_beast",nil,150],
			["G_Bandanna_tan",nil,150],
			["G_Bandanna_khk",nil,150],
			["G_Bandanna_oli",nil,150],
			["G_Bandanna_aviator",nil,150],
			["G_Bandanna_blk",nil,150],
			["G_Bandanna_sport",nil,150],
			["G_Balaclava_combat",nil,150],
			["G_Balaclava_lowprofile",nil,150],
			["G_Balaclava_oli",nil,150],
			["G_Balaclava_blk",nil,150]
		];
	};
	
	//Vest
	case 3:
	{
		[
			["V_TacVest_khk",nil,12500],
			["V_BandollierB_cbr",nil,4500],
			["V_HarnessO_brn",nil,7500],
			["V_HarnessOGL_brn","Suicide vest",500000]
		];
	};
	
	//Backpacks
	case 4:
	{
		[
			["B_FieldPack_oucamo",nil,5000],
			["B_AssaultPack_dgtl",nil,5000],
			["B_AssaultPack_mcamo",nil,5000],
			["B_AssaultPack_sgg",nil,5000],
			["B_Carryall_oucamo",nil,7000],
			["B_Carryall_mcamo",nil,7000],
			["B_Carryall_khk",nil,7000],
			["B_Carryall_ocamo",nil,7000]
		];
	};
};