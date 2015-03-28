/*
	File: fn_repairTruck.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Main functionality for toolkits, to be revised in later version.
*/
private["_veh","_upp","_ui","_progress","_pgText","_cP","_displayName","_layer"];
_veh = cursorTarget;
life_interrupted = false;
if(isNull _veh) exitwith {};
if((_veh isKindOf "Car") OR (_veh isKindOf "Ship") OR (_veh isKindOf "Air")) then
{
	if("ToolKit" in (items player)) then
	{
		_displayName = getText(configFile >> "CfgVehicles" >> (typeOf _veh) >> "displayName");
		_upp = format[localize "STR_NOTF_Repairing",_displayName];
		
		player addEventHandler ["AnimDone", {
			_unit = _this select 0;
			_anim = _this select 1; 
			if(_anim == "AinvPknlMstpSnonWnonDnon_medic_1") then {
				_unit switchMove "AinvPknlMstpSnonWnonDnon_medic_1";
				_unit playMove "AinvPknlMstpSnonWnonDnon_medic_1";
			};
		}];
		
		life_action_inUse = true;
		player playMove "AinvPknlMstpSnonWnonDnon_medic_1";
		
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
		
		player removeEventHandler ["AnimDone", 0];
		player playActionNow "stop";
		life_action_inUse = false;
		_layer cutText ["","PLAIN"];
		if(life_interrupted) exitWith {life_interrupted = false; titleText[localize "STR_NOTF_ActionCancel","PLAIN"]; life_action_inUse = false;};
		if(player != vehicle player) exitWith {titleText[localize "STR_NOTF_RepairingInVehicle","PLAIN"];};
		player removeItem "ToolKit";
		_veh setDamage 0;
		titleText[localize "STR_NOTF_RepairedVehicle","PLAIN"];
		
		if((["adac"] call life_fnc_permLevel) > 0) then
		{
			_price = 0;
			
			switch (true) do
			{
				case (_veh isKindOf "Car"): {_price = (call life_impound_car);};
				case (_veh isKindOf "Ship"): {_price = (call life_impound_boat);};
				case (_veh isKindOf "Air"): {_price = (call life_impound_air);};
			};
			
			life_atmcash = life_atmcash + _price;
		};
	};
};