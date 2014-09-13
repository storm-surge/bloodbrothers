#include <macro.h>
/*
	File: fn_clothing_cop.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master config file for Cop clothing store.
*/
private["_filter","_ret"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"A-Team Ausrüstung"];

_ret = [];
switch (_filter) do
{
	//Uniforms
	case 0:
	{		
		if(__GETC__(life_opforlevel) > 0) then
		{
			_ret set[count _ret,["U_B_CombatUniform_mcam_vest",nil,1250]];
			_ret set[count _ret,["U_B_GhillieSuit",nil,1250]];			
			_ret set[count _ret,["U_I_Wetsuit",nil,2000]];
			_ret set[count _ret,["U_O_Wetsuit",nil,2000]];
			_ret set[count _ret,["U_B_Wetsuit",nil,2000]];
			
		};
		
		if(__GETC__(life_opforlevel) == 2) then
		{
		_ret set[count _ret,["U_B_CombatUniform_mcam",nil,1250]];
		
			
		};
		
		if(__GETC__(life_opforlevel) >= 3) then
		{
			_ret set[count _ret,["U_B_CombatUniform_mcam",nil,1250]];	
			_ret set[count _ret,["U_I_G_Story_Protagonist_F",nil,1250]];
			_ret set[count _ret,["U_I_G_resistanceLeader_F",nil,1250]];
		};
	
	};
	
	
	
	
	
	//Hats
	case 1:
	{
		if(__GETC__(life_opforlevel) > 0) then
		{
			_ret set[count _ret,["G_Shades_Black",nil,75]];
			_ret set[count _ret,["H_Bandanna_gry",nil,75]];
			_ret set[count _ret,["H_Cap_blk",nil,75]];
		};
		
		if(__GETC__(life_opforlevel) > 1) then
		{
			_ret set[count _ret,["H_HelmetB_light_black",nil,100]];
			_ret set[count _ret,["H_Beret_blk",nil,75]];
		};
		if(__GETC__(life_opforlevel) >= 3) then
		{
			_ret set[count _ret,["H_HelmetB_light_black",nil,75]];
			_ret set[count _ret,["H_Beret_Colonel",nil,75]];
		};
		
	};
	
	//Glasses
	case 2:
	{
		_ret = 
		[
			["G_Bandanna_aviator",nil,75],
			["G_Bandanna_shades",nil,100],
			["G_Shades_Black",nil,25],
			["G_Shades_Blue",nil,20],
			["G_Sport_Blackred",nil,20],
			["G_Sport_Checkered",nil,20],
			["G_Sport_Blackyellow",nil,20],
			["G_Sport_BlackWhite",nil,20],
			["G_Aviator",nil,75],
			["G_Squares",nil,10],
			["G_Lowprofile",nil,30],
			["G_Diving",nil,500],
			["G_Combat",nil,55]
		];
	};
	
	//Vest
	case 3:
	{
		_ret set[count _ret,["V_TacVestIR_blk",nil,800]];
		_ret set[count _ret,["V_RebreatherB",nil,5000]];
		if(__GETC__(life_opforlevel) >= 3) then
		{
			_ret set[count _ret,["V_PlateCarrier1_blk",nil,100]];
			
		};
	};
	
	//Backpacks
	case 4:
	{
		_ret =
		[
			["B_Kitbag_rgr",nil,500],
			["B_TacticalPack_blk",nil,500],
			["B_Carryall_oucamo",nil,500],
			["B_AssaultPack_blk",nil,500]
			
		];
	};
};

_ret;