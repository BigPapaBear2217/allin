VorpInv = exports.vorp_inventory:vorp_inventoryApi()

local VorpCore = {}

TriggerEvent("getCore",function(core)
    VorpCore = core
end)

local Items = {
    {item = "Fertilizer", name = "Fertilisant", amountToGive = math.random(1, 3)}
}

RegisterServerEvent('flash_harvest2:addItem')
AddEventHandler('flash_harvest2:addItem', function()
	local FinalLoot = LootToGive(source)
	local User = VorpCore.getUser(source).getUsedCharacter
	for k,v in pairs(Items) do
		if v.item == FinalLoot then
			VorpInv.addItem(source, FinalLoot, v.amountToGive)
			LootsToGive = {}
			TriggerClientEvent("vorp:TipBottom", source, '~t6~ **Ramasse du ' ..v.name ..'**', 3000)
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