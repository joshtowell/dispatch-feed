RegisterNetEvent('dispatch_feed:server:getPlayerName', function (target)
    local playerName = GetPlayerName(target)
    
    if playerName then
        TriggerClientEvent('dispatch_feed:client:getPlayerName')
    else
        TriggerClientEvent('chat:addMessage', source, {
            args = { 'Server: Player not found, try another serverID!' }
        })
end)