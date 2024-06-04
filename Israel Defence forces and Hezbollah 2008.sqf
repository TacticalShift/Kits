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

#define IDF_WEP				["cup_arifle_m4a1","CUP_arifle_M16A2","CUP_arifle_Colt727","CUP_arifle_M16A1"]
#define IDF_MAG				["rhs_mag_30Rnd_556x45_Mk318_Stanag","rhs_mag_30Rnd_556x45_Mk318_Stanag","rhs_mag_30Rnd_556x45_Mk318_Stanag","rhs_mag_30Rnd_556x45_Mk318_Stanag"]
#define IDF_HEAD			["IDF_Helmet_Mitsnefet_1","IDF_Helmet_Mitsnefet_2","IDF_Helmet_Mitsnefet_3"]
#define IDF_GLWEP			["CUP_arifle_Colt727_M203","CUP_arifle_M16A2_gl"]
#define IDF_GLMAG			["rhs_mag_30Rnd_556x45_Mk318_Stanag","rhs_mag_30Rnd_556x45_Mk318_Stanag"]
#define IDF_ARWEP			["CUP_lmg_FNMAG_RIS_modern","CUP_lmg_FNMAG"]
#define IDF_ARMAG			["sp_fwa_100Rnd_762_mag_turret","sp_fwa_100Rnd_762_mag_turret"]
#define IDF_UNI				["TRYK_U_B_OD_OD_R_CombatUniform","TRYK_U_B_OD_OD_CombatUniform"]

kit_idf_random = [
	"kit_idf_ftl"
	, "kit_idf_ar"
	, "kit_idf_gr", "kit_idf_gr"
	, "kit_idf_r", "kit_idf_r"	
];

kit_idf_pl =
	[
	["<EQUIPEMENT >>  ",IDF_UNI,"CUP_V_IDF_Vest","TFAR_rt1523g_green",IDF_HEAD,""],
	["<PRIMARY WEAPON >>  ","CUP_arifle_M16A2","rhs_mag_30Rnd_556x45_Mk318_Stanag",["","","CUP_optic_ACOG2",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ", [ UNIFORM_ITEMS_L ]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",8],["HandGrenade",2]]],
	["<BACKPACK ITEMS >> ",[["PRIMARY MAG",2],["SmokeShellBlue",2],["SmokeShellGreen",2],["SmokeShellOrange",2],["SmokeShellPurple",2],["SmokeShellRed",2],["SmokeShellYellow",2]]]
];

kit_idf_sl =
	[
	["<EQUIPEMENT >>  ",IDF_UNI,"CUP_V_IDF_Vest","TFAR_rt1523g_green",IDF_HEAD,""],
	["<PRIMARY WEAPON >>  ","CUP_arifle_M16A2","rhs_mag_30Rnd_556x45_Mk318_Stanag",["","","CUP_optic_ACOG2",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ", [ UNIFORM_ITEMS_L ]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",8],["HandGrenade",2]]],
	["<BACKPACK ITEMS >> ",[["PRIMARY MAG",2],["SmokeShellBlue",2],["SmokeShellGreen",2],["SmokeShellOrange",2],["SmokeShellPurple",2],["SmokeShellRed",2],["SmokeShellYellow",2]]]
];

kit_idf_ftl =
	[
	["<EQUIPEMENT >>  ",IDF_UNI,"CUP_V_IDF_Vest","CUP_B_IDF_Backpack",IDF_HEAD,""],
	["<PRIMARY WEAPON >>  ","CUP_arifle_M16A2","rhs_mag_30Rnd_556x45_Mk318_Stanag",["","","CUP_optic_ACOG2",""]],
	["<LAUNCHER WEAPON >>  ","CUP_launch_M72A6_Loaded","CUP_M72A6_M",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ", [ UNIFORM_ITEMS_L ]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",8],["HandGrenade",2]]],
	["<BACKPACK ITEMS >> ",[["PRIMARY MAG",2]]]
];

