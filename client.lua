------- CHANGE THESE SETTINGS TO FIT YOUR NEEDS -------

-- Recommended total number of lines is ~13
local dcMessage = {
    'Discord Link',
}
-- Recommended total number of lines is ~13

local helpMessage = {
    'Help line 1',
    'Help line 2',
    'Help line 3',
}
-- Recommended total number of lines is ~13
local tsMessage = {
    'Teamspeak IP',
}

-- Prefixes will be displayed before each line,
local dcPrefix = '^1'
local dcSuffix = '^1.'
local helpPrefix = '^1'
local helpSuffix = '^1.'
local tsPrefix = '^3'
local tsSuffix = '^3.'

-- Customize your /help and /rules command, if you wish.
local dcCommand = 'discord' -- don't add a "/" here!
local helpCommand = 'help' -- don't add a "/" here!
local tsCommand = 'teamspeak' -- don't add a "/" here!
-------------------------------------------------------


















------- CODE, DON'T TOUCH THIS!!! -------
RegisterCommand(dcCommand, function()
    for i in pairs(dcMessage) do
        TriggerEvent('chatMessage', '', {255, 255, 255}, dcPrefix .. dcMessage[i] .. dcSuffix)
    end
end, false)

RegisterCommand(helpCommand, function()
    for i in pairs(helpMessage) do
        TriggerEvent('chatMessage', '', {255, 255, 255}, helpPrefix .. helpMessage[i] .. helpSuffix)
    end
end, false)

RegisterCommand(tsCommand, function()
    for i in pairs(tsMessage) do
        TriggerEvent('chatMessage', '', {255, 255, 255}, tsPrefix .. tsMessage[i] .. tsSuffix)
    end
end, false)
TriggerEvent('chat:addSuggestion', '/' .. dcCommand, 'Displays a Discord link.')
TriggerEvent('chat:addSuggestion', '/' .. helpCommand, 'Displays a help message.')
TriggerEvent('chat:addSuggestion', '/' .. tsCommand, 'Displays the server rules.')