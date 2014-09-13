/*
File: fn_gatherGrapes.sqf

Author: Unknown

Description:
Grape Picking Function

*/
private["_sum"];
_sum = ["grapes",3,life_carryWeight,life_maxWeight] call life_fnc_calWeightDiff;

if(_sum > 0) then
{
life_action_gather = true;
titleText["Sammle Trauben...","PLAIN"];
titleFadeOut 2;
sleep 2;
if(([true,"grapes",_sum] call life_fnc_handleInv)) then
{
hint "Hier gibt es keine Froesche";
titleText["Du hast ein paar Trauben gesammelt.","PLAIN"];
};
};

life_action_gather = false;