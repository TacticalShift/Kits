// ***********************************
// Gear Kits 
// ***********************************
// ******** GEAR CLASSES **********
//
//	Maptools		"ACE_MapTools"	["ACE_MapTools",1]
//	Binocular		"Binocular"	["Binocular",1]		
//
// 	Map			"ItemMap"
//	Compass			"ItemCompass"
//	Watch			"ItemWatch"
//	Personal Radio		"ItemRadio"
//
// ******* KIT NAMES FORMAT ********
//  Kit names format:		kit_FACTION_ROLE
//	Platoon Leader / Командир Взвода	->	kit_ussf_pl
//	Squad Leader / Командир отделения	->	kit_ussf_sl
//	Section Leader				->	kit_ussf_sl
//	2IC					->	kit_ussf_2ic
//	Fireteam Leader				->	kit_ussf_ftl
//	Automatic Rifleman			->	kit_ussf_ar
//	Grenadier / Стрелок (ГП)		->	kit_ussf_gr
//	Rifleman / Стрелок			->	kit_ussf_r
//	Экипаж					->	kit_ussf_crew
//	Пулеметчик				->	kit_ussf_mg
//	Стрелок-Гранатометчик			->	kit_ussf_at
//	Стрелок, помощник гранатометчика	->	kit_ussf_aat
//	Старший стрелок				->	kit_ussf_ar / kit_ussf_ss
//	Снайпер					->	kit_ussf_mm
// ****************
//
// ******** USEFUL MACROSES *******
// Maros for Empty weapon
#define EMPTYKIT	[["","","","",""],["","","","",""],["","","","",""],["","","","",""],[],[["",0],["",0],["",0],["",0],["",0],["",0],["",0],["",0],["",0]],[["",0],["",0],["",0],["",0],["",0],["",0]],[]]
// Macros for Empty weapon
#define EMPTYWEAPON	"","",["","","",""]
// Macros for the list of items to be chosen randomly
#define RANDOM_ITEM	["H_HelmetB_grass","H_HelmetB"]
// Macros to give the item only if daytime is in given inerval (e.g. to give NVGoggles only at night)
#define NIGHT_ITEM(X)	if (daytime < 9 || daytime > 18) then { X } else { "" }

// ******** ASSIGNED and UNIFORM ITEMS MACRO ********
#define NVG_NIGHT_ITEM		if (daytime < 9 || daytime > 18) then { "NVGoggles_OPFOR" } else { "" }
#define BINOCULAR_ITEM		"Binocular"

#define ASSIGNED_ITEMS		"ItemMap","ItemCompass","ItemWatch","ItemRadio", NVG_NIGHT_ITEM
#define ASSIGNED_ITEMS_L	"ItemMap","ItemCompass","ItemWatch","ItemRadio", NVG_NIGHT_ITEM, BINOCULAR_ITEM

#define UNIFORM_ITEMS		["ACE_fieldDressing",5],["ACE_packingBandage",5],["ACE_elasticBandage",5],["ACE_tourniquet",2],["ACE_morphine",2],["ACE_epinephrine",2],["ACE_quikclot",5],["ACE_CableTie",2],["ACE_Flashlight_XL50",1],["ACE_EarPlugs",1]
#define UNIFORM_ITEMS_L		["ACE_fieldDressing",5],["ACE_packingBandage",5],["ACE_elasticBandage",5],["ACE_tourniquet",2],["ACE_morphine",2],["ACE_epinephrine",2],["ACE_quikclot",5],["ACE_CableTie",2],["ACE_Flashlight_XL50",1],["ACE_EarPlugs",1],["ACE_MapTools",1]
// **************** 
// Team 6 Kits

