/*
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Defuses blasting charges for the cops?
*/
private["_vault","_ui","_title","_progressBar","_cP","_titleText"];
_vault = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
if(isNull _vault) exitWith {};
if(typeOf _vault != "Land_CargoBox_V1_F") exitWith {};
if(!(_vault getVariable["chargeplaced",false])) exitWith {hint localize "STR_ISTR_Defuse_Nothing"};

player addEventHandler ["AnimDone", {
	_unit = _this select 0;
	_anim = _this select 1; 
	if(_anim == "AinvPknlMstpSnonWnonDnon_medic_1") then {
		_unit switchMove "AinvPknlMstpSnonWnonDnon_medic_1";
		_unit playMove "AinvPknlMstpSnonWnonDnon_medic_1";
	};
}];

life_action_inUse = true;
player playMoveNow "AinvPknlMstpSnonWnonDnon_medic_1";

//Setup the progress bar
disableSerialization;
_title = localize "STR_ISTR_Defuse_Process";
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
	_cP = _cP + .0035;
	_progressBar progressSetPosition _cP;
	_titleText ctrlSetText format["%3 (%1%2)...",round(_cP * 100),"%",_title];
	if(_cP >= 1 OR !alive player) exitWith {};
	if(life_interrupted) exitWith {};
};

//Kill the UI display and check for various states
_layer cutText ["","PLAIN"];
player removeEventHandler ["AnimDone", 0];
player playActionNow "stop";
if(!alive player) exitWith {life_action_inUse = false;};
if(life_interrupted) exitWith {life_interrupted = false; titleText[localize "STR_NOTF_ActionCancel","PLAIN"]; life_action_inUse = false;};

life_action_inUse = false;
_vault setVariable["chargeplaced",false,true];
[[2,localize "STR_ISTR_Defuse_Success"],"life_fnc_broadcast",west,false] spawn life_fnc_MP;