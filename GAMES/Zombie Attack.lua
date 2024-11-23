local Library = loadstring(Game:HttpGet('https://raw.githubusercontent.com/NoobHubV1/NoobHubV1/main/Wizard%20Lib.lua'))()

local function AutoShoot(State)
        local groundDistance = 8
local Player = game:GetService("Players").LocalPlayer
local function getNearest()
local nearest, dist = nil, 99999
for _,v in pairs(game.Workspace.BossFolder:GetChildren()) do
if(v:FindFirstChild("Head")~=nil)then
local m =(Player.Character.Head.Position-v.Head.Position).magnitude
if(m<dist)then
dist = m
nearest = v
end
end
end
for _,v in pairs(game.Workspace.enemies:GetChildren()) do
if(v:FindFirstChild("Head")~=nil)then
local m =(Player.Character.Head.Position-v.Head.Position).magnitude
if(m<dist)then
dist = m
nearest = v
end
end
end
return nearest
end
_G.shoot2 = State
_G.globalTarget = nil
game:GetService("RunService").RenderStepped:Connect(function()
if(_G.shoot2==true)then
local target = getNearest()
if(target~=nil)then
_G.globalTarget = target
end
end
end)
while _G.shoot2 and wait() do
if(_G.shoot2==true and _G.globalTarget~=nil and _G.globalTarget:FindFirstChild("Head") and Player.Character:FindFirstChildOfClass("Tool"))then
local target = _G.globalTarget
for i = 1,1 do
game.ReplicatedStorage.Gun:FireServer({["Normal"] = Vector3.new(0, 0, 0), ["Direction"] = target.Head.Position, ["Name"] = Player.Character:FindFirstChildOfClass("Tool").Name, ["Hit"] = target.Head, ["Origin"] = target.Head.Position, ["Pos"] = target.Head.Position,})
end
end
end
end

local function AutoTeleport(State)
        local Player = game:GetService("Players").LocalPlayer
local function getNearest()
local nearest, dist = nil, 99999
for _,v in pairs(game.Workspace.BossFolder:GetChildren()) do
if(v:FindFirstChild("Head")~=nil)then
local m =(Player.Character.Head.Position-v.Head.Position).magnitude
if(m<dist)then
dist = m
nearest = v
end
end
end
for _,v in pairs(game.Workspace.enemies:GetChildren()) do
if(v:FindFirstChild("Head")~=nil)then
local m =(Player.Character.Head.Position-v.Head.Position).magnitude
if(m<dist)then
dist = m
nearest = v
end
end
end
return nearest
end
_G.Teleport2 = State
_G.globalTarget = nil
game:GetService("RunService").RenderStepped:Connect(function()
if(_G.Teleport2==true)then
local target = getNearest()
if(target~=nil)then
if game.Players.LocalPlayer.Character.Humanoid.Sit then
        game.Players.LocalPlayer.Character.Humanoid.Sit = false
end
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = target.HumanoidRootPart.CFrame * CFrame.new(0, 18, 13)
_G.globalTarget = target
end
end
end)
while _G.Teleport2 and wait() do
        Player.Character.HumanoidRootPart.Velocity = Vector3.new(0, 0, 0)
        Player.Character.Head.Velocity = Vector3.new(0, 0, 0)
end
end

local function AutoCamera(State)
        local Player = game:GetService("Players").LocalPlayer
local function getNearest()
local nearest, dist = nil, 99999
for _,v in pairs(game.Workspace.BossFolder:GetChildren()) do
if(v:FindFirstChild("Head")~=nil)then
local m =(Player.Character.Head.Position-v.Head.Position).magnitude
if(m<dist)then
dist = m
nearest = v
end
end
end
for _,v in pairs(game.Workspace.enemies:GetChildren()) do
if(v:FindFirstChild("Head")~=nil)then
local m =(Player.Character.Head.Position-v.Head.Position).magnitude
if(m<dist)then
dist = m
nearest = v
end
end
end
return nearest
end
_G.Camera2 = State
_G.globalTarget = nil
game:GetService("RunService").RenderStepped:Connect(function()
if(_G.Camera2==true)then
local target = getNearest()
if(target~=nil)then
workspace.CurrentCamera.CFrame = CFrame.new(workspace.CurrentCamera.CFrame.Position, target.Torso.Position)
_G.globalTarget = target
end
end
end)
end

local function AutoView(State)
        local Player = game:GetService("Players").LocalPlayer
local function getNearest()
local nearest, dist = nil, 99999
for _,v in pairs(game.Workspace.BossFolder:GetChildren()) do
if(v:FindFirstChild("Head")~=nil)then
local m =(Player.Character.Head.Position-v.Head.Position).magnitude
if(m<dist)then
dist = m
nearest = v
end
end
end
for _,v in pairs(game.Workspace.enemies:GetChildren()) do
if(v:FindFirstChild("Head")~=nil)then
local m =(Player.Character.Head.Position-v.Head.Position).magnitude
if(m<dist)then
dist = m
nearest = v
end
end
end
return nearest
end
_G.view2 = State
_G.globalTarget = nil
game:GetService("RunService").RenderStepped:Connect(function()
if(_G.view2==true)then
local target = getNearest()
if(target~=nil)then
workspace.CurrentCamera.CameraSubject = target.Humanoid
_G.globalTarget = target
end
end
end)
end

local Window = Library:NewWindow("NoobHubV1 Hub")

local Section = Window:NewSection("Main")

local Section2 = Window:NewSection("Player")

local Section3 = Window:NewSection("Destroy Script")

Section:CreateToggle("Auto Farm", function(Value)AutoShoot(Value) end)

Section:CreateToggle("Auto Teleport", function(Value)AutoTeleport(Value) end)

Section:CreateToggle("Auto Camera", function(Value)AutoCamera(Value) end)

Section:CreateToggle("Auto View", function(v)if v then AutoView(true) elseif not v then AutoView(false) workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character end end)

Section2:CreateTextbox("Walk Speed", function(number)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = number 
end)

Section2:CreateTextbox("Jump Power", function(number)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = number
end)

Section3:CreateButton("Destroy", function()
        Library:Destroy()
        AutoShoot(false)
        AutoTeleport(false)
        AutoCamera(false)
        AutoView(false)
end)
