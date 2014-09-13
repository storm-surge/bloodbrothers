private["_path","_unit","_type"];
_unit = [_this,0] call BIS_fnc_param;
_type = [_this,1,"",[""]] call BIS_fnc_param;



if(playerSide == west) then {
	switch(_type) do {
	
		case "U_Rangemaster" : {
			_path = "textures\cop\cop.jpg";
			_unit setObjectTextureGlobal [0,_path];
		};
		case "U_B_CombatUniform_mcam_worn" : {
			_path = "textures\cop\cop_sergeant.paa";
			_unit setObjectTextureGlobal [0,_path];
		};
		case "U_B_CombatUniform_mcam_vest" : {
			_path = "textures\cop\cop_officer.paa";
			_unit setObjectTextureGlobal [0,_path];
		};	
		case "U_B_SpecopsUniform_sgg" : {
			_path = "#(argb,8,8,3)color(0.05,0.05,0.05,1)";
			_unit setObjectTextureGlobal [0,_path];
		};			
	};
};
		
if(playerSide == civilian) then {
	switch(_type) do {
		///Civilian
		case "U_B_CombatUniform_mcam" : {
			_path = "textures\civ\kitty.paa";
			_unit setObjectTextureGlobal [0,_path];
		};	
		case "U_C_Poloshirt_salmon" : {
			_path = "textures\civ\dayZ.jpg";
			_unit setObjectTextureGlobal [0,_path];
		};
		case "U_C_Commoner_shorts" : {
			_path = "textures\civ\pink_panther.jpg";
			_unit setObjectTextureGlobal [0,_path];
		};
		case "U_C_ShirtSurfer_shorts" : {
			_path = "textures\civ\tlou.jpg";
			_unit setObjectTextureGlobal [0,_path];
		};		
		case "U_C_Poloshirt_burgundy" : {
			_path = "textures\civ\jail.jpg";
			_unit setObjectTextureGlobal [0,_path];	
		};		
	};
};
if(playerSide == east) then {
	switch(_type) do {	
		
		case "U_B_CombatUniform_mcam_vest" : {
			_path = "textures\opfor\ateam_uniform.jpg";
			_unit setObjectTextureGlobal [0,_path];
		};
		case "U_B_CombatUniform_mcam" : {
			_path = "textures\opfor\ateam_uniform.jpg";
			_unit setObjectTextureGlobal [0,_path];
		};
		case "U_B_CombatUniform_mcam_tshirt" : {
			_path = "textures\opfor\ateam_uniform.jpg";
			_unit setObjectTextureGlobal [0,_path];
		};
		case "U_B_GhillieSuit" : {
			_path = "textures\opfor\ateam_uniform.jpg";
			_unit setObjectTextureGlobal [0,_path];
		};
	};
	if((backpack player) == "B_Kitbag_rgr") then {
		(unitBackpack _unit) setObjectTextureGlobal [0,"\a3\weapons_f\ammoboxes\bags\data\backpack_fast_blk_co.paa"];
	};
	if((backpack player) == "B_Carryall_oli") then {
		(unitBackpack _unit) setObjectTextureGlobal [0,"\a3\weapons_f\ammoboxes\bags\data\backpack_tortila_blk_co.paa"];
	};
	if((backpack player) == "B_TacticalPack_blk") then {
		(unitBackpack _unit) setObjectTextureGlobal [0,"\a3\weapons_f\ammoboxes\bags\data\backpack_small_blk_co.paa"];
	};
	if((backpack player) == "B_Carryall_oucamo") then {
		(unitBackpack _unit) setObjectTextureGlobal [0,"\a3\weapons_f\ammoboxes\bags\data\backpack_tortila_blk_co.paa"];
	};
	if((backpack player) == "B_AssaultPack_blk") then {
		(unitBackpack _unit) setObjectTextureGlobal [0,"\a3\weapons_f\ammoboxes\bags\data\backpack_compact_blk_co.paa"];
	};
};

if(playerSide == independent) then {
	switch(_type) do {
	
		case "U_Rangemaster" : {
		_path = "textures\medic\medic_rangemaster_uniform.jpg";
		_unit setObjectTextureGlobal [0,_path];
		};
		case "U_Competitor" : {
			_path = "textures\adac\adac_uniform.jpg";
			_unit setObjectTextureGlobal [0,_path];
		};
		
		case "U_I_OfficerUniform" : {		
		_path = "textures\medic\medic_uniform.jpg";		
		_unit setObjectTextureGlobal [0,_path];		
		};
	};

	if((backpack player) == "B_Kitbag_cbr") then {
		(unitBackpack _unit) setObjectTextureGlobal [0, "textures\medic\medic_backpack.jpg"];
	};
};
