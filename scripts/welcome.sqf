/*
	File: welcomecredits.sqf
	Author: HellsGate
	Date: 14/12/2013
	Description:
	Creates an intro on the bottom-right hand corner of the screen.
*/

private [ "_camera", "_welcomeMessage", "_camDistance" ];
_welcomeMessage = format["Herzlich Willkommen %1, Viel Spaß!",format["%1", name player]];
_camDistance = 40;
waitUntil { alive player };
//waituntil {!isnull (finddisplay 46)};
showCinemaBorder true;
camUseNVG false;
playsound "Intro";
_camera = "camera" camCreate [(position player select 0)-2, position player select 1,(position player select 2)+_camDistance];
_camera cameraEffect ["internal","back"];
 
_camera camSetFOV 2.000;
_camera camCommit 0;
waitUntil {camCommitted _camera};
 
_camera camSetTarget vehicle player;
_camera camSetRelPos [0,0,2];
_camera camCommit 8;
 
cutText [_welcomeMessage, "PLAIN DOWN"];
 
waitUntil {camCommitted _camera};
 
_camera cameraEffect ["terminate","back"];
camDestroy _camera;
sleep 1;




_onScreenTime = 3; //<-- How long is the text on the screen for ? Recommended: 1 

sleep 3; //Wait in seconds before the credits start after player is in-game
//playSound "Intro"; // This calls the code inside of description.ext //

_role1 = "Willkommen bei";
_role1names = ["[GER] Altis Life by Blood Brothers Community est.2000"];
_role2 = "Teamspeak3";
_role2names = ["ts.clan-bb.de"];
_role3 = "Page";
_role3names = ["www.clan-bb.de"];
_role4 = "Regeln";
_role4names = ["Mit der Taste M könnt ihr die Regeln öffnen und nachlesen"];
_role8 = "Steuerung";
_role8names = ["Zum interagieren die linke Windows-Taste drücken"];
_role9 = "Sponsor- Partner";
_role9names = ["www.squote.de"];

{
sleep 2;
_memberFunction = _x select 0;
_memberNames = _x select 1;
_finalText = format ["<t size='1.00' color='#a80b0c' align='right'>%1<br /></t>", _memberFunction];
_finalText = _finalText + "<t size='0.70' color='#FFFFFF' align='right'>";
{_finalText = _finalText + format ["%1<br />", _x]} forEach _memberNames;
_finalText = _finalText + "</t>";
_onScreenTime + (((count _memberNames) - 1) * 0.5);
[
_finalText,
[safezoneX + safezoneW - 0.8,0.50], //DEFAULT: 0.5,0.35
[safezoneY + safezoneH - 0.8,0.7], //DEFAULT: 0.8,0.7
_onScreenTime,
0.5
] spawn BIS_fnc_dynamicText;
sleep (_onScreenTime);
} forEach [
//The list below should have exactly the same amount of roles as the list above
[_role1, _role1names],
[_role2, _role2names],
[_role3, _role3names],
[_role4, _role4names],
[_role8, _role8names],
[_role9, _role9names]
];