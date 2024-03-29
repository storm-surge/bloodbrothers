#include <macro.h>
/*
Author: Bryan "Tonic" Boardwine

Description:
Blah blah.
*/
private["_group","_hideout","_action","_cpRate","_cP","_progressBar","_title","_titleText","_ui","_flagTexture","_markername","_gangname2"];
_hideout = (nearestObjects[getPosATL player,["Land_u_Barracks_V2_F","Land_i_Barracks_V2_F","Land_Pallet_MilBoxes_F"],25]) select 0;
_group = _hideout getVariable ["gangOwner",grpNull];

if(isNil {grpPlayer getVariable "gang_name"}) exitWith {titleText["You must create a gang first before capturing it!","PLAIN"];};
if(_group == grpPlayer) exitWith {titleText["Your gang already has control over this hideout!","PLAIN"]};
if((_hideout getVariable ["inCapture",FALSE])) exitWith {hint"Only one person shall capture at once";};
if(!isNull _group) then {
_gangName = _group getVariable ["gang_name",""];
_action = [
format["This hideout is controlled by %1<br/>Are you sure you want to take over their gang area?",_gangName],
"Hideout is currently under control..",
"Yes",
"No"
] call BIS_fnc_guiMessage;

_cpRate = 0.0045;
} else {
_cpRate = 0.0075;
};

if(!isNil "_action" && {!_action}) exitWith {titleText["Capturing cancelled","PLAIN"];};
life_action_inUse = true;

//Setup the progress bar
disableSerialization;
_title = "Capturing Hideout...";
5 cutRsc ["life_progress","PLAIN"];
_ui = uiNamespace getVariable "life_progress";
_progressBar = _ui displayCtrl 38201;
_titleText = _ui displayCtrl 38202;
_titleText ctrlSetText format["%2 (1%1)...","%",_title];
_progressBar progressSetPosition 0.01;
_cP = 0.01;

while {true} do
{
if(animationState player != "AinvPknlMstpSnonWnonDnon_medic_1") then {
[[player,"AinvPknlMstpSnonWnonDnon_medic_1"],"life_fnc_animSync",true,false] spawn life_fnc_MP;
player playMoveNow "AinvPknlMstpSnonWnonDnon_medic_1";
};
sleep 0.26;
if(isNull _ui) then {
5 cutRsc ["life_progress","PLAIN"];
_ui = uiNamespace getVariable "life_progress";
_progressBar = _ui displayCtrl 38201;
_titleText = _ui displayCtrl 38202;
};
_cP = _cP + _cpRate;
_progressBar progressSetPosition _cP;
_titleText ctrlSetText format["%3 (%1%2)...",round(_cP * 100),"%",_title];
_hideout setVariable["inCapture",true,true];
if(_cP >= 1 OR !alive player) exitWith {_hideout setVariable["inCapture",false,true];};
if(life_istazed) exitWith {_hideout setVariable["inCapture",false,true];}; //Tazed
if(life_interrupted) exitWith {_hideout setVariable["inCapture",false,true];};
};

//Kill the UI display and check for various states
5 cutText ["","PLAIN"];
player playActionNow "stop";
if(!alive player OR life_istazed) exitWith {life_action_inUse = false;_hideout setVariable["inCapture",false,true];};
if((player getVariable["restrained",false])) exitWith {life_action_inUse = false;_hideout setVariable["inCapture",false,true];};
if(life_interrupted) exitWith {life_interrupted = false; titleText["Action cancelled","PLAIN"]; life_action_inUse = false;_hideout setVariable["inCapture",false,true];};
life_action_inUse = false;

titleText["Hideout has been captured.","PLAIN"];
_flagTexture = [
"\A3\Data_F\Flags\Flag_red_CO.paa",
"\A3\Data_F\Flags\Flag_green_CO.paa",
"\A3\Data_F\Flags\Flag_blue_CO.paa",
"\A3\Data_F\Flags\Flag_white_CO.paa",
"\A3\Data_F\Flags\flag_fd_red_CO.paa",
"\A3\Data_F\Flags\flag_fd_green_CO.paa",
"\A3\Data_F\Flags\flag_fd_blue_CO.paa",
"\A3\Data_F\Flags\flag_fd_orange_CO.paa"
] call BIS_fnc_selectRandom;
_this select 0 setFlagTexture _flagTexture;
[[[0,1],format["%1 and his gang: %2 - have taken control of a local hideout",name player,(group player) getVariable "gang_name" ]],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
    // CREATE MARKER AT MAP BY Pictureclass
     
    _markername = str(getPos _hideout);
    _gangname2 = formatText["Captured by: %1",(group player) getVariable "gang_name"];
    if (getMarkerColor _markername == "") then
    {
    gang_owner_marker = createMarker [_markername, position player];
    _markername setMarkerShape "ICON";
    _markername setMarkerType "hd_warning";
    _markername setMarkerColor "ColorWhite";
    _markername setMarkerText str(_gangname2);
    gang_owner_marker = "";
    }
    else
    {
    _markername setMarkerText str(_gangname2);
    };
_hideout setVariable["inCapture",false,true];
_hideout setVariable["gangOwner",grpPlayer,true];