kit_seal_r = [
	["<EQUIPEMENT >>  ","U_B_Wetsuit","V_RebreatherB","TRYK_B_Kitbag_blk","","G_B_Diving"],
	["<PRIMARY WEAPON >>  ","arifle_SDAR_F","20Rnd_556x45_UW_mag",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","CUP_hgun_mk23_snds_lam","CUP_12Rnd_45ACP_mk23",["CUP_muzzle_snds_mk23","CUP_acc_mk23_lam_l","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS,["ACE_M84",2],["HANDGUN MAG",1],["PRIMARY MAG",3]]],
	["<VEST ITEMS >> ",[]],
	["<BACKPACK ITEMS >> ",[["CUP_smg_MP5SD6_Holo_Light",1],["CUP_30Rnd_9x19_MP5",10],["HANDGUN MAG",2],["Chemlight_red",4],["ACE_M84",2],["SmokeShellRed",2]]]
];

kit_seal_br = [
	["<EQUIPEMENT >>  ","U_B_Wetsuit","V_RebreatherB","TRYK_B_Kitbag_blk","","G_B_Diving"],
	["<PRIMARY WEAPON >>  ","arifle_SDAR_F","20Rnd_556x45_UW_mag",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","CUP_hgun_mk23_snds_lam","CUP_12Rnd_45ACP_mk23",["CUP_muzzle_snds_mk23","CUP_acc_mk23_lam_l","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS,["ACE_M84",4],["HANDGUN MAG",1],["PRIMARY MAG",3]]],
	["<VEST ITEMS >> ",[]],
	["<BACKPACK ITEMS >> ",[["CUP_acc_Flashlight",1],["CUP_sgun_M1014_Entry",1],["HANDGUN MAG",2],["Chemlight_red",4],["ACE_M84",2],["SmokeShellRed",2],["CUP_6Rnd_12Gauge_Pellets_No00_Buck",10]]]
];

kit_seal_ftl = [
	["<EQUIPEMENT >>  ","U_B_Wetsuit","V_RebreatherB","TRYK_B_Kitbag_blk","","G_B_Diving"],
	["<PRIMARY WEAPON >>  ","arifle_SDAR_F","20Rnd_556x45_UW_mag",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","CUP_hgun_mk23_snds_lam","CUP_12Rnd_45ACP_mk23",["CUP_muzzle_snds_mk23","CUP_acc_mk23_lam_l","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS_L,["ACE_M84",2],["HANDGUN MAG",1],["PRIMARY MAG",3]]],
	["<VEST ITEMS >> ",[]],
	["<BACKPACK ITEMS >> ",[["CUP_acc_ANPEQ_15_Flashlight_Black_L",1],["CUP_muzzle_snds_MP7",1],["CUP_optic_Eotech553_Black",1],["CUP_smg_MP7",1],["HANDGUN MAG",2],["Chemlight_red",4],["ACE_M84",2],["SmokeShellRed",2],["CUP_40Rnd_46x30_MP7",10]]]
];

kit_seal_med = [
	["<EQUIPEMENT >>  ","U_B_Wetsuit","V_RebreatherB","TRYK_B_Kitbag_blk","","G_B_Diving"],
	["<PRIMARY WEAPON >>  ","arifle_SDAR_F","20Rnd_556x45_UW_mag",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","CUP_hgun_mk23_snds_lam","CUP_12Rnd_45ACP_mk23",["CUP_muzzle_snds_mk23","CUP_acc_mk23_lam_l","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS,["ACE_M84",2],["HANDGUN MAG",1],["PRIMARY MAG",3]]],
	["<VEST ITEMS >> ",[]],
	["<BACKPACK ITEMS >> ",[["CUP_acc_Flashlight",1],["ACE_salineIV_500",5],["ACE_packingBandage",10],["ACE_elasticBandage",10],["ACE_fieldDressing",10],["ACE_epinephrine",5],["ACE_morphine",5],["ACE_tourniquet",2],["ACE_splint",2],["ACE_surgicalKit",1],["ACE_quikclot",10],["ACE_personalAidKit",2],["CUP_sgun_M1014_Entry",1],["HANDGUN MAG",2],["Chemlight_red",4],["ACE_M84",2],["SmokeShellRed",2],["CUP_6Rnd_12Gauge_Pellets_No00_Buck",9]]]
];

