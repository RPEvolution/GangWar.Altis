0 cutText["Setting up client, please wait...","BLACK FADED"];
0 cutFadeOut 9999999;
_timeStamp = diag_tickTime;
diag_log "------------------------------------------------------------------------------------------------------";
diag_log "--------------------------------- Starting Altis Life Client Init ----------------------------------";
diag_log "------------------------------------------------------------------------------------------------------";
waitUntil {!isNull player && player == player}; //Wait till the player is ready

diag_log "::Life Client:: Setting up Eventhandlers";
[] call main_fnc_setupEvents;
diag_log "::Life Client:: Eventhandlers completed";

waitUntil {!(isNull (findDisplay 46))};
diag_log "Display 46 Found";
(findDisplay 46) displayAddEventHandler ["KeyDown", "_this call main_fnc_keyHandler"];

0 cutText ["","BLACK IN"];