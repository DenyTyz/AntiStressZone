Config = {}

-- The next option activates if it is in ESX or QBCore. ESX = TRUE, QBCORE = FALSE. DEFAULT = false
Config.esxFrame = false

-- Sets the distance around where the anti-stress effect will be activated. DEFAULT = 20
Config.Zonedistance = 20

-- Set the amount of stress you want to eliminate. DEFAULT QB = 1, DEFAULT ESX = 600
Config.quantityStressReduce = 600

-- Sets the time it takes for the plugin to reduce stress "in seconds". DEFAULT = 10
Config.Cooldown = 10

-- This option is only for ESX
Config.strings = {
	menssageStressDown = "It's reducing your stress" -- Message to notify that stress is lowering
}

-- Set anti-stress zones
Config.stressZones = {
	-- Gym
	vector3(-1209.79, -1572.5, 4.16)
}
