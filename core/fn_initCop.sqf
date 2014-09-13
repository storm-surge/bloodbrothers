#include <macro.h>
/*
	File: fn_initCop.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Cop Initialization file.
*/
private["_end"];
player addRating 9999999;
waitUntil {!(isNull (findDisplay 46))};
_end = false;


if(!(str(player) in ["cop_nil"])) then {
//if(!(str(player) in ["cop_1","cop_2","cop_3","cop_5","cop_6","cop_7","cop_8"])) then {
	if((__GETC__(life_coplevel) == 0) && (__GETC__(life_adminlevel) == 0)) then {
		["NotWhitelisted",false,true] call BIS_fnc_endMission;
		sleep 35;
	};
};
player setVariable["coplevel", __GETC__(life_coplevel), true]; // Rang Anzeige
player setVariable["rank",(__GETC__(life_coplevel)),true];
[] call life_fnc_spawnMenu;
waitUntil{!isNull (findDisplay 38500)}; //Wait for the spawn selection to be open.
waitUntil{isNull (findDisplay 38500)}; //Wait for the spawn selection to be done.
sleep 2;
[player, uniform player] call life_fnc_setUniformTexture;
[] execVM "scripts\welcome.sqf"; // Custom Welcome screen
west setFriend [East, 1];
 East setFriend [west, 1];