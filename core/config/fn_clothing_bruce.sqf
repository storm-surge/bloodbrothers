/*
	File: fn_clothing_bruce.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for Bruce's Outback Outfits.
*/
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Bruce's Outback Outfits"];

switch (_filter) do
{
	//Uniforms
	case 0:
	{
		[
		["U_C_Poloshirt_blue","Poloshirt Blau",250],		
		["U_C_Poloshirt_redwhite","Poloshirt Rot/Weiss",150],
		["U_C_Poloshirt_salmon","DayZ",175],
		["U_C_Commoner_shorts","Pink Panther",300],
		["U_C_Poloshirt_stripped","Poloshirt zerrissen",125],
		["U_C_ShirtSurfer_shorts","The Last Of Us",295],
		["U_Marshal","Marshal",300],
		["U_C_Poloshirt_tricolour","Poloshirt dreifarbig",350],
		["U_C_Poor_2","Lumpen",250],
		["U_IG_Guerilla2_2","Gruenes zerissenes Shirt & Hosen",650],
		["U_IG_Guerilla3_1","Braune Jacke & Hosen",735],
		["U_IG_Guerilla2_3","The Outback Rangler",1200],
		["U_C_HunterBody_grn","Jagd Klamotten",1500],
		["U_C_WorkerCoveralls","Mechaniker Overalls",2500],
		["U_B_CombatUniform_mcam","Hello Kitty",2000],
		["U_NikosAgedBody","Buerohengst",2800],
		["U_NikosBody","Bad Boy",2000]		
		];
	};
	
	//Hats
	case 1:
	{
		[
			["H_Bandanna_blu","Bandana, blau",300],
			["H_Bandanna_sand","Bandana, sand",300],
			["H_Bandanna_gry","Bandana, schwarz",300],
			["H_Bandanna_surfer_grn","Bandana, Surfer, grün",300],
			["H_Bandanna_surfer_blk","Bandana, Surfer, schwarz",300],
			["H_Bandanna_camo","Bandana, Wald",300],
			["H_Booniehat_khk","Buschhut, Khaki",300],
			["H_Booniehat_mcamo","Buschuhut, MTP",300],
			["H_Booniehat_oli","Buschhut, oliv",300],
			["H_Booniehat_tan","Buschhut, sand",300],
			["H_Booniehat_dgtl","Buschhu, AAF",300],
			["H_Hat_blue","Hut, blau",300],
			["H_Hat_brown","Hut, braun",300],
			["H_Hat_grey","Hut, Grau",300],
			["H_Hat_tan","Hut, hellbraun",300],
			["H_Hat_checker","Hut, kariert",300],
			["H_Bandanna_cbr","Kopftuch, Coyote",300],
			["H_Bandanna_sgg","Kopftuch, Grau-Gruen",300],
			["H_Bandanna_khk","Kopftuch, Khaki",300],
			["H_Bandanna_mcamo","Kopftuch, MTP",300],
			["H_Bandanna_surfer","Kopftuch, Surfer",300],
			["H_Cap_surfer","Mütze, Surfer",300],
			["H_StrawHat","Strohhut, Hell",300],
			["H_StrawHat_dark","Strohhut, Dunkel",300]
		];
	};
	
	//Glasses
	case 2:
	{
		[
			["G_Shades_Black",nil,25],
			["G_Shades_Blue",nil,20],
			["G_Sport_Blackred",nil,20],
			["G_Sport_Checkered",nil,20],
			["G_Sport_Blackyellow",nil,20],
			["G_Sport_BlackWhite",nil,20],
			["G_Squares",nil,10],
			["G_Aviator",nil,100],
			["G_Lady_Mirror",nil,150],
			["G_Lady_Dark",nil,150],
			["G_Lady_Blue",nil,150],
			["G_Lowprofile",nil,30],
			["G_Combat",nil,55]
		];
	};
	
	//Vest
	case 3:
	{
		[
		];
	};
	
	//Backpacks
	case 4:
	{
		[
			["B_TacticalPack_rgr",nil,2500],
			["B_TacticalPack_ocamo",nil,2500],
			["B_TacticalPack_mcamo",nil,2500],
			["B_TacticalPack_oli",nil,2500],
			["B_Kitbag_cbr",nil,3000],
			["B_Kitbag_rgr",nil,3000],
			["B_Kitbag_sgg",nil,3000],
			["B_Kitbag_mcamo",nil,3000],
			["B_FieldPack_khk",nil,3500],
			["B_FieldPack_oli",nil,3500],
			["B_AssaultPack_khk",nil,2500],
			["B_AssaultPack_ocamo",nil,4000],
			["B_AssaultPack_cbr",nil,4000],
			["B_AssaultPack_rgr",nil,4000],
			["B_Carryall_oli",nil,5000],
			["B_Carryall_cbr",nil,5000],
			["B_Parachute",nil,7500]
		];
	};
};