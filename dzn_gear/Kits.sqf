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

#define ASSIGNED_ITEMS_OP		"ItemMap","ItemCompass","ItemWatch","", NVG_NIGHT_ITEM
#define ASSIGNED_ITEMS__OP_L	"ItemMap","ItemCompass","ItemWatch","", NVG_NIGHT_ITEM, BINOCULAR_ITEM

#define ASSIGNED_ITEMS		"ItemMap","ItemCompass","ItemWatch","ItemRadio", NVG_NIGHT_ITEM
#define ASSIGNED_ITEMS_L	"ItemMap","ItemCompass","ItemWatch","ItemRadio", NVG_NIGHT_ITEM, BINOCULAR_ITEM

#define UNIFORM_ITEMS		["ACE_fieldDressing",5],["ACE_packingBandage",5],["ACE_elasticBandage",5],["ACE_tourniquet",2],["ACE_morphine",2],["ACE_epinephrine",2],["ACE_quikclot",5],["ACE_CableTie",2],["ACE_Flashlight_XL50",1],["ACE_EarPlugs",1]
#define UNIFORM_ITEMS_L		["ACE_fieldDressing",5],["ACE_packingBandage",5],["ACE_elasticBandage",5],["ACE_tourniquet",2],["ACE_morphine",2],["ACE_epinephrine",2],["ACE_quikclot",5],["ACE_CableTie",2],["ACE_Flashlight_XL50",1],["ACE_EarPlugs",1],["ACE_MapTools",1]
// ****************

//friendly kits

#define op_u ["CUP_O_TKI_Khet_Partug_06","CUP_O_TKI_Khet_Partug_05","CUP_O_TKI_Khet_Partug_02","CUP_O_TKI_Khet_Partug_07","CUP_O_TKI_Khet_Partug_01","CUP_O_TKI_Khet_Partug_08"]
#define op_v ["CUP_V_OI_TKI_Jacket4_03","CUP_V_OI_TKI_Jacket4_04","CUP_V_OI_TKI_Jacket4_05","CUP_V_OI_TKI_Jacket5_05","CUP_V_OI_TKI_Jacket5_02","CUP_V_OI_TKI_Jacket4_06","CUP_V_OI_TKI_Jacket5_01","CUP_V_OI_TKI_Jacket2_06","CUP_V_OI_TKI_Jacket2_01"]
#define op_h ["CUP_H_TK_Lungee","CUP_H_TKI_Lungee_04","CUP_H_TKI_Lungee_05","CUP_H_TKI_Lungee_06","CUP_H_TKI_SkullCap_04","CUP_H_TKI_Pakol_2_01","CUP_H_TKI_Pakol_2_05","CUP_H_TKI_SkullCap_01"]
#define op_g ["G_Bandanna_khk","G_Bandanna_blk","G_Bandanna_tan","rhs_scarf","",""]

#define op_w ["CUP_srifle_LeeEnfield","arifle_KA_SKS_F","CUP_arifle_Sa58V_camo","hlc_rifle_SLR","rhs_weap_akm","hlc_rifle_FAL5000","rhs_weap_pm63","CUP_arifle_Sa58P"]
#define op_a ["CUP_10x_303_M","10Rnd_M43_762x39_Ball","CUP_30Rnd_Sa58_M_TracerG","hlc_20Rnd_762x51_B_fal","rhs_30Rnd_762x39mm","hlc_20Rnd_762x51_B_fal","rhs_30Rnd_762x39mm","CUP_30Rnd_Sa58_M_TracerG"]

kit_op_r = [
	["<EQUIPEMENT >>  ",op_u,op_v,"",op_h,op_g],
	["<PRIMARY WEAPON >>  ",op_w,op_a,["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_OP],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",5],["rhs_mag_rgd5",1]]],
	["<BACKPACK ITEMS >> ",[]]
];

//enemy kit's

#define pmc_h ["CUP_H_PMC_Cap_Back_PRR_Tan","CUP_H_CZ_Hat04","H_Cap_oli_hs","H_Cap_blk_CMMG"]
#define pmc_u ["CUP_I_B_PMC_Unit_11","CUP_I_B_PMC_Unit_21","CUP_I_B_PMC_Unit_15","CUP_I_B_PMC_Unit_10","CUP_I_B_PMC_Unit_2"]
#define pmc_v ["TRYK_V_ArmorVest_coyo","TRYK_V_ArmorVest_coyo2"]

#define pmc_w ["hlc_rifle_G36A1","hlc_rifle_G36KA1","hlc_rifle_G36C"]
#define pmc_a ["30Rnd_556x45_Stanag","30Rnd_556x45_Stanag","30Rnd_556x45_Stanag"]

cargo_kit_cargo = [
	[["hlc_rifle_g3a3v",20],["rhs_weap_pkm",10],["CUP_glaunch_M79",10],["rhs_weap_rpg26",6],["hlc_rifle_FAL5061",20],["RH_M16a1",20]],
	[["hlc_20rnd_762x51_b_G3",60],["rhs_100Rnd_762x54mmR",20],["1Rnd_HE_Grenade_shell",50],["hlc_10Rnd_762x51_B_fal",60],["20Rnd_556x45_Stanag",60]],
	[["CUP_V_I_RACS_Carrier_Rig_3",30],["CUP_H_USArmy_Helmet_M1_Olive",30],["ItemRadio",30]],
	[["CUP_B_AlicePack_Khaki",30],["tf_rt1523g_black",5]]
];


