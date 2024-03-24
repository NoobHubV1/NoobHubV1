local Library = loadstring(Game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wizard"))()
local OrionLib = loadstring(game:HttpGet(('https://github.com/NoobHubV1/NoobHubV1/raw/main/OrionLib.lua')))()
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local MagnetEvents = ReplicatedStorage:WaitForChild("Events"):WaitForChild("MagnetEvents")
local RebirthEvents = ReplicatedStorage:WaitForChild("RebirthEvents")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local GameHUD = LocalPlayer.PlayerGui.GameHUD

local function Coin()MagnetEvents.requestGrab:FireServer("6080000000", ReplicatedStorage.Tools["Lucky Long Tri-Magnet"])
end

local function Clover()MagnetEvents.requestGrab:FireServer("Clover1", ReplicatedStorage.Tools["Lucky Long Tri-Magnet"])
end

local function Rebirth(Amount)RebirthEvents.requestRebirth:InvokeServer(Amount)
end

local function Notify(Name, Content, Image, Time)OrionLib:MakeNotification({
                                                         Name = Name,
                                                         Content = Content,
                                                         Image = Image,
                                                         Time = Time
                                                 })
end
Notify("NoobHubV1 Hub", "Loading Script.", "rbxassetid://4483345998", 3)

                                                 wait(3)

Notify("NoobHubV1 Hub", "Loading Script..", "rbxassetid://4483345998", 3)

                                                 wait(3)

Notify("NoobHubV1 Hub", "Loading Script...", "rbxassetid://4483345998", 3)

                                                 wait(3)

Notify("NoobHubV1 Hub", "Loaded Script!", "rbxassetid://4483345998", 3)

                                                 wait(3)

local PhantomForcesWindow = Library:NewWindow("NoobHubV1 Hub")

local MagnetSimulator = PhantomForcesWindow:NewSection("Main")

MagnetSimulator:CreateToggle("Auto Coin", function(State)getgenv().CoinLoop = State
while CoinLoop do
Coin()
task.wait()
end
end)

MagnetSimulator:CreateToggle("Auto Clover", function(State)getgenv().CloverLoop = State
while CloverLoop do
Clover()
task.wait()
end
end)

MagnetSimulator:CreateToggle("Auto Rebirth", function(State)getgenv().RebirthLoop = State
while RebirthLoop do
Rebirth(RebirthAmount)
task.wait()
end
end)

MagnetSimulator:CreateToggle("Auto Sell", function(State)getgenv().SellLoop = State
while SellLoop do
LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(133.744507, 14.6463766, -52.6264954) + Vector3.new(1, 1, 0)
task.wait()
end
end)

MagnetSimulator:CreateToggle("Auto Sell X2 Coin", function(State)getgenv().SellX2Loop = State
while SellX2Loop do
LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-419.514709, 5.21380043, -849.897949) + Vector3.new(1, 1, 0)
task.wait()
end
end)

MagnetSimulator:CreateDropdown("Rebirth Amount", {"1","5","25","50","100","250","500","1000","2500","5000","10000","25000","50000","75000","100000","125000","200000"}, 2, function(Value)RebirthAmount = Value
end)

MagnetSimulator:CreateButton("Disabled Notifications", function()GameHUD.FullBackpack:Destroy()
end)

local MagnetSimulator = PhantomForcesWindow:NewSection("Player")

MagnetSimulator:CreateTextbox("Walk Speed Amount", function(Amount)WalkSpeed = Amount
end)

MagnetSimulator:CreateToggle("Walk Speed", function(State)getgenv().WalkSpeedLoop = State
while WalkSpeedLoop do
LocalPlayer.Character.Humanoid.WalkSpeed = WalkSpeed
task.wait()
end
end)

MagnetSimulator:CreateTextbox("Jump Power Amount", function(Amount)JumpPower = Amount
end)

MagnetSimulator:CreateToggle("Jump Power", function(State)getgenv().JumpPowerLoop = State
while JumpPowerLoop do
LocalPlayer.Character.Humanoid.JumpPower = JumpPower
task.wait()
end
end)
