/*
	File: fn_vehicleColorStr.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration for color strings depending on their index location.
*/
private["_vehicle","_color","_index"];
_vehicle = [_this,0,"",[""]] call BIS_fnc_param;
_index = [_this,1,-1,[0]] call BIS_fnc_param;
/*
    [input,index,(defaultValue,dataTypes,requiredCount)] call BIS_fnc_param; 
	    input: Array - list of params 
    index: Number - selected index
    defaultValue (Optional): Anything - default param (used when param is missing or of wrong type). You can overload default value by setting 'BIS_fnc_<functionName>_<index>'
    dataTypes (Optional): Array - list of allowed type examples (e.g. ["",[],0,objNull])
    requiredCount (Optional): Number - If value is Array, checks if it has required number of elements
	*/
_color = "";

switch (_vehicle) do
{
	case "C_Offroad_01_F" :
	{
		switch (_index) do
		{
			case 0: {_color = "Red";};
			case 1: {_color = "Yellow";};
			case 2: {_color = "White";};
			case 3: {_color = "Blue";};
			case 4: {_color = "Dark Red";};
			case 5: {_color = "Blue / White"};
			case 6: {_color = "Black"};						
			case 7: {_color = "Tuning"};
			case 8: {_color = "Taxi"};
			case 9: {_color = "Rockstar"};
			case 10: {_color = "Bad Mobil"};
			case 11: {_color = "Taxi"};			
			case 12: {_color = "General Lee";};
			case 13: {_color = "ADAC Lackierung"};
			case 14: {_color = "Polizei Lackierung"};
			case 15: {_color = "A-Team"};
			
		};
	};
	
	case "C_Hatchback_01_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Beige";};
			case 1: {_color = "Green";};
			case 2: {_color = "Blue";};
			case 3: {_color = "Dark Blue";};
			case 4: {_color = "Yellow";};
			case 5: {_color = "White"};
			case 6: {_color = "Grey"};
			case 7: {_color = "Black"};
		};
	};
	case "B_Truck_01_covered_F":
	{
		switch (_index) do
		{
			case 0: {_color = "A-Team";};
			
		};
	};
	case "C_Hatchback_01_sport_F":
	{
		switch(_index) do
		{
			case 0: {_color = "Red"};
			case 1: {_color = "Dark Blue"};
			case 2: {_color = "Orange"};
			case 3: {_color = "Black / White"};
			case 4: {_color = "Tan"};
			case 5: {_color = "Green"};
			case 6: {_color = "Black"};
			case 7: {_color = "Bad Mobile"};
			case 8: {_color = "Monster"};
			case 9: {_color = "Dragon"};
			case 10: {_color = "Redgull"};
			case 11: {_color = "Ghost"};
			case 12: {_color = "HelloKitty"};
			case 13: {_color = "Polizei Lackierung"};
		};
	};
	
	case "C_SUV_01_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Dark Red";};
			case 1: {_color = "Black";};				
			case 2: {_color = "Silver";};
			case 3: {_color = "Orange";};
			case 4: {_color = "Ghostrider";};
			case 5: {_color = "Tribal Green";};
			case 6: {_color = "Monster";};
			case 7: {_color = "Weiß";};
			case 8: {_color = "Ferrari";};
			case 9: {_color = "Tribal";};
			case 10: {_color = "BB-Fan";};
			case 11: {_color = "Notarzt Lackierung";};
			case 12: {_color = "Polizei Lackierung";};
		};
	};
	
	case "C_Van_01_box_F":
	{
		switch (_index) do
		{
			case 0: {_color = "White"};
			case 1: {_color = "Red"};
			
		};
	};
	
	case "C_Van_01_transport_F":
	{
		switch (_index) do
		{
			case 0: {_color = "White"};
			case 1: {_color = "Red"};
		};
	};
	
	case "C_Van_01_fuel_F":
	{
		switch (_index) do
		{
			case 0: {_color = "White"};
			case 1: {_color = "Red"};
		};
	};
	
	case "B_Quadbike_01_F" :
	{
		switch (_index) do
		{
			case 0: {_color = "Polizei Lackierung"};
			case 1: {_color = "Digi Desert"};
			case 2: {_color = "Black"};
			case 3: {_color = "Blue"};
			case 4: {_color = "Red"};
			case 5: {_color = "White"};
			case 6: {_color = "Digi Green"};
			case 7: {_color = "Hunter Camo"};
			case 8: {_color = "Rebel Camo"};
		};
	};
	
	case "B_Heli_Light_01_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Black"};
			case 1: {_color = "Civ Blue"};
			case 2: {_color = "Civ Red"};
			case 3: {_color = "Digi Green"};
			case 4: {_color = "Blueline"};
			case 5: {_color = "Elliptical"};
			case 6: {_color = "Furious"};
			case 7: {_color = "Jeans Blue"};
			case 8: {_color = "Speedy Redline"};
			case 9: {_color = "Sunset"};
			case 10: {_color = "Vrana"};
			case 11: {_color = "Waves Blue"};
			case 12: {_color = "Rebel Digital"};
			case 13: {_color = "EMS White"};
			case 14: {_color = "Polizei Lackierung"};
			case 15: {_color = "ADAC"};
			case 16: {_color = "Weeeeeeed"};
			case 17: {_color = "A-Team"};
			case 18: {_color = "Notarzt"};
		};
	};
	case "I_MRAP_03_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Standard"};
			case 1: {_color = "Polizei Lackierung"};			
		};
	};
	
	case "B_Truck_01_transport_F":
	{
		switch (_index) do
		{
			case 0: {_color = "BB-Tours"};							
		};
	};
	
	
	
	
	case "O_MRAP_02_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Tarnmuster"};
			case 1: {_color = "Black"};				
		};
	};
	case "B_Truck_01_mover_F":
	{	
	switch (_index) do
		{
			case 0: {_color = "ADAC"};
		};	
	};
	case "I_Heli_light_03_unarmed_F":                                               ////////////////// HELLCAT
	{
		switch (_index) do
		{
			case 0: {_color = "Polizei Lackierung";};
			case 1: {_color = "Tarnmuster";};
			case 2: {_color = "A-Team";};			
		};
	};
	case "B_Heli_Transport_01_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Polizei Lackierung"};
			case 1: {_color = "Regular"};			
		};
	};
	case "O_Heli_Light_02_unarmed_F": //ORCA
	{
		switch (_index) do
		{
			case 0: {_color = "Black"};
			case 1: {_color = "White / Blue"};
			case 2: {_color = "Digi Green"};
			case 3: {_color = "Desert Digi"};
			case 4: {_color = "ADAC"};
			case 5: {_color = "Polizei Lackierung"};
			case 6: {_color = "A-Team"};
		};
	};
	
	
	case "O_Truck_03_transport_F":
	{
		switch (_index) do
		{
			case 0: {_color = "A-Team"};						
		};
	};
	
	case "B_MRAP_01_F":
	{
		switch (_index) do
		{
			case 0: {_color = "SWAT Lackierung"};
			case 1: {_color = "Black"};
			case 2: {_color = "A-Team"};
			case 3: {_color = "Desert"};
		};
	};
	
	case "I_Truck_02_covered_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Orange"};
			case 1: {_color = "Black"};
		};
	};
	
	case "I_Truck_02_transport_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Orange"};
			case 1: {_color = "Black"};
		};
	};
	
	case "B_APC_Wheeled_01_cannon_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Black"};
		};
	};
	
	case "O_Heli_Attack_02_black_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Black"};
		};
	};
	
	case "I_Heli_Transport_02_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Ion"};
			case 1: {_color = "Dahoman"};
			case 2: {_color = "A-Team"};
			
		};
	};
	
	case "B_APC_Wheeled_01_cannon_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Black"};
		};
	};
};

_color;