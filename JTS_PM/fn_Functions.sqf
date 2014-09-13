//ALL FUNCTIONS MADE BY JTS
#include <macro.h>
waitUntil {!isNull player}; // Do not remove that


// EDITABLE VARIABLES (BEGIN)

JTS_MSG_STR = "Personal messages";		// Text, which will be displayed in action menu
JTS_ALLOW_PM = 0; 				// if 0 - receiving of personal messages on mission start is allowed. If 1 - receiving of personal messages on mission start is prohibited
JTS_SIDES = 0; 				// if 0 - list for player will be filled with all players, no matter on which side they are. If 1 - list for player will be filled only with players on the same side
JTS_MSG_COLOR = "#980000";			// Color of the text in action menu. The colors you can find here: http://www.w3schools.com/html/html_colors.asp
// EDITABLE VARIABLES (END)

player setVariable ["JTS_PM_STAT",JTS_ALLOW_PM,true];

JTS_DLPM = 0;
JTS_SUBJECT = 0;
JTS_PM_ARRAY = [];


if (JTS_SIDES > 0) then {JTS_ALLOWED_SIDES = true};

JTS_FNC_PM =
{
	private "_Find","_matrix";

	JTS_PM_UNP = playAbleUnits;
	JTS_DLPM = 1;

	lbClear 00002;
	lbClear 00003;
	//lbClear 00005;

	ctrlEnable [00002, false]; // Posteingang
	ctrlEnable [00003, false]; // Spieler Auswahl
							   // 00004 = Nachricht
	ctrlEnable [00005, true]; // Handy ein/aus
							// 00006 = Betreff
	ctrlEnable [00008, false];
	ctrlEnable [00009, false]; // Senden an User
	ctrlEnable [00010, false]; // Schliessen
	ctrlEnable [00011, false]; // Entfernen
	ctrlEnable [00013, false]; // Senden an Cops
	ctrlEnable [00014, false]; // Senden an Admin


	for "_i" from 0 to (count JTS_PM_ARRAY) do
	{
		lbAdd [00002, (JTS_PM_ARRAY select _i) select 0];
		lbSetData [00002, (lbSize 00002) - 1, (JTS_PM_ARRAY select _i) select 1];
	};

	_Find = 0;
	
	{
     		if (!isNull _x) then
     		{
          		if (alive _x && isPlayer _x) then
          		{

               		lbAdd [00003, name _x];
               		lbSetValue [00003, (lbSize 00003) - 1, _Find];
        		};	_Find = _Find + 1;
     		};
	} forEach JTS_PM_UNP;

	lbsetcursel [00002, (lbSize 00002)];
	lbsetcursel [00003, 0];

	ctrlEnable [00002, true];
	ctrlEnable [00003, true];
							   // 00004 = Nachricht
	ctrlEnable [00005, true];
	ctrlEnable [00009, true]; // Senden an User
	ctrlEnable [00010, true];
	ctrlEnable [00013, true];
	ctrlEnable [00014, true]; // Senden an Cops
	ctrlEnable [00011, true]; // Senden an Admin

	ctrlsettext [00007, Format ["Inbox: %1", lbSize 00002]];   // STATUS, grün info
	_matrix = name player;
	ctrlsettext [00006, Format ["SMS von: %1",_matrix]];   //Spielername als betreff?
	JTS_DLPM = 0;
};

