#include <macro.h>
/*
	File: fn_weaponShopSelection.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Checks the weapon & adds the price tag.
*/
private["_control","_index","_priceTag","_price","_item","_picture","_pictureTag","_name","_nameTag"];
_control = [_this,0,controlNull,[controlNull]] call BIS_fnc_param;
_index = [_this,1,-1,[0]] call BIS_fnc_param;
if(isNull _control OR _index == -1) exitWith {closeDialog 0;}; //Bad data

_priceTag = (findDisplay 38400) displayCtrl 38404;
_pictureTag = (findDisplay 38400) displayCtrl 38406;
_nameTag = (findDisplay 38400) displayCtrl 38407;

_item = _control lbData _index;

_picture = getText(configFile >> "cfgWeapons" >> _item >> "picture");
_name = getText(configFile >> "cfgWeapons" >> _item >> "displayName");
_pictureTag ctrlSetText _picture;
_nameTag ctrlSetStructuredText  parseText format["<t align='center'><t size='1.5'>%1</t></t>",_name];

if((uiNamespace getVariable["Weapon_Shop_Filter",0]) == 1) then
{
	_iS = [_item,__GETC__(life_weapon_shop_array)] call TON_fnc_index;
	if(_iS == -1) then 
	{
		_price = 0;
	}
		else
	{
		_price = (__GETC__(life_weapon_shop_array) select _iS) select 1;
	};
	_priceTag ctrlSetStructuredText parseText format ["<t align='center'>Preis: <t color='#8cff9b'>%1 €</t></t>",[(_price)] call life_fnc_numberText];
	_control lbSetValue[_index,_price];
}
	else
{
	_price = _control lbValue _index;
	if(_price > life_cash) then
	{
		_priceTag ctrlSetStructuredText parseText format ["<t align='left'>Preis: <t color='#ff0000'>%1 €</t></t><t align='right'>Dir fehlen: <t color='#8cff9b'>%2 €</t></t>",[(_price)] call life_fnc_numberText,[(_price - life_cash)] call life_fnc_numberText];
	}
		else
	{
		_priceTag ctrlSetStructuredText parseText format ["<t align='center'>Preis: <t color='#8cff9b'>%1 €</t></t>",[(_price)] call life_fnc_numberText];
	};
};