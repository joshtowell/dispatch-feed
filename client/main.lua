local function SendMessage(header, body)
    TriggerEvent('chat:addMessage', {
        args = {header .. ': ', body}
    })
end

RegisterCommand('getname', function(_, args)
    if #args < 1 then
        SendMessage('Client', "You didn't provide a playerID!")
        return
    end

    local target = tonumber(args[1])

    if target then
        --event
    else
        SendMessage('Client', "Invalid serverID provided!")
        return
    end
end)

TriggerEvent('chat:addSuggestion', '/getname', 'Get a players name via serverID', {
    {name = 'player_server_id', help = 'The serverID of the player'}
})

RegisterNetEvent('dispatch_feed:client:displayName', function (playerName)
    SendMesage('Client', 'Player name: ' .. playerName)
end)

--[[ RegisterNetEvent('FIVEPD::playerDutyChange')
AddEventHandler('FIVEPD::playerDutyChange', function(playerNameOrCallsign, isOnDuty)
  print(playerNameOrCallsign, isOnDuty)
end) ]]