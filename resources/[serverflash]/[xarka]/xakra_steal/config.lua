Config = {}

Config.Align = 'top-left' -- align to menu

Config.KeySteal = 0xA1ABB953

Config.StealHogtied = true -- Steal from hogtied players
Config.Cuffed = true  -- Steal from handcuffed players
Config.StealDead = true  -- Steal from dead players

Config.Webhook = ''

Config.ItemsBlackList = { -- Names of items or weapons that cannot be stolen
    'water',
    'WEAPON_MELEE_KNIFE',
}

Config.Texts = {
    ['StrPrompt'] = 'Voler',
    ['DescStealMoney'] = 'Voler de l'argent',
    ['MenuTitle'] = 'Joueur',
    ['MenuSubtext'] = 'Choisis une option',
    ['Confirm'] = 'Confirmer',
    ['AmountMoney'] = 'Quantité',
    ['Money'] = 'Argent',
    ['Inventory'] = 'Inventaire',
    ['DescStealInventory'] = 'Rechercher dans l'inventaire',
    ['NotStealCarryItems'] = 'Le joueur ne peut pas transporter plus d'objets',
    ['NotStealCarryWeapon'] = 'Le joueur ne peut pas porter plus d'armes.',
    ['NotCarryItems'] = 'Vous ne pouvez pas transporter plus d'objets.',
    ['TooMuchMoney'] = 'Vous ne pouvez pas voler plus que ce que le joueur a',
    ['StealMoney'] = 'Vous avez volé : ',
    ['ItemInBlackList'] = 'Vous ne pouvez pas voler cet objet.',
    ['WebHookTakeSteal'] = 'A volé:',
    ['WebHookMoveSteal'] = 'A livré : ',
    ['WebHookPlayer'] = ', au joueur :',
}
