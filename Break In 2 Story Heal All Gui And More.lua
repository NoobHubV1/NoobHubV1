local Library = loadstring(Game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wizard"))()
local OrionLib = loadstring(Game:HttpGet(("https://github.com/NoobHubV1/NoobHubV1/raw/main/OrionLib.lua")))()
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Events = ReplicatedStorage:WaitForChild("Events")
local HealTheNoobs = Events.HealTheNoobs

local ItemsTable = {"Crowbar 1","Crowbar 2","Crowbar 3","Bat","Pitchfork","Hammer","Wrench","Broom","Med Kit","Key","Gold Key","Louise","Lollipop","Chips","Golden Apple","Pizza","Gold Pizza","Rainbow Pizza","Rainbow Pizza Box","Book","Phone","Cookie","Apple","Bloxy Cola","Expired Bloxy Cola","Bottle","Ladder","Battery"}

local function UnequipAllTools()for i, v in pairs(LocalPlayer.Character:GetChildren()) do
			if v:IsA("Tool") then
				v.Parent = LocalPlayer.Backpack
			end
		end
end

local function GiveItem(Item)Events:WaitForChild("GiveTool"):FireServer(tostring(Item:gsub(" ", "")))
end

local function EquipItem(Item)if Item == "Golden Apple" then
		              LocalPlayer.Backpack:WaitForChild("GoldenApple").Parent = LocalPlayer.Character
		              task.wait(.1)
		              HealTheNoobs.FireServer(LocalPlayer)
	                      else
		              LocalPlayer.Backpack:WaitForChild(tostring(Item:gsub(" ", ""))).Parent = LocalPlayer.Character
end

local function RemoveItem(Item)LocalPlayer.Backpack:WaitForChild(tostring(Item:gsub(" ", ""))):Destroy()
end

local function UnequipItem(Item)LocalPlayer.Character:WaitForChild(tostring(Item:gsub(" ", ""))).Parent = LocalPlayer.Backpack
end

local function HealAllPlayers()UnequipAllTools()
                               task.wait(.1)
                               GiveItem("Golden Apple")
                               task.wait(.1)
                               EquipItem("Golden Apple")
                               task.wait(.1)
                               HealTheNoobs:FireServer(LocalPlayer)
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

local BreakIn2 = PhantomForcesWindow:NewSection("Remove Item")

BreakIn2:CreateDropdown("Remove Item", ItemsTable, 2, function(Value)SelectedItemRemove = Value
end)

BreakIn2:CreateButton("Remove", function()RemoveItem(SelectedItemRemove)
end)

local BreakIn2 = PhantomForcesWindow:NewSection("Equip Item")

BreakIn2:CreateDropdown("Equip Item", ItemsTable, 2, function(Value)SelectedItemEquip = Value
end

BreakIn2:CreateButton("Equip", function()EquipItem(SelectedItemEquip)
end

local BreakIn2 = PhantomForcesWindow:NewSection("Unequip Item")

BreakIn2:CreateDropdown("Unequip Item", ItemsTable, 2, function(Value)SelectedItemUnequip = Value
end

BreakIn2:CreateButton("Unequip", function()UnequipItem(SelectedItemUnequip)
end

Notify("Heal All Gui", "Loaded Script!", "rbxassetid://4483345998", 5)
