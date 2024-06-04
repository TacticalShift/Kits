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

#define isis_UNI ["CUP_I_B_PMC_Unit_24","cup_u_crye_blk_full","CUP_I_B_PMC_Unit_17","tryk_u_b_blk_t_bk","usm_bdu_blk"]
#define isis_HEAD ["h_shemagopen_khk","h_shemagopen_tan","tryk_kio_balaclava"]
#define isis_VEST ["rhs_lifchik_light","V_HarnessO_brn","CUP_V_I_RACS_Carrier_Rig_3","cwr3_i_vest_chicom","rhs_chicom_khk"]
#define isis_back ["CUP_B_AssaultPack_Black","B_CivilianBackpack_01_Everyday_Black_F","B_TacticalPack_blk"]

#define shahid_UNI ["CUP_O_TKI_Khet_Partug_03","CUP_O_TKI_Khet_Partug_05","CUP_O_TKI_Khet_Partug_08","CUP_O_TKI_Khet_Partug_06","CUP_O_TKI_Khet_Partug_04","CUP_O_TKI_Khet_jeans_01","CUP_O_TKI_Khet_jeans_02","CUP_O_TKI_Khet_jeans_03"]
#define shahid_HEAD ["CUP_H_TKI_Lungee_Open_05","CUP_H_TKI_Lungee_Open_04","CUP_H_TKI_Lungee_Open_03","CUP_H_TKI_Lungee_Open_02","CUP_H_TKI_Lungee_Open_01"]
// ****************

