local Library = loadstring(Game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wizard"))()
local OrionLib = loadstring(Game:HttpGet('https://raw.githubusercontent.com/NoobHubV1/NoobHubV1/main/OrionLib.lua'))()
local ScriptLoaded = false
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Remotes = ReplicatedStorage:WaitForChild("Remotes")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local Character = LocalPlayer.Character
local Humanoid = Character.Humanoid
local WalkSpeed = Humanoid.WalkSpeed
local JumpPower = Humanoid.JumpPower

local funtion GiveMoney(Amount)Remotes.giveCashEvent:FireServer(Amount)
end

local function HealYourself()Remotes.healPlayerEvent:FireServer(math.huge)
end

local function GiveItem(Item)Remotes.buyItemEvent:FireServer(tostring(Item:gsub(" ", "")), "Cash", 0)
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

local PhantomForcesWindow = Library:NewWindow("NoobHubV1 Hub")

local CruiseStory = PhantomForcesWindow:NewSection("Item")

local MoneyTab = PhantomForcesWindow:NewSection("Money")

local GodMode = PhantomForcesWindow:NewSection("God Mode")

local PlayerTab = PhantomForcesWindow:NewSection("Player")

CruiseStory:CreateDropdown("Item", {"Sand wich","Ice cream","Pizza","Bloxy cola"}, 2, function(Value)SelectedItem = Value
end)

MoneyTab:CreateTextbox("Money Amount", function(Amount)MoneyAmount = Amount
end)

GodMode:CreateButton("Heal Yourself", function()HealYourself()
end)

PlayerTab:CreateTextbox("Walk Speed", function(WalkSpeed)WalkSpeed = WalkSpeed
end)

CruiseStory:CreateButton("Get Item", function()GiveItem(SelectedItem)
end)

MoneyTab:CreateButton("Get Money", function()GiveMoney(MoneyAmount)
end)

GodMode:CreateToggle("God Mode Yourself", function(State)getgenv().HealLoop = State
while HealLoop do
HealYourself()
task.wait()
end
end)

PlayerTab:CreateTextbox("Jump Power", function(JumpPower)JumpPower = JumpPower
end)

Notify("NoobHubV1 Hub", "Loaded Script!", "rbxassetid://4483345998", 10)
ScriptLoaded = true
