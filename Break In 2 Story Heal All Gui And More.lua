local Library = loadstring(game:HttpGetAsync(("https://github.com/bloodball/-back-ups-for-libs/raw/main/wizard")))()
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

local function GiveItem(Item)if Item == "Armor" then
		             Events:WaitForChild("Vending"):FireServer(3, "Armor2", "Armor", tostring(LocalPlayer), 1)
	                     elseif Item == "Crowbar 1" or Item == "Crowbar 2" or Item == "Crowbar 3" or Item == "Bat" or Item == "Pitchfork" or Item == "Hammer" or Item == "Wrench" or Item == "Broom" then
		             Events:WaitForChild("Vending"):FireServer(3, tostring(Item:gsub(" ", "")), "Weapons", LocalPlayer.Name, 1)
	                     else
		             Events:WaitForChild("GiveTool"):FireServer(tostring(Item:gsub(" ", "")))
	                     end
end

local function UnequipItem(Item)LocalPlayer.Character:WaitForChild(tostring(Item:gsub(" ", ""))).Parent = LocalPlayer.Backpack
end

local function RemoveItem(Item)LocalPlayer.Backpack:WaitForChild(tostring(Item:gsub(" ", ""))):Destroy()
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

local function HealYourself()
	GiveItem("Pizza")
        Events.Energy:FireServer(25, "Pizza")
end

local function Heal(Heal)if Heal == "Heal All Players" then
		                 HealAllPlayers()
	                         elseif Heal == "Heal Yourself" then
		                 HealYourself()
	                         end
end

local function Notify(Name, Content, Image, Time)game:GetService("StarterGui"):SetCore("SendNotification",{
                Title = Name;
                Text = Content;
		Icon = Image;
                Duration = Time;
            })
end
Notify("Heal All Gui And More", "Loading Script.", "rbxassetid://4483345998", 3)

                                                 wait(3)

Notify("Heal All Gui And More", "Loading Script..", "rbxassetid://4483345998", 3)

                                                 wait(3)

Notify("Heal All Gui And More", "Loading Script...", "rbxassetid://4483345998", 3)

                                                 wait(3)

local PhantomForcesWindow = Library:NewWindow("NoobHubV1 Hub")

local BreakIn2 = PhantomForcesWindow:NewSection("Item Gui")

BreakIn2:CreateDropdown("Item", {"Crowbar 1","Crowbar 2","Crowbar 3","Bat","Pitchfork","Hammer","Wrench","Broom","Armor","Med Kit","Key","Gold Key","Louise","Lollipop","Chips","Golden Apple","Pizza","Gold Pizza","Rainbow Pizza","Rainbow Pizza Box","Book","Phone","Cookie","Apple","Bloxy Cola","Expired Bloxy Cola","Bottle","Ladder","Battery"}, 2, function(Value)SelectedItem = Value
end)

BreakIn2:CreateButton("Get Item", function()GiveItem(SelectedItem)
end)

local BreakIn2 = PhantomForcesWindow:NewSection("Selected Heal")

BreakIn2:CreateDropdown("Selected Heal", {"Heal All Players","Heal Yourself"}, 2, function(Value)SelectedHeal = Value
end)

BreakIn2:CreateButton("Heal", function()Heal(SelectedHeal)
end)

BreakIn2:CreateToggle("Loop Heal", function(State)getgenv().HealLoop = State
while HealLoop do
Heal(SelectedHeal)
task.wait(WaitTime)
end
end)

BreakIn2:CreateTextbox("Wait Time Loop Heal", function(Amount)WaitTime = Amount
end)

local BreakIn2 = PhantomForcesWindow:NewSection("Equip Item")

BreakIn2:CreateDropdown("Equip Item", {"Crowbar 1","Crowbar 2","Crowbar 3","Bat","Pitchfork","Hammer","Wrench","Broom","Med Kit","Key","Gold Key","Louise","Lollipop","Chips","Golden Apple","Pizza","Gold Pizza","Rainbow Pizza","Rainbow Pizza Box","Book","Phone","Cookie","Apple","Bloxy Cola","Expired Bloxy Cola","Bottle","Ladder","Battery"}, 2, function(Value)EquipItem(Value)
end)

local BreakIn2 = PhantomForcesWindow:NewSection("Unequip Item")

BreakIn2:CreateDropdown("Unequip Item", {"Crowbar 1","Crowbar 2","Crowbar 3","Bat","Pitchfork","Hammer","Wrench","Broom","Med Kit","Key","Gold Key","Louise","Lollipop","Chips","Golden Apple","Pizza","Gold Pizza","Rainbow Pizza","Rainbow Pizza Box","Book","Phone","Cookie","Apple","Bloxy Cola","Expired Bloxy Cola","Bottle","Ladder","Battery"}, 2, function(Value)UnequipItem(Value)
end)

local BreakIn2 = PhantomForcesWindow:NewSection("Remove Item")

BreakIn2:CreateDropdown("Remove Item", {"Crowbar 1","Crowbar 2","Crowbar 3","Bat","Pitchfork","Hammer","Wrench","Broom","Med Kit","Key","Gold Key","Louise","Lollipop","Chips","Golden Apple","Pizza","Gold Pizza","Rainbow Pizza","Rainbow Pizza Box","Book","Phone","Cookie","Apple","Bloxy Cola","Expired Bloxy Cola","Bottle","Ladder","Battery"}, 2, function(Value)RemoveItem(Value)
end)

Notify("Heal All Gui And More", "Loaded Script!", "rbxassetid://4483345998", 10)
ScriptLoaded = true
