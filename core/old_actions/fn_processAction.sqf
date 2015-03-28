/*
	File: fn_processAction.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master handling for processing an item.
*/
private["_vendor","_type","_itemInfo","_oldItem","_newItem","_cost","_upp","_hasLicense","_itemName","_oldVal","_ui","_progress","_pgText","_cP"];
_vendor = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
_type = [_this,3,"",[""]] call BIS_fnc_param;
//Error check
if(isNull _vendor OR _type == "" OR (player distance _vendor > 10)) exitWith {};

//unprocessed item,processed item, cost if no license,Text to display (I.e Processing  (percent) ..."
_itemInfo = switch (_type) do
{
	case "oil": {["oilu","oilp",70,(localize "STR_Process_Oil")];};
	case "diamond": {["diamond","diamondc",50,(localize "STR_Process_Diamond")];};
	case "heroin": {["heroinu","heroinp",250,(localize "STR_Process_Heroin")];};
	case "copper": {["copperore","copper_r",45,(localize "STR_Process_Copper")];};
	case "iron": {["ironore","iron_r",60,(localize "STR_Process_Iron")];};
	case "sand": {["sand","glass",30,(localize "STR_Process_Sand")];};
	case "salt": {["salt","salt_r",30,(localize "STR_Process_Salt")];};
	case "cocaine": {["cocaine","cocainep",290,(localize "STR_Process_Cocaine")];};
	case "marijuana": {["cannabis","marijuana",180,(localize "STR_Process_Marijuana")];};
	case "cement": {["rock","cement",50,(localize "STR_Process_Cement")];};
	default {[];};
};

//Error checking
if(count _itemInfo == 0) exitWith {};

//Setup vars.
_oldItem = _itemInfo select 0;
_newItem = _itemInfo select 1;
_cost = _itemInfo select 2;
_upp = _itemInfo select 3;

if(_vendor in [mari_processor,coke_processor,heroin_processor]) then {
	_hasLicense = true;
} else {
	_hasLicense = missionNamespace getVariable (([_type,0] call life_fnc_licenseType) select 0);
};

_itemName = [([_newItem,0] call life_fnc_varHandle)] call life_fnc_varToStr;
_oldVal = missionNamespace getVariable ([_oldItem,0] call life_fnc_varHandle);

_cost = _cost * _oldVal;
//Some more checks
if(_oldVal == 0) exitWith {};

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

life_is_processing = true;

if(_hasLicense) then
{
	while{true} do
	{
		sleep  0.3;
		_cP = _cP + 0.01;
		_progress progressSetPosition _cP;
		_pgText ctrlSetText format["%3 (%1%2)...",round(_cP * 100),"%",_upp];
		if(_cP >= 1) exitWith {};
		if(player distance _vendor > 10) exitWith {};
	};
	
	if(player distance _vendor > 10) exitWith {hint localize "STR_Process_Stay"; _layer cutText ["","PLAIN"]; life_is_processing = false;};
	if(!([false,_oldItem,_oldVal] call life_fnc_handleInv)) exitWith {_layer cutText ["","PLAIN"]; life_is_processing = false;};
	if(!([true,_newItem,_oldVal] call life_fnc_handleInv)) exitWith {_layer cutText ["","PLAIN"]; [true,_oldItem,_oldVal] call life_fnc_handleInv; life_is_processing = false;};
	_layer cutText ["","PLAIN"];
	titleText[format[localize "STR_Process_Processed",_oldVal,_itemName],"PLAIN"];
	life_is_processing = false;
}
	else
{
	if(life_cash < _cost) exitWith {hint format[localize "STR_Process_License",[_cost] call life_fnc_numberText]; _layer cutText ["","PLAIN"]; life_is_processing = false;};
	
	while{true} do
	{
		sleep  0.9;
		_cP = _cP + 0.01;
		_progress progressSetPosition _cP;
		_pgText ctrlSetText format["%3 (%1%2)...",round(_cP * 100),"%",_upp];
		if(_cP >= 1) exitWith {};
		if(player distance _vendor > 10) exitWith {};
	};
	
	if(player distance _vendor > 10) exitWith {hint localize "STR_Process_Stay"; _layer cutText ["","PLAIN"]; life_is_processing = false;};
	if(life_cash < _cost) exitWith {hint format[localize "STR_Process_License",[_cost] call life_fnc_numberText]; _layer cutText ["","PLAIN"]; life_is_processing = false;};
	if(!([false,_oldItem,_oldVal] call life_fnc_handleInv)) exitWith {_layer cutText ["","PLAIN"]; life_is_processing = false;};
	if(!([true,_newItem,_oldVal] call life_fnc_handleInv)) exitWith {_layer cutText ["","PLAIN"]; [true,_oldItem,_oldVal] call life_fnc_handleInv; life_is_processing = false;};
	_layer cutText ["","PLAIN"];
	titleText[format[localize "STR_Process_Processed2",_oldVal,_itemName,[_cost] call life_fnc_numberText],"PLAIN"];
	life_cash = life_cash - _cost;
	life_is_processing = false;
};	
