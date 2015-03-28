#include <macro.h>
/*
	File: fn_requestReceived.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Called by the server saying that we have a response so let's 
	sort through the information, validate it and if all valid 
	set the client up.
*/
private["_session","_damage","_perm_level"];
_session = _this;
_damage = 0;
life_session_tries = life_session_tries + 1;
if(life_session_completed) exitWith {}; //Why did this get executed when the client already initialized? Fucking arma...
if(life_session_tries > 3) exitWith {cutText[localize "STR_Session_Error","BLACK FADED"]; 0 cutFadeOut 999999999;};

0 cutText [localize "STR_Session_Received","BLACK FADED"];
0 cutFadeOut 9999999;

//Error handling and  junk..
if(isNil "_this") exitWith {[] call SOCK_fnc_insertPlayerInfo;};
if(typeName _this == "STRING") exitWith {[] call SOCK_fnc_insertPlayerInfo;};
if(count _this == 0) exitWith {[] call SOCK_fnc_insertPlayerInfo;};
if((_this select 0) == "Error") exitWith {[] call SOCK_fnc_insertPlayerInfo;};
if((getPlayerUID player) != _this select 0) exitWith {[] call SOCK_fnc_dataQuery;};

// Parse basic player information.
life_cash = parseNumber (_this select 2);
life_atmcash = parseNumber (_this select 3);
__CONST__(life_adminlevel,parseNumber(_this select 12));
life_experience = parseNumber (_this select 4);
life_is_arrested = _this select 5;

// Loop through licenses
if(count (_this select 6) > 0) then {
	{
		missionNamespace setVariable [(_x select 0),(_x select 1)];
	} foreach (_this select 6);
};

life_gear = _this select 7;
[] call life_fnc_loadGear;

// Queries the PERMS
life_player_perms = _this select 13;				
life_player_perms = call compile format["%1", life_player_perms];

// Queries the Last Position of PlayerSide
life_player_position = _this select 8;
life_player_position = call compile format["%1", life_player_position];

for "_i" from 0 to (count life_player_position)-1 do
{
	life_player_position set[_i, call compile format["%1", life_player_position select _i]];
};	
life_player_position = createMarkerLocal ["last_position", life_player_position];

// Get the Stats of PlayerSide
life_player_stats = _this select 9;
life_player_stats = call compile format["%1", life_player_stats];

life_hunger = parseNumber(life_player_stats select 0);
life_thirst = parseNumber(life_player_stats select 1);
_damage = parseNumber(life_player_stats select 2);
player setDamage _damage;

//Parse side specific information.
switch(playerSide) do {

	case west: {};
	
	case civilian: {
		
		life_houses = _this select 14;
		{
			_house = nearestBuilding (call compile format["%1", _x select 0]);
			life_vehicles set[count life_vehicles,_house];
		} foreach life_houses;
		
		life_gangData = _this select 15;
		if(count life_gangData != 0) then {
			[] spawn life_fnc_initGang;
		};
		
		[] spawn life_fnc_initHouses;
		
		// Adds more Paycheck for PERMS
		switch (true) do {
			case ((["security"] call life_fnc_permLevel) > 2): {life_paycheck = life_paycheck + 50;};
			case ((["smugler"] call life_fnc_permLevel) > 2): {life_paycheck = life_paycheck + 50;};
		};
	};
	
	case independent: {};
};

// Append extra Paycheck for Donators
switch(["don"] call life_fnc_permLevel) do 
{
	case 1: {life_paycheck = life_paycheck + 50;};
	case 2: {life_paycheck = life_paycheck + 75;};
	case 3: {life_paycheck = life_paycheck + 100;};
	case 4: {life_paycheck = life_paycheck + 125;};	
	case 5: {life_paycheck = life_paycheck + 150;};	
};

[true] call life_fnc_dynPermCheckout;
life_session_completed = true;