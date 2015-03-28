class Inventory
{
    idd = 1000;
	name= "Inventory";
	movingEnable = true;
	enableSimulation = true;
	
	/*
	controls[]=
	{
		Backpack,
		Background
	};
	*/
	
	class controlsBackground
	{
		class Background: RscText
		{
			colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", "(profilenamespace getvariable ['GUI_BCG_RGB_A',0.7])"};
			idc = -1;
			text = "Background"; //--- ToDo: Localize;
			x = 0.346875 * safezoneW + safezoneX;
			y = 0.402 * safezoneH + safezoneY;
			w = 0.0583333 * safezoneW;
			h = 0.07 * safezoneH;
			tooltip = "Background"; //--- ToDo: Localize;
		};
	};
	
	class controls 
	{
		class Backpack: RscStructuredText
		{
			idc = 1001;
			text = "\a3\ui_f_data\gui\Rsc\RscDisplayGear\ui_gear_binocular_gs"; //--- ToDo: Localize;
			x = 0.346875 * safezoneW + safezoneX;
			y = 0.318 * safezoneH + safezoneY;
			w = 0.0583333 * safezoneW;
			h = 0.07 * safezoneH;
			tooltip = "Backpack"; //--- ToDo: Localize;
		};
	};
};