/*
	File: fn_blitzer.sqf
	Author: OLLI
	
*/


diag_log "starte Blitzerscript";

private ["_speed","_vehicle","_blitzer","_punkte","_penalty","_punkte_neu","_license","_state","_name","_markers","_cops","_list"];

//if(playerSide == west) exitWith {};

while {playerSide == west} do 
	{
_markers = [];
_blitzer = [speedcam_1,speedcam_3,speedcam_9,speedcam_14,speedcam_16,speedcam_27];

sleep 0.5;
if(visibleMap) then {	
	//Create markers
	{
		_marker = createMarkerLocal [format["%1_marker",_x],visiblePosition _x];
		_marker setMarkerColorLocal "ColorOrange";
		_marker setMarkerTypeLocal "Mil_dot";
		_marker setMarkerTextLocal format["%1", _x];
	
		_markers set[count _markers,[_marker,_x]];
	} foreach _blitzer;
		
	while {visibleMap} do
	{
		{
			private["_marker","_unit"];
			_marker = _x select 0;
			_unit = _x select 1;
			if(!isNil "_unit") then
			{
				if(!isNull _unit) then
				{
					_marker setMarkerPosLocal (visiblePosition _unit);
				};
			};
		} foreach _markers;
		
		if(!visibleMap) exitWith {};
		sleep 0.02;
	};

	{deleteMarkerLocal (_x select 0);} foreach _markers;
	_markers = [];
	_blitzer = [];
	
	};
	};

while {playerSide == civilian} do 
	{
	
_vehicle = vehicle player;
_speed = speed _vehicle;
_blitzer = [speedcam_1,speedcam_3,speedcam_9,speedcam_14,speedcam_16,speedcam_27];
_name = getText (configFile >> "CfgVehicles" >> (typeOf _vehicle) >> "displayname");
_penalty = 0;
_punkte = player getVariable "punkte";
_list = ["C_Van_01_transport_F","C_Van_01_box_F","I_Truck_02_transport_F","I_Truck_02_covered_F","B_Truck_01_transport_F","B_Truck_01_covered_F","B_Truck_01_box_F","C_Van_01_fuel_F","I_Truck_02_fuel_F","B_Truck_01_fuel_F"];

	{

	if ((_vehicle isKindOf "LandVehicle") && (player == driver _vehicle) && (_vehicle distance _x < 30) && (_speed >= 55)) then 

		{ 
		titleCut [" ","white in",1];
		
		switch(true) do
		{
			case (_speed >= 55 and _speed < 60): 	{[[getPlayerUID player,name player,"501"],"life_fnc_wantedAdd",false,false] spawn life_fnc_MP;};				//bis 10 km/h
			case (_speed >= 60 and _speed < 65): 	{[[getPlayerUID player,name player,"502"],"life_fnc_wantedAdd",false,false] spawn life_fnc_MP;};				//11-15 km/h
			case (_speed >= 65 and _speed < 70): 	{[[getPlayerUID player,name player,"503"],"life_fnc_wantedAdd",false,false] spawn life_fnc_MP;};				//16-20 km/h
			case (_speed >= 70 and _speed < 75): 	{[[getPlayerUID player,name player,"504"],"life_fnc_wantedAdd",false,false] spawn life_fnc_MP;_penalty = 1;};	//21-25 km/h
			case (_speed >= 75 and _speed < 80): 	{[[getPlayerUID player,name player,"505"],"life_fnc_wantedAdd",false,false] spawn life_fnc_MP;_penalty = 3;};	//26-30 km/h 
			case (_speed >= 80 and _speed < 90): 	{[[getPlayerUID player,name player,"506"],"life_fnc_wantedAdd",false,false] spawn life_fnc_MP;_penalty = 3;};	//31-40 km/h
			case (_speed >= 90 and _speed < 100): 	{[[getPlayerUID player,name player,"507"],"life_fnc_wantedAdd",false,false] spawn life_fnc_MP;_penalty = 4;};	//41-50 km/h
			case (_speed >= 100 and _speed < 110): 	{[[getPlayerUID player,name player,"508"],"life_fnc_wantedAdd",false,false] spawn life_fnc_MP;_penalty = 4;};	//51-60 km/h
			case (_speed >= 110 and _speed < 120): 	{[[getPlayerUID player,name player,"509"],"life_fnc_wantedAdd",false,false] spawn life_fnc_MP;_penalty = 4;};	//61-70 km/h
			case (_speed > 120): 					{[[getPlayerUID player,name player,"510"],"life_fnc_wantedAdd",false,false] spawn life_fnc_MP;_penalty = 4;};	//über 70 km/h
		};
		
		hint parseText format ["Du wurdest grade geblitz! (Limit: 50, Geschwindigkeit: %1)", round _speed];
		
		_punkte_neu = _punkte + _penalty;
		
		if(_punkte_neu >= 8) then 
		{
		[4] call life_fnc_removeLicenses;
		[[getPlayerUID player,name player,"500"],"life_fnc_wantedAdd",false,false] spawn life_fnc_MP;
		}; 
		
		player setVariable["punkte",_punkte_neu];
		
		[[0,format["%1 wurde geblitzt! Fahrzeug: %4, Position: %3, Geschwindigkeit: %2 Kmh!",name player, round _speed, _x, _name]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;		
		[[0,format["%1 wurde geblitzt! Fahrzeug: %3, Geschwindigkeit: %2 Kmh!",name player, round _speed, _name]],"life_fnc_broadcast",civilian,false] spawn life_fnc_MP;
		
		
		sleep 3;
		};
		
	} foreach _blitzer;
	
	sleep 1;

};
diag_log "beende Blitzerscript";