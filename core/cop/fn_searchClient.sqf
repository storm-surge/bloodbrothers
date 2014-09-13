/*
	File: fn_searchClient.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Searches the player and he returns information back to the player.
*/
private["_cop","_inv","_var","_val","_robber","_illegal","_cash","_atm"];
_cop = [_this,0,Objnull,[objNull]] call BIS_fnc_param;
if(isNull _cop) exitWith {};
_inv = [];
_robber = false;
_illegal = [];
_cash = life_bargeld;
_atm = life_kontogeld;
_punkte = player getVariable "punkte";


diag_log format["cash1: %1",_cash];
diag_log format["atm1: %1",_atm];
diag_log format["punkte1: %1",_punkte];


//Illegal items
{
	_var = [_x select 0,0] call life_fnc_varHandle;
	_val = missionNamespace getVariable _var;
	if(_val > 0) then
	{
		_inv set[count _inv,[_x select 0,_val]];
		[false,(_x select 0),_val] call life_fnc_handleInv;
	};
} foreach life_illegal_items;

if(!life_use_atm) then 
{
	life_bargeld = 0;
	_robber = true;
};

[[player,_inv,_robber,_cash,_atm,_punkte],"life_fnc_copSearch",_cop,false] spawn life_fnc_MP;