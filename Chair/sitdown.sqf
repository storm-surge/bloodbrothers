_chair = _this select 0; 
_unit = _this select 1; 

[[_unit, "Crew"], "MAC_fnc_switchMove"] spawn BIS_fnc_MP;
if((player getVariable "restrained") || (player getVariable "Escorting") || (player getVariable "transporting") || (life_is_arrested) || life_istazed) exitWith {hint "Das geht in diesem Zustand nicht.";};
//if(player getVariable "sitzt") exitWith {hint "Du sitzt doch schon??.";};
_unit setVariable["sitzt",true,true];
_unit setPos (getPos _chair); 
_unit setDir ((getDir _chair) - 180);

standup = _unit addaction ["<t color='#0099FF'>Aufstehen</t>","Chair\standup.sqf"];
_unit setpos [getpos _unit select 0, getpos _unit select 1,((getpos _unit select 2) +1)];


