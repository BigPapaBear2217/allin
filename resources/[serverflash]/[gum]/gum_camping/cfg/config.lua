Config = {}
--Protect for scroll if player place props
Config.IncreaseSpeedControl = {`INPUT_CREATOR_LT`, `INPUT_PREV_WEAPON`}
Config.DecreaseSpeedControl = {`INPUT_CREATOR_RT`, `INPUT_NEXT_WEAPON`}

Config.BannedCity = false
Config.BannedTowns = {'Annesburg','SaintDenis', 'Armadillo', 'Blackwater', 'BeechersHope', 'Breaithwaite', 'Butcher', 'Caliga', 'Cornwall', 'Emerald', 'Lagras', 'Manzanita', 'Rhodes', 'Siska', 'StDenis', 'Strawberry', 'Tumbleweed', 'Valentine', 'Vanhorn', 'Wallace', 'Wapiti', 'AguasducesFarm', 'AguasdulcesRuins', 'AguasdulcesVilla', 'Manico'}
Config.BannedText = "You cant build your camp in city"

Config.Permit_Item = false
Config.Permit_Item_Id = "MDT_Book"

Config.StealtStorage = true
Config.BlockIfOffline = false
Config.LockcpickItem = "Lockpick"

Config.GumCooking = false
Config.CookProp = {
    "p_campfirecombined01x"
}
Config.MultipleCamps = false--If player can have more camps
Config.RadiusRenderBuild = 80.0--Range for render camp, or build camp 

Config.Gum_Notify_Old = false
Config.FirstName = ""--If you use old Notify you must add Image path
Config.SecondName = ""--If you use old Notify fro mme you must add Image Name

Config.Gum_Notify_NUI = true
Config.FarmingImage = "camping"

Config.Camp_Load_Cmd = "camp_load"
Config.Camp_Manage = "camp_manage"

Config.CounterFix = 7--For every 10% for fix is Doubled fixing like if you have 20% you must fix 80% thats 8* Fix state items
--Warning counter is from 0 like 0,7,14,21,28,35,42,49,56,63,70,77,84,91,98
Config.FixItems = {
    [1] = {"g_bois", 3, "Bois de réparation"},
    [2] = {"fer", 3, "fer"},
    [3] = {"pierre", 3, "Pierre"},
    [4] = {"argent", 3, "argent"},
}

Config.PlaceMoreDown = {
    s_wap_rainsfalls = 0.70,
    s_tent_maropen01b = 0.20,
}
--------Prop                   Fired prop            ID           For now nothing        Name    Time Range for clear grass etc
Config.Fires = {
    p_campfire_win2_01x = {"p_campfirefresh01x", "Campfire_1", "Wood_Branch", "Malé ohniště", 1, 1.5},
    p_campfire03x_nofire = {"p_campfire03x", "Campfire_2", "Wood", "Velké ohniště", 5, 1.5},
    p_campfirecombined01x_off = {"p_campfirecombined01x", "Campfire_3", "Wood", "Kotlík", 5, 1.5},
    s_splitfirelog01x_nofire = {"s_splitfirelog01x", "Campfire_4", "Wood", "Hořící poleno", 5, 1.5},
}
--
----Prop                                        ID          Name      Time    For Clothing storage?
Config.SpawnProps = {
    p_chair_crate02x =                      {"caisse_en_bois", "Caisse en bois", 3, false, 0},
    s_tent_maropen01b =                     {"tente", "Tente normale", 5, true, 2.5},
    mp005_s_posse_tent_bountyhunter07x =    {"tente_de_chasse", "Tente de chasse", 10, true, 4.3},
    p_hitchingpost01x =                     {"poste_d_attelage", "Poste d'attelage", 2, false, 0},
    p_table11x =                            {"table_bois", "Table en bois", 3, false, 2.5},
    p_ambchair01x =                         {"chaise_bois", "Chaise en bois", 3, false, 0},
    p_bench03x =                            {"banc_en_bois", "Banc en bois", 3, false, 0},
    p_lantern09xint =                       {"lanterne", "Lanterne", 3, false, 0},
    p_cot01x =                              {"lit", "Lit", 3, false, 2.5},
    p_tentmountainmen02x =                  {"g_tente", "Grande Tente", 4, true, 3.3},
    p_benchwork01x =                        {"banc_munitions", "Banc de fabrication de balles", 5, false, 0},
    p_bespoketable01x =                     {"table_2", "Table en bois 2", 6, false, 2.5},
    p_stoolfolding01x =                     {"tabouret", "Tabouret", 7, false, 0},
    p_target01x =                           {"cible", "Cible", 1, false, 0},
    p_chairfolding02x =                     {"chaise_2", "Chaise en bois 2", 2, false, 0},
    p_chair09x =                            {"chaise_3", "Chaise en bois 3", 2, false, 0},
    s_wap_rainsfalls =                      {"tipi", "Tipi", 5, false, 0},

    s_wagoncaravan01a =                     {"caravane", "Caravane", 5, false, 0},
    p_basinwater01x =                       {"recipient", "Récipient avec de l'eau", 5, false, 1.5},
    p_trunk05x  =                           {"tronc", "Tronc", 5, false, 1.5},
    p_dirttub01x   =                        {"recipient_2", "Récipient avec eau sale", 5, false, 1.5},
    p_basketrope01x  =                      {"conteneur_corde", "Conteneur avec corde", 5, false, 1.5},
    p_waterbucket01x  =                     {"sceau_eau", "Seau d'eau", 5, false, 1.5},
    p_sandbagcover01x  =                    {"sac_grain", "Sacs à grains 1", 5, false, 0},
    p_floursackstack02x =                   {"sac_cereales", "Sacs de céréales 2", 5, false, 0},
    p_barrel02x      =                      {"baril", "Baril", 5, false, 0},
    p_barricadewood_sml01x  =               {"barricade", "Barricade en bois", 5, false, 0},
    p_crate15x     =                        {"caisse", "Caisse en bois", 5, false, 1.5},

    --PROPY KNIHY
    p_coffin04x_sea = {"cercueil", "Cercueil", 1.00, false},
}