JTS_FNC_SENT =
{
	_Title = _this select 0;
	_PM = _this select 1;

	JTS_PM_ARRAY set [count JTS_PM_ARRAY, [_Title, _PM]];
	hint parsetext "<t align='center'><img image='JTS_PM\icons\Message.paa' size='2' shadow='false'/></t><br/><br/><t size='1.5'>Du hast eine neue SMS</t>";

	if (alive player && dialog && JTS_DLPM < 1) then
	{
		{[] spawn _x} foreach [JTS_FNC_PM,JTS_FNC_PM_ENABLED,JTS_FNC_STATUS]
	}

	else
	{
		closedialog 0
	};
};
///////////////////////////////////////////////////////////////////////////////////////////
JTS_FNC_SENT_ATEAM =
{
	if(side player != east) exitWith {};
	_Title = _this select 0;
	_PM = _this select 1;

	JTS_PM_ARRAY set [count JTS_PM_ARRAY, [_Title, _PM]];	

	if (alive player && dialog && JTS_DLPM < 1) then
	{
		{[] spawn _x} foreach [JTS_FNC_PM,JTS_FNC_PM_ENABLED,JTS_FNC_STATUS]
		
	}

	else
	{
		closedialog 0
	};
};
///////////////////////////////////////////////////////////////////////////////////////////
JTS_FNC_SENT_COP =
{
	if(side player != west) exitWith {};
	_Title = _this select 0;
	_PM = _this select 1;

	JTS_PM_ARRAY set [count JTS_PM_ARRAY, [_Title, _PM]];	

	if (alive player && dialog && JTS_DLPM < 1) then
	{
		{[] spawn _x} foreach [JTS_FNC_PM,JTS_FNC_PM_ENABLED,JTS_FNC_STATUS]
		
	}

	else
	{
		closedialog 0
	};
};
///////////////////////////////////////////////////////////////////////////////////////////
JTS_FNC_SEND_USER_ADAC =
{
	if(side player != independent) exitWith {};
	_Title = _this select 0;
	_PM = _this select 1;

	JTS_PM_ARRAY set [count JTS_PM_ARRAY, [_Title, _PM]];	

	if (alive player && dialog && JTS_DLPM < 1) then
	{
		{[] spawn _x} foreach [JTS_FNC_PM,JTS_FNC_PM_ENABLED,JTS_FNC_STATUS]
		
	}

	else
	{
		closedialog 0
	};
};
///////////////////////////////////////////////////////////////////////////////////////////
JTS_FNC_SENT_ADMIN =
{
	if((call life_adminlevel) < 1) exitWith {};
	_Title = _this select 0;
	_PM = _this select 1;

	JTS_PM_ARRAY set [count JTS_PM_ARRAY, [_Title, _PM]];	

	if (alive player && dialog && JTS_DLPM < 1) then
	{
		{[] spawn _x} foreach [JTS_FNC_PM,JTS_FNC_PM_ENABLED,JTS_FNC_STATUS]
		
	}

	else
	{
		closedialog 0
	};
};
///////////////////////////////////////////////////////////////////////////////////////////
JTS_FNC_SENT_ADMIN_ALL =
{
	_Title = _this select 0;
	_PM = _this select 1;

	JTS_PM_ARRAY set [count JTS_PM_ARRAY, [_Title, _PM]];	

	if (alive player && dialog && JTS_DLPM < 1) then
	{
		{[] spawn _x} foreach [JTS_FNC_PM,JTS_FNC_PM_ENABLED,JTS_FNC_STATUS]
		
	}

	else
	{
		closedialog 0
	};
};
///////////////////////////////////////////////////////////////////////////////////////////
JTS_FNC_SENT_COP_TO_ALL =
{
	_Title = _this select 0;
	_PM = _this select 1;

	JTS_PM_ARRAY set [count JTS_PM_ARRAY, [_Title, _PM]];	

	if (alive player && dialog && JTS_DLPM < 1) then
	{
		{[] spawn _x} foreach [JTS_FNC_PM,JTS_FNC_PM_ENABLED,JTS_FNC_STATUS]
		
	}

	else
	{
		closedialog 0
	};
};
///////////////////USER TO USER////////////////////////////////////////////////////////////////////////////////////////////
JTS_FNC_SEND =
{
	private ["_Size","_Title","_Message","_PM","_Receiver","_Validating","_Verify"];

	_Size = count (toArray (ctrltext 00006));
	_Title = ctrltext 00006;
	_Message = ctrltext 00004;
	_PM = Format ["From: %1\n\n%2", name player, ctrlText 00004];
	_Receiver = JTS_PM_UNP select (lbValue [00003, lbCursel 00003]);
	_Verify = 0;
	

	if (_Size > 30 || lbSize 00003 < 1) then
	{
		ctrlsettext [00007, "Fehler beim Senden."];
		{ctrlsettext [_x, ""]} foreach [00004, 00006];
	}

	else
	{
		if (!(_Receiver call JTS_FNC_VALID)) then
		{
			ctrlsettext [00007, "Keine Rückmeldung vom Empfänger."];
			{ctrlsettext [_x, ""]} foreach [00004,00006];
		}

		else
		{
			if (count (toArray _Title) < 2) then
			{
				ctrlsettext [00007, "Der Betreff ist zu kurz."];
			}

			else
			{
				if (_Receiver getVariable "JTS_PM_STAT" > 0) then
				{
					ctrlsettext [00007, "Der Empfänger hat sein Handy aus."];
				}

				else
				{
					_Validating = toArray _Title;

					for "_i" from 0 to count _Validating do
					{
						if (_Validating select _i == 32) then
						{
							_Verify = _Verify + 1
						}
					};

					if (_Verify == count _Validating) then
					{
						_Title = Format ["No subject [%1] [%2]", name player, JTS_SUBJECT];
						JTS_SUBJECT = JTS_SUBJECT + 1;
					};

					ctrlsettext [00007, Format ["SMS an %1 gesendet.", name _Receiver]];
					[[_Title, _PM],"JTS_FNC_SENT",_Receiver,false] spawn BIS_fnc_MP;
					{ctrlsettext [_x, ""]} foreach [00004, 00006];
				};
			};
		};
	};				[] spawn {JTS_DLPM = 1;ctrlEnable [00009, false];ctrlEnable [00011, false];sleep 3;ctrlEnable [00009, true];ctrlEnable [00011, true];JTS_DLPM = 0;if (alive player && dialog) then {{[] spawn _x} foreach [JTS_FNC_PM,JTS_FNC_PM_ENABLED,JTS_FNC_STATUS]}}
};
///////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////
JTS_FNC_SEND_COP =
{
private ["_Message"];
_Message = ctrltext 00004;
_Title = name player;
_PM = Format ["From: %1\n\n%2", name player, ctrlText 00004];

		if(_message == "") exitWith {ctrlsettext [00007, "Bitte gib eine Nachricht ein"];};	
		[[_Title, _PM],"JTS_FNC_SENT_COP",_Receiver,false] spawn BIS_fnc_MP;
		sleep 1;		
		ctrlsettext [00007, "Nachricht an Polizei gesendet"];
		if((call life_coplevel) > 0) then {systemChat _Receiver;};
		sleep 5;
		ctrlsettext [00007, Format ["Inbox: %1", lbSize 00002]];
		[] spawn {JTS_DLPM = 1;ctrlEnable [00009, false];ctrlEnable [00011, false];sleep 3;ctrlEnable [00009, true];ctrlEnable [00011, true];JTS_DLPM = 0;if (alive player && dialog) then {{[] spawn _x} foreach [JTS_FNC_PM,JTS_FNC_PM_ENABLED,JTS_FNC_STATUS]}}
};

