/*
	File: fn_restrain.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Retrains the client.
*/
private["_civ"];
_civ = [_this,0,Objnull,[Objnull]] call BIS_fnc_param;
if(isNull _civ) exitWith {};

//Monitor excessive restrainment
[] spawn
{
	private["_time"];
	while {true} do
	{
		_time = time;
		waitUntil {(time - _time) > (5 * 60)};
		
		if(!(player getVariable["restrained",FALSE])) exitWith {};
		if(!([civilian,getPos player,30] call life_fnc_nearUnits) && (player getVariable["restrained",FALSE]) && vehicle player == player) exitWith {
			player setVariable["restrained",FALSE,TRUE];
			//player enableSimulation true;
			titleText["Du wurdest automatisch freigelassen da die maximale Zeit ueberschritten ist!","PLAIN"];
		};
	};
};
titleText[format["Du wurdest von %1 gefesselt.",name _civ],"PLAIN"];

				
while {player getVariable "restrained"} do
{
	player playMove "AmovPercMstpSnonWnonDnon_Ease";	
	_state = vehicle player;
	waitUntil {animationState player != "AmovPercMstpSnonWnonDnon_Ease" || !(player getvariable "restrained") || vehicle player != _state};
	_state lock 2;
			
	if(!alive player) exitWith
	{
		player setVariable ["restrained",false,true];
	};
	
	if(vehicle player != player) then
	{
		//disableUserInput true;
		if(driver (vehicle player) == player) then {player action["eject",vehicle player];};
	}
		else
	{
		//disableUserInput false;
	};
};

//disableUserInput false;
		
if(alive player) then
{	
	titleText["Du wurdest entfesselt, druecke V um dich frei zu machen!","PLAIN"];
};