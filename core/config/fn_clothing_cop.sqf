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
ctrlSetText[3103,"Polizeiausruestung"];

_ret = [];
switch (_filter) do
{
	//Uniforms
	case 0:
	{
		_ret set[count _ret,["U_Rangemaster","Cop Uniform",25]];		
		if(__GETC__(life_coplevel) > 1) then
		{
			_ret set[count _ret,["U_B_survival_uniform",nil,1250]];
			_ret set[count _ret,["U_B_CombatUniform_mcam_tshirt",nil,350]];
		};
		if(__GETC__(life_coplevel) > 2) then
		{
			
			_ret set[count _ret,["U_B_CombatUniform_mcam_worn","Polizei Uniform dunkel",1000]];
			_ret set[count _ret,["U_B_CombatUniform_mcam_vest","Polizei Uniform hell",500]];
			_ret set[count _ret,["U_B_SpecopsUniform_sgg","SWAT Uniform, schwarz",2500]];
			_ret set[count _ret,["U_B_GhillieSuit","Ghillie",2500]];
			_ret set[count _ret,["U_B_CTRG_1","SET",2500]];
			_ret set[count _ret,["U_B_CTRG_2","SET",2500]];
			_ret set[count _ret,["U_B_CTRG_3","SET",2500]];
			_ret set[count _ret,["U_B_Protagonist_VR","Test",2500]];
			_ret set[count _ret,["U_O_Protagonist_VR","Test",2500]];
			_ret set[count _ret,["U_I_Protagonist_VR","Test",2500]];
			_ret set[count _ret,["U_B_Wetsuit","Taucheranzug",2500]];
		};
	
	};
	
	
	
	
	
	//Hats
	case 1:
	{
		if(__GETC__(life_coplevel) > 0) then
		{
			_ret set[count _ret,["H_Cap_blu",nil,75]];
			_ret set[count _ret,["H_Cap_police",nil,75]];
		};
		
		if(__GETC__(life_coplevel) > 1) then
		{
			_ret set[count _ret,["H_HelmetB",nil,100]];
			_ret set[count _ret,["H_Cap_tan",nil,100]];
		};
		if(__GETC__(life_coplevel) > 2) then
		{
			_ret set[count _ret,["H_Booniehat_mcamo",nil,100]];
			_ret set[count _ret,["H_Beret_blk",nil,100]];
		};
		if(__GETC__(life_coplevel) > 3) then
		{
			_ret set[count _ret,["H_MilCap_mcamo",nil,100]];
			_ret set[count _ret,["H_Cap_blk",nil,100]];
		};
		if(__GETC__(life_coplevel) > 4) then
		{
			_ret set[count _ret,["H_Watchcap_khk",nil,100]];
			_ret set[count _ret,["H_Beret_02",nil,100]];
		};
		if(__GETC__(life_coplevel) > 5) then
		{
			_ret set[count _ret,["H_Beret_02",nil,100]];
		};
		if(__GETC__(life_coplevel) > 6) then
		{
			_ret set[count _ret,["H_Beret_red",nil,100]];
		};
		if(__GETC__(life_coplevel) > 7) then
		{
			_ret set[count _ret,["H_Beret_Colonel",nil,100]];
		};
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
			["G_Lowprofile",nil,30],
			["G_Diving",nil,500],
			["G_Combat",nil,55]
		];
	};
	
	//Vest
	case 3:
	{
		_ret set[count _ret,["V_Rangemaster_belt",nil,800]];
		if(__GETC__(life_coplevel) > 2) then
		{
			_ret set[count _ret,["V_BandollierB_khk",nil,1500]];
		
			_ret set[count _ret,["V_TacVest_khk",nil,1500]];		
		
			_ret set[count _ret,["V_PlateCarrierSpec_rgr",nil,1500]];		
		
		
			_ret set[count _ret,["V_PlateCarrier1_blk",nil,1500]];		
		
			_ret set[count _ret,["V_PlateCarrierIA2_dgtl",nil,1500]];
			
			_ret set[count _ret,["V_TacVest_oli","SWAT Weste",2000]];
			_ret set[count _ret,["V_RebreatherB",nil,1500]];
		};
	};
	
	//Backpacks
	case 4:
	{
		_ret =
		[
			["B_Parachute",nil,20000],
			["B_Kitbag_cbr",nil,800],
			["B_AssaultPack_blk",nil,500],
			["B_FieldPack_blk",nil,500],
			["B_AssaultPack_cbr",nil,700],
			["B_TacticalPack_oli",nil,3500],
			["B_Bergen_sgg",nil,2500],
			["B_Bergen_blk",nil,2500],
			["B_Carryall_oli",nil,3500],
			["B_Carryall_cbr",nil,3500]
		];
	};
};

_ret;