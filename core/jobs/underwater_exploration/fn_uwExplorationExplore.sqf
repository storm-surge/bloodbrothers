/*
	@Version: 2.0
	@Author: Austin, Blackwing Gaming
	@Edited: 07.10.2013
*/
private ["_distance","_pay","_txt"];

if (side player == west) exitWith {hint "Polizisten koennen das nicht!"; };

_distance = player distance life_explorer_wreck;
_pay = round(_distance * (3 + random 2));

waitUntil {player distance life_explorer_wreck <= 15 || !alive player};

// Check if player is still alive.
if (!alive player) exitWith {
	["TaskFailed", ["Underwater Archaeology", "Mission fehlgeschlagen. Du bist gestorben!"]] call BIS_fnc_showNotification;
	life_explorer_task setTaskState "Failed";
	player removeSimpleTask life_explorer_task;
	deleteVehicle life_explorer_wreck;
};

// Remove task.
life_explorer_task setTaskState "Succeeded";
player removeSimpleTask life_explorer_task;
["TaskDone", ["Underwater Archaeology", "Du hast das Wrack gefunden!"]] call bis_fnc_showNotification;

// Create new task.
[] spawn  {
	sleep 2;
	life_explorer_task = player createSimpleTask ["uw_exploration"];
	life_explorer_task setSimpleTaskDescription ["Geh zurueck zum Boss und erzaehle von deinem gefundenem Wrack!", "Underwater Archaeology",""];
	life_explorer_task setTaskState "Assigned";
	player setCurrentTask life_explorer_task;
	["TaskAssigned", ["Underwater Archaeology", "Geh zurueck zum Boss und erzaehle von deinem gefundenem Wrack!"]] call bis_fnc_showNotification;
};

// Wait until player reaches ai.
waitUntil { player distance life_explorer_ai <= 4 };
life_explorer_task setTaskState "Succeeded";
player removeSimpleTask life_explorer_task;
deleteVehicle life_explorer_wreck;

_txt = parseText format ["Super, du hast es gefunden! Das wird uns bei unseren Forschungen weiterhelfen! Als dank bekommst du: <t color='#99C101'>$%1</t>", _pay];
"Underwater Archaeology" hintC [_txt];

life_bargeld = life_bargeld + _pay;

sleep 1;
["TaskDone", ["Underwater Archaeology", "Du hast den Bericht abgegeben!"]] call bis_fnc_showNotification;