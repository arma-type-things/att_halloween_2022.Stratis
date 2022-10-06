//-- GROUPS
class CfgGroups {
    class EAST {
		class att_necroplague_groups {
			name = "ATT Necroplague";
			class Infected {
				name = "Infected";
				class small_hunter_group {
					name = "Hunter (Small)";
					faction = "dev_mutants";
					icon = "\A3\ui_f\data\map\markers\nato\o_inf.paa";
					rarityGroup = 0.5;
					side = 0;
					class unit0 {
						side = 0;
						position[] = {0,0,0};
						vehicle = "dev_form939_o";
					};
					class unit1: unit0 {position[] = {1,0,0}; };
					class unit2: unit0 {position[] = {2,0,0}; };
					class unit3: unit0 {position[] = {3,0,0}; };
					class unit4: unit0 {position[] = {4,0,0}; };
					class unit5: unit0 {position[] = {0,-1,0}; };
				};
			};
		};
	};
};