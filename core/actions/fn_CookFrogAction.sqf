/*
	@Author: [KNG]MOGGY , Killernetworkgaming.com
*/
private ["_amount"];
_amount = life_inv_frog;
if (life_inv_frog <= 0) exitWith { hint "Du hast keine Froesche bei dir."; };

if (([false, "frog", _amount] call life_fnc_handleInv)) then {
	titleText["Koche Froschschenkel...", "PLAIN"];
	playSound "cooking";
	titleFadeOut 4.5;
	sleep 5;
	if (([true, "froglegs", _amount] call life_fnc_handleInv)) then 
	{
		titleText [format ["Du hast %1 Froschschenkel gekocht..", _amount], "PLAIN"];
	};
};