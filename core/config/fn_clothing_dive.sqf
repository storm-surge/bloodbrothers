/*
	File: fn_clothing_dive.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for Altis Diving Shop.
*/
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Tauchladen"];

switch (_filter) do
{
	//Uniforms
	case 0:
	{
		[
			["U_I_Wetsuit",nil,2000],
			["U_O_Wetsuit",nil,2000],
			["U_B_Wetsuit",nil,2000]
		];
	};
	
	//Hats
	case 1:
	{
		[
		];
	};
	
	//Glasses
	case 2:
	{
		[
			["G_Diving",nil,500],
			["G_I_Diving",nil,500],
			["G_O_Diving",nil,500],
			["G_B_Diving",nil,500]
		];
	};
	
	//Vest
	case 3:
	{
		[
			["V_RebreatherIA",nil,5000],
			["V_RebreatherIR",nil,5000],
			["V_RebreatherB",nil,5000]
		];
	};
	
	//Backpacks
	case 4:
	{
		[
		];
	};
};