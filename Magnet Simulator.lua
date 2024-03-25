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

local function AutoSell(Sell)if Sell == "X2 Coin" then
                             LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-419.514709, 5.21380043, -849.897949) + Vector3.new(1, 1, 0)
                             elseif Sell == "Spawn" then
                             LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(133.744507, 14.6463766, -52.6264954) + Vector3.new(1, 1, 0)
                             end
end

local function InfBadge()--[[  
Made by NoobHubV1
]]
_G.farm = not _G.farm
if _G.farm then 
	print("----------------------------")
	print("Farming Enabled")
	print("----------------------------")
else 
	print("----------------------------")	
	print("Farming Disabled")
	print("----------------------------")
end
local plr = game.Players.LocalPlayer
local char = plr.Character
local rs = game:GetService("RunService").RenderStepped
local sellring = game.Workspace.Rings:FindFirstChild("Sellx2")
local RebirthMagnets = plr.PlayerGui.RebirthShop.Holder.Pages:GetChildren()
local maxmultiplier = 0
local bestmagnet
for i,v in pairs (RebirthMagnets) do 
	if v:FindFirstChild("Stats") then 
		if v.Stats:FindFirstChild("Multiplier") then 
			local text = v.Stats.Multiplier.Text
			local magnet = v.Middle.ItemName.Text
			local start = string.find(text, "%d")
			local textmultiplier = string.sub(string.sub(text,start),0,string.find(string.sub(text,start), "x")-1)
			local multiplier = tonumber(textmultiplier)
			if multiplier >= maxmultiplier then 
				maxmultiplier = multiplier
				bestmagnet = magnet
			end
		end
	end
end

local Tool = game.ReplicatedStorage.Tools:FindFirstChild(bestmagnet)
local grab = game.ReplicatedStorage.Events.MagnetEvents.requestGrab
if not _G.firstlaunch then
	for _,v in pairs(plr.Purchases:GetChildren()) do -- Give Gamepasses (most of them are only visual and dont work, but some might really work)
		v.Value = true
	end
	sellring.Transparency = 1
	_G.firstlaunch = true
	if plr.PlayerGui.GameHUD:FindFirstChild("FullBackpack") then
		plr.PlayerGui.GameHUD.FullBackpack:Destroy()
	end
end
if _G.farm then
	if Tool then
		print()
		print("Found Best Magnet : ",bestmagnet)
		print()
		Tool.Parent = plr.Backpack
	elseif plr.Backpack:FindFirstChild(bestmagnet) then
		print()
		print("The",bestmagnet, "is in your Backpack")
		print()
	elseif plr.Character:FindFirstChild(bestmagnet) then
		print()
		print("You are holding the",bestmagnet)
		print()
	else
		print()
		print("The",bestmagnet, "is missing from the ReplicatedStorage, Try restarting your game")
		print()
	end
end
while _G.farm do
	rs:wait()
	if plr.Backpack:FindFirstChild(bestmagnet) then
		grab:FireServer("65",plr.Backpack[bestmagnet])
	elseif plr.Character:FindFirstChild(bestmagnet) then
		grab:FireServer("65",plr.Character[bestmagnet])
	end
	sellring.CFrame = char.HumanoidRootPart.CFrame + Vector3.new(0,math.random(-1,1),0)
end

char.Humanoid.Died:Connect(function()
	_G.firstlaunch = false
	_G.farm = false
	if plr.Backpack:FindFirstChild(bestmagnet) then
		plr.Backpack:FindFirstChild(bestmagnet).Parent = game.ReplicatedStorage.Tools
	elseif plr.Character:FindFirstChild(bestmagnet) then
		plr.Character:FindFirstChild(bestmagnet).Parent = game.ReplicatedStorage.Tools
	end
end)

char.Humanoid.StateChanged:Connect(function(oldState, newState)
	if newState == Enum.HumanoidStateType.Dead then
		_G.firstlaunch = false
		_G.farm = false
		if plr.Backpack:FindFirstChild(bestmagnet) then
			plr.Backpack:FindFirstChild(bestmagnet).Parent = game.ReplicatedStorage.Tools
		elseif plr.Character:FindFirstChild(bestmagnet) then
			plr.Character:FindFirstChild(bestmagnet).Parent = game.ReplicatedStorage.Tools
		end
	end
end)
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
AutoSell(Area)
task.wait()
end
end)

MagnetSimulator:CreateDropdown("Auto Sell Area", {"Spawn","X2 Coin"}, 2, function(Value)Area = Value
end)

MagnetSimulator:CreateDropdown("Rebirth Amount", {"1","5","25","50","100","250","500","1000","2500","5000","10000","25000","50000","75000","100000","125000","200000"}, 2, function(Value)RebirthAmount = Value
end)

MagnetSimulator:CreateButton("Disabled Notifications", function()GameHUD.FullBackpack:Destroy()
end)

MagnetSimulator:CreateButton("Inf Badge", function()InfBadge()
end

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

Notify("NoobHubV1 Hub", "Loaded Script!", "rbxassetid://4483345998", 5)
