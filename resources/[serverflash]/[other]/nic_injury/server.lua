

RegisterServerEvent('nic_injury:disableControls')
AddEventHandler('nic_injury:disableControls', function()
	local _source = source
	TriggerClientEvent('nic_injury:disable', source)
end)