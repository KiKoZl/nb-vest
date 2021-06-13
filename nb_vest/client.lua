ESX              = nil
local PlayerData = {}

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
end)

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
  PlayerData = xPlayer   
end)

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
  PlayerData.job = job
end)

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(1000)
		local armor = GetPedArmour(PlayerPedId())
		if armor == 0 then
			SetPedComponentVariation(PlayerPedId(), 9, 0, 0, 0)
		end
	end
end)

RegisterNetEvent('nb-armour:high')
AddEventHandler('nb-armour:high', function() 
	exports['mythic_progbar']:Progress({
        name = "armourhigh",
        duration = config.Progressbartime,
        label = config.usearmourtext,
        useWhileDead = false,
        canCancel = true,
        controlDisables = {
            disableMovement = config.disableMove,
            disableCarMovement = config.disableCarMove,
            disableMouse = config.disableMousemove,
            disableCombat = config.disableCombataction,
        },
        animation = {
            animDict = "oddjobs@basejump@ig_15",
            anim = "puton_parachute",
            flags = 49,
        },
    }, function(status)
	    
        if not status then
		local armor = GetPedArmour(PlayerPedId())
		  if armor <= 0 then
            local playerPed = GetPlayerPed(-1)
			Citizen.CreateThread(function()
			SetPedArmour(playerPed, config.PedArmourheavy)
			Citizen.CreateThread(function()
			TriggerEvent('skinchanger:getSkin', function(skin)
			if skin.sex == 0 then
			SetPedComponentVariation(GetPlayerPed(-1), 9, config.ManArmourIDhigh, config.ManArmourTexturehigh, 2)  --Adiciona colete
			else 
			SetPedComponentVariation(GetPlayerPed(-1), 9, config.FemArmourIDhigh, config.FemManArmourTexturehigh, 2)
			end
			end)
			TriggerServerEvent('nb-removearmour:high')
			SendTextMessage(config.Text['use_armourheavy'])
			end)
			end)
			else 
			SendTextMessage(config.Text['not_usearmourheavy'])
			end
		
		end
	end)
end)

RegisterNetEvent('nb-armour:medium')
AddEventHandler('nb-armour:medium', function() 
	exports['mythic_progbar']:Progress({
        name = "armourmedium",
        duration = config.Progressbartime,
        label = config.usearmourtext,
        useWhileDead = false,
        canCancel = true,
        controlDisables = {
            disableMovement = config.disableMove,
            disableCarMovement = config.disableCarMove,
            disableMouse = config.disableMousemove,
            disableCombat = config.disableCombataction,
        },
        animation = {
            animDict = "oddjobs@basejump@ig_15",
            anim = "puton_parachute",
            flags = 49,
        },
    }, function(status)
	    
        if not status then
		local armor = GetPedArmour(PlayerPedId())
		  if armor <= 50 then
            local playerPed = GetPlayerPed(-1)
			Citizen.CreateThread(function()
			SetPedArmour(playerPed, config.PedArmourmedium)
			Citizen.CreateThread(function()
			TriggerEvent('skinchanger:getSkin', function(skin)
			if skin.sex == 0 then
			SetPedComponentVariation(GetPlayerPed(-1), 9, config.ManArmourIDmedium, config.ManArmourTexturemedium, 2)  --Adiciona colete
			else 
			SetPedComponentVariation(GetPlayerPed(-1), 9, config.FemArmourIDmedium, config.FemManArmourTexturemedium, 2)
			end
			end)
			TriggerServerEvent('nb-removearmour:medium')
			SendTextMessage(config.Text['use_armourmedium'])
			end)
			end)
			else 
			SendTextMessage(config.Text['not_usearmourmedium'])
			end
		
		end
	end)
end)

RegisterNetEvent('nb-armour:low')
AddEventHandler('nb-armour:low', function() 
	exports['mythic_progbar']:Progress({
        name = "armourlow",
        duration = config.Progressbartime,
        label = config.usearmourtext,
        useWhileDead = false,
        canCancel = true,
        controlDisables = {
            disableMovement = config.disableMove,
            disableCarMovement = config.disableCarMove,
            disableMouse = config.disableMousemove,
            disableCombat = config.disableCombataction,
        },
        animation = {
            animDict = "oddjobs@basejump@ig_15",
            anim = "puton_parachute",
            flags = 49,
        },
    }, function(status)
	    
        if not status then
		local armor = GetPedArmour(PlayerPedId())
		  if armor <= 50 then
            local playerPed = GetPlayerPed(-1)
			Citizen.CreateThread(function()
			SetPedArmour(playerPed, config.PedArmourlow)
			Citizen.CreateThread(function()
			TriggerEvent('skinchanger:getSkin', function(skin)
			if skin.sex == 0 then
				SetPedComponentVariation(GetPlayerPed(-1), 9, config.ManArmourIDlow, config.ManArmourTexturelow, 2)  --Adiciona colete
			else 
				SetPedComponentVariation(GetPlayerPed(-1), 9, config.FemArmourIDlow, config.FemManArmourTexturelow, 2)
			end
			end)
			TriggerServerEvent('nb-removearmour:low')
			SendTextMessage(config.Text['use_armourlow'])
			end)
			end)
			else 
			SendTextMessage(config.Text['not_usearmourlow'])
			end
		
		end
	end)
end)




	
