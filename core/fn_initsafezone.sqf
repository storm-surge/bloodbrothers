private["_actSafezone"];

_actSafezone = [];

while {true} do
{
	if((count _actSafezone) > 0) then
	{
		if((player distance (getMarkerPos (_actSafezone select 0))) > _actSafezone select 3) then
		{
			if(alive player) then {
				
			};
			player setVariable["inSafezone",false];
			life_safezone_status = false;
			_actSafezone = [];
		};
	} else {
		{
			if((player distance (getMarkerPos (_x select 0))) < _x select 3 && playerSide == _x select 2) exitWith {
				life_safezone_status = true;
				_actSafezone = _x;
				if(_x select 4) then { player setVariable["inSafezone",true]; };				
			};
			sleep 1;
		} foreach life_safezone_config;
	};
	
	sleep 3;
};