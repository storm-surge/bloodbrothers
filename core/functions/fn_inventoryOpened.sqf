/*
Author: Bryan "Tonic" Boardwine

Description:
For the mean time it blocks the player from opening another persons backpack
*/
private["_container","_unit"];
if(count _this == 1) exitWith {false};
_unit = _this select 0;
_container = _this select 1;

_isPack = getNumber(configFile >> "CfgVehicles" >> (typeOf _container) >> "isBackpack");
if(_isPack == 1) then {
hint "You are not allowed to look into someone's backpack";
[] spawn {
waitUntil {!isNull (findDisplay 602)};
closeDialog 0;
};
};

if(_container isKindOf "Man") exitWith {
	hint "STOP TOUCHING ME!";
	[] spawn {
		waitUntil {!isNull (findDisplay 602)};
		closeDialog 0;
	};
};

if((typeOf _container) in ["Box_IND_Grenades_F","B_supplyCrate_F"]) exitWith {
_house = nearestBuilding (getPosATL player);
if(!(_house in life_vehicles) && {(_house getVariable ["locked",false])}) then {
hint "You are not allowed to access this storage container without the owner opening it.";
[] spawn {
waitUntil {!isNull (findDisplay 602)};
closeDialog 0;
};
};
};

if(_container isKindOf "LandVehicle" OR _container isKindOf "Ship" OR _container isKindOf "Air") exitWith {
if(!(_container in life_vehicles) && {(locked _container) == 2}) exitWith {
hint "You are not allowed to access this vehicle while its locked.";
[] spawn {
waitUntil {!isNull (findDisplay 602)};
closeDialog 0;
};
};
};