[] spawn
{
private["_ui","_players"];
disableSerialization;
while {true} do
	{
_ui = uiNameSpace getVariable ["playerHUD",displayNull];
_players = _ui displayCtrl 23517;
_players ctrlSetPosition [safeZoneX+safeZoneW-0.090,safeZoneY+safeZoneH-0.223];
_players ctrlSetText format["%1/80", count playableUnits];			
_players ctrlCommit 0;
	};
};