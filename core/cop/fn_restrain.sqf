/*
	File: fn_restrain.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Retrains the client.
*/
private["_cop"];
_cop = [_this,0,Objnull,[Objnull]] call BIS_fnc_param;
if(isNull _cop) exitWith {};

//Monitor excessive restrainment
[] spawn
{
	private["_time"];
	while {true} do
	{
		_time = time;
		waitUntil {(time - _time) > (5 * 60)};
		
		if(!(player getVariable["restrained",FALSE])) exitWith {};
		if(!([west,getPos player,30] call life_fnc_nearUnits) && (player getVariable["restrained",FALSE]) && vehicle player == player) exitWith {
			player setVariable["restrained",FALSE,TRUE];			
			titleText["Du wurdest automatisch freigelassen da die maximale Zeit ueberschritten ist!","PLAIN"];
		};
	};
};
if((player getVariable["surrender",FALSE])) then { player setVariable["surrender",FALSE,TRUE]; player switchMove ""; };
titleText[format["Du wurdest festgenommen von %1",name _cop],"PLAIN"];
				
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
	//player enableSimulation true;
	titleText["Du wurdest entfesselt, druecke V um dich frei zu machen!","PLAIN"];
};