
RegisterCommand("killmessagetest", function(source,args,rawCommand)
    TriggerEvent('sv:kill:message', source)
end)



RegisterNetEvent('sv:kill:message')
AddEventHandler('sv:kill:message', function(killer)
    local src = source
    local name = nil

    name = GetPlayerName(src)
    if name ~= nil then
        TriggerClientEvent("DrawRect:CL", killer, name) 
    end
end)