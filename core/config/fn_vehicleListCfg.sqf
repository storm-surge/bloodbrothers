#include <macro.h>
/*
	File:
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration list / array for buyable vehicles & prices and their shop.
*/
private["_shop","_return"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {[]};
_return = [];
switch (_shop) do
{
	case "kart_shop":
	{
		_return = [
			["C_Kart_01_Blu_F",15000],
			["C_Kart_01_Fuel_F",15000],
			["C_Kart_01_Red_F",15000],
			["C_Kart_01_Vrana_F",15000]
		];
	};
	////////////////////////////////////////////////////////////////////////////////
	////////////////////////////////////////////////////////////////////////////////
	case "med_shop":
	{
		_return = [
			["C_Offroad_01_F",50000],
			["C_SUV_01_F",65000]
					
		];
	};
	case "adac_air_hs": {
		_return = [
			["B_Heli_Light_01_F",375000],                //Hummingbird
			["O_Heli_Light_02_unarmed_F",1000000]        //Orca
			
		];
	};
	case "med_air_hs": {
		_return = [
			["B_Heli_Light_01_F",375000],                //Hummingbird
			["O_Heli_Light_02_unarmed_F",1000000]        //Orca
			
		];
	};
	case "med_air_hs2": {
		_return = [
			["B_Heli_Light_01_F",375000],                //Hummingbird
			["O_Heli_Light_02_unarmed_F",1000000]        //Orca
			
		];
	};
	////////////////////////////////////////////////////////////////////////////////
	
	case "donator_veh": {
	if(__GETC__(life_donator) > 0) then
	{			
			_return set[count _return,["B_Quadbike_01_F",3500]];				//Quadbike (20)
			_return set[count _return,["C_Hatchback_01_F",35000]];				//Hatchback (60)
			_return set[count _return,["C_Hatchback_01_sport_F",70000]];			//Sport Limo (Hatchback (Sport)) (70)
			_return set[count _return,["C_Offroad_01_F",28000]];					//Offroad (100)
			_return set[count _return,["C_SUV_01_F",52500]];						//SUV (150	
			_return set[count _return,["C_Van_01_transport_F",189000]];			//Truck (250)					
			_return set[count _return,["C_Van_01_box_F",266000]];					//Truck Boxer (300)
			_return set[count _return,["I_Truck_02_transport_F",448000]];			//Zamak Transport (350)
			_return set[count _return,["I_Truck_02_covered_F",525000]];			//Zamak Transport (Covered) (400)
			_return set[count _return,["B_Truck_01_ammo_F",700000]];				//HEMTT Ammo (250)
			_return set[count _return,["B_Truck_01_fuel_F",1120000]];				//HEMTT Fuel (400)
			_return set[count _return,["B_Truck_01_medical_F",1260000]];			//HEMTT Medical (450)
			_return set[count _return,["B_Truck_01_transport_F",2100000]];			//HEMTT Transport (750)
			_return set[count _return,["B_Truck_01_covered_F",2450000]];			//HEMTT Transport (Covered) (875)
			_return set[count _return,["B_Truck_01_box_F",3360000]];			//HEMTT Box (1200)
			_return set[count _return,["B_MRAP_01_F",2100000]];               		//Hunter
			//_return set[count _return,["O_Truck_03_transport_F",2520000]];         //Tempest Truck Transport (600)
			_return set[count _return,["B_Heli_Light_01_F",2100000]];				//MH-9 Hummingbird (150)			
			_return set[count _return,["O_Heli_Light_02_unarmed_F",4200000]];		//PO-30 Orca (Black) (300)
			_return set[count _return,["I_Heli_Transport_02_F",11200000]];			//CH-49 Mohawk (400)
			_return set[count _return,["O_Truck_03_device_F",15000000]];           //Der Gerät (750)
			_return set[count _return,["O_Truck_03_ammo_F",21750000]];				//Tempest Truck Munition
		
	};
};
	////////////////////////////////////////////////////////////////////////////////
	
	/////////////////////////////////////////////////////////////////////////////////////
	case "civ_car":
	{
		_return = 
		[
			["B_Quadbike_01_F",5000],					//Quadbike (20)
			["C_Hatchback_01_F",50000],					//Hatchback (60)
			["C_Hatchback_01_sport_F",100000],			//Hatchback Sport
			["C_Offroad_01_F",60000],					//Offroad (100)
			["C_SUV_01_F",75000],						//SUV (150)			
			["C_Van_01_transport_F",270000]
		];
	};
	
	case "civ_truck":
	{
		_return =
		[
			["C_Van_01_box_F",380000],					//Truck Boxer (300)
			["I_Truck_02_transport_F",640000],			//Zamak Transport (350)
			["I_Truck_02_covered_F",750000],			//Zamak Transport (Covered) (400)
			["B_Truck_01_ammo_F",1000000],				//HEMTT Ammo (250)
			["B_Truck_01_fuel_F",1600000],				//HEMTT Fuel (400)
			["B_Truck_01_medical_F",1800000],			//HEMTT Medical (450)
			["B_Truck_01_transport_F",3000000],			//HEMTT Transport (750)
			["B_Truck_01_covered_F",3500000],			//HEMTT Transport (Covered) (875)
			["B_Truck_01_box_F",4800000],				//HEMTT Box (1200)
			["B_MRAP_01_F",3000000],                   	// Hunter
			["O_Truck_03_transport_F",2900000],         // Tempest Transporter
			["O_Truck_03_covered_F",29000000]			// Tempest Transporter covered
		];	
	};
	
	
	case "reb_car":
	{
		_return =
		[
			["B_G_Offroad_01_F",60000],					//Rebellen Offroad (100)
			["O_MRAP_02_F",6000000]						//Ifrid (120)
			
						
		];
		
		if(license_civ_rebel) then
		{
			_return set[count _return,
			["B_G_Offroad_01_armed_F",2000000]];		//Offroad (Armed) (0)
		};
	};
	case "reb_air":
	{
		_return =
		[
			
			["B_Heli_Light_01_F",3000000],				//MH-9 Hummingbird (150)
			["O_Heli_Light_02_unarmed_F",6000000]	//PO-30 Orca (Black) (300)			
		];
		
		if(license_civ_rebel) then
		{
			_return set[count _return,
			["I_Heli_light_03_unarmed_F",11150000]];			//Hellcat
		};
	};
	
	case "ateam_veh":
	{
		if(__GETC__(life_opforlevel) > 0) then
		{
		
			_return set[count _return,["C_Offroad_01_F",20000]];				//Offroad (100)
			_return set[count _return,["B_MRAP_01_F",35000]];                 	// Hunter			
			_return set[count _return,["B_Truck_01_covered_F",900000]];           //HEMTT Transport (Covered) (875)			
			_return set[count _return,["B_Heli_Light_01_F",375000]];
			_return set[count _return,["O_Heli_Light_02_unarmed_F",1000000]];
			_return set[count _return,["I_Heli_light_03_unarmed_F",1115000]];
			_return set[count _return,["I_Heli_Transport_02_F",3000000]];			
			_return set[count _return,["O_Truck_03_device_F",2000000]];           //Der Gerät (750)
			_return set[count _return,["O_Truck_03_fuel_F",270000]];           //Der Gerät Tankwagen(750)
		};	
	};
	
	
	
	case "cop_car":
	{
		_return =
		[
		
			["B_Quadbike_01_F",3000],										//Quadbike (20)
			["C_Offroad_01_F",20000]										//Offroad (100)
		];
			
		
		if(__GETC__(life_coplevel) > 1) then   // Officer
		{
		_return set[count _return,["C_SUV_01_F",30000]];		                    //SUV (150)
		_return set[count _return,["C_Hatchback_01_sport_F",45000]];	            //Sport Limousine
		};
		
		
		if(__GETC__(life_coplevel) > 2) then 		// Sargeant
		{
			_return set[count _return,["B_MRAP_01_F",35000]];						//Hunter (175)
		};
		
		if(__GETC__(life_coplevel) > 3) then   		// Lieutnant
		{	
			_return set[count _return,["I_MRAP_03_F",70000]];					//Strider (175)
		};
			
		
			
			
		if(__GETC__(life_coplevel) > 4) then     //Captain
			{
			_return set[count _return,["B_MRAP_01_hmg_F",105000]];				//Hunter HMG (175)
		};
		
		
		if(__GETC__(life_coplevel) > 5) then     //Major
			{
			_return set[count _return,["I_MRAP_03_hmg_F",105000]];			//Strider HMG (175)
		};
		
		if(__GETC__(life_coplevel) > 6) then     //General
			{
			_return set[count _return,["B_Truck_01_fuel_F",105000]];		//HEMTT Fuel (175)
			_return set[count _return,["B_Truck_01_ammo_F",105000]];		//HEMTT Ammo  (175)
			_return set[count _return,["B_Truck_01_medical_F",105000]];		//HEMTT Medical  (175)
			_return set[count _return,["B_Truck_01_mover_F",105000]];		//HEMTT (175)
			_return set[count _return,["B_Truck_01_transport_F",105000]];	//HEMTT Transport  (175)
			_return set[count _return,["O_Truck_03_device_F",105000]];		//HEMTT Transport  (175)						
		};
	};
	
	case "civ_air":
	{
		_return =
		[
			["B_Heli_Light_01_F",3000000],				//MH-9 Hummingbird (150)
			["O_Heli_Light_02_unarmed_F",6000000],		//PO-30 Orca (Black) (300)
			["I_Heli_Transport_02_F",17500000]			//Mohawk
		];
	};
	
	case "cop_air":
	{
		if(__GETC__(life_coplevel) > 1) then
		{
		_return set[count _return,
		["B_Heli_Light_01_F",375000]];				//MH-9 Hummingbird (150)
		};
		
		if(__GETC__(life_coplevel) > 2) then
		{
		_return set[count _return,
			["O_Heli_Light_02_unarmed_F",1000000]];		//PO-30 Orca (Black) (300)
		};
		
		if(__GETC__(life_coplevel) > 3) then
		{
		_return set[count _return,
			["I_Heli_light_03_unarmed_F",1115000]];			//Hellcat
		};
		
		if(__GETC__(life_coplevel) > 4) then
		{
		_return set[count _return,
			["B_Heli_Transport_01_F",1125000]];			//UH-80 Ghost Hawk
		};
		if(__GETC__(life_coplevel) > 6) then
		{
		_return set[count _return,
			["I_Heli_Transport_02_F",3000000]];			//Mohawk
		};
	};
	
	case "cop_airhq":
	{
		if(__GETC__(life_coplevel) > 1) then
		{
		_return set[count _return,
		["B_Heli_Light_01_F",375000]];				//MH-9 Hummingbird (150)
		};
		
		if(__GETC__(life_coplevel) > 2) then
		{
		_return set[count _return,
			["O_Heli_Light_02_unarmed_F",1000000]];		//PO-30 Orca (Black) (300)
		};
		
		if(__GETC__(life_coplevel) > 3) then
		{
		_return set[count _return,
			["I_Heli_light_03_unarmed_F",1115000]];			//Hellcat
		};
		
		if(__GETC__(life_coplevel) > 4) then
		{
		_return set[count _return,
			["B_Heli_Transport_01_F",1125000]];			//UH-80 Ghost Hawk
		};
		if(__GETC__(life_coplevel) > 6) then
		{
		_return set[count _return,
			["I_Heli_Transport_02_F",3000000]];			//Mohawk
		};
	};
	
	case "civ_ship":
	{
		_return =
		[
			["C_Rubberboat",5000],
			["C_Boat_Civil_01_F",22000]
		];
	};

	case "cop_ship":
	{
		_return =
		[
			["B_Boat_Transport_01_F",30000],
			["C_Boat_Civil_01_police_F",200000],
			["B_Boat_Armed_01_minigun_F",750000],
			["B_SDV_01_F",1000000]
		];
	};
};

_return;
