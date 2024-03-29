/*
File: fn_ticketPay.sqf
Author: Bryan "Tonic" Boardwine

Description:
Pays the ticket.
*/
if(isnil {life_ticket_val} OR isNil {life_ticket_cop}) exitWith {};
if(life_bargeld < life_ticket_val) exitWith
{
if(life_kontogeld < life_ticket_val) exitWith
{
hint "You don't have enough money in your bank account or on you to pay the ticket.";
[[1,format["%1 couldn't pay the ticket due to not having enough money.",profileName]],"life_fnc_broadcast",life_ticket_cop,false] spawn life_fnc_MP;
closeDialog 0;
};
hint format["You have paid the ticket of $%1",[life_ticket_val] call life_fnc_numberText];
life_kontogeld = life_kontogeld - life_ticket_val;
life_ticket_paid = true;
[[0,format["%1 paid the ticket of $%2",profileName,[life_ticket_val] call life_fnc_numberText]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;
closeDialog 0;
};

life_bargeld = life_bargeld - life_ticket_val;
life_ticket_paid = true;

[[getPlayerUID player],"life_fnc_wantedRemove",false,false] spawn life_fnc_MP;
[[0,format["%1 paid the ticket of $%2",profileName,[life_ticket_val] call life_fnc_numberText]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;
closeDialog 0;
[[1,format["%1 paid the ticket.",profileName]],"life_fnc_broadcast",life_ticket_cop,false] spawn life_fnc_MP;
[[[life_ticket_val],{life_kontogeld = life_kontogeld + (_this select 0);}],"BIS_fnc_call",life_ticket_cop,false] spawn life_fnc_MP;

