/*
	File: fn_vehicleShopBuy.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Does something with vehicle purchasing.
*/
private["_mode","_spawnPoints","_className","_basePrice","_colorIndex","_spawnPoint","_vehicle","_vehicleExperience"];
_mode = _this select 0;
if((lbCurSel 2302) == -1) exitWith {hint localize "STR_Shop_Veh_DidntPick"};
_className = lbData[2302,(lbCurSel 2302)];
_vIndex = lbValue[2302,(lbCurSel 2302)];
_vehicleList = [life_veh_shop select 0] call life_fnc_vehicleListCfg; _basePrice = (_vehicleList select _vIndex) select 1;
 if(_mode) then {_basePrice = round(_basePrice * 10)};
_colorIndex = lbValue[2304,(lbCurSel 2304)];
//_vehicleExperience = [_className] call life_fnc_vehicleExperenceCfg;

//Series of checks (YAY!)
if(_basePrice < 0) exitWith {}; //Bad price entry
//if(life_experience <= _vehicleExperience) exitWith {hint "Du hast nicht genug Erfahrung für dieses Fahrzeug.";};
if(life_atmcash < _basePrice) exitWith {hint format[localize "STR_Shop_Veh_NotEnough",[_basePrice - life_atmcash] call life_fnc_numberText];};
if(!([_className] call life_fnc_vehShopLicenses) && _className != "I_MRAP_03_hmg_F") exitWith {hint localize "STR_Shop_Veh_NoLicense"};

_spawnPoints = life_veh_shop select 1;
_spawnPoint = "";

if((life_veh_shop select 0) == "med_air_hs") then {
	if(count(nearestObjects[(getMarkerPos _spawnPoints),["Air"],35]) == 0) exitWith {_spawnPoint = _spawnPoints};
} else {
	//Check if there is multiple spawn points and find a suitable spawnpoint.
	if(typeName _spawnPoints == typeName []) then {
		//Find an available spawn point.
		{if(count(nearestObjects[(getMarkerPos _x),["Car","Ship","Air"],5]) == 0) exitWith {_spawnPoint = _x};} foreach _spawnPoints;
	} else {
		if(count(nearestObjects[(getMarkerPos _spawnPoints),["Car","Ship","Air"],5]) == 0) exitWith {_spawnPoint = _spawnPoints};
	};
};


if(_spawnPoint == "") exitWith {hint localize "STR_Shop_Veh_Block";};
life_atmcash = life_atmcash - _basePrice;
hint format[localize "STR_Shop_Veh_Bought",getText(configFile >> "CfgVehicles" >> _className >> "displayName"),[_basePrice] call life_fnc_numberText];

//Spawn the vehicle and prep it.
if((life_veh_shop select 0) == "med_air_hs") then {
	_vehicle = createVehicle [_className,[0,0,999],[], 0, "NONE"];
	waitUntil {!isNil "_vehicle"}; //Wait?
	_vehicle allowDamage false;
	_hs = nearestObjects[getMarkerPos _spawnPoint,["Land_Hospital_side2_F"],50] select 0;
	_vehicle setPosATL (_hs modelToWorld [-0.4,-4,12.65]);
	_vehicle lock 2;
	[[_vehicle,_colorIndex],"life_fnc_colorVehicle",true,false] spawn life_fnc_MP;
	[_vehicle] call life_fnc_clearVehicleAmmo;
	_vehicle setVariable["trunk_in_use",false,true];
	_vehicle setVariable["vehicle_info_owners",[[getPlayerUID player,profileName]],true];
	_vehicle disableTIEquipment true; //No Thermals.. They're cheap but addictive.
} else {
	_vehicle = createVehicle [_className, (getMarkerPos _spawnPoint), [], 0, "NONE"];
	waitUntil {!isNil "_vehicle"}; //Wait?
	_vehicle allowDamage false; //Temp disable damage handling..
	_vehicle lock 2;
	_vehicle setVectorUp (surfaceNormal (getMarkerPos _spawnPoint));
	_vehicle setDir (markerDir _spawnPoint);
	_vehicle setPos (getMarkerPos _spawnPoint);
	[[_vehicle,_colorIndex],"life_fnc_colorVehicle",true,false] spawn life_fnc_MP;
	[_vehicle] call life_fnc_clearVehicleAmmo;
	_vehicle setVariable["trunk_in_use",false,true];
	_vehicle setVariable["vehicle_info_owners",[[getPlayerUID player,profileName]],true];
	_vehicle disableTIEquipment true; //No Thermals.. They're cheap but addictive.
};

// Fixes the fucking Driving Style of the SUV
if(_className == "C_SUV_01_F") then {
	_vehicle setCenterofMass [0, -0.3, -0.7];
};

//Side Specific actions.
switch(playerSide) do {
	case west: {
		[_vehicle,"cop_offroad",true] spawn life_fnc_vehicleAnimate;
	};
	
	case independent: {
		if(_className == "C_Offroad_01_F") then {
			[_vehicle,"med_offroad",true] spawn life_fnc_vehicleAnimate;
		};
		if(_className == "B_G_Offroad_01_repair_F") then {
			[_vehicle,"repair_offroad",true] spawn life_fnc_vehicleAnimate;
		};
	};
};

_vehicle allowDamage true;

_vehicle addEventHandler ["handleDamage",{_this call life_fnc_handleVehicleDamage;}];
//_vehicle addEventHandler["Killed", {_this spawn TON_fnc_vehicleDead}];
//_vehicle addEventHandler ["Killed", {_this call life_fnc_onVehicleKilled;}];
_vehicle addEventHandler ["Killed", {
	_vehicle = _this select 0;
	hint "Killed";
	_vehicle setDammage 0.9;
	_vehicle setHit["wheel_1_1_steering", 1]; 
	_vehicle setHit["wheel_1_2_steering", 1]; 
	_vehicle setHit["wheel_2_1_steering", 1];
	_vehicle setHit["wheel_2_2_steering", 1]; 
	_vehicle setHit["karoserie", 1];}
];

life_vehicles set[count life_vehicles,_vehicle]; //Add err to the chain.
if(_mode) then {
	if(!(_className in ["B_G_Offroad_01_armed_F","I_MRAP_03_hmg_F","B_MRAP_01_hmg_F"])) then {
		[[(getPlayerUID player),playerSide,_vehicle,_colorIndex],"TON_fnc_vehicleCreate",false,false] spawn life_fnc_MP;
	};
};

[6] call SOCK_fnc_updatePartial;
closeDialog 0; //Exit the menu.
true;
