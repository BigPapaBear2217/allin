VORP = exports.vorp_inventory:vorp_inventoryApi()

VORP.RegisterUsableItem("notepad", function(data)
	TriggerClientEvent('lto_notepad:open', data.source)
end)