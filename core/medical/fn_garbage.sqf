// by psycho
if (!local player) exitWith {};

if (count life_ais_medequip_array > 0) then {
	{
		if ((_x select 0) > 0) then {
			deleteVehicle (_x select 1);
		} else {
			_x set [0,1];
		};
	} forEach life_ais_medequip_array;
};

true