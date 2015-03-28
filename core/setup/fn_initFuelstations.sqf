/*
	File: fn_initFuelstations.sqf
	Author: MarioF
	
	Description:
	Emtpy the Fuelstations and add the Refill action
*/

// Init all existing Fueltrucks as well
/*
{
	if((typeOf _x) in life_fuelstation_cfgTrucks) then {
		_x addAction["Andere Fahrzeuge betanken",life_fnc_fuelStationMenu,["FUELTRUCK",1],-1,false,false,"","vehicle player == player && !life_action_inUse && _target in life_vehicles"];
	};
} foreach vehicles;
*/
private ["_gasstations"];

[] spawn {
	while {true} do
	{
		waitUntil {sleep 2; ((vehicle player != player) && ((driver (vehicle player)) == player) && (speed (vehicle player)) > 0 && count (nearestObjects [player, ["Land_fs_feed_F"], 25]) > 0)};

		_gasstations = nearestObjects [player, ["Land_fs_feed_F"], 25];

		{
			if((getFuelCargo _x) > 0) then
			{
				_x setFuelCargo 0;
				//_x addAction["Auftanken",life_fnc_fuelStationMenu,["CAR",1],0,false,false,"","vehicle player == player && !life_action_inUse"];
			};
		} foreach _gasstations;
	};
};

/*{
	_x setFuelCargo 0;
	if((typeOf _x) == "Land_fs_feed_F") then {
		_x addAction["Auftanken",life_fnc_fuelStationMenu,["CAR",1],0,false,false,"","vehicle player == player && !life_action_inUse"];
	};
} foreach (nearestObjects [fuelstation_marker,["Land_fs_feed_F"],200000]);*/