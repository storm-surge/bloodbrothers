/*
	File: fn_robPerson.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Getting tired of adding descriptions...
*/
private["_robber"];
_robber = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
if(isNull _robber) exitWith {}; //No one to return it to?

if(life_bargeld > 0) then
{
	[[life_bargeld],"life_fnc_robReceive",_robber,false] spawn life_fnc_MP;
	[[getPlayerUID _robber,_robber getVariable["realname",name _robber],"211"],"life_fnc_wantedAdd",false,false] spawn life_fnc_MP;
	[[1,format["%1 has robbed %2 for $%3",_robber getVariable["realname",name _robber],profileName,[life_bargeld] call life_fnc_numberText]],"life_fnc_broadcast",nil,false] spawn life_fnc_MP;
	life_bargeld = 0;
}
	else
{
	[[2,format["%1 doesn't have any money.",profileName]],"life_fnc_broadcast",_robber,false] spawn life_fnc_MP;
};