[] spawn
{
private["_ui","_ausdauer"];
disableSerialization;
while {true} do
	{
_ui = uiNameSpace getVariable ["playerHUD",displayNull];
_ausdauer = _ui displayCtrl 23518;
_ausdauer ctrlSetPosition [safeZoneX+safeZoneW-0.090,safeZoneY+safeZoneH-0.169];
_ausdauer ctrlSetText format["%1%2", 100.0 - round((getFatigue player) * 100.0),"%"];
_ausdauer ctrlCommit 0;
	};
};