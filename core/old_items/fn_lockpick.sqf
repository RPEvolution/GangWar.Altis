/*
	File: fn_lockpick.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Main functionality for lock-picking.
*/
private["_curTarget","_distance","_isVehicle","_title","_progressBar","_cP","_titleText","_dice","_badDistance"];
_curTarget = cursorTarget;
life_interrupted = false;
if(life_action_inUse) exitWith {};
if(isNull _curTarget) exitWith {}; //Bad type
_distance = ((boundingBox _curTarget select 1) select 0) + 2;
if(player distance _curTarget > _distance) exitWith {}; //Too far
_isVehicle = if((_curTarget isKindOf "LandVehicle") OR (_curTarget isKindOf "Ship") OR (_curTarget isKindOf "Air")) then {true} else {false};
if(_isVehicle && _curTarget in life_vehicles) exitWith {hint localize "STR_ISTR_Lock_AlreadyHave"};

//More error checks
if(!_isVehicle && !isPlayer _curTarget) exitWith {};
if(!_isVehicle && !(_curTarget getVariable["restrained",false])) exitWith {};

_title = format[localize "STR_ISTR_Lock_Process",if(!_isVehicle) then {"Handcuffs"} else {getText(configFile >> "CfgVehicles" >> (typeOf _curTarget) >> "displayName")}];

player addEventHandler ["AnimDone", {
	_unit = _this select 0;
	_anim = _this select 1; 
	if(_anim == "AinvPknlMstpSnonWnonDnon_medic_1") then {
		_unit switchMove "AinvPknlMstpSnonWnonDnon_medic_1";
		_unit playMove "AinvPknlMstpSnonWnonDnon_medic_1";
	};
}];

life_action_inUse = true; //Lock out other actions
player playMove "AinvPknlMstpSnonWnonDnon_medic_1";

//Setup the progress bar
disableSerialization;
_layer = "life_progress" call BIS_fnc_rscLayer;
_layer cutRsc["life_progress","PLAIN"];
_ui = uiNamespace getVariable "life_progress";
_progressBar = _ui displayCtrl 38201;
_titleText = _ui displayCtrl 38202;
_titleText ctrlSetText format["%2 (1%1)...","%",_title];
_progressBar progressSetPosition 0.01;
_cP = 0.01;

while {true} do
{
	sleep 0.26;
	if(isNull _ui) then {
		_layer cutRsc ["life_progress","PLAIN"];
		_ui = uiNamespace getVariable "life_progress";
		_progressBar = _ui displayCtrl 38201;
		_titleText = _ui displayCtrl 38202;
	};
	_cP = _cP + 0.01;
	_progressBar progressSetPosition _cP;
	_titleText ctrlSetText format["%3 (%1%2)...",round(_cP * 100),"%",_title];
	if(_cP >= 1 OR !alive player) exitWith {};
	if(life_istazed) exitWith {}; //Tazed
	if(life_interrupted) exitWith {};
	if((player getVariable["restrained",false])) exitWith {};
	if(player distance _curTarget > _distance) exitWith {_badDistance = true;};
};

//Kill the UI display and check for various states
_layer cutText ["","PLAIN"];
player removeEventHandler ["AnimDone", 0];
player playActionNow "stop";
if(!alive player OR life_istazed) exitWith {life_action_inUse = false;};
if((player getVariable["restrained",false])) exitWith {life_action_inUse = false;};
if(!isNil "_badDistance") exitWith {titleText[localize "STR_ISTR_Lock_TooFar","PLAIN"]; life_action_inUse = false;};
if(life_interrupted) exitWith {life_interrupted = false; titleText[localize "STR_NOTF_ActionCancel","PLAIN"]; life_action_inUse = false;};
if(!([false,"lockpick",1] call life_fnc_handleInv)) exitWith {life_action_inUse = false;};

life_action_inUse = false;

if(!_isVehicle) then {
	_curTarget setVariable["restrained",false,true];
	_curTarget setVariable["Escorting",false,true];
	_curTarget setVariable["transporting",false,true];
} else {
	if(playerSide == independent || playerSide == west) then {
		titleText[localize "STR_ISTR_Lock_Success","PLAIN"];
		life_vehicles set[count life_vehicles,_curTarget];
	} else {	
		_dice = random(100);
		if(_dice < 30) then {
			titleText[localize "STR_ISTR_Lock_Success","PLAIN"];
			life_vehicles set[count life_vehicles,_curTarget];
			[[getPlayerUID player,profileName,"487"],"life_fnc_wantedAdd",false,false] spawn life_fnc_MP;
			[[_curTarget],"life_fnc_CarAlarmSound",nil,true] spawn life_fnc_MP;
		} else {
			[[getPlayerUID player,profileName,"215"],"life_fnc_wantedAdd",false,false] spawn life_fnc_MP;
			[[0,format[localize "STR_ISTR_Lock_FailedNOTF",profileName]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;
			titleText[localize "STR_ISTR_Lock_Failed","PLAIN"];
		};
	};
};