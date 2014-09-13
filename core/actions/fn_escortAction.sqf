/*
	File: fn_escortAction.sqf
*/
private["_unit"];
_unit = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
if(isNil "_unit" OR isNull _unit OR !isPlayer _unit) exitWith {};
if(player distance _unit > 5) exitWith {hint "Zu weit entfernt"};
//if(!(side _unit in [civilian,independent,east,west])) exitWith {hint"exit ...unbekannter fehler"};
_unit attachTo [player,[0.1,1.1,0]];
_unit setVariable["transporting",false,true];
_unit setVariable["Escorting",true,true];
player reveal _unit;