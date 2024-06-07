local QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent('toll:chargePlayer')
AddEventHandler('toll:chargePlayer', function(tollFee, safeLocation)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if Player then
        local job = Player.PlayerData.job.name
        if job == "police" or job == "ambulance" then
            TriggerClientEvent('QBCore:Notify', src, 'You have passed through the toll for free.', 'success')
        else
            local bank = Player.Functions.GetMoney('bank')
            if bank >= tollFee then
                Player.Functions.RemoveMoney('bank', tollFee, 'toll-booth')
                TriggerClientEvent('QBCore:Notify', src, 'You have been charged $' .. tollFee, 'success')
            end
        end
    end
end)