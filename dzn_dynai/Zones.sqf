
/* *********** This array defines detailed properties of zones ************************** */
// MAIN BASE

[
	"base" /* Zone Name */
	,"EAST",true, /* Side, is Active */ [],[]
	/* Groups: */
	,[
		[
			1, /* Groups quantity */
			/* Units */
			[
				["O_Soldier_F", [], "kit_random_ir"]
				,["O_Soldier_F", [], "kit_random_ir"]
				,["O_Soldier_F", [], "kit_random_ir"]
				,["O_Soldier_F", [], "kit_random_ir"]
			]
		]
		,[
			1, /* Groups quantity */
			/* Units */
			[
				["O_Soldier_F", ["indoors"], "kit_random_ir"]
				,["O_Soldier_F", ["indoors"], "kit_random_ir"]
				,["O_Soldier_F", ["indoors"], "kit_random_ir"]
				,["O_Soldier_F", ["indoors"], "kit_random_ir"]
			]
		]
	]
	/* Behavior: Speed, Behavior, Combat mode, Formation */
	,["LIMITED","SAFE","YELLOW","WEDGE"]
]

,[
	"patr1" /* Zone Name */
	,"EAST",true, /* Side, is Active */ [],[]
	/* Groups: */
	,[
		[
			1, /* Groups quantity */
			/* Units */
			[
				["O_Soldier_F", [], "kit_random_ir"]
				,["O_Soldier_F", [], "kit_random_ir"]
				,["O_Soldier_F", [], "kit_random_ir"]
			]
		]
	]
	/* Behavior: Speed, Behavior, Combat mode, Formation */
	,["LIMITED","SAFE","YELLOW","WEDGE"]
]

,[
	"patr2" /* Zone Name */
	,"EAST",true, /* Side, is Active */ [],[]
	/* Groups: */
	,[
		[
			1, /* Groups quantity */
			/* Units */
			[
				["O_Soldier_F", [], "kit_random_ir"]
				,["O_Soldier_F", [], "kit_random_ir"]
				,["O_Soldier_F", [], "kit_random_ir"]
			]
		]
	]
	/* Behavior: Speed, Behavior, Combat mode, Formation */
	,["LIMITED","SAFE","YELLOW","WEDGE"]
]

,[
	"palace" /* Zone Name */
	,"EAST",true, /* Side, is Active */ [],[]
	/* Groups: */
	,[
		[
			2, /* Groups quantity */
			/* Units */
			[
				["O_Soldier_F", [], "kit_random_pmc"]
				,["O_Soldier_F", [], "kit_random_pmc"]
				,["O_Soldier_F", [], "kit_random_pmc"]
			]
			,[false, 0.8]
		]
	]
	/* Behavior: Speed, Behavior, Combat mode, Formation */
	,["LIMITED","SAFE","YELLOW","WEDGE"]
]

,[
	"podkr" /* Zone Name */
	,"EAST",false, /* Side, is Active */ [],[]
	/* Groups: */
	,[
		[
			1, /* Groups quantity */
			/* Units */
			[
				["CUP_O_UAZ_MG_TKA", "Vehicle Advance", ""]
				,["O_Soldier_F", [0,"Driver"], "kit_random_ir"]
				,["O_Soldier_F", [0,"Gunner"], "kit_random_ir"]
			]
		]
		,[
			1, /* Groups quantity */
			/* Units */
			[
				["CUP_O_UAZ_Unarmed_TKA", "Vehicle Advance", ""]
				,["O_Soldier_F", [0,"Driver"], "kit_random_ir"]
				,["O_Soldier_F", [0,"Cargo"], "kit_random_ir"]
				,["O_Soldier_F", [0,"Cargo"], "kit_random_ir"]
				,["O_Soldier_F", [0,"Cargo"], "kit_random_ir"]
			]
		]
	]
	/* Behavior: Speed, Behavior, Combat mode, Formation */
	,["LIMITED","SAFE","YELLOW","WEDGE"]
	 /* (OPTIONAL) Activation condition */
	,{ ts_tasks == 2; }
]

,[
	"podkr2" /* Zone Name */
	,"EAST",false, /* Side, is Active */ [],[]
	/* Groups: */
	,[
		[
			1, /* Groups quantity */
			/* Units */
			[
				["CUP_I_MH6M_ION", "Vehicle Advance", ""]
				,["O_Soldier_F", [0,"Driver"], "kit_random_pmc"]
				,["O_Soldier_F", [0,"Cargo"], "kit_random_pmc"]
				,["O_Soldier_F", [0,"Cargo"], "kit_random_pmc"]
				,["O_Soldier_F", [0,"Cargo"], "kit_random_pmc"]
				,["O_Soldier_F", [0,"Cargo"], "kit_random_pmc"]
			]
			,[false, 0.8]
		]
	]
	/* Behavior: Speed, Behavior, Combat mode, Formation */
	,["NORMAL","SAFE","RED","WEDGE"]
	 /* (OPTIONAL) Activation condition */
	,{ ts_tasks == 1; }
]

