-- script by scar17off
loadstring(game:HttpGet("https://raw.githubusercontent.com/Averiias/purple-haze-pf/main/ui/lib.lua"))()
local ESP = loadstring(game:HttpGet("https://kiriot22.com/releases/ESP.lua"))()

-- some additions
-- Shrek ESP
ESP:AddObjectListener(workspace.Monsters, {
    Name = "Shrek",
    CustomName = "Shrek",
    Color = Color3.fromRGB(0,140,0),
    IsEnabled = "Shrek"
})
ESP:AddObjectListener(workspace.Monsters, {
    Name = "StringCreature",
    CustomName = "StringCreature",
    Color = Color3.fromRGB(100,100,100),
    IsEnabled = "StringCreature"
})
ESP:AddObjectListener(workspace.Monsters, {
    Name = "Smiler",
    CustomName = "Smiler",
    Color = Color3.fromRGB(50,50,50),
    IsEnabled = "Smiler"
})
ESP:AddObjectListener(workspace.SearchItems, {
    Name = "Locker",
    CustomName = "Locker",
    Color = Color3.fromRGB(0,0,90),
    IsEnabled = "Locker"
})
ESP:AddObjectListener(workspace.SearchItems, {
    Name = "File Cabinet",
    CustomName = "FileCabinet",
    Color = Color3.fromRGB(0,90,45),
    IsEnabled = "FileCabinet"
})
ESP.Locker = false
ESP.FileCabinet = false
ESP.Shrek = false
ESP.Smiler = false
ESP.StringCreature = false
ESP:Toggle(false)

local window = library:CreateWindow({
	WindowName = "Roblemy: Shrek in the Backrooms",
    Color = Color3.fromRGB(11, 88, 11)
}, game:GetService("CoreGui"))

local esp = window:CreateTab("ESP")
local settings = window:CreateTab("Settings")

local wsettings = settings:CreateSection("Window")
local espsets = esp:CreateSection("ESP")
local monsters = esp:CreateSection("Monsters")
local players = esp:CreateSection("Players")
local items = esp:CreateSection("Items")

-- esp
-- players
players:CreateToggle("Enabled", false, function(v)
	ESP.Players = v
end)
-- esp settings
espsets:CreateToggle("Enabled", false, function(v)
	ESP:Toggle(v)
end)
espsets:CreateSlider("Thickness", 1, 25, 1, true, function(v)
    ESP.Thickness = v
end)
espsets:CreateToggle("Team Color", true, function(v)
    ESP.TeamColor = v
end)
espsets:CreateToggle("Team Check", true, function(v)
    ESP.TeamMates = v
end)
espsets:CreateToggle("Box", true, function(v)
    ESP.Boxes = v
end)
espsets:CreateToggle("Names", false, function(v)
    ESP.Names = v
end)
espsets:CreateToggle("Health", false, function(v)
    ESP.Health = s
end)
espsets:CreateToggle("Distance", false, function(v)
    ESP.Distances = v
end)
espsets:CreateToggle("FaceCamera", false, function(v)
    ESP.FaceCamera = v
end)
espsets:CreateToggle("Tracers", false, function(v)
    ESP.Tracers = v
end)
-- monsters
monsters:CreateToggle("Shrek", false, function(v)
	ESP.Shrek = v
end)
monsters:CreateToggle("Smiler", false, function(v)
	ESP.Smiler = v
end)
monsters:CreateToggle("String Creature", false, function(v)
	ESP.StringCreature = v
end)
-- items
items:CreateToggle("Locker", false, function(v)
	ESP.Locker = v
end)
items:CreateToggle("File Cabinet", false, function(v)
	ESP.FileCabinet = v
end)
-- settings
wsettings:CreateButton("Unload", function()
	window:Toggle(false)
	ESP:Toggle(false)
end)
