/*
	File: fn_handleItemTooltip.sqf
	Author: Spiderswine
	
	Description:
	Manages the link to the Tooltip of an Item.
*/

private["_item"];
_item = [_this,0,"",[""]] call BIS_fnc_param;

switch(_item) do
{	
	case "life_inv_oilu": {"Das ist eine Wasserflasche."};
	case "life_inv_oilp": {"Das ist eine Wasserflasche."};
	case "life_inv_heroinu": {"Das ist eine Wasserflasche."};
	case "life_inv_heroinp": {"Das ist eine Wasserflasche."};
	case "life_inv_cannabis": {"Das ist eine Wasserflasche."};
	case "life_inv_marijuana": {"Das ist eine Wasserflasche."};
	case "life_inv_apple": {"Das ist ein Apfel."};
	case "life_inv_rabbit": {"Das ist eine Wasserflasche."};
	case "life_inv_salema": {"Das ist eine Wasserflasche."};
	case "life_inv_ornate": {"Das ist eine Wasserflasche."};
	case "life_inv_mackerel": {"Das ist eine Wasserflasche."};
	case "life_inv_tuna": {"Das ist eine Wasserflasche."};
	case "life_inv_mullet": {"Das ist eine Wasserflasche."};
	case "life_inv_catshark": {"Das ist eine Wasserflasche."};
	case "life_inv_turtle": {"Das ist eine Wasserflasche."};
	case "life_inv_fishingpoles": {"Das ist eine Wasserflasche."};
	case "life_inv_water": {"Das ist eine Wasserflasche."};
	case "life_inv_donuts": {"Der beste Freund eines Polizisten."};
	case "life_inv_turtlesoup": {"Das ist eine Wasserflasche."};
	case "life_inv_coffee": {"Meistens schwarz und heiss."};
	case "life_inv_fuelF": {"Das ist eine Wasserflasche."};
	case "life_inv_fuelE": {"Das ist eine Wasserflasche."};
	case "life_inv_pickaxe": {"Eine Spitzhacke zum Abbauen von Rohstoffen."};
	case "life_inv_copperore": {"Das ist ein Kupfererz."};
	case "life_inv_ironore": {"Das ist ein Eisenerz."};
	case "life_inv_ironr": {"Ein geschmolzener Eisenbarren."};
	case "life_inv_copperr": {"Ein geschmolzener Kupferbarren."};
	case "life_inv_sand": {"Ein bisschen Sand."};
	case "life_inv_salt": {"Das ist eine Wasserflasche."};
	case "life_inv_saltr": {"Das ist eine Wasserflasche."};
	case "life_inv_glass": {"Das ist eine Wasserflasche."};
	case "life_inv_tbacon": {"Das ist eine Wasserflasche."};
	case "life_inv_lockpick": {"Hast du keinen Schlüssel? Dann nimmste das da!"};
	case "life_inv_redgull": {"Manche sagen, dass verleiht Flügel."};
	case "life_inv_peach": {"Ein Pfirsich."};
	case "life_inv_diamond": {"Das ist eine Wasserflasche."};
	case "life_inv_coke": {"Das ist eine Wasserflasche."};
	case "life_inv_cokep": {"Das ist eine Wasserflasche."};
	case "life_inv_diamondr": {"Das ist eine Wasserflasche."};
	case "life_inv_spikeStrip": {"Meist fährt ein Polizist darüber."};
	case "life_inv_rock": {"Das ist eine Wasserflasche."};
	case "life_inv_cement": {"Das ist eine Wasserflasche."};
	case "life_inv_goldbar": {"Das ist eine Wasserflasche."};
	case "life_inv_blastingcharge": {"Das ist eine Wasserflasche."};
	case "life_inv_boltcutter": {"Das ist eine Wasserflasche."};
	case "life_inv_defusekit": {"Das ist eine Wasserflasche."};
	case "life_inv_storagesmall": {"Kleine Lagerkiste."};
	case "life_inv_storagebig": {"Große Lagerkiste."};
	default {"Tooltip"};
};