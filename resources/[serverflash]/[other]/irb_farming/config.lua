Config = {}

-- Active language/locale
Config.defaultlang = 'fr_lang'

Config.TimeToGrow = 60 -- 1800 = 30 mins / testing 60 = 60 seconds

Config.Harvest = {
	key = 0xB2F377E8, -- [F]
	keyLabel = '[F]',
	min = 2,
	max = 5
}

Config.FarmZone = {
    [1] = {
        zones = { -- farmzone1
			vector2(1057.3891601562, -1813.7116699219),
			vector2(1037.1082763672, -1936.9809570312),
			vector2(993.06481933594, -1935.6380615234),
			vector2(993.91253662109, -1889.6791992188),
			vector2(938.37463378906, -1889.8885498047),
			vector2(948.02667236328, -1807.7596435547)
        },
		name = 'farmzone4',
		minZ = 44.672874450684,
		maxZ = 48.551219940186,
		showBlips = true,
		blips = {
			sprite = 2350572198,
			x = 1000.18, 
			y = -1858.65, 
			z = 45.45
		}
    }
}

Config.Items = {
	{
		seedName = 'tobaccoseed',
		name = 'tobaccoLeaves',
		plant1 = 'CRP_TOBACCOPLANT_AA_SIM',
		plant2 = 'CRP_TOBACCOPLANT_AB_SIM',
		plant3 = 'CRP_TOBACCOPLANT_AC_SIM',
    },
	{
		seedName = 'sugarcaneseed',
		name = 'sugar',
		plant1 = 'CRP_SUGARCANE_AA_SIM',
		plant2 = 'CRP_SUGARCANE_AB_SIM',
		plant3 = 'CRP_SUGARCANE_AC_SIM'
    },
	{
		seedName = 'cornseed',
		name = 'corn',
		plant1 = 'CRP_CORNSTALKS_CB_SIM',
		plant2 = 'CRP_CORNSTALKS_CA_SIM',
		plant3 = 'CRP_CORNSTALKS_AB_SIM'
    },
	{
		seedName = 'dixonappleseed',
		name = 'dixonApples',
		plant1 = 'p_tree_magnolia_01',
		plant2 = 'p_tree_magnolia_02',
		plant3 = 'p_tree_magnolia_02_MD'
    },
	{
		seedName = 'bananaseed',
		name = 'banana',
		plant1 = 'p_tree_banana_01_crt',
		plant2 = 'p_tree_banana_01_MD_crt',
		plant3 = 'p_tree_banana_01_MD_crt'
    },
	{
		seedName = 'cottonseed',
		name = 'cotton',
		plant1 = 'CRP_COTTON_AD_SIM',
		plant2 = 'CRP_COTTON_BA_SIM',
		plant3 = 'CRP_COTTON_BB_SIM'
    },
	{
		seedName = 'ginsengseed',
		name = 'ginseng',
		plant1 = 'CRP_GINSENG_AA_SIM',
		plant2 = 'CRP_GINSENG_AB_SIM',
		plant3 = 'CRP_GINSENG_AD'
    },
	{
		seedName = 'potatoseed',
		name = 'potato',
		plant1 = 'crp_potato_aa_sim',
		plant2 = 'crp_potato_har_aa_sim',
		plant3 = 'crp_potato_sap_aa_sim'
    },
	{
		seedName = 'tomatoseed',
		name = 'tomato',
		plant1 = 'crp_tomatoes_aa_sim',
		plant2 = 'crp_tomatoes_har_aa_sim',
		plant3 = 'crp_tomatoes_sap_aa_sim'
    },
	{
		seedName = 'cocaseed',
		name = 'cocaLeaves',
		plant1 = 'p_sap_maple_aa_sim',
		plant2 = 'p_sap_maple_ab_sim',
		plant3 = 'p_sap_maple_ad_sim'
    },
	{
		seedName = 'wheatseed',
		name = 'wheat',
		plant1 = 'crp_wheat_dry_aa_sim',
		plant2 = 'crp_wheat_sap_long_ab_sim',
		plant3 = 'crp_wheat_stk_ab_sim'
    },
	{
		seedName = 'barleyseed',
		name = 'barley',
		plant1 = 'crp_wheat_dry_aa_sim',
		plant2 = 'crp_wheat_sap_long_ab_sim',
		plant3 = 'crp_wheat_dry_long_aa_sim'
    },
    {
		seedName = 'grapeseed',
		name = 'grape',
		plant1 = 'rdr_bush_neat_ac_sim',
		plant2 = 'rdr_bush_neat_ab_sim',
		plant3 = 'rdr_bush_hedgecore_ac'
    }
}
