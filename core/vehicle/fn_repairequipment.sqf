private ["_healer","_injured"];
_healer = _this select 0;
_injured = _this select 1;
if (!local _healer) exitWith {};
//modelPos: Array - [x,y,z] offset relative to the model centre
if (true) then {
	_defi_pos = _healer modelToWorld [-0.6,-3.1,0];
	_defi = "Land_FireExtinguisher_F" createVehicle _defi_pos;
	_defi setPos _defi_pos;
	_defi setDir (getDir _healer - 180);
	//_defi enableSimulation false;
	[life_ais_repairequip_array, [[1,_defi]]] call life_fnc_arrayPushStackcar;
	
	if (true) then {
		_bb_pos = _healer modelToWorld [0.8,(-2.2 - (random -3.1)),0];
		_bb = "Land_DisinfectantSpray_F" createVehicle _bb_pos;
		_bb setPos _bb_pos;
		_bb setDir (random 359);
		//_bb enableSimulation false;
		[life_ais_repairequip_array, [[0,_bb]]] call life_fnc_arrayPushStackcar;
	};
};

for "_i" from 1 to (1 + (round random 3)) do {
	_band_pos = _healer modelToWorld [(random 0.5),(-2.5 + (random -2.5)),0];
	_band = "Land_CanisterOil_F" createVehicle _band_pos;
	_band setPos _band_pos;
	_band setDir (random 359);
	//_band enableSimulation false;
	if (_i > 1) then {
		[life_ais_repairequip_array, [[0,_band]]] call life_fnc_arrayPushStackcar;
	} else {
		[life_ais_repairequip_array, [[1,_band]]] call life_fnc_arrayPushStackcar;
	};
};
if (random 2 >= 1) then {
	_ab_pos = _healer modelToWorld [-0.3,(-3.1 - (random -3.2)),0];
	_ab = "Land_CarBattery_02_F" createVehicle _ab_pos;
	_ab setPos _ab_pos;
	_ab setDir (random 359);
	//_ab enableSimulation false;
	[life_ais_repairequip_array, [[0,_ab]]] call life_fnc_arrayPushStackcar;
};
true