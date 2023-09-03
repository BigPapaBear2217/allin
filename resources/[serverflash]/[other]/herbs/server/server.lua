VorpInv = exports.vorp_inventory:vorp_inventoryApi()

local VorpCore = {}

TriggerEvent("getCore",function(core)
    VorpCore = core
end)

local Items = {
	{item = "currant", name = "some Currant", amountToGive = math.random(1,3)},
	{item = "consumable_herb_evergreen_huckleberry", name = "some Evergreen Huckleberry", amountToGive = math.random(1,3)},
	{item = "consumable_herb_oregano", name = "some Oregano", amountToGive = math.random(1,3)},
    {item = "consumable_herb_vanilla_flower", name = "some Vanilla Flower", amountToGive = math.random(1,3)},
	{item = "consumable_herb_wintergreen_berry", name = "some Wintergreen Berry", amountToGive = math.random(1,3)},
	{item = "Black_Currant", name = "Cassis", amountToGive = math.random(1,3)},
	{item = "Golden_Currant", name = "Groseille odorante", amountToGive = math.random(1,3)},
	{item = "Bulrush", name = "Jonc fleurisante", amountToGive = math.random(1,3)},
	{item = "Black_Berry", name = "Mûre", amountToGive = math.random(1,3)},
	{item = "Red_Raspberry", name = "Framboise", amountToGive = math.random(1,3)},
	{item = "blueberry", name = "a Blueberry", amountToGive = math.random(1,3)}
}

RegisterServerEvent('vorp_picking:addItem')
AddEventHandler('vorp_picking:addItem', function()
	local FinalLoot = LootToGive(source)
	local User = VorpCore.getUser(source).getUsedCharacter
	for k,v in pairs(Items) do
		if v.item == FinalLoot then
			VorpInv.addItem(source, FinalLoot, v.amountToGive)
			LootsToGive = {}
			TriggerClientEvent("vorp:TipBottom", source, '~t6~'..User.firstname.. ' ' ..User.lastname.. '~q~: Oh, I found ' ..v.name, 3000)
		end
	end
end)

function LootToGive(source)
	local LootsToGive = {}
	for k,v in pairs(Items) do
		table.insert(LootsToGive,v.item)
	end

	if LootsToGive[1] ~= nil then
		local value = math.random(1,#LootsToGive)
		local picked = LootsToGive[value]
		return picked
	end
end