kit_random_pmc = [
    "kit_pmc_r","kit_pmc_r"
	,"kit_pmc_gr"
	,"kit_pmc_mg"
];


kit_pmc_r = [
	["<EQUIPEMENT >>  ",pmc_u,pmc_v,"",pmc_h,""],
	["<PRIMARY WEAPON >>  ",pmc_w,pmc_a,["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","hgun_P07_F","16Rnd_9x21_Mag",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["HandGrenade",2],["30Rnd_556x45_Stanag_green",7]]],
	["<BACKPACK ITEMS >> ",[]]
];

kit_pmc_gr = [
	["<EQUIPEMENT >>  ",pmc_u,pmc_v,"",pmc_h,""],
	["<PRIMARY WEAPON >>  ","hlc_rifle_G36A1AG36","30Rnd_556x45_Stanag_green",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","hgun_P07_F","16Rnd_9x21_Mag",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["HandGrenade",2],["PRIMARY MAG",7],["1Rnd_HE_Grenade_shell",6]]],
	["<BACKPACK ITEMS >> ",[]]
];

kit_pmc_mg = [
	["<EQUIPEMENT >>  ",pmc_u,pmc_v,"B_AssaultPack_blk",pmc_h,""],
	["<PRIMARY WEAPON >>  ","CUP_lmg_minimipara","CUP_200Rnd_TE4_Red_Tracer_556x45_M249",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","hgun_P07_F","16Rnd_9x21_Mag",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["HandGrenade",2],["CUP_200Rnd_TE4_Green_Tracer_556x45_L110A1",1]]],
	["<BACKPACK ITEMS >> ",[["CUP_200Rnd_TE4_Green_Tracer_556x45_L110A1",2]]]
];

kit_pmc_mm = [
	["<EQUIPEMENT >>  ",pmc_u,pmc_v,"","CUP_H_PMC_Cap_Back_PRR_Tan",""],
	["<PRIMARY WEAPON >>   ","CUP_srifle_M110","CUP_20Rnd_762x51_B_M110",["","","CUP_optic_Leupold_VX3",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","hgun_P07_F","16Rnd_9x21_Mag",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["HandGrenade",2],["PRIMARY MAG",5],["HANDGUN MAG",1]]],
	["<BACKPACK ITEMS >> ",[]]
];


#define ir_h ["usm_bdu_cap_odg","CUP_H_USArmy_Helmet_M1_Olive"]
#define ir_w ["hlc_rifle_g3a3v","hlc_rifle_FAL5061","RH_M16a1"]
#define ir_a ["hlc_20rnd_762x51_b_G3","hlc_10Rnd_762x51_B_fal","20Rnd_556x45_Stanag"]

kit_random_ir = [
    "kit_ir_r","kit_ir_r","kit_ir_r"
    ,"kit_ir_mg"
	,"kit_ir_at"
];

kit_ir_mg = [
	["<EQUIPEMENT >>  ","CUP_U_O_TK_Green","CUP_V_I_RACS_Carrier_Rig_3","CUP_B_AlicePack_Khaki",ir_h,""],
	["<PRIMARY WEAPON >>  ","rhs_weap_pkm","rhs_100Rnd_762x54mmR",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["HandGrenade",1]]],
	["<BACKPACK ITEMS >> ",[["PRIMARY MAG",3]]]
];

kit_ir_r = [
	["<EQUIPEMENT >>  ","CUP_U_O_TK_Green","CUP_V_I_RACS_Carrier_Rig_3","",ir_h,""],
	["<PRIMARY WEAPON >>  ",ir_w, ir_a,["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",5],["HandGrenade",1]]],
	["<BACKPACK ITEMS >> ",[]]	
];

kit_ir_at = [
	["<EQUIPEMENT >>  ","CUP_U_O_TK_Green","CUP_V_I_RACS_Carrier_Rig_3","rhs_rpg_empty",ir_h,""],
	["<PRIMARY WEAPON >> ",ir_w, ir_a,["","","",""]],
	["<LAUNCHER WEAPON >>  ","rhs_weap_rpg7","rhs_rpg7_PG7V_mag",["","rhs_acc_rpg7v_zeroing_300","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["HandGrenade",1],["PRIMARY MAG",5]]],
	["<BACKPACK ITEMS >> ",[["rhs_rpg7_OG7V_mag",2],["SECONDARY MAG",1]]]
];

kit_ir_mm = [
	["<EQUIPEMENT >>  ","CUP_U_O_TK_Green","CUP_V_I_RACS_Carrier_Rig_3","","H_Booniehat_khk",""],
	["<PRIMARY WEAPON >>  ","hlc_rifle_g3a3v","hlc_20rnd_762x51_b_G3",["","","hlc_optic_accupoint_g3",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["HandGrenade",1],["PRIMARY MAG",5]]],
	["<BACKPACK ITEMS >> ",[]]
];

