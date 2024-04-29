if game.PlaceId ~= 155615604 then

local OrionLib = loadstring(Game:HttpGetAsync(("https://raw.githubusercontent.com/NoobHubV1/RobloxScripts/main/OrionLib.lua")))()

local function Notify(Name, Content, Time)
	OrionLib:MakeNotification({
		Name = Name,
		Content = Content,
		Image = "rbxassetid://4483345998",
		Time = Time
	})
end
Notify("NoobHubV1 Hub", "Tiger Admin Loading Script.", 3)

        wait(3)

Notify("NoobHubV1 Hub", "Tiger Admin Loading Script..", 3)

        wait(3)

Notify("NoobHubV1 Hub", "Tiger Admin Loading Script...", 3)

        wait(3)

loadstring(game:HttpGet('https://raw.githubusercontent.com/dalloc2/Roblox/main/TigerAdmin.lua'))()
end
