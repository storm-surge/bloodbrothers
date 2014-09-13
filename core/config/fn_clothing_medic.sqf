#include <macro.h>
/*
	File: fn_clothing_cop.sqf
	Author: MarioF
	
	Description:
	Configfile for the Medic Store
*/

private["_filter","_ret"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
if((__GETC__(life_medicLevel)) < 1) exitWith {hint "Du bist kein ADAC oder Medic"};

//Shop Title Name
ctrlSetText[3103,"Arzt Bekleidungsshop"];

_ret = [];
switch (_filter) do
{
	//Uniforms
	case 0:
	{
		_ret = 
		[
			["U_I_OfficerUniform","Sanitaeteruniform",500],
			["U_Competitor","ADAC-Dress",500]
		];
	};
	
	//Hats
	case 1:
	{
		_ret =
		[
			["H_Cap_blk",nil,50]
		];
	};
	
	//Glasses
	case 2:
	{
		_ret = 
		[
			["G_Shades_Black",nil,25],
			["G_Shades_Blue",nil,20],
			["G_Sport_Blackred",nil,20],
			["G_Sport_Checkered",nil,20],
			["G_Sport_Blackyellow",nil,20],
			["G_Sport_BlackWhite",nil,20],
			["G_Aviator",nil,75],
			["G_Squares",nil,10],
			["G_Lowprofile",nil,30]
		];
	};
	
	//Vest
	case 3:
	{
		_ret =
		[
			
		];
	};
	
	//Backpacks
	case 4:
	{
		_ret =
		[
			["B_FieldPack_ocamo",nil,3000],
			["B_Kitbag_cbr",nil,250]
		];
	};
};

_ret;