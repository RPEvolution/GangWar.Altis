/*
	File: fn_surrender.sqf
	Author: MrKraken
	
	Description:
	Places player into a surrendered state.
*/
player setVariable ["Surrendered", true, true]; //Set surrender to true

while { player getVariable ["Surrendered", false] }  do { 
	player playMove "amovpercmstpsnonwnondnon_amovpercmstpssurwnondnon"; //Animation in
	
	// Check if player is alive.
	if (!alive player) then {
		player setVariable ["Surrendered", false, true];
	};
};

player playMoveNow "AmovPercMstpSsurWnonDnon_AmovPercMstpSnonWnonDnon"; //Animation out
player setVariable ["Surrendered", false, true];
