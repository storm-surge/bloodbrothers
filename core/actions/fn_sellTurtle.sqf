#include <macro.h>
/*
	File: fn_sellTurtle.sqf
	
	Description:
	Sells the turtles! Save the turtles!
	This was a super lazy thing to do but I just want to push it...
*/
private["_index","_price","_val"];
if(life_inv_turtle == 0) exitWith {
	titleText["You don't have any turtles to sell.","PLAIN"];
};

_index = ["turtle",__GETC__(sell_array)] call fnc_index;
_price = (__GETC__(sell_array) select _index) select 1;
_val = life_inv_turtle;
_price = _price * _val;

if([false,"turtle",life_inv_turtle] call life_fnc_handleInv) then {
	titleText[format["You sold %1 turtle(s) for $%2",_val,[_price] call life_fnc_numberText],"PLAIN"];
	life_bargeld = life_bargeld + _price;
};