///////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////
JTS_FNC_SEND_ATEAM =
{
private ["_Message"];
_Message = ctrltext 00004;
_Title = name player;
_PM = Format ["From: %1\n\n%2", name player, ctrlText 00004];

		if(_message == "") exitWith {ctrlsettext [00007, "Bitte gib eine Nachricht ein"];};	
		[[_Title, _PM],"JTS_FNC_SENT_ATEAM",_Receiver,false] spawn BIS_fnc_MP;
		sleep 1;		
		ctrlsettext [00007, "Nachricht an A-Team gesendet"];
		if((call life_opforlevel) > 0) then {systemChat _Receiver;};
		sleep 5;
		ctrlsettext [00007, Format ["Inbox: %1", lbSize 00002]];
		[] spawn {JTS_DLPM = 1;ctrlEnable [00009, false];ctrlEnable [00011, false];sleep 3;ctrlEnable [00009, true];ctrlEnable [00011, true];JTS_DLPM = 0;if (alive player && dialog) then {{[] spawn _x} foreach [JTS_FNC_PM,JTS_FNC_PM_ENABLED,JTS_FNC_STATUS]}}
};

///////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////
JTS_FNC_SEND_ADMIN =
{
private ["_Message"];
_Message = ctrltext 00004;
_Title = name player;
_PM = Format ["From: %1\n\n%2", name player, ctrlText 00004];

		if(_message == "") exitwith {ctrlsettext [00007, "Bitte gib eine Nachricht ein"];};
		[[_Title, _PM],"JTS_FNC_SENT_ADMIN",_Receiver,false] spawn BIS_fnc_MP;
		sleep 1;		
		ctrlsettext [00007, "Nachricht an Admin gesendet"];		
		sleep 5;
		ctrlsettext [00007, Format ["Inbox: %1", lbSize 00002]];
		[] spawn {JTS_DLPM = 1;ctrlEnable [00009, false];ctrlEnable [00011, false];sleep 3;ctrlEnable [00009, true];ctrlEnable [00011, true];JTS_DLPM = 0;if (alive player && dialog) then {{[] spawn _x} foreach [JTS_FNC_PM,JTS_FNC_PM_ENABLED,JTS_FNC_STATUS]}}
};


