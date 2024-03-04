---@diagnostic disable: undefined-global
if Config.esxFrame == true then
	ESX = nil
	local secondsTotal = Config.Cooldown * 1000

	CreateThread(function()
		while true do
			local playerCoords = GetEntityCoords(PlayerPedId())
			local maxDistance = Config.Zonedistance
			
			for _, stressZone in pairs(Config.stressZones) do
				local distance = #(playerCoords - stressZone)

				if distance < maxDistance then
					TriggerEvent('esx_status:remove', 'stress', Config.quantityStressReduce)
					TriggerEvent("pNotify:SendNotification", {text = Config.strings.menssageStressDown})
				end
			end

			Wait(secondsTotal)
		end
	end)
else
	local secondsTotal = Config.Cooldown * 1000

	CreateThread(function()
		while true do
			local playerCoords = GetEntityCoords(PlayerPedId())
			local maxDistance = Config.Zonedistance
			
			for _, stressZone in pairs(Config.stressZones) do
				local distance = #(playerCoords - stressZone)

				if distance < maxDistance then
					TriggerServerEvent('hud:server:RelieveStress', Config.quantityStressReduce)
				end
			end

			Wait(secondsTotal)
		end
	end)
end