kit_idf_ar =
	[
	["<EQUIPEMENT >>  ",IDF_UNI,"CUP_V_IDF_Vest","CUP_B_IDF_Backpack",IDF_HEAD,""],
	["<PRIMARY WEAPON >>  ",IDF_ARWEP,IDF_ARMAG,["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ", [ UNIFORM_ITEMS ]],
	["<VEST ITEMS >> ",[["HandGrenade",2],["sp_fwa_100Rnd_762_mag",2]]],
	["<BACKPACK ITEMS >> ",[["sp_fwa_100Rnd_762_mag_turret",2]]]
];  

kit_idf_gr =
	[
	["<EQUIPEMENT >>  ",IDF_UNI,"CUP_V_IDF_Vest","CUP_B_IDF_Backpack",IDF_HEAD,""],
	["<PRIMARY WEAPON >>  ",IDF_GLWEP,IDF_GLMAG,["","","",""]],
	["<LAUNCHER WEAPON >>  ","CUP_launch_M72A6_Loaded","CUP_M72A6_M",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ", [ UNIFORM_ITEMS ]],
	["<VEST ITEMS >> ",[["HandGrenade",2],["PRIMARY MAG",6],["CUP_1Rnd_HEDP_M203",10]]],
	["<BACKPACK ITEMS >> ",[["CUP_1Rnd_HEDP_M203",10],["PRIMARY MAG",5],["1Rnd_Smoke_Grenade_shell",5],["1Rnd_SmokePurple_Grenade_shell",2],["1Rnd_SmokeGreen_Grenade_shell",2],["rhs_mag_M583A1_white",5]]]
];

kit_idf_r =
	[
	["<EQUIPEMENT >>  ",IDF_UNI,"CUP_V_IDF_Vest","CUP_B_IDF_Backpack",IDF_HEAD,""],
	["<PRIMARY WEAPON >>  ",IDF_WEP,IDF_MAG,["","","",""]],
	["<LAUNCHER WEAPON >>  ","CUP_launch_M72A6_Loaded","CUP_M72A6_M",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ", [ UNIFORM_ITEMS ]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",8],["HandGrenade",2]]],
	["<BACKPACK ITEMS >> ",[["sp_fwa_100Rnd_762_mag_turret",4],["PRIMARY MAG",2]]]
];

kit_idf_crew =
	[
	["<EQUIPEMENT >>  ","CUP_U_B_USMC_PilotOverall","CUP_V_IDF_Vest","","cwr3_b_headgear_cvc",""],
	["<PRIMARY WEAPON >>  ","cup_arifle_m4a1","rhs_mag_30Rnd_556x45_Mk318_Stanag",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ", [ UNIFORM_ITEMS_L ]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",5],["HandGrenade",2],["SmokeShell",2]]],
	["<BACKPACK ITEMS >> ",[]]
];

kit_idf_crewleader =
	[
	["<EQUIPEMENT >>  ","CUP_U_B_USMC_PilotOverall","CUP_V_IDF_Vest","TFAR_rt1523g","cwr3_b_headgear_cvc",""],
	["<PRIMARY WEAPON >>  ","cup_arifle_m4a1","rhs_mag_30Rnd_556x45_Mk318_Stanag",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ", [ UNIFORM_ITEMS_L ]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",5],["HandGrenade",2],["SmokeShell",2]]],
	["<BACKPACK ITEMS >> ",[]]
];

cargo_kit_idfAMMO = [
	[["CUP_launch_M72A6_Loaded",5]],
	[["rhs_mag_30Rnd_556x45_Mk318_Stanag",50],["HandGrenade",30],["sp_fwa_100Rnd_762_mag_turret",20],["CUP_1Rnd_HEDP_M203",40],["1Rnd_Smoke_Grenade_shell",10],["rhs_mag_M583A1_white",10],["1Rnd_SmokeGreen_Grenade_shell",10],["1Rnd_SmokePurple_Grenade_shell",10],["SmokeShellBlue",10],["SmokeShellGreen",10],["SmokeShellOrange",10],["SmokeShellPurple",10],["SmokeShellRed",10],["SmokeShellYellow",10]],
	[["ACE_fieldDressing",20],["ACE_elasticBandage",20],["ACE_packingBandage",20],["ACE_quikclot",20],["ACE_epinephrine",10],["ACE_morphine",10],["ACE_tourniquet",10]],
	[["CUP_B_IDF_Backpack",6]]
];

