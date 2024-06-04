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
// Police kits

#define P_Hat ["H_Booniehat_oli","usm_bdu_cap_odg"]

kit_police_pl = [
	["<EQUIPEMENT >>  ","CUP_U_B_BDUv2_OD","CUP_V_B_PASGT_OD","tfar_rt1523g_green",P_Hat,"G_Aviator"],
	["<PRIMARY WEAPON >>  ","CUP_arifle_Galil_SAR_black","CUP_35Rnd_556x45_Galil_Mag",["","","",""]],
	["<HANDGUN WEAPON >>  ","rhs_weap_M320","rhs_mag_M441_HE",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS_L]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",9],["CUP_HandGrenade_M67",2]]],
	["<BACKPACK ITEMS >> ",[["rhs_mag_M441_HE",9],["SmokeShell",2],["SmokeShellBlue",2],["SmokeShellGreen",2],["SmokeShellPurple",2],["SmokeShellRed",2],["Chemlight_red",2]]]
];

kit_police_sl = [
	["<EQUIPEMENT >>  ","CUP_U_B_BDUv2_OD","CUP_V_B_PASGT_OD","tfar_rt1523g_green",P_Hat,"G_Aviator"],
	["<PRIMARY WEAPON >>  ","CUP_arifle_Galil_SAR_black","CUP_35Rnd_556x45_Galil_Mag",["","","",""]],
	["<HANDGUN WEAPON >>  ","rhs_weap_M320","rhs_mag_M441_HE",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS_L]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",9],["CUP_HandGrenade_M67",2]]],
	["<BACKPACK ITEMS >> ",[["rhs_mag_M441_HE",9],["SmokeShell",2],["SmokeShellBlue",2],["SmokeShellGreen",2],["SmokeShellPurple",2],["SmokeShellRed",2],["Chemlight_red",2]]]
];

kit_police_ftl = [
	["<EQUIPEMENT >>  ","CUP_U_B_BDUv2_OD","CUP_V_B_PASGT_OD","CUP_B_AlicePack_OD",P_Hat,"G_Aviator"],
	["<PRIMARY WEAPON >>  ","CUP_arifle_Galil_SAR_black","CUP_35Rnd_556x45_Galil_Mag",["","","",""]],
	["<HANDGUN WEAPON >>  ","rhs_weap_M320","rhs_mag_M441_HE",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS_L]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",9],["CUP_HandGrenade_M67",2]]],
	["<BACKPACK ITEMS >> ",[["rhs_mag_M441_HE",9],["SmokeShell",2],["SmokeShellBlue",2],["SmokeShellGreen",2],["SmokeShellPurple",2],["SmokeShellRed",2],["Chemlight_red",2]]]
];

