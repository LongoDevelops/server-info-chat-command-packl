-- Longo Development -- 

local id = GetPlayerServerId(PlayerPedId())

RegisterCommand('ld', function(source, args)
    TriggerEvent('chat:addSuggestion', '/ld', 'discord, website, your id and a chat clear! (Type one at a time)', {
        { name="discord", help="Server Discord!"},
        { name="website", help="Server Website!"},
        { name='id', help="Your server id!"},
        { name='clear', help="Clear your chat!"} 
    })
    if args[1] == 'discord' then
        TriggerEvent('chat:addMessage', {
            color = {255, 255, 255},
            multiline = true,
            args = {"Server", "Discord.gg/yourcord"}
        })  
    elseif args[1] == 'website' then
        TriggerEvent('chat:addMessage', {
            color = {255, 255, 255},
            multiline = true,
            args = {"Server", "place your website here"}
        })
    elseif args[1] == 'id' then
        print(id)
        text('Your server id is in the f8 console!')
    elseif args[1] == 'clear' then
        TriggerEvent('chat:clear')
    end
end)



function text(text)
    SetNotificationTextEntry("STRING")
    AddTextComponentString(text)
    DrawNotification(true, false)
end