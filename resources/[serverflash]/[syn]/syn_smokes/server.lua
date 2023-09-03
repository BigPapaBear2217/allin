VORP = exports.vorp_inventory:vorp_inventoryApi()

Citizen.CreateThread(function()
	Wait(500)
	for k,v in pairs(Config.smokes) do 
		VORP.RegisterUsableItem(k, function(data)
			local high = false 
			local hightype = 0
			local highduration = 0
			if v.pipe then 
				local count = VORP.getItemCount(data.source, Config.pipeitem)
				if 0 > count then
					TriggerClientEvent("vorp:TipRight", data.source, Config.language.needpipe, 3000)
					return 
				end 
			end
			if v.subitem then 
				VORP.subItem(data.source, k, 1)
			end
			if v.high then 
				high = true 
				hightype = v.hightype
				highduration = v.highduration*1000
			end
			TriggerClientEvent('syn_smoke:inhale', data.source,v.typeof,high,hightype,highduration)
		end)
	end
end)