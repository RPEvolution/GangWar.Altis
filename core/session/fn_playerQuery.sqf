/*
	File: fn_dataQuery.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Starts the 'authentication' process and sends a request out to
	the server to check for player information.
*/
private["_uid","_side","_sender","_clientResult"];
_clientResult = _this;
_sender = player;
_uid = getPlayerUID _sender;
_side = playerSide;

if(_uid != _clientResult select 0) exitWith {[] call SOCK_fnc_dataQuery;};
//if((profileName player) != _clientResult select 1) exitWith {[] call SOCK_fnc_dataQuery;};
if(life_session_completed) exitWith {}; //Why did this get executed when the client already initialized? Fucking arma...

[[_uid,_side,_sender,_clientResult],"DB_fnc_queryPlayer",false,false] call life_fnc_MP;