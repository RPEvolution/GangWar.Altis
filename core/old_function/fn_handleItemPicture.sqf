/*
	File: fn_handleItemPicture.sqf
	Author: Spiderswine
	
	Description:
	Manages the link to the Picture of an Item.
*/

private["_item"];
_item = [_this,0,"",[""]] call BIS_fnc_param;

switch(_item) do
{	
	case "life_inv_oilu": {"textures\icons\water.paa"};
	case "life_inv_oilp": {"textures\icons\water.paa"};
	case "life_inv_heroinu": {"textures\icons\water.paa"};
	case "life_inv_heroinp": {"textures\icons\water.paa"};
	case "life_inv_cannabis": {"textures\icons\water.paa"};
	case "life_inv_marijuana": {"textures\icons\water.paa"};
	case "life_inv_apple": {"textures\icons\apple.paa"};
	case "life_inv_rabbit": {"textures\icons\rabbit.paa"};
	case "life_inv_salema": {"textures\icons\salema.paa"};
	case "life_inv_ornate": {"textures\icons\ornate.paa"};
	case "life_inv_mackerel": {"textures\icons\mackerel.paa"};
	case "life_inv_tuna": {"textures\icons\tuna.paa"};
	case "life_inv_mullet": {"textures\icons\mullet.paa"};
	case "life_inv_catshark": {"textures\icons\catshark.paa"};
	case "life_inv_turtle": {"textures\icons\turtle.paa"};
	case "life_inv_fishingpoles": {"textures\icons\water.paa"};
	case "life_inv_water": {"textures\icons\waterbottle.paa"};
	case "life_inv_donuts": {"textures\icons\donuts.paa"};
	case "life_inv_turtlesoup": {"textures\icons\water.paa"};
	case "life_inv_coffee": {"textures\icons\coffee.paa"};
	case "life_inv_fuelF": {"textures\icons\fuelF.paa"};
	case "life_inv_fuelE": {"textures\icons\fuelE.paa"};
	case "life_inv_pickaxe": {"textures\icons\pickaxe.paa"};
	case "life_inv_copperore": {"textures\icons\copperore.paa"};
	case "life_inv_ironore": {"textures\icons\ironore.paa"};
	case "life_inv_ironr": {"textures\icons\ironr.paa"};
	case "life_inv_copperr": {"textures\icons\copperr.paa"};
	case "life_inv_sand": {"textures\icons\sand.paa"};
	case "life_inv_salt": {"textures\icons\salt.paa"};
	case "life_inv_saltr": {"textures\icons\water.paa"};
	case "life_inv_glass": {"textures\icons\water.paa"};
	case "life_inv_tbacon": {"textures\icons\tbacon.paa"};
	case "life_inv_lockpick": {"textures\icons\lockpick.paa"};
	case "life_inv_redgull": {"textures\icons\redgull.paa"};
	case "life_inv_peach": {"textures\icons\peach.paa"};
	case "life_inv_diamond": {"textures\icons\water.paa"};
	case "life_inv_coke": {"textures\icons\water.paa"};
	case "life_inv_cokep": {"textures\icons\water.paa"};
	case "life_inv_diamondr": {"textures\icons\water.paa"};
	case "life_inv_spikeStrip": {"textures\icons\spikeStrip.paa"};
	case "life_inv_rock": {"textures\icons\water.paa"};
	case "life_inv_cement": {"textures\icons\water.paa"};
	case "life_inv_goldbar": {"textures\icons\water.paa"};
	case "life_inv_blastingcharge": {"textures\icons\blastingcharge.paa"};
	case "life_inv_boltcutter": {"textures\icons\boltcutter.paa"};
	case "life_inv_defusekit": {"textures\icons\defusekit.paa"};
	case "life_inv_storagesmall": {"textures\icons\storagesmall.paa"};
	case "life_inv_storagebig": {"textures\icons\storagebig.paa"};
	case "life_inv_handcuffs": {"textures\icons\handcuffs.paa"};
	case "life_inv_zipties": {"textures\icons\zipties.paa"};
	default {"textures\icons\house.paa"};
};