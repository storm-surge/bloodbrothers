#include <macro.h>
/*
Author: Bryan "Tonic" Boardwine

Description:
Deposits money into the players gang bank.
*/
private["_value"];
_value = parseNumber(ctrlText 2702);

//Series of stupid checks
if(_value > 999999) exitWith {hint localize "STR_ATM_GreaterThan";};
if(_value < 0) exitWith {};
if(!([str(_value)] call life_fnc_isnumeric)) exitWith {hint localize "STR_AIM_notnumeric"};
if(_value > life_kontogeld) exitWith {hint "You do not have enough funds in your bank account"};

__SUB__(life_kontogeld,_value);
_gFund = grpPlayer getVariable ["gang_bank",0];
_gFund = _gFund + _value;
grpPlayer setVariable ["gang_bank",_gFund,true];

hint format["You have deposited $%1 into your gangs bank account",[_value] call life_fnc_numberText];
[] call life_fnc_atmMenu;
[] call SOCK_fnc_updateRequest; //Silent Sync
[[1,grpPlayer],"TON_fnc_updateGang",false,false] spawn life_fnc_MP;