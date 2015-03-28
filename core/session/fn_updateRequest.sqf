/*
	File: fn_updateRequest.sqf
	Author: Tonic
*/
private["_packet","_array","_flag","_position","_stats"];
_packet = [getPlayerUID player,(profileName),playerSide,life_cash,life_atmcash,life_experience];
_array = [];
_position = [];
_stats = [];
_flag = switch(playerSide) do {case west: {"cop"}; case civilian: {"civ"}; case independent: {"med"};};
{
	if(_x select 1 == _flag) then
	{
		_array set[count _array,[_x select 0,(missionNamespace getVariable (_x select 0))]];
	};
} foreach life_licenses;
_packet set[count _packet,_array];

[] call life_fnc_saveGear;
_packet set[count _packet, life_gear];
_packet set[count _packet,life_is_arrested];

// Get the Position
for "_i" from 0 to 2 do {
	_position set [_i, format["%1", str (position player select _i)]];
};

// Get the Stats
_stats set [0, format["%1", life_hunger]];
_stats set [1, format["%1", life_thirst]];
_stats set [2, format["%1", str getDammage player]];

// Send to update
_packet set[count _packet, _position];
_packet set[count _packet, _stats];

[_packet,"DB_fnc_updateRequest",false,false] spawn life_fnc_MP;