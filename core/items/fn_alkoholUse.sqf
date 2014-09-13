/*
	File: fn_weedUse.sqf
	Author: MarioF
	
	Description:
	Weed makes you HAPPY and lower the sideeffects of Cocaine.
*/

private["_hndl_color","_hndl_chrom","_OBJ","_PS","_tStart","_count","_smoke_action"];
_unit = player;
life_drugged_alkohol = 1;

player setVariable ["drug_alkohol", true, true];
[[0,format["%1 scheint betrunken.",name player]],"life_fnc_broadcast",(position player) nearEntities [["Man"], 50],false] spawn life_fnc_MP;
_tStart = time;

for "_i" from 0 to 200 do
{
	_force = random 15;
	"chromAberration" ppEffectEnable true;
	"chromAberration" ppEffectAdjust [_force / 24, _force / 24, false];
	"chromAberration" ppEffectCommit (0.3 + random 0.1);
	waituntil {ppEffectCommitted "chromAberration"};
	sleep 0.02;
};

[[_unit, "rulps",10],"life_fnc_playSound",true,false] spawn life_fnc_MP;	

"chromAberration" ppEffectEnable false;
life_drugged_alkohol = 0;
player setVariable ["drug_alkohol", false, true];
