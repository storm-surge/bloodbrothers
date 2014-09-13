#include <macro.h>
private["_handle"];
_handle = [] spawn life_fnc_stripDownPlayer;
waitUntil {scriptDone _handle};

// Leader Loadout

if( (call life_opforlevel) > 2 ) then
		{
player forceAddUniform "U_B_CombatUniform_mcam";
player addVest "V_PlateCarrier1_blk";
player addBackpack "B_Kitbag_rgr";
player addHeadgear "H_Beret_Colonel";
player addGoggles "G_Bandanna_shades";
/* ITEMS */
player addItem "ItemMap";
player assignItem "ItemMap";
player addItem "ItemRadio";
player assignItem "ItemRadio";
player addItem "ItemCompass";
player assignItem "ItemCompass";
player addItem "ItemWatch";
player assignItem "ItemWatch";
player addItem "ItemGPS";
player assignItem "ItemGPS";
player additem "NVGoggles_OPFOR";
player assignItem "NVGoggles_OPFOR";

player addItem "Laserdesignator";
player assignItem "Laserdesignator";
[[player,0,"textures\opfor\ateam_uniform.jpg"],"life_fnc_setTexture",true,false] spawn life_fnc_MP;
};

//////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////////


//Mitglieder Loadout
if( (call life_opforlevel) == 2) then
		{
player forceAddUniform "U_B_CombatUniform_mcam";
player addVest "V_PlateCarrier1_blk";
player addBackpack "B_Carryall_oli";
player addHeadgear "H_HelmetB_light_black";
player addGoggles "G_Bandanna_shades";
/* ITEMS */
player addItem "ItemMap";
player assignItem "ItemMap";
player addItem "ItemRadio";
player assignItem "ItemRadio";
player addItem "ItemCompass";
player assignItem "ItemCompass";
player addItem "ItemWatch";
player assignItem "ItemWatch";
player addItem "ItemGPS";
player assignItem "ItemGPS";
player additem "NVGoggles_OPFOR";
player assignItem "NVGoggles_OPFOR";

player addItem "Laserdesignator";
player assignItem "Laserdesignator";
[[player,0,"textures\opfor\ateam_uniform.jpg"],"life_fnc_setTexture",true,false] spawn life_fnc_MP;
};
//////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////////

//Recruit Loadout
if( (call life_opforlevel) == 1) then
		{
player forceAddUniform "U_B_CombatUniform_mcam_vest";
player addVest "V_TacVestIR_blk";
player addBackpack "B_TacticalPack_blk";
player addHeadgear "H_Cap_blk";
player addGoggles "G_Shades_Black";
/* ITEMS */
player addItem "ItemMap";
player assignItem "ItemMap";
player addItem "ItemRadio";
player assignItem "ItemRadio";
player addItem "ItemCompass";
player assignItem "ItemCompass";
player addItem "ItemWatch";
player assignItem "ItemWatch";
player addItem "ItemGPS";
player assignItem "ItemGPS";
player additem "NVGoggles_OPFOR";
player assignItem "NVGoggles_OPFOR";

player addItem "Laserdesignator";
player assignItem "Laserdesignator";
[[player,0,"textures\opfor\ateam_uniform.jpg"],"life_fnc_setTexture",true,false] spawn life_fnc_MP;
};





[player, uniform player] call life_fnc_setUniformTexture;
[] call life_fnc_saveGear;