/*
File:
*/
private["_packet","_array","_flag","_civPosition"];
_civPosition = getPos player;
diag_log format ["%1",_civPosition];
_packet = [getPlayerUID player,(profileName),playerSide,life_bargeld,life_kontogeld];
_array = [];
_flag = switch(playerSide) do {case west: {"cop"}; case civilian: {"civ"}; case independent: {"med"}; case east: {"opfor"};};
{
if(_x select 1 == _flag) then
{
_array set[count _array,[_x select 0,(missionNamespace getVariable (_x select 0))]];
};
} foreach life_licenses;

_packet set[count _packet,_array];

[] call life_fnc_saveGear;



_packet set[count _packet, life_gear];


switch (playerSide) do {
						case civilian: {	
							_packet set[count _packet,life_is_arrested];
							_packet set[count _packet,_civPosition];
							_packet set[count _packet,life_is_alive];			
							};
						};

[_packet,"DB_fnc_updateRequest",false,false] spawn life_fnc_MP;