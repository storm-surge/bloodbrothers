#include <macro.h>
/*
	File: fn_copSearch.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Returns information on the search.
*/
life_action_inUse = false;
private["_civ","_invs","_license","_robber","_guns","_gun"];
_civ = [_this,0,Objnull,[Objnull]] call BIS_fnc_param;
_invs = [_this,1,[],[[]]] call BIS_fnc_param;
_robber = [_this,2,false,[false]] call BIS_fnc_param;
_cash = [_this,3,0,[0]] call BIS_fnc_param;
_atm = [_this,4,0,[0]] call BIS_fnc_param;
_punkte = [_this,5,0,[0]] call BIS_fnc_param;

diag_log format["TARGET: %1",_target];
diag_log format["PUNKTE: %1",_punkte];
diag_log format["cash2: %1",_cash];
diag_log format["atm2: %1",_atm];
diag_log format["punkte2: %1",_punkte];
if(isNull _civ) exitWith {};

_illegal = 0;
_inv = "";
if(count _invs > 0) then
{
	{
		_inv = _inv + format["%1 %2<br/>",_x select 1,[([_x select 0,0] call life_fnc_varHandle)] call life_fnc_varToStr];
		_index = [_x select 0,__GETC__(sell_array)] call fnc_index;
		if(_index != -1) then
		{
			_illegal = _illegal + ((_x select 1) * ((__GETC__(sell_array) select _index) select 1));
		};
	} foreach _invs;
	if(_illegal > 6000) then
	{
		[[getPlayerUID _civ,_civ getVariable["realname",name _civ],"482"],"life_fnc_wantedAdd",false,false] spawn life_fnc_MP;
	};
	
	[[getPlayerUID _civ,_civ getVariable["realname",name _civ],"481"],"life_fnc_wantedAdd",false,false] spawn life_fnc_MP;
	[[0,format["%1 has $%2 worth of contraband on them.",(_civ getVariable["realname",name _civ]),[_illegal] call life_fnc_numberText]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;
}
	else
{
	_inv = "No illegal items";
};
if(!alive _civ || player distance _civ > 5) exitWith {hint format["Couldn't search %1",_civ getVariable["realname",name _civ]]};
//hint format["%1",_this];
hint parseText format["
<t color='#FF0000'><t size='2'>%1</t></t><br/>
<t color='#FFD700'><t size='1.5'>Verkehssünderkartei:</t></t><br/>Punkte: %4<br/>
<t color='#FFD700'><t size='1.5'>Kontoübersicht:</t></t><br/>Bank: %5<br/>Tasche: %6<br/>
<t color='#FFD700'><t size='1.5'><br/>Illegal Gegenstände:</t></t><br/>%2<br/><br/><br/><br/>
<t color='#FF0000'>%3</t>
"
,(_civ getVariable["realname",name _civ]),_inv,if(_robber) then {"Robbed the bank"} else {""},_punkte,[_atm] call life_fnc_numberText,[_cash] call life_fnc_numberText];

if(_robber) then
{
	[[0,format["%1 was identified as the bank robber!",(_civ getVariable["realname",name _civ])]],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
};