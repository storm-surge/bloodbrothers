/*
	File: fn_unrestrain.sqf
*/
private["_unit"];
_unit = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
if(isNull _unit OR !(_unit getVariable["restrained",FALSE])) exitWith {}; //Error check?


if(player distance _unit > 5) exitWith {hint "Zu weit entfernt"};

_unit setVariable["restrained",FALSE,TRUE];
_unit setVariable["Escorting",FALSE,TRUE];
_unit setVariable["transporting",FALSE,TRUE];
detach _unit;
[[_unit, "uncuff",10],"life_fnc_playSound",true,false] spawn BIS_fnc_MP;
[[0,format["%1 was unrestrained by %2",_unit getVariable["realname",name _unit], player getVariable["realname",name player]]],"life_fnc_broadcast",west,FALSE] call life_fnc_MP;