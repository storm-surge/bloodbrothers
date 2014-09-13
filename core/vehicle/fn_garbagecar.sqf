// by psycho
if (!local player) exitWith {};
 
_muell = (nearestObjects[getPosATL player,["Land_FireExtinguisher_F","Land_DisinfectantSpray_F","Land_CanisterOil_F","Land_CarBattery_02_F"],10]);
 
 {
deleteVehicle _x
 } forEach _muell;
 

 
 
 /*
if (count life_ais_repairequip_array > 0) then {
	{
		if ((_x select 0) > 0) then {
			deleteVehicle (_x select 1);
			deleteVehicle (_x select 0);
			deleteVehicle (_x select 2);
		} else {
			_x set [0,1];
			deleteVehicle (_x select 1);
			deleteVehicle (_x select 0);
			deleteVehicle (_x select 2);
		};
	} forEach life_ais_repairequip_array;
};
true
*/