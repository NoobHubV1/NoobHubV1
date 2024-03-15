local Library = loadstring(Game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wizard"))()

local PhantomForcesWindow = Library:NewWindow("NoobHubV1 Hub")

local AnimeBall = PhantomForcesWindow:NewSection("Main")

AnimeBall:CreateButton("Auto Parry", function()--Red Circle Auto-Block:
getgenv().visualizer = true
loadstring(Game:HttpGet('https://raw.githubusercontent.com/1f0yt/community/main/Circle'))()
end)

AnimeBall:CreateButton("Fps Boost", function()loadstring(game:HttpGet("https://shz.al/KWfS"))()
end)

AnimeBall:CreateButton("KeyBoard", function()loadstring(game:HttpGet("https://gist.githubusercontent.com/RedZenXYZ/4d80bfd70ee27000660e4bfa7509c667/raw/da903c570249ab3c0c1a74f3467260972c3d87e6/KeyBoard%2520From%2520Ohio%2520Fr%2520Fr"))()
end)

AnimeBall:CreateButton("FFJ Hub Anime Ball", function()loadstring(game:HttpGet("https://raw.githubusercontent.com/FFJ1/Roblox-Exploits/main/scripts/AnimeBall.lua"))()
end)

AnimeBall:CreateButton("Fly", function()loadstring(game:HttpGet("https://raw.githubusercontent.com/NoobHubV1/NoobHubV1/main/Fly.lua"))()
end)
