/*
	File: fn_buyLicense.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Called when purchasing a license. May need to be revised.
*/
private["_type", "_experience"];
_type = _this select 3;

_price = [_type] call life_fnc_licensePrice;
_license = [_type,0] call life_fnc_licenseType;
_experience = [_license] call life_fnc_licenseExperience;

if(life_experience <= _experience) exitWith {
	hint "Du hast zu wenig Erfahrung um diese Lizenz zu erwerben."
};

if(life_cash < _price) exitWith {hint format[localize "STR_NOTF_NE_1",[_price] call life_fnc_numberText,_license select 1];};

life_cash = life_cash - _price;
titleText[format[localize "STR_NOTF_B_1", _license select 1,[_price] call life_fnc_numberText],"PLAIN"];
missionNamespace setVariable[(_license select 0),true];

if(_license select 0 == "license_civ_citizen" && license_civ_rebel) then {
	license_civ_rebel = false;
	hint "Aufgrund des Erwerbs einer Bürgerurkunde hast du deine Rebellenlizenz verloren!";
};

if(_license select 0 == "license_civ_rebel" && license_civ_citizen) then {
	license_civ_citizen = false;
	hint "Aufgrund des Erwerbs einer Rebellenlizenz hast du deine Bürgerurkunde verloren!";
};