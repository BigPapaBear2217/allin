VorpInv = exports.vorp_inventory:vorp_inventoryApi()

local VorpCore = {}

TriggerEvent("getCore",function(core)
    VorpCore = core
end)

local Items = {
    {item = "Hay", name = "Foins", amountToGive = math.random(1, 3)}
}

RegisterServerEvent('flash_harvest:addItem')
AddEventHandler('flash_harvest:addItem', function()
	local FinalLoot2 = LootToGive2(source)
	local User = VorpCore.getUser(source).getUsedCharacter
	for k,v in pairs(Items) do
		if v.item == FinalLoot2 then
			VorpInv.addItem(source, FinalLoot2, v.amountToGive)
			LootsToGive = {}
			TriggerClientEvent("vorp:TipBottom", source, '~t6~ **Ramasse du ' ..v.name ..'**', 3000)
		end
	end
end)

function LootToGive2(source)
	local LootsToGive = {}
	for k,v in pairs(Items) do
		table.insert(LootsToGive2,v.item)
	end

	if LootsToGive2[1] ~= nil then
		local value = math.random(1,#LootsToGive2)
		local picked = LootsToGive2[value]
		return picked
	end
end