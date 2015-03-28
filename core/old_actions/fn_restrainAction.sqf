/*
	File: fn_restrainAction.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Retrains the target.
*/
private["_unit"];
_unit = cursorTarget;
if(isNull _unit) exitWith {}; //Not valid
if((_unit getVariable "Restrained")) exitWith {};
if(!(_unit getVariable "Surrendered") && !(_unit getVariable "KnockedOut") && !(_unit getVariable "Tazed")) exitWith {}; // Ehm what kind of restraining is this...? ;)
if(player == _unit) exitWith {};
if(!isPlayer _unit) exitWith {};

if(playerSide == west && !([false,"handcuffs",1] call life_fnc_handleInv)) exitWith {hint "Du hast keine Handschellen dabei"};
if(playerSide in[civilian, independent] && !([false,"zipties",1] call life_fnc_handleInv)) exitWith {hint "Du hast keine Kabelbinder dabei"};

//Broadcast!	
_unit say3D "handcuffs";

_unit setVariable["restrained",true,true];
[[player], "life_fnc_restrain", _unit, false] spawn life_fnc_MP;
[[0,format[localize "STR_NOTF_Restrained",_unit getVariable["realname", name _unit], profileName]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;