///////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////
JTS_FNC_SEND_ADMIN_ALL =
{
private ["_Message"];
_Message = ctrltext 00004;
_Title = "Admin-Nachricht";
_PM = Format ["From: %1\n\n%2", name player, ctrlText 00004];

		if((call life_adminlevel) < 1) exitWith {hint "Du bist kein Admin!";};
		if(_message == "") exitwith {ctrlsettext [00007, "Bitte gib eine Nachricht ein"];};
		[[_Title, _PM],"JTS_FNC_SENT_ADMIN",_Receiver,false] spawn BIS_fnc_MP;
		sleep 1;		
		ctrlsettext [00007, "Nachricht als Admin gesendet"];		
		sleep 5;
		ctrlsettext [00007, Format ["Inbox: %1", lbSize 00002]];
[] spawn {JTS_DLPM = 1;ctrlEnable [00009, false];ctrlEnable [00011, false];sleep 3;ctrlEnable [00009, true];ctrlEnable [00011, true];JTS_DLPM = 0;if (alive player && dialog) then {{[] spawn _x} foreach [JTS_FNC_PM,JTS_FNC_PM_ENABLED,JTS_FNC_STATUS]}}		
	
};
///////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////
JTS_FNC_SEND_COP_ALL =
{
private ["_Message"];
_Message = ctrltext 00004;
_Title = "Polizei-Nachricht";
_PM = Format ["From: %1\n\n%2", name player, ctrlText 00004];

		if((call life_coplevel) < 3) exitWith {hint "Du bist kein Polizist oder dein Rang ist nicht hoch genug!";};
		if(_message == "") exitwith {ctrlsettext [00007, "Bitte gib eine Nachricht ein"];};
		[[_Title, _PM],"JTS_FNC_SENT_COP_to_ALL",_Receiver,false] spawn BIS_fnc_MP;
		sleep 1;		
		ctrlsettext [00007, "Nachricht an Spieler gesendet"];		
		sleep 5;
		ctrlsettext [00007, Format ["Inbox: %1", lbSize 00002]];		
	[] spawn {JTS_DLPM = 1;ctrlEnable [00009, false];ctrlEnable [00011, false];sleep 3;ctrlEnable [00009, true];ctrlEnable [00011, true];JTS_DLPM = 0;if (alive player && dialog) then {{[] spawn _x} foreach [JTS_FNC_PM,JTS_FNC_PM_ENABLED,JTS_FNC_STATUS]}}
};
///////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////
JTS_FNC_SEND_USER_ADAC =
{
private ["_Message"];
_Message = ctrltext 00004;
_Title = name player;
_PM = Format ["From: %1\n\n%2", name player, ctrlText 00004];

		if(_message == "") exitWith {ctrlsettext [00007, "Bitte gib eine Nachricht ein"];};	
		[[_Title, _PM],"JTS_FNC_SENT_USER_ADAC",_Receiver,false] spawn BIS_fnc_MP;
		sleep 1;		
		ctrlsettext [00007, "Nachricht an ADAC/Notarzt gesendet"];
		if((call life_mediclevel) > 0) then {systemChat _Receiver;};
		sleep 5;
		ctrlsettext [00007, Format ["Inbox: %1", lbSize 00002]];
	[] spawn {JTS_DLPM = 1;ctrlEnable [00009, false];ctrlEnable [00011, false];sleep 3;ctrlEnable [00009, true];ctrlEnable [00011, true];JTS_DLPM = 0;if (alive player && dialog) then {{[] spawn _x} foreach [JTS_FNC_PM,JTS_FNC_PM_ENABLED,JTS_FNC_STATUS]}}
};


///////////////////////////////////////////////////////////////////////////////////////////
JTS_FNC_PM_ENABLED =
{
	{lbAdd [00005, _x]} foreach ["Handy AN","Handy AUS"];
	{lbSetValue [00005, (lbSize 00005) - 1, _x]} foreach [(lbSize 00005) - 1];
	lbsetcursel [00005, player getVariable "JTS_PM_STAT"];
};

JTS_FNC_STATUS =
{
	while {alive player && dialog} do
	{
		_sz = count (toArray (ctrltext 00006));
		ctrlsettext [00008, Format ["%1/40", _sz]];
		sleep 0.1;
	};
};


JTS_FNC_VALID =
{
	if (isNull _this ||!alive player) then 
	{
		false
	}

	else
	{
		if (!alive _this || _this == player || !isPlayer _this || !alive player) then
		{
			false
		}

		else
		{
			true
		}
	}
};

JTS_FNC_PM_DELETE =
{
	if (lbSize 00002 < 1) then
	{
		ctrlsettext [00007, "Dein Posteingang ist leer."];
	}

	else
	{
		_Data = lbData [00002, lbCursel 00002];
		_Subject = lbText [00002, lbCursel 00002];
		JTS_PM_ARRAY = JTS_PM_ARRAY - [[_Subject,_Data]];
		{[] spawn _x} foreach [JTS_FNC_PM,JTS_FNC_PM_ENABLED,JTS_FNC_STATUS]
	};
};

[] spawn
{
	while {true} do
	{
		waitUntil {alive player};
		//_act = player addaction [Format ["<t color='%1'>%2</t>", JTS_MSG_COLOR, JTS_MSG_STR],"JTS_PM\JTS_PM.sqf"];
		waitUntil {!alive player};
		//vehicle player removeaction _act;
		closedialog 0;
		sleep 0.5;
	};
};