Config.Storage_Box = {
    ["p_chair_crate02x"] = 300,
    ["p_storagebox01x"] = 1000,
}
Config.Max_Items_In_Storage = 500
Config.MaxProps = 100

Config.Language = {
    [1] = {text = "Camp",},
    [2] = {text = "Accessoires construits",},
    [3] = {text = "Gestion des clés",},
    [4] = {text = "Etat :",},
    [5] = {text = "Afficher le cercle de construction",},
    [6] = {text = "Donnez la clé",},
    [7] = {text = "Votre campement",},
    [8] = {text = "Camp partagé",},
    [9] = {text = "Vêtements",},
    [10] = {text = "Boîte de rangement",},
    [11] = {text = "Allume le feu",},
    [12] = {text = "Eteindre le feu",},
    [13] = {text = "Préparez-vous à construire",},
    [14] = {text = "Coffre verrouillé",},
    [15] = {text = "Vous n'avez pas besoin de réparation",},
    [16] = {text = "Tu veux réparer ton camp ?",},
    [17] = {text = "Oui",},
    [18] = {text = "Non",},
    [19] = {text = "Que veux-tu avec cette tenue ?",},
    [20] = {text = "Sélectionner",},
    [21] = {text = "Supprimer",},
    [22] = {text = "Lieu",},
    [23] = {text = "Prendre",},
    [24] = {text = "Interagir",},
    [25] = {text = "Ouvrir",},
    [26] = {text = "Vêtements",},
    [27] = {text = "Cuisinier",},
    [28] = {text = "Interagir",},
    [29] = {text = "Crochet",},
    [30] = {text = "Vous n'avez pas d'élément de permis pour le camp de construction.",},
    [31] = {text = "Vous ne pouvez pas crocheter ce coffre.",},
    [32] = {text = "Vous n'avez pas de crochetage.",},
    [33] = {text = "tu ne peux pas construire près d'un autre camp. Va-t'en.",},
    [34] = {text = "Vous avez besoin de :",},
    [35] = {text = "Vous avez besoin de : ",},
    [80] = {text = "Vous ne pouvez construire qu'une seule boîte de stockage au camp. ",},
    [81] = {text = "Vous ne pouvez pas construire en ville. ",},
    [82] = {text = "Vous ne pouvez avoir qu'un seul camp.",},
    [83] = {text = "Vous n'êtes pas dans votre camp, ou vous n'avez pas de camp.",},
    [84] = {text = "Ce joueur a des clés",},
    [85] = {text = "Vous avez déjà atteint la limite de prop",},
    [86] = {texte= "Maximum",},
}