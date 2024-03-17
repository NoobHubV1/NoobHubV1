local Library = loadstring(Game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wizard"))()

local PhantomForcesWindow = Library:NewWindow("NoobHubV1 Hub")

local AnimeBall = PhantomForcesWindow:NewSection("Main")

AnimeBall:CreateButton("Auto Parry V4", function()--Red Circle Auto-Block:
getgenv().visualizer = true
loadstring(Game:HttpGet('https://raw.githubusercontent.com/1f0yt/community/main/Circle'))()
end)

AnimeBall:CreateButton("Auto Parry V3", function()--Red Circle Auto-Block:
getgenv().visualizer = true
loadstring(game:HttpGet("https://raw.githubusercontent.com/1f0yt/community/main/AutoBlockV2"))()
end)

AnimeBall:CreateButton("Auto Parry V2", function()--Red Circle Auto-Block:
getgenv().visualizer = true
loadstring(Game:HttpGet('https://raw.githubusercontent.com/1f0yt/community/main/RedCircleBlock'))()
end)

AnimeBall:CreateButton("Auto Parry V1", function()--Red Circle Auto-Block:
getgenv().visualizer = true
loadstring(Game:HttpGet('https://raw.githubusercontent.com/1f0yt/community/main/autoparrybest'))()
end)

AnimeBall:CreateButton("Fps Boost", function()local ToDisable = {
 Textures = true,
 VisualEffects = true,
 Parts = true,
 Particles = true,
 Sky = true
}

local ToEnable = {
 FullBright = false
}

local Stuff = {}

for _, v in next, game:GetDescendants() do
 if ToDisable.Parts then
  if v:IsA("Part") or v:IsA("Union") or v:IsA("BasePart") then
   v.Material = Enum.Material.SmoothPlastic
   table.insert(Stuff, 1, v)
  end
 end
 
 if ToDisable.Particles then
  if v:IsA("ParticleEmitter") or v:IsA("Smoke") or v:IsA("Explosion") or v:IsA("Sparkles") or v:IsA("Fire") then
   v.Enabled = false
   table.insert(Stuff, 1, v)
  end
 end
 
 if ToDisable.VisualEffects then
  if v:IsA("BloomEffect") or v:IsA("BlurEffect") or v:IsA("DepthOfFieldEffect") or v:IsA("SunRaysEffect") then
   v.Enabled = false
   table.insert(Stuff, 1, v)
  end
 end
 
 if ToDisable.Textures then
  if v:IsA("Decal") or v:IsA("Texture") then
   v.Texture = ""
   table.insert(Stuff, 1, v)
  end
 end
 
 if ToDisable.Sky then
  if v:IsA("Sky") then
   v.Parent = nil
   table.insert(Stuff, 1, v)
  end
 end
end

game:GetService("TestService"):Message("Effects Disabler Script : Successfully disabled "..#Stuff.." assets / effects. Settings :")

for i, v in next, ToDisable do
 print(tostring(i)..": "..tostring(v))
end

if ToEnable.FullBright then
    local Lighting = game:GetService("Lighting")
    
    Lighting.FogColor = Color3.fromRGB(255, 255, 255)
    Lighting.FogEnd = math.huge
    Lighting.FogStart = math.huge
    Lighting.Ambient = Color3.fromRGB(255, 255, 255)
    Lighting.Brightness = 5
    Lighting.ColorShift_Bottom = Color3.fromRGB(255, 255, 255)
    Lighting.ColorShift_Top = Color3.fromRGB(255, 255, 255)
    Lighting.OutdoorAmbient = Color3.fromRGB(255, 255, 255)
    Lighting.Outlines = true
end
end)

AnimeBall:CreateButton("KeyBoard", function()loadstring(game:HttpGet("https://gist.githubusercontent.com/RedZenXYZ/4d80bfd70ee27000660e4bfa7509c667/raw/da903c570249ab3c0c1a74f3467260972c3d87e6/KeyBoard%2520From%2520Ohio%2520Fr%2520Fr"))()
end)

AnimeBall:CreateButton("FFJ Hub Anime Ball", function()loadstring(game:HttpGet("https://raw.githubusercontent.com/FFJ1/Roblox-Exploits/main/scripts/AnimeBall.lua"))()
end)

AnimeBall:CreateButton("Fly", function()loadstring(game:HttpGet("https://raw.githubusercontent.com/NoobHubV1/NoobHubV1/main/Fly.lua"))()
end)

local AnimeBall = PhantomForcesWindow:NewSection("Player")

AnimeBall:CreateToggle("Inf Jump", function(Value)InfJump = Value
game:GetService("UserInputService").JumpRequest:connect(function()
	if InfJump then
		game.Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid'):ChangeState("Jumping")
 end
end)
end)

AnimeBall:CreateTextbox("Walk Speed", function(Amount)game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Amount
end)

AnimeBall:CreateTextbox("Jump Power", function(Amount)game.Players.LocalPlayer.Character.Humanoid.JumpPower = Amount
end)
