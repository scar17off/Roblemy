local pid = game.PlaceId
local link = "https://raw.githubusercontent.com/scar17off/Roblemy/main/gamemodes/" + tostring(pid) + ".lua"

loadstring(game:HttpGet(link))()