cargo_kit_idfCAR = [
	[["CUP_launch_M72A6_Loaded",2]],
	[["rhs_mag_30Rnd_556x45_Mk318_Stanag",20],["HandGrenade",10],["sp_fwa_100Rnd_762_mag_turret",10],["CUP_1Rnd_HEDP_M203",20],["1Rnd_Smoke_Grenade_shell",6],["rhs_mag_M583A1_white",6],["1Rnd_SmokeGreen_Grenade_shell",6],["1Rnd_SmokePurple_Grenade_shell",6],["SmokeShellBlue",4],["SmokeShellGreen",4],["SmokeShellOrange",4],["SmokeShellPurple",4],["SmokeShellRed",4],["SmokeShellYellow",4]],
	[["ACE_fieldDressing",20],["ACE_elasticBandage",20],["ACE_packingBandage",20],["ACE_quikclot",20],["ACE_epinephrine",10],["ACE_morphine",10],["ACE_tourniquet",10]],
	[["CUP_B_IDF_Backpack",4]]
];

//enemy kits hzb

#define HZB_WEP				["CUP_arifle_AK47_top_rail","CUP_arifle_AKMS","CUP_arifle_M16A1","cup_arifle_m4a1"]
#define HZB_MAG				["CUP_30Rnd_762x39_AK47_M","CUP_30Rnd_762x39_AK47_M","rhs_mag_30Rnd_556x45_Mk318_Stanag","rhs_mag_30Rnd_556x45_Mk318_Stanag"]
#define HZB_ARWEP			["CUP_arifle_RPK74","CUP_lmg_PKM"]
#define HZB_ARMAG			["CUP_75Rnd_TE4_LRT4_Green_Tracer_762x39_RPK_M","CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M"]
#define HZB_HEAD			["CUP_H_PASGTv2_WDL","CUP_H_USArmy_Helmet_M1_plain_Olive","cwr3_b_headgear_boonie_m81_woodland","rhs_headband"]
#define HZB_VEST			["cwr3_b_vest_pasgt_lbv_alice_olive","usm_vest_rba_lbv_rm","usm_vest_pasgt_lbe_rm_m","cwr3_b_vest_pasgt_alice_woodland"]
kit_hzb_random = [
	"kit_hzb_ftl"
	, "kit_hzb_ar"
	, "kit_hzb_gr"
	, "kit_hzb_r"	
	, "kit_hzb_hAT"
	, "kit_hzb_peaceduke"
];

