/*
	File: fn_pulloutAction.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Pulls civilians out of a car if it's stopped.
*/
private["_crew"];
_crew = crew cursorTarget;
//if ((playerside = civilian) && !(_crew getVariable "restrained")) exitwith {Hint "Das Ziehl muss gefesselt sein."};
switch (playerSide) do
{
case west: 
	{
		{
		_crew = crew cursorTarget;
		_x setVariable ["transporting",false,true]; _x setVariable ["Escorting",false,true];
		[[_x],"life_fnc_pulloutVehcop",_x,false] spawn life_fnc_MP;
	
} foreach _crew;
	};
	case civilian: 
	{
		{
		_crew = crew cursorTarget;
		_x setVariable ["transporting",false,true]; _x setVariable ["Escorting",false,true];
		[[_x],"life_fnc_pulloutVeh",_x,false] spawn life_fnc_MP;
	
} foreach _crew;
	};
	case east: 
	{
		{
		_crew = crew cursorTarget;
		_x setVariable ["transporting",false,true]; _x setVariable ["Escorting",false,true];
		[[_x],"life_fnc_pulloutVeh",_x,false] spawn life_fnc_MP;
	
} foreach _crew;
	};
	
	case independent: {
		{
		_crew = crew cursorTarget;
		_x setVariable ["transporting",false,true]; _x setVariable ["Escorting",false,true];
		[[_x],"life_fnc_pulloutVeh",_x,false] spawn life_fnc_MP;
	
} foreach _crew;
	};
};









	
	{
		_x setVariable ["transporting",false,true]; _x setVariable ["Escorting",false,true];
		[[_x,_cop],"life_fnc_pulloutVeh",_x,false] spawn life_fnc_MP;
	
} foreach _crew;