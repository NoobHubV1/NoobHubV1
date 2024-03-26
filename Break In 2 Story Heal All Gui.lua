local Library = loadstring(Game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wizard"))()
local OrionLib = loadstring(game:HttpGet(('https://github.com/NoobHubV1/NoobHubV1/raw/main/OrionLib.lua')))()
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Events = ReplicatedStorage:WaitForChild("Events")
local ScriptLoaded = false

local function UnequipAllTools()for i, v in pairs(LocalPlayer.Character:GetChildren()) do
			if v:IsA("Tool") then
				v.Parent = LocalPlayer.Backpack
			end
		end
end

local function GiveItem(Item)Events:WaitForChild("GiveTool"):FireServer(tostring(Item:gsub(" ", "")))
end

local function EquipItem(Item)LocalPlayer.Backpack:WaitForChild(tostring(Item:gsub(" ", ""))).Parent = LocalPlayer.Character
end

local function HealTheNoobs()Events.HealTheNoobs:FireServer()
end

local function HealAllPlayers()UnequipAllTools()
                               task.wait(.1)
                               GiveItem("Golden Apple")
                               task.wait(.1)
                               EquipItem("Golden Apple")
                               task.wait(.1)
                               HealTheNoobs()
end

local function Notify(Name, Content, Image, Time)OrionLib:MakeNotification({
			                                 Name = Name,
			                                 Content = Content,
			                                 Image = Image,
			                                 Time = Time
		                                 })
end
Notify("Heal All Gui", "Loading Script.", "rbxassetid://4483345998", 3)

                                                 wait(3)

Notify("Heal All Gui", "Loading Script..", "rbxassetid://4483345998", 3)

                                                 wait(3)

Notify("Heal All Gui", "Loading Script...", "rbxassetid://4483345998", 3)

                                                 wait(3)

local PhantomForcesWindow = Library:NewWindow("NoobHubV1 Hub")

local BreakIn2 = PhantomForcesWindow:NewSection("Heal All Gui")

BreakIn2:CreateButton("Heal All", function()HealAllPlayers()
end)

BreakIn2:CreateToggle("Loop Heal All", function(State)getgenv().HealAllLoop = State
while HealAllLoop do
HealAllPlayers()
task.wait(.1)
end
end)

Notify("Heal All Gui", "Loaded Script!", "rbxassetid://4483345998", 10)
ScriptLoaded = true
