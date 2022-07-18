local ESX = nil

CreateThread(function()
    TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
	while ESX == nil do Wait(100) end
end)


CreateThread(function()
    while true do
        Wait(Config.timeSampling)
        TriggerServerEvent("rImpots:taxesLevy")
    end
end)

print("Script cree par Rayan Waize pour rDev : discord.gg/rdev")