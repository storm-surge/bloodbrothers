// by psycho
private ["_healer","_injured"];
_healer = _this select 0;
_injured = _this select 1;
if (!local _healer) exitWith {};

if (true) then {
	_defi_pos = _healer modelToWorld [-0.5,0.2,0];
	_defi = "Land_Defibrillator_F" createVehicle _defi_pos;
	_defi setPos _defi_pos;
	_defi setDir (getDir _healer - 180);
	_defi enableSimulation false;
	[life_ais_medequip_array, [[1,_defi]]] call life_fnc_arrayPushStack;
	
	if (damage _injured >= 0.5 && {(random 2) >= 1}) then {
		_bb_pos = _healer modelToWorld [0.4,(0.2 - (random 0.5)),0];
		_bb = "Land_BloodBag_F" createVehicle _bb_pos;
		_bb setPos _bb_pos;
		_bb setDir (random 359);
		_bb enableSimulation false;
		[life_ais_medequip_array, [[0,_bb]]] call life_fnc_arrayPushStack;
	};
};

for "_i" from 1 to (1 + (round random 3)) do {
	_band_pos = _healer modelToWorld [(random 1.3),(0.8 + (random 0.6)),0];
	_band = "Land_Bandage_F" createVehicle _band_pos;
	_band setPos _band_pos;
	_band setDir (random 359);
	_band enableSimulation false;
	if (_i > 1) then {
		[life_ais_medequip_array, [[0,_band]]] call life_fnc_arrayPushStack;
	} else {
		[life_ais_medequip_array, [[1,_band]]] call life_fnc_arrayPushStack;
	};
};
if (random 2 >= 1) then {
	_ab_pos = _healer modelToWorld [-0.8,(0.6 - (random 0.4)),0];
	_ab = "Land_Antibiotic_F" createVehicle _ab_pos;
	_ab setPos _ab_pos;
	_ab setDir (random 359);
	_ab enableSimulation false;
	[life_ais_medequip_array, [[0,_ab]]] call life_fnc_arrayPushStack;
};

true