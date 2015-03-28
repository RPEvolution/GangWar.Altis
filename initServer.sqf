/*
	File: initServer.sqf
	
	Description:
	Starts the initialization of the server.
*/
if(!(_this select 0)) exitWith {}; //Not server
// [] call compile PreprocessFileLineNumbers "\life_server\init.sqf";
// master_group attachTo[bank_obj,[0,0,0]];

onMapSingleClick "if(_alt) then {vehicle player setPos _pos};";

// private ["_object"];

/*
// Hides unpleasent objects
//_object = [16544,0.000246048,12779.2] nearestObject "Land_Offices_01_V1_F";
_object = [0,0,0] nearestObject 918490;
_object hideObjectGlobal true;

[8,true,true,12] execFSM "core\fsm\timeModule.fsm";
*/