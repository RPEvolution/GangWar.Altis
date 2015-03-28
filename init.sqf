enableSaving [false, false];

X_Server = false;
X_Client = false;
X_JIP = false;
StartProgress = false;

if(!isDedicated) then { X_Client = true;};
enableSaving[false,false];

life_versionInfo = "Gang War";

[] execVM "briefing.sqf"; //Load Briefing

/*
[] execVM "KRON_Strings.sqf";
[] execVM "zlt_fastrope.sqf";
[] execVM "core\functions\D41_Wetter.sqf";
[] execVM "AniRadar\scripts\aniradar_init.sqf";
waituntil {!isNil "aniRadarInitialized"};

if(isDedicated && isNil("life_market_prices")) then
{
	[] call TON_fnc_marketconfiguration;
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

"BIS_fnc_MP_packet" addPublicVariableEventHandler {_this call life_fnc_MPexec};

"BIS_fnc_MP_packet" addPublicVariableEventHandler {_this call life_fnc_MPexec};
*/
