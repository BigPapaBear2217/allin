VORPInv = exports.vorp_inventory:vorp_inventoryApi()

Citizen.CreateThread(function()
	Citizen.Wait(10)
	VORPInv.RegisterUsableItem("bomb", function(data)
		local _source = source
		TriggerClientEvent('nic_bomb:useBomb', data.source)
	end)
end)

RegisterServerEvent('nic_bomb:removeBomb')
AddEventHandler('nic_bomb:removeBomb', function()
	local _source = source
    TriggerEvent('vorp:getCharacter', _source, function(user)
        VORPInv.subItem(_source, "bomb", 1)
        return
    end)
end)

RegisterServerEvent('nic_bomb:addBomb')
AddEventHandler('nic_bomb:addBomb', function()
	local _source = source
    TriggerEvent('vorp:getCharacter', _source, function(user)
        VORPInv.addItem(_source, "bomb", 1)
        return
    end)
end)

RegisterServerEvent('nic_bomb:checkCount')
AddEventHandler('nic_bomb:checkCount', function()
	local _source = source
    local count = VORPInv.getItemCount(_source, "bomb")
    if count > 0 then
		TriggerClientEvent('nic_bomb:useBomb', _source)
    else
        TriggerClientEvent("vorp:TipBottom", _source, "Wala kang Bomba", 6000)
    end
end)