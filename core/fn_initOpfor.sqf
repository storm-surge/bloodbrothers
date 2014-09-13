#include <macro.h>
/*
	File: fn_initMedic.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Initializes the medic..
*/
private["_end"];
player addRating 99999999;
civ_spawn_1 = nearestObjects[getMarkerPos  "civ_spawn_1", ["Land_i_Stone_HouseBig_V3_F","Land_u_House_Big_01_V1_F","Land_i_Shop_02_V2_F", "Land_u_Shop_02_V1_F"], 300];
civ_spawn_2 = nearestObjects[getMarkerPos  "civ_spawn_2", ["Land_i_Stone_HouseBig_V3_F","Land_u_House_Big_01_V1_F","Land_i_Shop_02_V2_F", "Land_u_Shop_02_V1_F"], 300];
civ_spawn_3 = nearestObjects[getMarkerPos  "civ_spawn_3", ["Land_i_Stone_HouseBig_V3_F","Land_u_House_Big_01_V1_F","Land_i_Shop_02_V2_F", "Land_u_Shop_02_V1_F"], 300];
civ_spawn_4 = nearestObjects[getMarkerPos  "civ_spawn_4", ["Land_i_Stone_HouseBig_V3_F","Land_u_House_Big_01_V1_F","Land_i_Shop_02_V2_F", "Land_u_Shop_02_V1_F"], 300];
waitUntil {!(isNull (findDisplay 46))};

if((__GETC__(life_opforLevel)) < 1) exitWith {
	["Notwhitelisted",FALSE,TRUE] call BIS_fnc_endMission;
	sleep 35;
};

//[] call life_fnc_opforLoadout;
[] call life_fnc_spawnMenu;
waitUntil{!isNull (findDisplay 38500)}; //Wait for the spawn selection to be open.
waitUntil{isNull (findDisplay 38500)}; //Wait for the spawn selection to be done.
sleep 0.5;
[player,uniform player] call life_fnc_setUniformTexture;
[] execVM "scripts\welcome.sqf"; // Custom Welcome screen
west setFriend [East, 1];
 East setFriend [west, 1];