/*
	File: fn_CatchFrogAction.sqf
	Author: [KNG]MOGGY , Killernetworkgaming.com
	
	Description:
	Gathers frogs!!!
*/
private["_sum"];
if(playerSide == west) exitWith {hint "Du bist kein Zivilist";};
_sum = ["frog",3,life_carryWeight,life_maxWeight] call life_fnc_calWeightDiff;
//hint "XY.";


if(_sum > 0) then
{
	life_action_in_use = true;
	titleText["Fange Froesche...","PLAIN"];
	player playMove "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
	playSound "bag";
	sleep 4;
	if(([true,"frog",_sum] call life_fnc_handleInv)) then
	{
		titleText[format["Du hast nun %1 Frosch/Froesche",_sum],"PLAIN"];		
	};
	
}
	else
{
	hint "Dein Inventar ist voll.";
};


life_action_in_use = false;