kit_isis_pl = [
	["<EQUIPEMENT >>  ",isis_UNI,"V_TacVest_brn","TFAR_rt1523g",isis_HEAD,"TRYK_TAC_EARMUFF_Gs"],
	["<PRIMARY WEAPON >>  ","rhs_weap_akms","rhs_30Rnd_762x39mm",["rhs_acc_dtkakm","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ", [ UNIFORM_ITEMS_L ]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",5],["rhs_mag_rgd5",3]]],
	["<BACKPACK ITEMS >> ",[["ACE_DeadManSwitch",1],["ACE_M26_Clacker",1]]]
];

kit_isis_sl = [
	["<EQUIPEMENT >>  ",isis_UNI,"V_TacVest_brn","TFAR_rt1523g",isis_HEAD,"TRYK_TAC_EARMUFF_Gs"],
	["<PRIMARY WEAPON >>  ","rhs_weap_akms","rhs_30Rnd_762x39mm",["rhs_acc_dtkakm","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ", [ UNIFORM_ITEMS_L ]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",5],["rhs_mag_rgd5",3]]],
	["<BACKPACK ITEMS >> ",[["PRIMARY MAG",3],["ACE_DeadManSwitch",1],["ACE_M26_Clacker",1]]]
];

kit_isis_ftl = [
	["<EQUIPEMENT >>  ",isis_UNI,isis_VEST,isis_back,isis_HEAD,""],
	["<PRIMARY WEAPON >>  ","rhs_weap_akms","rhs_30Rnd_762x39mm",["rhs_acc_dtkakm","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ", [ UNIFORM_ITEMS_L ]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",5],["rhs_mag_rgd5",3]]],
	["<BACKPACK ITEMS >> ",[["PRIMARY MAG",5]]]
];

kit_isis_ar = [
	["<EQUIPEMENT >>  ",isis_UNI,isis_VEST,isis_back,isis_HEAD,""],
	["<PRIMARY WEAPON >>  ","CUP_arifle_RPK74_top_rail","CUP_75Rnd_TE4_LRT4_Green_Tracer_762x39_RPK_M",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ", [ UNIFORM_ITEMS ]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",3],["rhs_mag_rgd5",3]]],
	["<BACKPACK ITEMS >> ",[["PRIMARY MAG",6]]]
];
kit_isis_gr = [
	["<EQUIPEMENT >>  ",isis_UNI,isis_VEST,isis_back,isis_HEAD,""],
	["<PRIMARY WEAPON >>  ","rhs_weap_akm_gp25","rhs_30Rnd_762x39mm",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ", [ UNIFORM_ITEMS ]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",4],["rhs_mag_rgd5",3]]],
	["<BACKPACK ITEMS >> ",[["PRIMARY MAG",6],["rhs_VOG25",15]]]
];

kit_isis_r = [
	["<EQUIPEMENT >>  ",isis_UNI,isis_VEST,"B_CivilianBackpack_01_Everyday_Black_F",isis_HEAD,""],
	["<PRIMARY WEAPON >>  ","rhs_weap_akms","rhs_30Rnd_762x39mm",["rhs_acc_dtkakm","","",""]],
	["<LAUNCHER WEAPON >>  ","rhs_weap_rpg7","rhs_rpg7_PG7V_mag",["","","rhs_acc_pgo7v",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ", [ UNIFORM_ITEMS ]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",5],["rhs_mag_rgd5",3]]],
	["<BACKPACK ITEMS >> ",[["PRIMARY MAG",6],["SECONDARY MAG",2],["rhs_rpg7_OG7V_mag",2]]]
	
];

cargo_kit_baseammo = [
	[],
	[["rhs_30Rnd_762x39mm",40],["rhs_mag_rgd5",25],["rhs_VOG25",50],["CUP_75Rnd_TE4_LRT4_Green_Tracer_762x39_RPK_M",20],["rhs_rpg7_OG7V_mag",15],["rhs_rpg7_PG7V_mag",15]],
	[["ACE_fieldDressing",20],["ACE_elasticBandage",20],["ACE_packingBandage",20],["ACE_tourniquet",20]],
	[]
];

cargo_kit_car = [
	[],
	[["rhs_30Rnd_762x39mm",15],["rhs_mag_rgd5",10],["rhs_VOG25",15],["CUP_75Rnd_TE4_LRT4_Green_Tracer_762x39_RPK_M",10],["rhs_rpg7_OG7V_mag",4],["rhs_rpg7_PG7V_mag",4]],
	[["ACE_fieldDressing",10],["ACE_elasticBandage",10],["ACE_packingBandage",10],["ACE_tourniquet",10]],
	[]
];

//shahid kits

kit_isis_SHsl = [
	["<EQUIPEMENT >>  ",isis_UNI,"V_TacVest_brn","TFAR_rt1523g_big",isis_HEAD,"TRYK_TAC_EARMUFF_Gs"],
	["<PRIMARY WEAPON >>  ","rhs_weap_akms","rhs_30Rnd_762x39mm",["rhs_acc_dtkakm","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ", [ UNIFORM_ITEMS_L ]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",5],["rhs_mag_rgd5",3]]],
	["<BACKPACK ITEMS >> ",[["PRIMARY MAG",5],["ACE_DeadManSwitch",1],["ACE_M26_Clacker",1]]]
];

kit_isis_SHftl = [
	["<EQUIPEMENT >>  ",isis_UNI,isis_VEST,isis_back,isis_HEAD,""],
	["<PRIMARY WEAPON >>  ","rhs_weap_akms","rhs_30Rnd_762x39mm",["rhs_acc_dtkakm","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ", [ UNIFORM_ITEMS_L ]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",5],["rhs_mag_rgd5",3]]],
	["<BACKPACK ITEMS >> ",[["PRIMARY MAG",4],["ACE_DefusalKit",1],["ACE_DeadManSwitch",1],["ACE_M26_Clacker",1]]]
];

kit_isis_SHar = [
	["<EQUIPEMENT >>  ",isis_UNI,isis_VEST,isis_back,isis_HEAD,""],
	["<PRIMARY WEAPON >>  ","CUP_arifle_RPK74_top_rail","CUP_75Rnd_TE4_LRT4_Green_Tracer_762x39_RPK_M",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ", [ UNIFORM_ITEMS ]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",3],["rhs_mag_rgd5",3]]],
	["<BACKPACK ITEMS >> ",[["PRIMARY MAG",5],["ACE_DefusalKit",1],["ACE_DeadManSwitch",1],["ACE_M26_Clacker",1]]]
];
kit_isis_SHgr = [
	["<EQUIPEMENT >>  ",isis_UNI,isis_VEST,isis_back,isis_HEAD,""],
	["<PRIMARY WEAPON >>  ","rhs_weap_akm_gp25","rhs_30Rnd_762x39mm",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ", [ UNIFORM_ITEMS ]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",4],["rhs_mag_rgd5",3]]],
	["<BACKPACK ITEMS >> ",[["PRIMARY MAG",5],["rhs_VOG25",15],["ACE_DeadManSwitch",1],["ACE_M26_Clacker",1]]]
];

kit_isis_SHr = [
	["<EQUIPEMENT >>  ",isis_UNI,isis_VEST,"B_CivilianBackpack_01_Everyday_Black_F",isis_HEAD,""],
	["<PRIMARY WEAPON >>  ","rhs_weap_akms","rhs_30Rnd_762x39mm",["rhs_acc_dtkakm","","",""]],
	["<LAUNCHER WEAPON >>  ","rhs_weap_rpg7","rhs_rpg7_PG7V_mag",["","","rhs_acc_pgo7v",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ", [ UNIFORM_ITEMS ]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",5],["rhs_mag_rgd5",3]]],
	["<BACKPACK ITEMS >> ",[["PRIMARY MAG",5],["SECONDARY MAG",2],["rhs_rpg7_OG7V_mag",2],["ACE_DeadManSwitch",1],["ACE_M26_Clacker",1]]]	
];