kit_hzb_sl =
	[
	["<EQUIPEMENT >>  ","rhsgref_uniform_woodland","usm_vest_rba_lbv_rmp","rd_54_69_r148","CUP_H_TK_Beret",""],
	["<PRIMARY WEAPON >>  ","CUP_arifle_AK47_GL_Early","CUP_30Rnd_762x39_AK47_M",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ", [ UNIFORM_ITEMS_L ]],
	["<VEST ITEMS >> ",[["CUP_1Rnd_HE_GP25_M",15],["PRIMARY MAG",10],["CUP_HandGrenade_RGD5",2]]],
	["<BACKPACK ITEMS >> ",[]]
];	

kit_hzb_pl =
	[
	["<EQUIPEMENT >>  ","rhsgref_uniform_woodland","usm_vest_rba_lbv_rmp","rd_54_69_r148","CUP_H_TK_Beret",""],
	["<PRIMARY WEAPON >>  ","CUP_arifle_AK47_GL_Early","CUP_30Rnd_762x39_AK47_M",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ", [ UNIFORM_ITEMS_L ]],
	["<VEST ITEMS >> ",[["CUP_1Rnd_HE_GP25_M",15],["PRIMARY MAG",10],["CUP_HandGrenade_RGD5",2]]],
	["<BACKPACK ITEMS >> ",[]]
];	

kit_hzb_ftl =
	[
	["<EQUIPEMENT >>  ","rhsgref_uniform_woodland","usm_vest_rba_lbv_rmp","","CUP_H_PASGTv2_WDL",""],
	["<PRIMARY WEAPON >>  ","CUP_arifle_AK47_GL_Early","CUP_30Rnd_762x39_AK47_M",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ", [ UNIFORM_ITEMS_L ]],
	["<VEST ITEMS >> ",[["CUP_1Rnd_HE_GP25_M",15],["PRIMARY MAG",10],["CUP_HandGrenade_RGD5",2]]],
	["<BACKPACK ITEMS >> ",[]]
];	

kit_hzb_ar =
	[
	["<EQUIPEMENT >>  ","rhsgref_uniform_woodland","usm_vest_rba_lbv_rm","TRYK_B_FieldPack_Wood",HZB_HEAD,""],
	["<PRIMARY WEAPON >>  ",HZB_ARWEP,HZB_ARMAG,["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["CUP_HandGrenade_RGD5",2],["PRIMARY MAG",3]]],
	["<BACKPACK ITEMS >> ",[["PRIMARY MAG",3]]]
];	

kit_hzb_gr =
	[
	["<EQUIPEMENT >>  ","rhsgref_uniform_woodland","usm_vest_rba_lbv_gr","",HZB_HEAD,""],
	["<PRIMARY WEAPON >>  ","CUP_arifle_AK47_GL_Early","CUP_30Rnd_762x39_AK47_M",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ", [ UNIFORM_ITEMS ]],
	["<VEST ITEMS >> ",[["CUP_1Rnd_HE_GP25_M",15],["PRIMARY MAG",10],["CUP_HandGrenade_RGD5",2]]],
	["<BACKPACK ITEMS >> ",[]]
];	

kit_hzb_r =
	[
	["<EQUIPEMENT >>  ","rhsgref_uniform_woodland",HZB_VEST,"TRYK_B_FieldPack_Wood",HZB_HEAD,""],
	["<PRIMARY WEAPON >>  ",HZB_WEP,HZB_MAG,["","","",""]],
	["<LAUNCHER WEAPON >>  ","CUP_launch_RPG7V","CUP_PG7VL_M",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ", [ UNIFORM_ITEMS ]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",10],["CUP_HandGrenade_RGD5",2]]],
	["<BACKPACK ITEMS >> ",[["SECONDARY MAG",1],["CUP_OG7_M",2]]]
];	

kit_hzb_hAT =
	[
	["<EQUIPEMENT >>  ","rhsgref_uniform_woodland",HZB_VEST,"",HZB_HEAD,""],
	["<PRIMARY WEAPON >>  ",HZB_WEP,HZB_MAG,["","","",""]],
	["<LAUNCHER WEAPON >>  ","CUP_launch_M72A6_Loaded","CUP_M72A6_M",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ", [ UNIFORM_ITEMS ]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",10],["CUP_HandGrenade_RGD5",2]]],
	["<BACKPACK ITEMS >> ",[]]
];	

kit_hzb_peaceduke =
	[
	["<EQUIPEMENT >>  ","rhsgref_uniform_woodland",HZB_VEST,"",HZB_HEAD,""],
	["<PRIMARY WEAPON >>  ",HZB_WEP,HZB_MAG,["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ", [ UNIFORM_ITEMS ]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",10],["CUP_HandGrenade_RGD5",2]]],
	["<BACKPACK ITEMS >> ",[]]
];

kit_hzb_crew = [
	["<EQUIPEMENT >>  ","rhsgref_uniform_woodland","CUP_V_O_Ins_Carrier_Rig","","CUP_H_TK_TankerHelmet",""],
	["<PRIMARY WEAPON >>  ","rhs_weap_aks74u","rhs_30Rnd_545x39_AK",["rhs_acc_pgs64_74u","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["rhs_mag_rgd5",4],["PRIMARY MAG",6]]],
	["<BACKPACK ITEMS >> ",[]]
];

cargo_kit_hzbCAR = [
	[["CUP_launch_RPG7V",1]],
	[["rhs_mag_30Rnd_556x45_Mk318_Stanag",10],["CUP_75Rnd_TE4_LRT4_Green_Tracer_762x39_RPK_M",10],["CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M",10],["CUP_HandGrenade_RGD5",10],["CUP_1Rnd_HE_GP25_M",20],["CUP_30Rnd_762x39_AK47_M",20],["CUP_OG7_M",2],["CUP_PG7VL_M",2]],
	[["ACE_fieldDressing",10],["ACE_elasticBandage",10],["ACE_packingBandage",10],["ACE_quikclot",10],["ACE_morphine",2],["ACE_epinephrine",2],["ACE_tourniquet",2]],
	[]
];