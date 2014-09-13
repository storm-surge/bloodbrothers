/*
	@Version: 3.1
	@Author: [BWG] Joe
	@Edited: 01.01.2014
*/
private ["_vehicle","_vehicles"];

if (playerside != independent) exitwith {hint"Das geht nur als ADAC Mitarbeiter!"};




	_vehicles = player nearEntities [["Car","Motorcycle","Ship"], 10];
	if (count _vehicles > 0) then {
		_vehicle = _vehicles select 0;
		
			if (speed _vehicle < 5 && getPos _vehicle select 2 < 5) then {
				_dir = getDir _vehicle;
				_vehicle setPos [getPos _vehicle select 0, getPos _vehicle select 1, 1];
				_vehicle setDir _dir;
				_vehicle setVelocity [0,0,0];
			};		
	};	
