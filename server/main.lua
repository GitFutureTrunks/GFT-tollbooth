local QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent('toll:chargePlayer')
AddEventHandler('toll:chargePlayer', function(tollFee, safeLocation)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if Player then
        local isDriver = false
        local ped = GetPlayerPed(src)
        local vehicle = GetVehiclePedIsIn(ped, false)
        if vehicle ~= 0 then
            local driverPed = GetPedInVehicleSeat(vehicle, -1)
            if driverPed == ped then
                isDriver = true
            end
        end

        if isDriver then
            local job = Player.PlayerData.job.name
            if job == "police" or job == "ambulance" then
                TriggerClientEvent('QBCore:Notify', src, 'You have passed through the toll for free.', 'success')
            else
                local bank = Player.Functions.GetMoney('bank')
                if bank >= tollFee then
                    Player.Functions.RemoveMoney('bank', tollFee, 'toll-booth')
                    TriggerClientEvent('QBCore:Notify', src, 'You have been charged $' .. tollFee, 'success')
                else
                    TriggerClientEvent('QBCore:Notify', src, 'You do not have enough money to pay the toll.', 'error')
                end
            end
        end
    end
end)
