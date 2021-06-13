ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

ESX.RegisterUsableItem(config.itemhigh, function(source)
	
	  TriggerClientEvent('nb-armour:high', source)
end)

ESX.RegisterUsableItem(config.itemmedium, function(source)
	
	  TriggerClientEvent('nb-armour:medium', source)
end)

ESX.RegisterUsableItem(config.itemlow, function(source)
	
	  TriggerClientEvent('nb-armour:low', source)
end)

RegisterServerEvent('nb-removearmour:high')
AddEventHandler('nb-removearmour:high', function()        
          local xPlayer = ESX.GetPlayerFromId(source)
	      xPlayer.removeInventoryItem(config.itemhigh, 1)
end)


RegisterServerEvent('nb-removearmour:medium')
AddEventHandler('nb-removearmour:medium', function()        
          local xPlayer = ESX.GetPlayerFromId(source)
	      xPlayer.removeInventoryItem(config.itemmedium, 1)
end)


RegisterServerEvent('nb-removearmour:low')
AddEventHandler('nb-removearmour:low', function()        
          local xPlayer = ESX.GetPlayerFromId(source)
	      xPlayer.removeInventoryItem(config.itemlow, 1)
end)

