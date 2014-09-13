enableSaving [false, false];

X_Server = false;
X_Client = false;
X_JIP = false;
StartProgress = false;

if(!isDedicated) then { X_Client = true;};
enableSaving[false,false];

life_versionInfo = "Altis Life RPG v3.7.6";
[] execVM "briefing.sqf"; //Load Briefing
[] execVM "KRON_Strings.sqf";
[] execVM "admintools\loop.sqf";
[] execVM "scripts\fps.sqf";
[] execVM "scripts\players.sqf";
[] execVM "scripts\ausdauer.sqf";
[] execVM "scripts\hackerSpanker.sqf";
[] execVM "scripts\hackerSpanker2.sqf";		
[] execVM "scripts\antihack.sqf";
   execVM "JTS_PM\fn_Functions.sqf";
[] execVM "core\safezonemsg.sqf";
[] execVM "scripts\teargas.sqf";
[] execVM "scripts\gasmask.sqf";
[] execVM "scripts\ANTICHEAT.sqf";
west setFriend [east, 1];
east setFriend [west, 1];
[player, uniform player] call life_fnc_setUniformTexture;

if(isDedicated && isNil("life_market_prices")) then
{
	[] call life_fnc_marketconfiguration;
	diag_log "Market prices generated!";
	
	"life_market_prices" addPublicVariableEventHandler
	{
		diag_log format["Market prices updated! %1", _this select 1];
	};
	
	//Start server fsm	
	[] execFSM "core\fsm\server.fsm";
	diag_log "Server FSM executed";
};

StartProgress = true;

[] spawn {
	while {true} do {
		sleep 600;
		60 setFog 0;
	};
};
MAC_fnc_switchMove = {
    private["_object","_anim"];
    _object = _this select 0;
    _anim = _this select 1;

    _object switchMove _anim;
    
};

//fn_whoDunnit = compile preprocessFileLineNumbers "scripts\fn_whoDunnit.sqf";
/*
if (!isDedicated) then {
	
	waitUntil {!isNull player};
	waitUntil {player == player};
	
	player addMPEventHandler ["MPKilled", {_this call fn_whoDunnit}];
};
*/