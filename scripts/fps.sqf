[] spawn
{
private["_ui","_fps"];
disableSerialization;
while {true} do
	{
_ui = uiNameSpace getVariable ["playerHUD",displayNull];
_fps = _ui displayCtrl 23516;
_fps ctrlSetPosition [safeZoneX+safeZoneW-0.090,safeZoneY+safeZoneH-0.267];
_fps ctrlSetText format["%1", round diag_fps];					
_fps ctrlCommit 0;
	};
};