kit_seal_sl = [
	["<EQUIPEMENT >>  ","U_B_Wetsuit","V_RebreatherB","TRYK_B_Kitbag_blk","","G_B_Diving"],
	["<PRIMARY WEAPON >>  ","arifle_SDAR_F","20Rnd_556x45_UW_mag",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","CUP_hgun_mk23_snds_lam","CUP_12Rnd_45ACP_mk23",["CUP_muzzle_snds_mk23","CUP_acc_mk23_lam_l","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS_L,["ACE_M84",2],["HANDGUN MAG",1],["PRIMARY MAG",3]]],
	["<VEST ITEMS >> ",[]],
	["<BACKPACK ITEMS >> ",[["CUP_acc_ANPEQ_15_Flashlight_Black_L",1],["CUP_muzzle_snds_MP7",1],["CUP_optic_Eotech553_Black",1],["CUP_smg_MP7",1],["HANDGUN MAG",2],["Chemlight_red",4],["ACE_M84",2],["SmokeShellRed",2],["CUP_40Rnd_46x30_MP7",10]]]
];

kit_seal_pl = [
	["<EQUIPEMENT >>  ","U_B_Wetsuit","V_RebreatherB","tfar_rt1523g_black","","G_B_Diving"],
	["<PRIMARY WEAPON >>  ","CUP_smg_MP7","CUP_40Rnd_46x30_MP7",["CUP_muzzle_snds_MP7","CUP_acc_ANPEQ_15_Flashlight_Black_L","CUP_optic_Eotech553_Black",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","CUP_hgun_mk23_snds_lam","CUP_12Rnd_45ACP_mk23",["CUP_muzzle_snds_mk23","CUP_acc_mk23_lam_l","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS_L,["ACE_M84",2],["HANDGUN MAG",1],["PRIMARY MAG",3]]],
	["<VEST ITEMS >> ",[]],
	["<BACKPACK ITEMS >> ",[["HANDGUN MAG",2],["Chemlight_red",4],["ACE_M84",2],["SmokeShellRed",2],["PRIMARY MAG",6]]]
];

cargo_kit_seal = [
	[],
	[["CUP_12Rnd_45ACP_mk23",30],["20Rnd_556x45_UW_mag",50],["ACE_M84",30],["CUP_6Rnd_12Gauge_Pellets_No00_Buck",50],["Chemlight_red",10],["SmokeShellRed",10],["CUP_30Rnd_9x19_MP5",50],["CUP_40Rnd_46x30_MP7",50]],
	[["ACE_fieldDressing",30],["ACE_packingBandage",30],["ACE_quikclot",30],["ACE_elasticBandage",30],["ACE_CableTie",20],["ACE_epinephrine",15],["ACE_morphine",15],["ACE_personalAidKit",10],["ACE_salineIV_500",20],["ACE_splint",10],["ACE_surgicalKit",10],["V_RebreatherB",5],["ACE_EarPlugs",10]],
	[["TRYK_B_Kitbag_blk",5]]
];

cargo_kit_sdv = [
	[],
	[["CUP_12Rnd_45ACP_mk23",10],["20Rnd_556x45_UW_mag",10],["ACE_M84",4],["CUP_6Rnd_12Gauge_Pellets_No00_Buck",10],["Chemlight_red",4],["SmokeShellRed",2],["CUP_30Rnd_9x19_MP5",10],["CUP_40Rnd_46x30_MP7",10]],
	[["ACE_fieldDressing",10],["ACE_packingBandage",10],["ACE_quikclot",10],["ACE_elasticBandage",10],["ACE_CableTie",2],["ACE_epinephrine",2],["ACE_morphine",2]],
	[]
];