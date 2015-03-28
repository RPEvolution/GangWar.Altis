#include <macro.h>
/*
	File: fn_virt_sell.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Sell a virtual item to the store / shop
*/
private["_type","_index","_price","_var","_amount","_name","_marketprice","_blackmoney"];
if((lbCurSel 2402) == -1) exitWith {};
_type = lbData[2402,(lbCurSel 2402)];
_index = [_type,__GETC__(sell_array)] call TON_fnc_index;
if(_index == -1) exitWith {};
_price = (__GETC__(sell_array) select _index) select 1;
_var = [_type,0] call life_fnc_varHandle;
_blackmoney = life_inv_blackmoney;

// Checks if the Server got a Marketprice
_marketprice = [_type] call life_fnc_marketGetSellPrice;
if(_marketprice != -1) then {_price = _marketprice;};

_amount = ctrlText 2405;
if(!([_amount] call TON_fnc_isnumber)) exitWith {hint localize "STR_Shop_Virt_NoNum";};
_amount = parseNumber (_amount);
if(_amount > (missionNameSpace getVariable _var)) exitWith {hint localize "STR_Shop_Virt_NotEnough"};

_price = (_price * _amount);
_name = [_var] call life_fnc_vartostr;

// Takes away amount of VItems and gives us Cash or Blackmoney
if([false,_type,_amount] call life_fnc_handleInv) then
{
	// For selling illegal items youll get blackmoney
	if(_type in["cocainep","heroinp","marijuana","turtle"]) then {
		[true,"blackmoney",_price] call life_fnc_handleInv;
	} else {
		life_cash = life_cash + _price;
		
		// When selling legal stuff you can launder your money
		if(_price * 3 >= _blackmoney) then {
			if([false, "blackmoney", _blackmoney] call life_fnc_handleInv) then
			{
				life_cash = life_cash + _blackmoney;
			};
		} else {
			if([false, "blackmoney", _price * 3] call life_fnc_handleInv) then
			{
				life_cash = life_cash + _price * 3;
			};
		};
	};
	
	hint format[localize "STR_Shop_Virt_SellItem",_amount,_name,[_price] call life_fnc_numberText];
	
	if(_marketprice != -1) then 
	{ 
		[_type, _amount] spawn
		{
			sleep 300;
			[_this select 0,_this select 1] call life_fnc_marketSell;
			// Sends the shortname and amount of the sold item to the server
			[[_this select 0,_this select 1],"DB_fnc_marketInsertTimes",false,false] call life_fnc_MP;
		};
	};
	
	[] call life_fnc_virt_update;
};

/*
if(_price * 3 >= _blackmoney) then {
	if([false, "blackmoney", _blackmoney] call life_fnc_handleInv) then
	{
		life_cash = life_cash + _blackmoney;
	};
} else {
	if([false, "blackmoney", _price * 3] call life_fnc_handleInv) then
	{
		life_cash = life_cash + _price * 3;
	};
};
*/

// Makes DrogSellers wanted
if(life_shop_type == "heroin") then
{
	private["_array","_ind","_val"];
	_array = life_shop_npc getVariable["sellers",[]];
	_ind = [getPlayerUID player,_array] call TON_fnc_index;
	if(_ind != -1) then
	{
		_val = (_array select _ind) select 2;
		_val = _val + _price;
		_array set[_ind,[getPlayerUID player,profileName,_val]];
		life_shop_npc setVariable["sellers",_array,true];
	}
		else
	{
		_array set[count _array,[getPlayerUID player,profileName,_price]];
		life_shop_npc setVariable["sellers",_array,true];
	};
};

[0] call SOCK_fnc_updatePartial;