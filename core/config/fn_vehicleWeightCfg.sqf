/*
	File: fn_vehicleWeightCfg.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration for vehicle weight.
*/
private["_className"];
_className = [_this,0,"",[""]] call BIS_fnc_param;

switch (_className) do
{
	case "B_Quadbike_01_F": {20};				//Quadbike (20)
	case "C_Hatchback_01_F": {60};				//Hatchback (60)
	case "C_Rubberboat": {60};					//Rescue Boat (60)
	case "B_Boat_Transport_01_F": {60};			//Assault Boat (60)
	case "C_Hatchback_01_sport_F": {70};			//Sport Limo (Hatchback (Sport)) (70)
	case "C_Offroad_01_F": {100};				//Offroad (100)
	case "B_G_Offroad_01_F": {100};				//Rebellen Offroad (100)
	case "O_MRAP_02_F": {120};					//Ifrid (120)
	case "B_G_Boat_Transport_01_F": {125};		//Assault Boat (125)
	case "C_SUV_01_F": {150};					//SUV (150)
	case "B_Heli_Light_01_F": {150};				//MH-9 Hummingbird (150)
	case "O_Boat_Armed_01_hmg_F": {155};			//Speedboat HMG (155)
	case "B_Boat_Armed_01_minigun_F": {155};		//Speedboat Minigun (155)
	case "I_Boat_Armed_01_minigun_F": {155};		//Speedboat Minigun  (155)
	case "B_MRAP_01_F": {175};					//Hunter (175)
	case "I_MRAP_03_F": {175};					//Strider (175)
	case "B_MRAP_01_hmg_F": {175};				//Hunter HMG (175)
	case "I_MRAP_03_hmg_F": {175};				//Strider HMG  (175)
	case "I_MRAP_03_F": {175};					//Strider (175)
	case "B_Truck_01_mover_F": {210};			//HEMTT Mover (210)
	case "I_G_Van_01_transport_F": {235};		//Truck (235)
	case "C_Van_01_transport_F": {250};			//Truck (250)
	case "B_Truck_01_ammo_F": {250};				//HEMTT Ammo (250)
	case "C_Boat_Civil_01_F": {250};				//Motorboat (250)
	case "C_Boat_Civil_01_police_F": {250};		//Motorboat (Police) (250)
	case "C_Boat_Civil_01_rescue_F": {250};		//Motorboat (Rescue) (250)
	case "C_Van_01_box_F": {300};				//Truck Boxer (300)
	case "O_Heli_Light_02_unarmed_F": {300};		//PO-30 Orca (Black) (300)
	case "I_Heli_light_03_unarmed_F": {300};		//WY-55 Hellcat (Green) (300)
	case "I_Truck_02_transport_F": {350};		//Zamak Transport (350)
	case "B_Truck_01_fuel_F": {400};				//HEMTT Fuel (400)
	case "I_Heli_Transport_02_F": {600};			//CH-49 Mohawk (400)
	case "B_Truck_01_medical_F": {450};			//HEMTT Medical (450)
	case "I_Truck_02_covered_F": {450};			//Zamak Transport (Covered) (400)
	case "B_Truck_01_transport_F": {750};		//HEMTT Transport (750)
	case "B_Truck_01_covered_F": {875};			//HEMTT Transport (750)
	case "B_Truck_01_box_F": {1200};				//HEMTT Box (1000)
	case "Land_Box_AmmoOld_F": {700};
    case "B_supplyCrate_F": {1000};
	case "O_Truck_03_transport_F": {600};        // TEmpest Transporter (600);
	case "O_Truck_03_covered_F": {300};			// TEmpest Transporter covered (600);
	case "O_Truck_03_device_F": {750};
	default {-1};
};