cargo_kit_SHcar = [
	[],
	[["rhs_30Rnd_762x39mm",15],["rhs_mag_rgd5",10],["rhs_VOG25",15],["CUP_75Rnd_TE4_LRT4_Green_Tracer_762x39_RPK_M",10],["rhs_rpg7_OG7V_mag",4],["rhs_rpg7_PG7V_mag",4],["SatchelCharge_Remote_Mag",2]],
	[["ACE_fieldDressing",10],["ACE_elasticBandage",10],["ACE_packingBandage",10],["ACE_tourniquet",10],["ACE_DeadManSwitch",1],["ACE_M26_Clacker",1]],
	[]
];

//ENEMY KITS

kit_syr_random = [
	"kit_syr_pl"
	,"kit_syr_sl"
	,"kit_syr_mg"
	,"kit_syr_at"
	,"kit_syr_aat"
	,"kit_syr_ss"
	,"kit_syr_gr"
	,"kit_syr_mm"
	,"kit_syr_r"	
];	

kit_syr_pl = [
	["<EQUIPEMENT >>  ","usm_bdu_w","V_TacVest_camo","tf_rt1523g_sage","usm_bdu_cap_wdl",""],
	["<PRIMARY WEAPON >>  ","rhs_weap_aks74u","rhs_30Rnd_545x39_AK",["rhs_acc_dtk","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS_L]],
	["<VEST ITEMS >> ",[["rhs_mag_rgd5",3],["rhs_mag_rdg2_white",2],["PRIMARY MAG",6]]],
	["<BACKPACK ITEMS >> ",[]]
];
kit_syr_sl = [
	["<EQUIPEMENT >>  ","usm_bdu_w","CUP_V_O_TK_Vest_1","tf_rt1523g_sage","usm_bdu_boonie_wdl",""],
	["<PRIMARY WEAPON >>  ","rhs_weap_ak74_gp25","rhs_30Rnd_545x39_AK",["rhs_acc_dtk","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS_L]],
	["<VEST ITEMS >> ",[["rhs_mag_rgd5",4],["PRIMARY MAG",8],["rhs_VOG25",10],["rhs_VG40OP_white",2],["rhs_VG40OP_red",2],["rhs_mag_rdg2_white",3]]],
	["<BACKPACK ITEMS >> ",[]]
];
kit_syr_mg = [
	["<EQUIPEMENT >>  ","usm_bdu_w","usm_vest_pasgt_lbv_mg_m","B_AssaultPack_khk","TRYK_H_woolhat",""],
	["<PRIMARY WEAPON >>  ","rhs_weap_pkm","rhs_100Rnd_762x54mmR",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["rhs_mag_rgd5",4],["rhs_mag_rgn",3],["PRIMARY MAG",2]]],
	["<BACKPACK ITEMS >> ",[["PRIMARY MAG",2]]]
];
kit_syr_at = [
	["<EQUIPEMENT >>  ","usm_bdu_w","usm_vest_pasgt_lbv_rm_m","rhs_rpg_empty","usm_helmet_pasgt_w",""],
	["<PRIMARY WEAPON >>  ","rhs_weap_ak74m","rhs_30Rnd_545x39_AK",["rhs_acc_dtk","","",""]],
	["<LAUNCHER WEAPON >>  ","rhs_weap_rpg7","",["","","rhs_acc_pgo7v3",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["rhs_mag_rgd5",4],["rhs_mag_rgn",3],["PRIMARY MAG",7]]],
	["<BACKPACK ITEMS >> ",[["rhs_rpg7_PG7VL_mag",2],["rhs_rpg7_OG7V_mag",2]]]
];
kit_syr_aat = [
	["<EQUIPEMENT >>  ","usm_bdu_w","usm_vest_pasgt_lbv_rm_m","rhs_rpg_empty","usm_helmet_pasgt_w",""],
	["<PRIMARY WEAPON >>  ","rhs_weap_ak74m","rhs_30Rnd_545x39_AK",["rhs_acc_dtk","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["rhs_mag_rgd5",4],["rhs_mag_rgn",3],["PRIMARY MAG",3]]],
	["<BACKPACK ITEMS >> ",[["rhs_rpg7_PG7VL_mag",2],["rhs_rpg7_OG7V_mag",2]]]
];
kit_syr_ss = [
	["<EQUIPEMENT >>  ","usm_bdu_w","usm_vest_pasgt_lbv_gr","","rhs_6b27m_green",""],
	["<PRIMARY WEAPON >>  ","rhs_weap_ak74m_gp25","rhs_30Rnd_545x39_AK",["rhs_acc_dtk","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS_L]],
	["<VEST ITEMS >> ",[["rhs_mag_rgd5",4],["rhs_mag_rgn",3],["PRIMARY MAG",8],["rhs_VOG25",19]]],
	["<BACKPACK ITEMS >> ",[]]
];
kit_syr_gr = [
	["<EQUIPEMENT >>  ","usm_bdu_w","usm_vest_pasgt_lbv_gr","","rhs_6b27m_green",""],
	["<PRIMARY WEAPON >>  ","rhs_weap_ak74m_gp25","rhs_30Rnd_545x39_AK",["rhs_acc_dtk","","",""]],
	["<LAUNCHER WEAPON >>  ","rhs_weap_rshg2","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["rhs_mag_rgd5",4],["rhs_mag_rgn",3],["PRIMARY MAG",8],["rhs_VOG25",19]]],
	["<BACKPACK ITEMS >> ",[]]
];
kit_syr_mm = [
	["<EQUIPEMENT >>  ","usm_bdu_w","CUP_V_I_Carrier_Belt","B_AssaultPack_rgr","usm_bdu_boonie_wdl",""],
	["<PRIMARY WEAPON >>  ","rhs_weap_svdp_wd","rhs_10Rnd_762x54mmR_7N1",["","","rhs_acc_pso1m2",""]],
	["<LAUNCHER WEAPON >>  ","rhs_weap_rpg26","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["rhs_mag_rgd5",4],["rhs_mag_rgn",3],["PRIMARY MAG",11]]],
	["<BACKPACK ITEMS >> ",[["rhs_100Rnd_762x54mmR",2]]]
];
kit_syr_r = [
	["<EQUIPEMENT >>  ","usm_bdu_w","usm_vest_pasgt_lbe_rm_m","B_AssaultPack_rgr","usm_bdu_boonie_wdl",""],
	["<PRIMARY WEAPON >>  ","rhs_weap_ak74m","rhs_30Rnd_545x39_AK",["rhs_acc_dtk","","",""]],
	["<LAUNCHER WEAPON >>  ","rhs_weap_rpg26","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["rhs_mag_rgd5",4],["rhs_mag_rgn",3],["PRIMARY MAG",8]]],
	["<BACKPACK ITEMS >> ",[["rhs_100Rnd_762x54mmR",2]]]
];
kit_syr_crew = [
	["<EQUIPEMENT >>  ","usm_bdu_w","CUP_V_O_Ins_Carrier_Rig","","CUP_H_TK_TankerHelmet",""],
	["<PRIMARY WEAPON >>  ","rhs_weap_aks74u","rhs_30Rnd_545x39_AK",["rhs_acc_pgs64_74u","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["rhs_mag_rgd5",4],["rhs_mag_rgn",3],["PRIMARY MAG",6]]],
	["<BACKPACK ITEMS >> ",[]]
];
kit_syr_cargo = [
	[["rhs_weap_rshg2",1],["rhs_weap_rpg26",3]],
	[["rhs_30Rnd_545x39_AK",10],["rhs_mag_rgn",10],["rhs_mag_rgd5",10],["rhs_10Rnd_762x54mmR_7N1",15],["rhs_100Rnd_762x54mmR",5],["rhs_rpg7_OG7V_mag",1],["rhs_rpg7_PG7VL_mag",3],["rhs_VOG25",10],["DemoCharge_Remote_Mag",3]],
	[["ACE_packingBandage",15],["ACE_fieldDressing",15],["ACE_Clacker",3]],
	[["CUP_B_Metis_Gun_Bag",1],["CUP_B_Metis_Tripod_Bag",2]]
];