kit_police_ar = [
	["<EQUIPEMENT >>  ","CUP_U_B_BDUv2_OD","cwr3_b_vest_alice","CUP_B_AlicePack_OD",P_Hat,""],
	["<PRIMARY WEAPON >>  ","CUP_lmg_minimipara","rhsusf_200rnd_556x45_M855_mixed_box",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",2],["CUP_HandGrenade_M67",2]]],
	["<BACKPACK ITEMS >> ",[["PRIMARY MAG",1]]]
];

kit_police_gr = [
	["<EQUIPEMENT >>  ","CUP_U_B_BDUv2_OD","cwr3_b_vest_alice_gl","",P_Hat,""],
	["<PRIMARY WEAPON >>  ","CUP_arifle_Galil_SAR_black","CUP_35Rnd_556x45_Galil_Mag",["","","",""]],
	["<HANDGUN WEAPON >>  ","rhs_weap_M320","rhs_mag_M441_HE",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",9],["CUP_HandGrenade_M67",2],["rhs_mag_M441_HE",20],["rhs_mag_m714_White",4]]],
	["<BACKPACK ITEMS >> ",[]]
];

kit_police_r = [
	["<EQUIPEMENT >>  ","CUP_U_B_BDUv2_OD","cwr3_b_vest_alice","CUP_B_AlicePack_OD",P_Hat,""],
	["<PRIMARY WEAPON >>  ","CUP_arifle_Galil_SAR_black","CUP_35Rnd_556x45_Galil_Mag",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",9],["CUP_HandGrenade_M67",2]]],
	["<BACKPACK ITEMS >> ",[["rhsusf_200rnd_556x45_M855_mixed_box",2]]]
];

kit_police_pilot = [
	["<EQUIPEMENT >>  ","CUP_U_B_BDUv2_OD","cwr3_b_vest_alice_crew","tfar_rt1523g_bwmod","cwr3_b_headgear_Pilot","G_Aviator"],
	["<PRIMARY WEAPON >>  ","","",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","CUP_hgun_Colt1911","CUP_7Rnd_45ACP_1911",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS_L]],
	["<VEST ITEMS >> ",[["SmokeShell",2],["HANDGUN MAG",2],["SmokeShellGreen",2]]],
	["<BACKPACK ITEMS >> ",[]]
];

kit_heli = [
	[],
	[["CUP_35Rnd_556x45_Galil_Mag",20],["rhsusf_200rnd_556x45_M855_mixed_box",6],["CUP_HandGrenade_M67",10],["rhs_mag_M441_HE",15]],
	[["ACE_fieldDressing",15],["ACE_packingBandage",15],["ACE_elasticBandage",15],["ACE_tourniquet",5],["ACE_morphine",5],["ACE_epinephrine",5],["ACE_quikclot",5],["ACE_CableTie",4]],
	[]
];

kit_police_diver = [
	["<EQUIPEMENT >>  ","U_B_Wetsuit","V_RebreatherB","TRYK_B_Kitbag_blk","","G_B_Diving"],
	["<PRIMARY WEAPON >>  ","CUP_smg_MP5A5","CUP_30Rnd_9x19_MP5",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS,["CUP_HandGrenade_M67",2],["PRIMARY MAG",4]]],
	["<VEST ITEMS >> ",[]],
	["<BACKPACK ITEMS >> ",[["ACE_M26_Clacker",1],["ACE_DefusalKit",1],["Chemlight_red",4],["SmokeShellRed",2],["PRIMARY MAG",6],["DemoCharge_Remote_Mag",3]]]
];

kit_police_diverleader = [
	["<EQUIPEMENT >>  ","U_B_Wetsuit","V_RebreatherB","TRYK_B_Kitbag_blk","","G_B_Diving"],
	["<PRIMARY WEAPON >>  ","CUP_smg_MP5A5","CUP_30Rnd_9x19_MP5",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS_L,["CUP_HandGrenade_M67",2],["PRIMARY MAG",4]]],
	["<VEST ITEMS >> ",[]],
	["<BACKPACK ITEMS >> ",[["ACE_M26_Clacker",1],["ACE_DefusalKit",1],["Chemlight_red",4],["SmokeShellRed",2],["PRIMARY MAG",6],["DemoCharge_Remote_Mag",3]]]
];


kit_cargo = [
	[],
	[["CUP_35Rnd_556x45_Galil_Mag",70],["rhsusf_200rnd_556x45_M855_mixed_box",30],["CUP_HandGrenade_M67",20],["rhs_mag_M441_HE",40]],
	[["ACE_fieldDressing",30],["ACE_packingBandage",30],["ACE_elasticBandage",30],["ACE_tourniquet",15],["ACE_morphine",15],["ACE_epinephrine",15],["ACE_quikclot",15],["ACE_CableTie",20]],
	[]
];

kit_boat = [
	[],
	[["CUP_35Rnd_556x45_Galil_Mag",5],["rhsusf_200rnd_556x45_M855_mixed_box",2],["CUP_HandGrenade_M67",4],["rhs_mag_M441_HE",6]],
	[["ACE_fieldDressing",5],["ACE_packingBandage",5],["ACE_elasticBandage",5],["ACE_tourniquet",2],["ACE_morphine",2],["ACE_epinephrine",2],["ACE_quikclot",2],["ACE_CableTie",2]],
	[]
];

// cartel

#define G_UNI ["U_C_Poloshirt_burgundy","U_C_Poloshirt_redwhite","U_C_Poloshirt_salmon","U_C_Poloshirt_stripped","U_C_Poloshirt_tricolour","U_BG_Guerilla2_2","U_BG_Guerilla2_1","U_BG_Guerilla2_3","U_OrestesBody","U_C_Poor_1","U_I_G_Story_Protagonist_F","U_I_C_Soldier_Bandit_4_F","U_I_C_Soldier_Bandit_1_F","U_I_C_Soldier_Bandit_2_F","U_I_C_Soldier_Bandit_5_F","U_I_C_Soldier_Bandit_3_F","U_C_Man_casual_2_F","U_C_Man_casual_3_F","U_C_Man_casual_1_F","U_I_C_Soldier_Para_5_F","U_I_C_Soldier_Para_4_F","U_C_Man_casual_6_F","U_C_Man_casual_4_F","U_C_Man_casual_5_F","TRYK_U_B_C02_Tsirt","TRYK_U_B_BLK_OD_Rollup_CombatUniform","TRYK_U_B_wh_blk_Rollup_CombatUniform","TRYK_shirts_DENIM_BK","TRYK_shirts_DENIM_BL","TRYK_shirts_DENIM_BWH","TRYK_shirts_DENIM_od","TRYK_shirts_DENIM_R","TRYK_shirts_DENIM_RED2","TRYK_shirts_DENIM_WH","TRYK_shirts_DENIM_WHB","TRYK_shirts_DENIM_ylb","TRYK_U_B_BLK_T_BG_BK","TRYK_U_B_RED_T_BG_BR","TRYK_U_B_BLK_T_BG_WH","TRYK_U_B_BLK_T_BK","TRYK_U_B_RED_T_BR","TRYK_U_B_BLK_T_WH","TRYK_U_B_Denim_T_BG_BK","TRYK_U_B_Denim_T_BG_WH","TRYK_U_B_Denim_T_BK","TRYK_U_B_Denim_T_WH"]
#define G_VEST ["V_HarnessO_brn","V_BandollierB_rgr","V_BandollierB_oli","V_TacChestrig_oli_F","TRYK_V_harnes_od_L","CUP_V_B_GER_Carrier_Rig_2_Brown","CUP_V_I_RACS_Carrier_Rig_wdl_2","CUP_V_RUS_Smersh_1","CUP_V_RUS_Smersh_2","CUP_V_I_Carrier_Belt","CUP_V_O_Ins_Carrier_Rig"]
#define G_HAT ["H_Cap_surfer","H_Cap_tan","H_Hat_blue","H_Hat_brown","H_Hat_grey","H_Hat_tan","H_StrawHat","H_StrawHat_dark","TRYK_H_Bandana_wig","CUP_H_PMC_Cap_Tan","CUP_H_PMC_Cap_Back_Burberry","CUP_H_PMC_Cap_Back_Grey","CUP_H_PMC_Cap_Back_Tan","CUP_H_NAPA_Fedora"]
#define G_GOG ["G_Bandanna_blk","G_Bandanna_khk","G_Bandanna_oli","","G_Bandanna_tan"]

// ****************

kit_cartel_random = [
"kit_cartel_r",
"kit_cartel_ar",
"kit_cartel_r1",
"kit_cartel_r2"
];

kit_cartel_boss = [
	["<EQUIPEMENT >>  ","U_C_FormalSuit_01_tshirt_gray_F","TRYK_V_Bulletproof_BLK","","","G_Aviator"],
	["<PRIMARY WEAPON >>  ","CUP_lmg_M60","hlc_200Rnd_762x51_B_M60E4",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[]],
	["<BACKPACK ITEMS >> ",[]]
];

kit_cartel_ar = [
	["<EQUIPEMENT >>  ",G_UNI,G_VEST,"B_FieldPack_oli",G_HAT,G_GOG],
	["<PRIMARY WEAPON >>  ","CUP_lmg_M60","CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["HandGrenade",2]]],
	["<BACKPACK ITEMS >> ",[["PRIMARY MAG",4]]]
];

kit_cartel_r = [
	["<EQUIPEMENT >>  ",G_UNI,G_VEST,"",G_HAT,G_GOG],
	["<PRIMARY WEAPON >>  ","rhs_weap_akm","rhs_30Rnd_762x39mm",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",6],["HandGrenade",2]]],
	["<BACKPACK ITEMS >> ",[]]
];

kit_cartel_r1 = [
	["<EQUIPEMENT >>  ",G_UNI,G_VEST,"",G_HAT,G_GOG],
	["<PRIMARY WEAPON >>  ","CUP_smg_UZI","CUP_32Rnd_9x19_UZI_M",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["HandGrenade",2],["PRIMARY MAG",6]]],
	["<BACKPACK ITEMS >> ",[]]
];

kit_cartel_r2 = [
	["<EQUIPEMENT >>  ",G_UNI,G_VEST,"",G_HAT,G_GOG],
	["<PRIMARY WEAPON >>  ","hlc_rifle_FAL5000","hlc_20Rnd_762x51_B_fal",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["HandGrenade",2],["PRIMARY MAG",6]]],
	["<BACKPACK ITEMS >> ",[]]
];

kit_cartel_sniper = [
	["<EQUIPEMENT >>  ",G_UNI,G_VEST,"",G_HAT,G_GOG],
	["<PRIMARY WEAPON >>  ","CUP_srifle_M24_blk","CUP_5Rnd_762x51_M24",["","","CUP_optic_LeupoldMk4",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS_L]],
	["<VEST ITEMS >> ",[["HandGrenade",2],["PRIMARY MAG",7]]],
	["<BACKPACK ITEMS >> ",[]]
];
