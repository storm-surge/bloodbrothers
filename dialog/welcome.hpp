class Welcome_dialog{
		idd=-1;
		onLoad="UInamespace setVariable ['Welcome_dialog',_this select 0];";
		
class controls{

class RscText_1000: Life_RscText
{
	idc = 1000;
	text = "Willkommen"; //--- ToDo: Localize;
	x = 0.276563 * safezoneW + safezoneX;
	y = 0.181124 * safezoneH + safezoneY;
	w = 0.446875 * safezoneW;
	h = 0.0439828 * safezoneH;
	colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", "(profilenamespace getvariable ['GUI_BCG_RGB_A',0.7])"};
	
};
class RscText_1001: Life_RscText
{
	idc = 1001;
	x = 0.276563 * safezoneW + safezoneX;
	y = 0.229505 * safezoneH + safezoneY;
	w = 0.446875 * safezoneW;
	h = 0.472816 * safezoneH;
	colorBackground[] = {-1,-1,-1,0.4};
};
class RscText_1002: Life_RscText
{
	idc = 1002;
	x = 0.276563 * safezoneW + safezoneX;
	y = 0.708919 * safezoneH + safezoneY;
	w = 0.360938 * safezoneW;
	h = 0.0439828 * safezoneH;
	colorBackground[] = {-1,-1,-1,0.7};
};
class RscText_1003: Life_RscButtonMenu
{
	idc = 1003;
	text = "Housing Wiki"; //--- ToDo: Localize;
	x = 0.333854 * safezoneW + safezoneX;
	y = 0.631948 * safezoneH + safezoneY;
	w = 0.0916667 * safezoneW;
	h = 0.0439828 * safezoneH;
	colorBackground[] = {-1,-1,-1,0.7};
	action="[1] call Life_fnc_CreateHelpDialog;";
};
class RscText_1004: Life_RscButtonMenu
{
	idc = 1004;
	text = "Server Regeln"; //--- ToDo: Localize;
	x = 0.454167 * safezoneW + safezoneX;
	y = 0.631948 * safezoneH + safezoneY;
	w = 0.0973958 * safezoneW;
	h = 0.0439828 * safezoneH;
	colorBackground[] = {-1,-1,-1,0.7};
	action="[4] execVM 'dialog\function\createStartDialog.sqf';";
};
class RscText_1005: Life_RscButtonMenu
{
	idc = 1005;
	text = "Schliessen"; //--- ToDo: Localize;
	x = 0.64323 * safezoneW + safezoneX;
	y = 0.708919 * safezoneH + safezoneY;
	w = 0.0802083 * safezoneW;
	h = 0.0439828 * safezoneH;
	colorBackground[] = {-1,-1,-1,0.7};
	action="closeDialog 0;";
};
class RscStructuredText_1100: Life_RscStructuredText
{
	idc = 1100;
	x = 0.310938 * safezoneW + safezoneX;
	y = 0.258094 * safezoneH + safezoneY;
	w = 0.383854 * safezoneW;
	h = 0.351863 * safezoneH;
};
class RscText_1006: Life_RscButtonMenu
{
	idc = 1006;
	text = "Steuerungs"; //--- ToDo: Localize;
	x = 0.580208 * safezoneW + safezoneX;
	y = 0.631948 * safezoneH + safezoneY;
	w = 0.0916667 * safezoneW;
	h = 0.0439828 * safezoneH;
	action="[3] execVM 'dialog\function\createStartDialog.sqf';";
	colorBackground[] = {-1,-1,-1,0.7};
};
};
};
////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT END
////////////////////////////////////////////////////////
