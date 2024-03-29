/*
	File: fn_knockedOut.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Starts and monitors the knocked out state.
*/
private["_target","_who","_obj"];
_target = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
_who = [_this,1,"",[""]] call BIS_fnc_param;
if(isNull _target) exitWith {};
if(_target != player) exitWith {};
if(_who == "") exitWith {};
life_down22 = true;


titleText[format["%1 has knocked you out.",_who],"PLAIN"];
player playMoveNow "Incapacitated";
_obj = "Land_ClutterCutter_small_F" createVehicle (getPosATL player);
_obj setPosATL (getPosATL player);
player attachTo [_obj,[0,0,0]];
sleep 15;

if (!(player getVariable "restrained")) then {    //no animation when restrained while knockedout
player playMoveNow "amovppnemstpsraswrfldnon";
detach player;
life_down22 = false;
};

life_down22 = false;
deleteVehicle _obj;
player setVariable["robbed",FALSE,TRUE];