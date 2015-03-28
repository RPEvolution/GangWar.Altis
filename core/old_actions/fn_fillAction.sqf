/*
	File: fn_fillAction.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Action for Filling your Vehicles Tank.
*/
private["_veh","_upp","_ui","_progress","_pgText","_cP","_displayName","_layer"];
_veh = cursorTarget;
life_interrupted = false;
if(isNull _veh) exitwith {};
if((_veh isKindOf "Car") OR (_veh isKindOf "Ship") OR (_veh isKindOf "Air")) then
{
	life_action_inUse = true;
	_displayName = getText(configFile >> "CfgVehicles" >> (typeOf _veh) >> "displayName");
	_upp = format[localize "STR_NOTF_Filling",_displayName];
	//Setup our progress bar.
	disableSerialization;
	
	_layer = "life_progress" call BIS_fnc_rscLayer;
	_layer cutRsc["life_progress","PLAIN"];
	_ui = uiNameSpace getVariable "life_progress";
	_progress = _ui displayCtrl 38201;
	_pgText = _ui displayCtrl 38202;
	_pgText ctrlSetText format["%2 (1%1)...","%",_upp];
	_progress progressSetPosition 0.01;
	_cP = 0.01;
	
	while{true} do
	{		
		sleep 0.27;
		_cP = _cP + 0.01;
		_progress progressSetPosition _cP;
		_pgText ctrlSetText format["%3 (%1%2)...",round(_cP * 100),"%",_upp];
		if(_cP >= 1) exitWith {};
		if(!alive player) exitWith {};
		if(player != vehicle player) exitWith {};
		if(life_interrupted) exitWith {};
	};

	life_action_inUse = false;
	_layer cutText ["","PLAIN"];
	player playActionNow "stop";
	if(life_interrupted) exitWith {life_interrupted = false; titleText[localize "STR_NOTF_ActionCancel","PLAIN"]; life_action_inUse = false;};
	if(player != vehicle player) exitWith {titleText[localize "STR_NOTF_RepairingInVehicle","PLAIN"];};
	_veh setFuel 1;
	titleText[localize "STR_NOTF_FilledVehicle","PLAIN"];
};