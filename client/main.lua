local QBCore = exports['qb-core']:GetCoreObject()

CreateThread(function()
    while true do
        Wait(0)
        local playerPed = PlayerPedId()
        local playerCoords = GetEntityCoords(playerPed)
        local vehicle = GetVehiclePedIsIn(playerPed, false)

        for _, tollBooth in ipairs(Config.TollBooths) do
            local distance = #(playerCoords - vector3(tollBooth.location.x, tollBooth.location.y, tollBooth.location.z))
            if distance <= tollBooth.radius and vehicle ~= 0 then
                TriggerServerEvent('toll:chargePlayer', tollBooth.fee)
                Wait(5000)
            end
        end
    end
end)
