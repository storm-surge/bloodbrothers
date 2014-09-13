/*
	COPY PASTE TIME
*/
private["_val"];
_val = parseNumber(ctrlText 2702);
if(_val > 999999) exitWith {hint "You can't withdraw more then $999,999";};
if(_val < 0) exitwith {};
if(!([str(_val)] call life_fnc_isnumeric)) exitWith {hint "That isn't in an actual number format."};
if(_val > life_kontogeld) exitWith {hint "You don't have that much in your bank account!"};
if(_val < 100 && life_kontogeld > 20000000) exitWith {hint "You can't withdraw less then $100"}; //Temp fix for something.

life_bargeld = life_bargeld + _val;
life_kontogeld = life_kontogeld - _val;
hint format ["You have withdrawn $%1 from your bank account",[_val] call life_fnc_numberText];
[] call life_fnc_atmMenu;
[] call SOCK_fnc_updateRequest; //Silent Sync