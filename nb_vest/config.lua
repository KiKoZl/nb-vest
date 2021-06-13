config = {}
   --progress bar config
   config.usearmourtext = "Using Armour!" -- text to show in progress bar
   config.Progressbartime = 3000
   config.disableMove = false
   config.disableCarMove = false
   config.disableMousemove = false
   config.disableCombataction = true
   
   
   --armour database name
   config.itemhigh = 'nb-armourhigh'
   config.itemmedium = 'nb-armourmedium'
   config.itemlow = 'nb-armourlow'
   
   --Armour 
   config.ManArmourIDhigh = 13
   config.ManArmourTexturehigh = 2
   config.FemArmourIDhigh = 10
   config.FemManArmourTexturehigh = 0
   
   config.ManArmourIDmedium = 15
   config.ManArmourTexturemedium = 0
   config.FemArmourIDmedium = 11
   config.FemManArmourTexturemedium = 0
   
   config.ManArmourIDlow = 15
   config.ManArmourTexturelow = 1
   config.FemArmourIDlow = 11
   config.FemManArmourTexturelow = 1
   
   
   config.PedArmourlow = 35
   config.PedArmourmedium = 50
   config.PedArmourheavy = 100
   
   
   
config.Text = {

	['use_armourlow'] = 'You have 35% of vest',
	['use_armourmedium'] = 'You have 50% of vest',
	['use_armourheavy'] = 'You have 100% of vest!',
	['not_usearmourlow'] = 'you need to have less than 75% to use!',
	['not_usearmourmedium'] = 'you need to have less than 50% to use!',
	['not_usearmourheavy'] = 'you need to have less than 0% to use!'
	

}



function SendTextMessage(msg)
          -- Use this for not depend in pNotify
		--SetNotificationTextEntry('STRING')
		--AddTextComponentString(msg)
		--DrawNotification(0,1)
		--EXAMPLE USED IN VIDEO
        TriggerEvent('pNotify:SendNotification', {text = {msg}, timeout = 5000})
		
		

end