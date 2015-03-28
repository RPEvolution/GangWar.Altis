/*
	File: fn_insertPlayerInfo.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Read the file name... Explains it.
*/
if(life_session_completed) exitWith {}; //Why did this get executed when the player already initialized? Fucking arma...
cutText[localize "STR_Session_QueryFail","BLACK FADED"];
0 cutFadeOut 9999999;
life_spawn_base = true;

[[getPlayerUID player,profileName,playerSide,life_cash,life_atmcash,player],"DB_fnc_insertPlayer",false,false] spawn life_fnc_MP;