#define Btn1 87450
#define Btn2 87451
#define Btn3 87452
#define Btn4 87453 ////////////<-
#define Title 87401

private["_display","_curTarget","_Btn1","_Btn2","_Btn3","_Btn4"];
if(!dialog) then {
	createDialog "pInteractionCiv_Menu";
};
disableSerialization;
_curTarget = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
if(isNull _curTarget) exitWith {closeDialog 0;}; //Bad target
if(!isPlayer _curTarget) exitWith {closeDialog 0;}; //Bad side check?
if((player getVariable "restrained") || (player getVariable "Escorting") || (player getVariable "transporting") || (life_is_arrested) || life_istazed) exitWith {hint "Das geht nicht wenn du gefesselt bist.";};
_display = findDisplay 87400;
_Btn1 = _display displayCtrl Btn1;
_Btn2 = _display displayCtrl Btn2;
_Btn3 = _display displayCtrl Btn3;
_Btn4 = _display displayCtrl Btn4;

life_pInact_curTarget = _curTarget;

//Configures Civ restrained Buttons
if((_curTarget getVariable["Escorting",false])) then {
	_Btn1 ctrlSetText localize "STR_pInAct_StopEscort";
	_Btn1 buttonSetAction "[life_pInact_curTarget] call life_fnc_stopEscorting; [life_pInact_curTarget] call life_fnc_civInteractionMenu;";
} else {
	_Btn1 ctrlSetText localize "STR_pInAct_Escort";
	_Btn1 buttonSetAction "[life_pInact_curTarget] call life_fnc_escortAction; closeDialog 0;";
};
_Btn2 ctrlSetText localize "STR_pInAct_PutInCar";
_Btn2 buttonSetAction "[life_pInact_curTarget] call life_fnc_putInCar;";

//Set Unrestrain Button
_Btn3 ctrlSetText localize "STR_pInAct_Unrestrain";
_Btn3 buttonSetAction "[life_pInact_curTarget] call life_fnc_unrestrain; closeDialog 0;";

_Btn4 ctrlSetText localize "STR_pInAct_RobPerson";
_Btn4 buttonSetAction "[life_pInact_curTarget] call life_fnc_robAction;";
