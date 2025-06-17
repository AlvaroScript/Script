if not game:IsLoaded() then
    game.Loaded:Wait()
end

local placeId = game.PlaceId
local q = syn and syn.queue_on_teleport or queue_on_teleport or queueonteleport

-- Teleport queuing
if q then
    q("loadstring(game:HttpGet('https://raw.githubusercontent.com/AlvaroScript/Script/refs/heads/main/Loaders.lua'))()")
end

-- Tower Of Hell Place Id
local TowerOfHellIds = {
    [1962086868] = true,
    [3582763398] = true,
    [5253186791] = true,
}

-- Blue Lock Rivals Place Id
local BlueLockRivalsIds = {
    [18668065416] = true,
}

-- Load appropriate script
if TowerOfHellIds[placeId] then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/AlvaroScript/TOHSCRIPT/refs/heads/main/Main%20Script/Key/Tower%20Of%20Hell%20Key.lua"))()
elseif BlueLockRivalsIds[placeId] then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/AlvaroScript/BLRSCRIPT/refs/heads/main/Main%20Script/Key/Blue%20Lock%20Rivals%20Key.lua"))()
end
