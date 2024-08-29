--[[

// Made for this game: https://www.roblox.com/games/5409315202
// This uses chat commands e.g ".control NoobHubV1"
// Most things I couldn't be asked to do 

// Made fully by NoobHubV1

// Chat commands still work

]]

print([[

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
///////////////////////////////////////////////////Gerbils////////////////////////////////////////////////////////////
\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

// Commands: -- (Chat commands still work!)
	.clear | Clears every item
	.fling (plr,all,others,random) | Fling a player
	.rocket (plr,all,others,random) | Make a player goto the moon
	.bring (plr,all,others,random) | Bring a player
	.kill (plr,all,others,random) | Kill a player
	.spin (plr,all,others,random) | Make a player spin (Cannot undo if player dead)
	.control (plr,all,others,random) | Control a player (May have to rejoin to stop)
	.money | Pickup all the droped cash
	.speed (plr,all,others,random) | Make a player speedy
	.jump (plr,all,others,random) | Change a player's jump hight
	.freeze (plr,all,others,random) | Freeze a player (Can do ".unfreeze")
	.tpvan | Bring the delivery truck to you
	.netclaim | Claim the net back if there is a abuser
	.fix | Refresh the server
	.jail (plr,all,others,random) | Lock a player until they reset
	.loopkill (plr,all,others,random) | Player Get Loopkill (if Player ChangeServer or Leave Map) (Can do ".unloopkill")
	.void (plr,all,others,random) | Player Tp The Void
	.destroy (plr,all,others,random) | Player Destroy (if Player Rejoin)
	.sit (plr,all,others,random) | Sit a Player
	.noclip (plr,all,others,random) | Noclip a Player
	.clip (plr,all,others,random) | Unnoclip a Player
\\

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\


]])

-- Gui to Lua
-- Version: 3.2

-- Instances:

local main = Instance.new("ScreenGui")
local Open = Instance.new("TextButton")
local Close = Instance.new("TextButton")
local Main = Instance.new("Frame")
local credits = Instance.new("TextLabel")
local queue = Instance.new("TextLabel")
local Frame = Instance.new("Frame")
local top = Instance.new("TextLabel")
local UIGradient = Instance.new("UIGradient")
local ScrollingFrame = Instance.new("ScrollingFrame")
local Bring = Instance.new("TextButton")
local UICorner = Instance.new("UICorner")
local Control = Instance.new("TextButton")
local UICorner_2 = Instance.new("UICorner")
local Fling = Instance.new("TextButton")
local UICorner_3 = Instance.new("UICorner")
local Unfreeze = Instance.new("TextButton")
local UICorner_4 = Instance.new("UICorner")
local Rocket = Instance.new("TextButton")
local UICorner_5 = Instance.new("UICorner")
local Spin = Instance.new("TextButton")
local UICorner_6 = Instance.new("UICorner")
local freeze = Instance.new("TextButton")
local UICorner_7 = Instance.new("UICorner")
local Kill = Instance.new("TextButton")
local UICorner_8 = Instance.new("UICorner")
local Speed = Instance.new("TextButton")
local UICorner_9 = Instance.new("UICorner")
local Jump = Instance.new("TextButton")
local UICorner_10 = Instance.new("UICorner")
local Jail = Instance.new("TextButton")
local UICorner_11 = Instance.new("UICorner")
local UIGridLayout = Instance.new("UIGridLayout")
local Fix = Instance.new("TextButton")
local UICorner_12 = Instance.new("UICorner")
local NetClaim = Instance.new("TextButton")
local UICorner_13 = Instance.new("UICorner")
local Tpvan = Instance.new("TextButton")
local UICorner_14 = Instance.new("UICorner")
local Money = Instance.new("TextButton")
local UICorner_15 = Instance.new("UICorner")
local NoCLip = Instance.new("TextButton")
local UICorner_16 = Instance.new("UICorner")
local CLip = Instance.new("TextButton")
local UICorner_17 = Instance.new("UICorner")
local Clear = Instance.new("TextButton")
local UICorner_18 = Instance.new("UICorner")
local Orbit = Instance.new("TextButton")
local UICorner_19 = Instance.new("UICorner")
local Goto = Instance.new("TextButton")
local UICorner_20 = Instance.new("UICorner")
local Loopkill = Instance.new("TextButton")
local UICorner_21 = Instance.new("UICorner")
local Unloopkill = Instance.new("TextButton")
local UICorner_22 = Instance.new("UICorner")
local Void = Instance.new("TextButton")
local UICorner_23 = Instance.new("UICorner")
local Destroy = Instance.new("TextButton")
local UICorner_24 = Instance.new("UICorner")
local Sit = Instance.new("TextButton")
local UICorner_25 = Instance.new("UICorner")
local target = Instance.new("TextBox")
local UICorner_26 = Instance.new("UICorner")
local UIGradient_2 = Instance.new("UIGradient")
local Refresh = Instance.new("TextButton")
local UICorner_27 = Instance.new("UICorner")
local search = Instance.new("TextBox")
local UICorner_28 = Instance.new("UICorner")

--Properties:

main.Name = "main"
main.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
main.ResetOnSpawn = false

Open.Name = "Open"
Open.Parent = main
Open.BackgroundColor3 = Color3.fromRGB(172, 172, 172)
Open.BackgroundTransparency = 0.500
Open.BorderSizePixel = 0
Open.Position = UDim2.new(0.0351677425, 0, 0.00577557739, 0)
Open.Size = UDim2.new(0, 131, 0, 40)
Open.ZIndex = 3
Open.Font = Enum.Font.SourceSansLight
Open.Text = "Open"
Open.TextColor3 = Color3.fromRGB(255, 255, 255)
Open.TextSize = 23.000
Open.MouseButton1Click:Connect(function()
Open.Visible = false
Close.Visible = true
Main.Visible = true
end)

Close.Name = "Close"
Close.Parent = main
Close.BackgroundColor3 = Color3.fromRGB(172, 172, 172)
Close.BackgroundTransparency = 0.500
Close.BorderSizePixel = 0
Close.Position = UDim2.new(0.0351677425, 0, 0.00577557739, 0)
Close.Size = UDim2.new(0, 131, 0, 40)
Close.ZIndex = 3
Close.Font = Enum.Font.SourceSansLight
Close.Text = "Close"
Close.TextColor3 = Color3.fromRGB(255, 255, 255)
Close.TextSize = 23.000
Close.MouseButton1Click:Connect(function()
Open.Visible = true
Close.Visible = false
Main.Visible = false
end)

Main.Name = "Main"
Main.Parent = main
Main.BackgroundColor3 = Color3.fromRGB(47, 46, 25)
Main.BackgroundTransparency = 0.300
Main.BorderColor3 = Color3.fromRGB(29, 29, 29)
Main.BorderSizePixel = 6
Main.Position = UDim2.new(0.662217021, 0, 0.189768493, 0)
Main.Size = UDim2.new(0, 292, 0, 432)
Main.ZIndex = 0
Main.Visible = false

credits.Name = "credits"
credits.Parent = Main
credits.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
credits.BackgroundTransparency = 1.000
credits.Position = UDim2.new(0.00341296918, 0, 0.100263849, 0)
credits.Size = UDim2.new(0, 291, 0, 31)
credits.ZIndex = 5
credits.Font = Enum.Font.SourceSansLight
credits.Text = "Made by NoobHubV1. Harked remade?"
credits.TextColor3 = Color3.fromRGB(255, 255, 255)
credits.TextSize = 17.000
credits.TextWrapped = true

queue.Name = "queue"
queue.Parent = Main
queue.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
queue.BackgroundTransparency = 1.000
queue.Position = UDim2.new(0.45778206, 0, 0.894135416, 0)
queue.Size = UDim2.new(0, 141, 0, 34)
queue.ZIndex = 5
queue.Font = Enum.Font.SourceSans
queue.Text = "Remote Queue: 0"
queue.TextColor3 = Color3.fromRGB(255, 0, 4)
queue.TextSize = 20.000
queue.TextWrapped = true

Frame.Parent = Main
Frame.BackgroundColor3 = Color3.fromRGB(255, 173, 32)
Frame.BackgroundTransparency = 0.700
Frame.BorderColor3 = Color3.fromRGB(27, 42, 53)
Frame.BorderSizePixel = 0
Frame.Size = UDim2.new(0, 293, 0, 38)

top.Name = "top"
top.Parent = Frame
top.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
top.BackgroundTransparency = 1.000
top.Position = UDim2.new(0.154639125, 0, 0.312280744, 0)
top.Size = UDim2.new(0, 201, 0, 14)
top.ZIndex = 5
top.Font = Enum.Font.SourceSansLight
top.Text = "Cooked"
top.TextColor3 = Color3.fromRGB(255, 255, 255)
top.TextSize = 36.000
top.TextWrapped = true

UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(122, 122, 122))}
UIGradient.Rotation = 90
UIGradient.Parent = Frame

ScrollingFrame.Parent = Main
ScrollingFrame.Active = true
ScrollingFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ScrollingFrame.BackgroundTransparency = 1.000
ScrollingFrame.BorderSizePixel = 0
ScrollingFrame.Position = UDim2.new(0.00359461666, 0, 0.181261286, 0)
ScrollingFrame.Size = UDim2.new(0, 291, 0, 224)
ScrollingFrame.ZIndex = 3
ScrollingFrame.BottomImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
ScrollingFrame.ScrollBarThickness = 6
ScrollingFrame.TopImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"

Bring.Name = "Bring"
Bring.Parent = ScrollingFrame
Bring.BackgroundColor3 = Color3.fromRGB(172, 172, 172)
Bring.BackgroundTransparency = 0.500
Bring.BorderSizePixel = 0
Bring.Position = UDim2.new(0.0351677425, 0, 0.00577557739, 0)
Bring.Size = UDim2.new(0, 131, 0, 40)
Bring.ZIndex = 3
Bring.Font = Enum.Font.SourceSansLight
Bring.Text = "Bring"
Bring.TextColor3 = Color3.fromRGB(255, 255, 255)
Bring.TextSize = 23.000

UICorner.CornerRadius = UDim.new(0, 4)
UICorner.Parent = Bring

Control.Name = "Control"
Control.Parent = ScrollingFrame
Control.BackgroundColor3 = Color3.fromRGB(172, 172, 172)
Control.BackgroundTransparency = 0.500
Control.BorderSizePixel = 0
Control.Position = UDim2.new(0.0351677425, 0, 0.190713778, 0)
Control.Size = UDim2.new(0, 131, 0, 40)
Control.ZIndex = 3
Control.Font = Enum.Font.SourceSansLight
Control.Text = "Control"
Control.TextColor3 = Color3.fromRGB(255, 255, 255)
Control.TextSize = 23.000

UICorner_2.CornerRadius = UDim.new(0, 4)
UICorner_2.Parent = Control

Fling.Name = "Fling"
Fling.Parent = ScrollingFrame
Fling.BackgroundColor3 = Color3.fromRGB(172, 172, 172)
Fling.BackgroundTransparency = 0.500
Fling.BorderSizePixel = 0
Fling.Position = UDim2.new(0.0351677425, 0, 0.130001664, 0)
Fling.Size = UDim2.new(0, 131, 0, 40)
Fling.ZIndex = 3
Fling.Font = Enum.Font.SourceSansLight
Fling.Text = "Fling"
Fling.TextColor3 = Color3.fromRGB(255, 255, 255)
Fling.TextSize = 23.000

UICorner_3.CornerRadius = UDim.new(0, 4)
UICorner_3.Parent = Fling

Unfreeze.Name = "Unfreeze"
Unfreeze.Parent = ScrollingFrame
Unfreeze.BackgroundColor3 = Color3.fromRGB(172, 172, 172)
Unfreeze.BackgroundTransparency = 0.500
Unfreeze.BorderSizePixel = 0
Unfreeze.Position = UDim2.new(0.0454770215, 0, 0.107878998, 0)
Unfreeze.Size = UDim2.new(0, 131, 0, 40)
Unfreeze.ZIndex = 3
Unfreeze.Font = Enum.Font.SourceSansLight
Unfreeze.Text = "UnFreeze"
Unfreeze.TextColor3 = Color3.fromRGB(255, 255, 255)
Unfreeze.TextSize = 23.000

UICorner_4.CornerRadius = UDim.new(0, 4)
UICorner_4.Parent = Unfreeze

Rocket.Name = "Rocket"
Rocket.Parent = ScrollingFrame
Rocket.BackgroundColor3 = Color3.fromRGB(172, 172, 172)
Rocket.BackgroundTransparency = 0.500
Rocket.BorderSizePixel = 0
Rocket.Position = UDim2.new(0.511755526, 0, 0.190713778, 0)
Rocket.Size = UDim2.new(0, 131, 0, 40)
Rocket.ZIndex = 3
Rocket.Font = Enum.Font.SourceSansLight
Rocket.Text = "Rocket"
Rocket.TextColor3 = Color3.fromRGB(255, 255, 255)
Rocket.TextSize = 23.000

UICorner_5.CornerRadius = UDim.new(0, 4)
UICorner_5.Parent = Rocket

Spin.Name = "Spin"
Spin.Parent = ScrollingFrame
Spin.BackgroundColor3 = Color3.fromRGB(172, 172, 172)
Spin.BackgroundTransparency = 0.500
Spin.BorderSizePixel = 0
Spin.Position = UDim2.new(0.511755526, 0, 0.12868242, 0)
Spin.Size = UDim2.new(0, 131, 0, 40)
Spin.ZIndex = 3
Spin.Font = Enum.Font.SourceSansLight
Spin.Text = "Spin"
Spin.TextColor3 = Color3.fromRGB(255, 255, 255)
Spin.TextSize = 23.000

UICorner_6.CornerRadius = UDim.new(0, 4)
UICorner_6.Parent = Spin

freeze.Name = "freeze"
freeze.Parent = ScrollingFrame
freeze.BackgroundColor3 = Color3.fromRGB(172, 172, 172)
freeze.BackgroundTransparency = 0.500
freeze.BorderSizePixel = 0
freeze.Position = UDim2.new(0.511755526, 0, 0.0683011562, 0)
freeze.Size = UDim2.new(0, 131, 0, 40)
freeze.ZIndex = 3
freeze.Font = Enum.Font.SourceSansLight
freeze.Text = "Freeze"
freeze.TextColor3 = Color3.fromRGB(255, 255, 255)
freeze.TextSize = 23.000

UICorner_7.CornerRadius = UDim.new(0, 4)
UICorner_7.Parent = freeze

Kill.Name = "Kill"
Kill.Parent = ScrollingFrame
Kill.BackgroundColor3 = Color3.fromRGB(172, 172, 172)
Kill.BackgroundTransparency = 0.500
Kill.BorderSizePixel = 0
Kill.Position = UDim2.new(0.511755526, 0, 0.00577557739, 0)
Kill.Size = UDim2.new(0, 131, 0, 40)
Kill.ZIndex = 3
Kill.Font = Enum.Font.SourceSansLight
Kill.Text = "Kill"
Kill.TextColor3 = Color3.fromRGB(255, 255, 255)
Kill.TextSize = 23.000

UICorner_8.CornerRadius = UDim.new(0, 4)
UICorner_8.Parent = Kill

Speed.Name = "Speed"
Speed.Parent = ScrollingFrame
Speed.BackgroundColor3 = Color3.fromRGB(172, 172, 172)
Speed.BackgroundTransparency = 0.500
Speed.BorderSizePixel = 0
Speed.Position = UDim2.new(0.511755526, 0, 0.251920134, 0)
Speed.Size = UDim2.new(0, 131, 0, 40)
Speed.ZIndex = 3
Speed.Font = Enum.Font.SourceSansLight
Speed.Text = "Speed"
Speed.TextColor3 = Color3.fromRGB(255, 255, 255)
Speed.TextSize = 23.000

UICorner_9.CornerRadius = UDim.new(0, 4)
UICorner_9.Parent = Speed

Jump.Name = "Jump"
Jump.Parent = ScrollingFrame
Jump.BackgroundColor3 = Color3.fromRGB(172, 172, 172)
Jump.BackgroundTransparency = 0.500
Jump.BorderSizePixel = 0
Jump.Position = UDim2.new(0.0340922885, 0, 0.251920134, 0)
Jump.Size = UDim2.new(0, 131, 0, 40)
Jump.ZIndex = 3
Jump.Font = Enum.Font.SourceSansLight
Jump.Text = "Jump"
Jump.TextColor3 = Color3.fromRGB(255, 255, 255)
Jump.TextSize = 23.000

UICorner_10.CornerRadius = UDim.new(0, 4)
UICorner_10.Parent = Jump

Jail.Name = "Jail"
Jail.Parent = ScrollingFrame
Jail.BackgroundColor3 = Color3.fromRGB(172, 172, 172)
Jail.BackgroundTransparency = 0.500
Jail.BorderSizePixel = 0
Jail.Position = UDim2.new(0.511755526, 0, 0.313126415, 0)
Jail.Size = UDim2.new(0, 131, 0, 40)
Jail.ZIndex = 3
Jail.Font = Enum.Font.SourceSansLight
Jail.Text = "Jail"
Jail.TextColor3 = Color3.fromRGB(255, 255, 255)
Jail.TextSize = 23.000

UICorner_11.CornerRadius = UDim.new(0, 4)
UICorner_11.Parent = Jail

UIGridLayout.Parent = ScrollingFrame
UIGridLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIGridLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIGridLayout.CellPadding = UDim2.new(0, 8, 0, 5)
UIGridLayout.CellSize = UDim2.new(0, 137, 0, 40)

Fix.Name = "Fix"
Fix.Parent = ScrollingFrame
Fix.BackgroundColor3 = Color3.fromRGB(172, 172, 172)
Fix.BackgroundTransparency = 0.500
Fix.BorderSizePixel = 0
Fix.Position = UDim2.new(0.0340922885, 0, 0.251920134, 0)
Fix.Size = UDim2.new(0, 131, 0, 40)
Fix.ZIndex = 3
Fix.Font = Enum.Font.SourceSansLight
Fix.Text = "Fix"
Fix.TextColor3 = Color3.fromRGB(255, 255, 255)
Fix.TextSize = 23.000

UICorner_12.CornerRadius = UDim.new(0, 4)
UICorner_12.Parent = Fix

NetClaim.Name = "NetClaim"
NetClaim.Parent = ScrollingFrame
NetClaim.BackgroundColor3 = Color3.fromRGB(172, 172, 172)
NetClaim.BackgroundTransparency = 0.500
NetClaim.BorderSizePixel = 0
NetClaim.Position = UDim2.new(0.0340922885, 0, 0.251920134, 0)
NetClaim.Size = UDim2.new(0, 131, 0, 40)
NetClaim.ZIndex = 3
NetClaim.Font = Enum.Font.SourceSansLight
NetClaim.Text = "NetClaim"
NetClaim.TextColor3 = Color3.fromRGB(255, 255, 255)
NetClaim.TextSize = 23.000

UICorner_13.CornerRadius = UDim.new(0, 4)
UICorner_13.Parent = NetClaim

Tpvan.Name = "Tpvan"
Tpvan.Parent = ScrollingFrame
Tpvan.BackgroundColor3 = Color3.fromRGB(172, 172, 172)
Tpvan.BackgroundTransparency = 0.500
Tpvan.BorderSizePixel = 0
Tpvan.Position = UDim2.new(0, 0, 0.352697104, 0)
Tpvan.Size = UDim2.new(0, 287, 0, 50)
Tpvan.ZIndex = 3
Tpvan.Font = Enum.Font.SourceSansLight
Tpvan.Text = "TPVan"
Tpvan.TextColor3 = Color3.fromRGB(255, 255, 255)
Tpvan.TextSize = 23.000

UICorner_14.CornerRadius = UDim.new(0, 4)
UICorner_14.Parent = Tpvan

Money.Name = "Money"
Money.Parent = ScrollingFrame
Money.BackgroundColor3 = Color3.fromRGB(172, 172, 172)
Money.BackgroundTransparency = 0.500
Money.BorderSizePixel = 0
Money.Position = UDim2.new(0, 0, 0.352697104, 0)
Money.Size = UDim2.new(0, 287, 0, 50)
Money.ZIndex = 3
Money.Font = Enum.Font.SourceSansLight
Money.Text = "Money"
Money.TextColor3 = Color3.fromRGB(255, 255, 255)
Money.TextSize = 23.000

UICorner_15.CornerRadius = UDim.new(0, 4)
UICorner_15.Parent = Money

NoCLip.Name = "NoCLip"
NoCLip.Parent = ScrollingFrame
NoCLip.BackgroundColor3 = Color3.fromRGB(172, 172, 172)
NoCLip.BackgroundTransparency = 0.500
NoCLip.BorderSizePixel = 0
NoCLip.Position = UDim2.new(0, 0, 0.352697104, 0)
NoCLip.Size = UDim2.new(0, 287, 0, 50)
NoCLip.ZIndex = 3
NoCLip.Font = Enum.Font.SourceSansLight
NoCLip.Text = "NoClip"
NoCLip.TextColor3 = Color3.fromRGB(255, 255, 255)
NoCLip.TextSize = 23.000

UICorner_16.CornerRadius = UDim.new(0, 4)
UICorner_16.Parent = NoCLip

CLip.Name = "CLip"
CLip.Parent = ScrollingFrame
CLip.BackgroundColor3 = Color3.fromRGB(172, 172, 172)
CLip.BackgroundTransparency = 0.500
CLip.BorderSizePixel = 0
CLip.Position = UDim2.new(0, 0, 0.352697104, 0)
CLip.Size = UDim2.new(0, 287, 0, 50)
CLip.ZIndex = 3
CLip.Font = Enum.Font.SourceSansLight
CLip.Text = "Clip"
CLip.TextColor3 = Color3.fromRGB(255, 255, 255)
CLip.TextSize = 23.000

UICorner_17.CornerRadius = UDim.new(0, 4)
UICorner_17.Parent = CLip

Clear.Name = "Clear"
Clear.Parent = ScrollingFrame
Clear.BackgroundColor3 = Color3.fromRGB(172, 172, 172)
Clear.BackgroundTransparency = 0.500
Clear.BorderSizePixel = 0
Clear.Position = UDim2.new(0.0351677425, 0, 0.190713778, 0)
Clear.Size = UDim2.new(0, 131, 0, 40)
Clear.ZIndex = 3
Clear.Font = Enum.Font.SourceSansLight
Clear.Text = "Clear"
Clear.TextColor3 = Color3.fromRGB(255, 255, 255)
Clear.TextSize = 23.000

UICorner_18.CornerRadius = UDim.new(0, 4)
UICorner_18.Parent = Clear

Orbit.Name = "Orbit"
Orbit.Parent = ScrollingFrame
Orbit.BackgroundColor3 = Color3.fromRGB(172, 172, 172)
Orbit.BackgroundTransparency = 0.500
Orbit.BorderSizePixel = 0
Orbit.Position = UDim2.new(0.0351677425, 0, 0.190713778, 0)
Orbit.Size = UDim2.new(0, 131, 0, 40)
Orbit.ZIndex = 3
Orbit.Font = Enum.Font.SourceSansLight
Orbit.Text = "Orbit"
Orbit.TextColor3 = Color3.fromRGB(255, 255, 255)
Orbit.TextSize = 23.000

UICorner_19.CornerRadius = UDim.new(0, 4)
UICorner_19.Parent = Orbit

Goto.Name = "Goto"
Goto.Parent = ScrollingFrame
Goto.BackgroundColor3 = Color3.fromRGB(172, 172, 172)
Goto.BackgroundTransparency = 0.500
Goto.BorderSizePixel = 0
Goto.Position = UDim2.new(0.0351677425, 0, 0.190713778, 0)
Goto.Size = UDim2.new(0, 131, 0, 40)
Goto.ZIndex = 3
Goto.Font = Enum.Font.SourceSansLight
Goto.Text = "Goto"
Goto.TextColor3 = Color3.fromRGB(255, 255, 255)
Goto.TextSize = 23.000

UICorner_20.CornerRadius = UDim.new(0, 4)
UICorner_20.Parent = Goto

Loopkill.Name = "Loopkill"
Loopkill.Parent = ScrollingFrame
Loopkill.BackgroundColor3 = Color3.fromRGB(172, 172, 172)
Loopkill.BackgroundTransparency = 0.500
Loopkill.BorderSizePixel = 0
Loopkill.Position = UDim2.new(0.0351677425, 0, 0.190713778, 0)
Loopkill.Size = UDim2.new(0, 131, 0, 40)
Loopkill.ZIndex = 3
Loopkill.Font = Enum.Font.SourceSansLight
Loopkill.Text = "Loopkill"
Loopkill.TextColor3 = Color3.fromRGB(255, 255, 255)
Loopkill.TextSize = 23.000

UICorner_21.CornerRadius = UDim.new(0, 4)
UICorner_21.Parent = Loopkill

Unloopkill.Name = "Unloopkill"
Unloopkill.Parent = ScrollingFrame
Unloopkill.BackgroundColor3 = Color3.fromRGB(172, 172, 172)
Unloopkill.BackgroundTransparency = 0.500
Unloopkill.BorderSizePixel = 0
Unloopkill.Position = UDim2.new(0.0351677425, 0, 0.190713778, 0)
Unloopkill.Size = UDim2.new(0, 131, 0, 40)
Unloopkill.ZIndex = 3
Unloopkill.Font = Enum.Font.SourceSansLight
Unloopkill.Text = "Unloopkill"
Unloopkill.TextColor3 = Color3.fromRGB(255, 255, 255)
Unloopkill.TextSize = 23.000

UICorner_22.CornerRadius = UDim.new(0, 4)
UICorner_22.Parent = Unloopkill

Void.Name = "Void"
Void.Parent = ScrollingFrame
Void.BackgroundColor3 = Color3.fromRGB(172, 172, 172)
Void.BackgroundTransparency = 0.500
Void.BorderSizePixel = 0
Void.Position = UDim2.new(0.0351677425, 0, 0.190713778, 0)
Void.Size = UDim2.new(0, 131, 0, 40)
Void.ZIndex = 3
Void.Font = Enum.Font.SourceSansLight
Void.Text = "Void"
Void.TextColor3 = Color3.fromRGB(255, 255, 255)
Void.TextSize = 23.000

UICorner_23.CornerRadius = UDim.new(0, 4)
UICorner_23.Parent = Void

Destroy.Name = "Destroy"
Destroy.Parent = ScrollingFrame
Destroy.BackgroundColor3 = Color3.fromRGB(172, 172, 172)
Destroy.BackgroundTransparency = 0.500
Destroy.BorderSizePixel = 0
Destroy.Position = UDim2.new(0.0351677425, 0, 0.190713778, 0)
Destroy.Size = UDim2.new(0, 131, 0, 40)
Destroy.ZIndex = 3
Destroy.Font = Enum.Font.SourceSansLight
Destroy.Text = "Destroy"
Destroy.TextColor3 = Color3.fromRGB(255, 255, 255)
Destroy.TextSize = 23.000

UICorner_24.CornerRadius = UDim.new(0, 4)
UICorner_24.Parent = Destroy

Sit.Name = "Sit"
Sit.Parent = ScrollingFrame
Sit.BackgroundColor3 = Color3.fromRGB(172, 172, 172)
Sit.BackgroundTransparency = 0.500
Sit.BorderSizePixel = 0
Sit.Position = UDim2.new(0.0351677425, 0, 0.190713778, 0)
Sit.Size = UDim2.new(0, 131, 0, 40)
Sit.ZIndex = 3
Sit.Font = Enum.Font.SourceSansLight
Sit.Text = "Sit"
Sit.TextColor3 = Color3.fromRGB(255, 255, 255)
Sit.TextSize = 23.000

UICorner_25.CornerRadius = UDim.new(0, 4)
UICorner_25.Parent = Sit

target.Name = "target"
target.Parent = Main
target.BackgroundColor3 = Color3.fromRGB(172, 172, 172)
target.BackgroundTransparency = 0.400
target.Position = UDim2.new(0.0255349874, 0, 0.800595582, 0)
target.Size = UDim2.new(0, 278, 0, 33)
target.Font = Enum.Font.SourceSans
target.PlaceholderText = "Player Name"
target.Text = ""
target.TextColor3 = Color3.fromRGB(255, 255, 255)
target.TextSize = 23.000

UICorner_26.CornerRadius = UDim.new(0, 4)
UICorner_26.Parent = target

UIGradient_2.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(122, 122, 122))}
UIGradient_2.Rotation = 90
UIGradient_2.Parent = Main

Refresh.Name = "Refresh"
Refresh.Parent = Main
Refresh.BackgroundColor3 = Color3.fromRGB(172, 172, 172)
Refresh.BackgroundTransparency = 0.500
Refresh.Position = UDim2.new(0.0255350601, 0, 0.899736166, 0)
Refresh.Size = UDim2.new(0, 127, 0, 30)
Refresh.Font = Enum.Font.SourceSansLight
Refresh.Text = "Refresh"
Refresh.TextColor3 = Color3.fromRGB(255, 255, 255)
Refresh.TextSize = 26.000
Refresh.TextWrapped = true

UICorner_27.CornerRadius = UDim.new(0, 4)
UICorner_27.Parent = Refresh

search.Name = "search"
search.Parent = Main
search.BackgroundColor3 = Color3.fromRGB(172, 172, 172)
search.BackgroundTransparency = 0.400
search.Position = UDim2.new(0.0255349874, 0, 0.708587348, 0)
search.Size = UDim2.new(0, 278, 0, 33)
search.Font = Enum.Font.SourceSans
search.PlaceholderText = "Search commands"
search.Text = ""
search.TextColor3 = Color3.fromRGB(255, 255, 255)
search.TextSize = 23.000

UICorner_28.CornerRadius = UDim.new(0, 4)
UICorner_28.Parent = search

local UserInputService = game:GetService("UserInputService")
local dragging,dragInput,dragStart,startPos
local RemoteQueue = (0)

local function UpdatePos(input)
	local delta = input.Position - dragStart
	Main.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
end
Frame.InputBegan:Connect(function(input)
	if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then
		dragging =true
		dragStart =input.Position
		startPos =Main.Position
		input.Changed:Connect(function()
			if( input.UserInputState == (Enum.UserInputState.End)) then
				dragging = false
			end
		end)
	end
end)
Frame.InputChanged:Connect(function(input)
	if (input.UserInputType == (Enum.UserInputType.MouseMovement) or input.UserInputType == (Enum.UserInputType.Touch)) then
		dragInput = input
	end
end)
UserInputService.InputChanged:Connect(function(input)
	if (input == dragInput and dragging) then
		UpdatePos(input)
	end
end)

local function nocfang(c)
	return CFrame.new((c.x), (c.y), (c.z))
end
local function clerp(p1, p2, percent) -- idk who made this but thanks to whoever made this!
	local p1x, p1y, p1z, p1R00, p1R01, p1R02, p1R10, p1R11, p1R12, p1R20, p1R21, p1R22 = p1:components() 
	local p2x, p2y, p2z, p2R00, p2R01, p2R02, p2R10, p2R11, p2R12, p2R20, p2R21, p2R22 = p2:components() 
	return CFrame.new(((p1x) + (percent)) * ((p2x) - (p1x)), ((p1y) + (percent) * ((p2y) - (p1y))), p1z + percent * (p2z - p1z), p1R00 + percent * (p2R00 - p1R00), p1R01 + percent * (p2R01 - p1R01), p1R02 + percent * (p2R02 - p1R02), p1R10 + percent * (p2R10 - p1R10), p1R11 + percent * (p2R11 - p1R11), p1R12 + percent * (p2R12 - p1R12), p1R20 + percent * (p2R20 - p1R20), p1R21 + percent * (p2R21 - p1R21), p1R22 + percent * (p2R22 - p1R22)) 
end
local OrbDis = (4.3)
local Orbs = ({})
local Remote = game:GetService("ReplicatedStorage").Events.Network.SetNetworkOwnership
local lp = game.Players.LocalPlayer
--game.ReplicatedStorage.Events.Player.KC:FireServer() -- Get 100
local UserInputService = game:GetService("UserInputService")

function getPlayer(Player)
	local function findPlayer(stringg)
	        if (stringg == ("me")) then
			return lp
		elseif (stringg == ("random")) then
			local GetPlayers = game.Players:GetPlayers()
			if table.find(GetPlayers,Player) then table.remove(GetPlayers,table.find(GetPlayers,Player)) end
			return GetPlayers[math.random(#GetPlayers)]
		else
			for _, v in pairs(game.Players:GetPlayers()) do
				if (stringg:lower() == (v.Name:lower()):sub(1, #stringg)) or (stringg:lower() == (v.DisplayName:lower()):sub(1, #stringg)) then 
					return v 
				end
			end
		end
	end
	return findPlayer(Player)
end

function Tween(Obj, Prop, New, Time)
	if not Time then
		Time = .5
	end
	local TweenService = game:GetService("TweenService")
	local info = TweenInfo.new(
		Time, 
		Enum.EasingStyle.Quart, 
		Enum.EasingDirection.Out, 
		0, 
		false,
		0
	)
	local propertyTable = {
		[Prop] = New,
	}

	TweenService:Create(Obj, info, propertyTable):Play()
end

function Notify(Text,Dur)
	task.spawn(function()
		if not Dur then
			Dur = 1.5
		end
		local Notif = Instance.new("ScreenGui")
		local Frame_1 = Instance.new("Frame")
		local TextLabel = Instance.new("TextLabel")
		Notif.Parent = (game:GetService("CoreGui") or gethui())
		Notif.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
		Frame_1.Parent = Notif
		Frame_1.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		Frame_1.BackgroundTransparency=1
		Frame_1.BorderSizePixel = 0
		Frame_1.Position = UDim2.new(0, 0, 0.0500000007, 0)
		Frame_1.Size = UDim2.new(1, 0, 0.100000001, 0)
		TextLabel.Parent = Frame_1
		TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		TextLabel.BackgroundTransparency = 1.000
		TextLabel.TextTransparency =1
		TextLabel.Size = UDim2.new(1, 0, 1, 0)
		TextLabel.Font = Enum.Font.Highway
		TextLabel.Text = Text or "Text not found"
		TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
		TextLabel.TextSize = 21.000
		Tween(Frame_1,"BackgroundTransparency",0.350,.5)
		Tween(TextLabel,"TextTransparency",0,.5)
		wait(Dur+.7)
		Tween(Frame_1,"BackgroundTransparency",1,.5)
		Tween(TextLabel,"TextTransparency",1,.5)
		wait(.7)
		Notif:Destroy()
	end)
	return
end

local function DoCommand(Command)
	spawn(function()
		RemoteQueue = (RemoteQueue+1)
		queue.Text = (("Remote Queue: ")..(RemoteQueue))
		if (string.sub((Command),(1),#(".bring")) == (".bring")) then
			local args = string.sub(Command,#".bring" + 2)
			if args == "all" or args == "everyone" then
			for _,player in pairs(game.Players:GetPlayers()) do
			pcall(function()
				if (player ~= nil and player.Character ~= nil) then
					if (player.Character:FindFirstChildOfClass("Part") ~= nil) then
						for _, Part in pairs(player.Character:GetDescendants()) do
							if (Part:IsA("BasePart")) then
								Remote:FireServer(Part,lp)
							end
						end
						player.Character.HumanoidRootPart.CFrame = lp.Character.HumanoidRootPart.CFrame + Vector3.new(0, 0, -1)
					end
				end
			end)
			end
			elseif args == "others" then
			for _,player in pairs(game.Players:GetPlayers()) do
			if player ~= lp then
			pcall(function()
				if (player ~= nil and player.Character ~= nil) then
					if (player.Character:FindFirstChildOfClass("Part") ~= nil) then
						for _, Part in pairs(player.Character:GetDescendants()) do
							if (Part:IsA("BasePart")) then
								Remote:FireServer(Part,lp)
							end
						end
						player.Character.HumanoidRootPart.CFrame = lp.Character.HumanoidRootPart.CFrame + Vector3.new(0, 0, -1)
					end
				end
			end)
			end
			end
			else
			local player = getPlayer(args)
			pcall(function()
				if (player ~= nil and player.Character ~= nil) then
					if (player.Character:FindFirstChildOfClass("Part") ~= nil) then
						for _, Part in pairs(player.Character:GetDescendants()) do
							if (Part:IsA("BasePart")) then
								Remote:FireServer(Part,lp)
							end
						end
						player.Character.HumanoidRootPart.CFrame = lp.Character.HumanoidRootPart.CFrame + Vector3.new(0, 0, -1)
					end
				end
			end)
			end
		elseif (string.sub((Command),(1),#(".goto")) == (".goto")) then
			local args = string.sub(Command,#".goto" + 2)
			if args == "all" or args == "others" or args == "everyone" then
			for _,player in pairs(game.Players:GetPlayers()) do
			pcall(function()
				if (player ~= nil and player.Character ~= nil) then
					if (player.Character:FindFirstChildOfClass("Part") ~= nil) then
						for _, Part in pairs(player.Character:GetDescendants()) do
							if (Part:IsA("BasePart")) then
								Remote:FireServer(Part,lp)
							end
						end
						lp.Character.HumanoidRootPart.CFrame = player.Character.HumanoidRootPart.CFrame + Vector3.new(0, 0, -1)
					end
				end
			end)
			end
			else
			local player = getPlayer(args)
			pcall(function()
				if (player ~= nil and player.Character ~= nil) then
					if (player.Character:FindFirstChildOfClass("Part") ~= nil) then
						for _, Part in pairs(player.Character:GetDescendants()) do
							if (Part:IsA("BasePart")) then
								Remote:FireServer(Part,lp)
							end
						end
						lp.Character.HumanoidRootPart.CFrame = player.Character.HumanoidRootPart.CFrame + Vector3.new(0, 0, -1)
					end
				end
			end)
			end
		elseif (string.sub(Command,1,#(".fix")) == (".fix") or string.sub(Command,1,#(".uncontrol")) == (".uncontrol")) then
			game:GetService('TeleportService'):TeleportToPlaceInstance(game.PlaceId, game.JobId, lp)
		elseif (string.sub(Command,1,#".cmds") == ".cmds") then
			Notify("(Cook burgers admin) The commands are listed in the console! \n Press F9 to view or chat /console", 5)
		elseif (string.sub(Command,1,#".netclaim") == ".netclaim") then
			for i = 1,3 do
				pcall(function()
					for _,player in pairs(game.Players:GetPlayers()) do
						if (player ~= nil and player.Character ~= nil) then
							if (player.Character:FindFirstChildOfClass("Part") ~= nil) then
								for i = 1,20 do
									for _, Part in pairs(player.Character:GetDescendants()) do
										if (Part:IsA("BasePart")) then
											Remote:FireServer(Part,lp)
										end
									end
								end
							end
						end
					end
				end)
			end
		elseif (string.sub(Command,1,#".tpvan") == ".tpvan") then
			pcall(function()
				local Items = workspace.Truck:GetDescendants()
				for _, item in pairs(Items) do
					if not item:IsA("ParticleEmitter") and item.ClassName:find("Part") or item.ClassName:find("Union")  then
						Remote:FireServer(item,game:GetService("Players").LocalPlayer)
						item.CFrame = lp.Character.HumanoidRootPart.CFrame
					end
				end
			end)
		elseif (string.sub(Command,1,#".speed") == ".speed") then
			local args = string.sub(Command,#".speed" + 2)
			if args == "all" or args == "everyone" then
			for _,player in pairs(game.Players:GetPlayers()) do
			pcall(function()
				if (player ~= nil and player.Character ~= nil) then
					if (player.Character:FindFirstChildOfClass("Part") ~= nil) then
						for _, Part in pairs(player.Character:GetDescendants()) do
							if (Part:IsA("BasePart")) then
								Remote:FireServer(Part,lp)
							end
						end
						player.Character:FindFirstChildOfClass('Humanoid').WalkSpeed = (100)
					end
				end
			end)
			end
			elseif args == "others" then
			for _,player in pairs(game.Players:GetPlayers()) do
			if player ~= lp then
			pcall(function()
				if (player ~= nil and player.Character ~= nil) then
					if (player.Character:FindFirstChildOfClass("Part") ~= nil) then
						for _, Part in pairs(player.Character:GetDescendants()) do
							if (Part:IsA("BasePart")) then
								Remote:FireServer(Part,lp)
							end
						end
						player.Character:FindFirstChildOfClass('Humanoid').WalkSpeed = (100)
					end
				end
			end)
			end
			end
			else
			local player = getPlayer(args)
			pcall(function()
				if (player ~= nil and player.Character ~= nil) then
					if (player.Character:FindFirstChildOfClass("Part") ~= nil) then
						for _, Part in pairs(player.Character:GetDescendants()) do
							if (Part:IsA("BasePart")) then
								Remote:FireServer(Part,lp)
							end
						end
						player.Character:FindFirstChildOfClass('Humanoid').WalkSpeed = (100)
					end
				end
			end)
			end
		elseif (string.sub(Command,1,#".jump") == ".jump") then
			local args = string.sub(Command,#".jump" + 2)
			if args == "all" or args == "everyone" then
			for _,player in pairs(game.Players:GetPlayers()) do
			pcall(function()
				if (player ~= nil and player.Character ~= nil) then
					if (player.Character:FindFirstChildOfClass("Part") ~= nil) then
						for _, Part in pairs(player.Character:GetDescendants()) do
							if (Part:IsA("BasePart")) then
								Remote:FireServer(Part,lp)
							end
						end
						player.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
					end
				end
			end)
			end
			elseif args == "others" then
			for _,player in pairs(game.Players:GetPlayers()) do
			if player ~= lp then
			pcall(function()
				if (player ~= nil and player.Character ~= nil) then
					if (player.Character:FindFirstChildOfClass("Part") ~= nil) then
						for _, Part in pairs(player.Character:GetDescendants()) do
							if (Part:IsA("BasePart")) then
								Remote:FireServer(Part,lp)
							end
						end
						player.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
					end
				end
			end)
			end
			end
			else
			local player = getPlayer(args)
			pcall(function()
				if (player ~= nil and player.Character ~= nil) then
					if (player.Character:FindFirstChildOfClass("Part") ~= nil) then
						for _, Part in pairs(player.Character:GetDescendants()) do
							if (Part:IsA("BasePart")) then
								Remote:FireServer(Part,lp)
							end
						end
						player.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
					end
				end
			end)
			end
		elseif (string.sub(Command,1,#".sit") == ".sit") then
			local args = string.sub(Command,#".sit" + 2)
			if args == "all" or args == "everyone" then
			for _,player in pairs(game.Players:GetPlayers()) do
			pcall(function()
				if (player ~= nil and player.Character ~= nil) then
					if (player.Character:FindFirstChildOfClass("Part") ~= nil) then
						for _, Part in pairs(player.Character:GetDescendants()) do
							if (Part:IsA("BasePart")) then
								Remote:FireServer(Part,lp)
							end
						end
						player.Character.Humanoid.Sit = true
					end
				end
			end)
			end
			elseif args == "others" then
			for _,player in pairs(game.Players:GetPlayers()) do
			if player ~= lp then
			pcall(function()
				if (player ~= nil and player.Character ~= nil) then
					if (player.Character:FindFirstChildOfClass("Part") ~= nil) then
						for _, Part in pairs(player.Character:GetDescendants()) do
							if (Part:IsA("BasePart")) then
								Remote:FireServer(Part,lp)
							end
						end
						player.Character.Humanoid.Sit = true
					end
				end
			end)
			end
			end
			else
			local player = getPlayer(args)
			pcall(function()
				if (player ~= nil and player.Character ~= nil) then
					if (player.Character:FindFirstChildOfClass("Part") ~= nil) then
						for _, Part in pairs(player.Character:GetDescendants()) do
							if (Part:IsA("BasePart")) then
								Remote:FireServer(Part,lp)
							end
						end
						player.Character.Humanoid.Sit = true
					end
				end
			end)
			end
		elseif (string.sub(Command,1,#".freeze") == ".freeze") then
			local args = string.sub(Command,#".freeze" + 2)
			if args == "all" or args == "everyone" then
			for _,player in pairs(game.Players:GetPlayers()) do
			pcall(function()
				if (player ~= nil and player.Character ~= nil) then
					if (player.Character:FindFirstChildOfClass("Part") ~= nil) then
						for i = 1,20 do
							for _, Part in pairs(player.Character:GetDescendants()) do
								if (Part:IsA("BasePart")) then
									Remote:FireServer(Part,lp)
								end
							end
							player.Character.HumanoidRootPart.Anchored = (true)
						end
					end
				end
			end)
			end
			elseif args == "others" then
			for _,player in pairs(game.Players:GetPlayers()) do
			if player ~= lp then
			pcall(function()
				if (player ~= nil and player.Character ~= nil) then
					if (player.Character:FindFirstChildOfClass("Part") ~= nil) then
						for i = 1,20 do
							for _, Part in pairs(player.Character:GetDescendants()) do
								if (Part:IsA("BasePart")) then
									Remote:FireServer(Part,lp)
								end
							end
							player.Character.HumanoidRootPart.Anchored = (true)
						end
					end
				end
			end)
			end
			end
			else
			local player = getPlayer(args)
			pcall(function()
				if (player ~= nil and player.Character ~= nil) then
					if (player.Character:FindFirstChildOfClass("Part") ~= nil) then
						for i = 1,20 do
							for _, Part in pairs(player.Character:GetDescendants()) do
								if (Part:IsA("BasePart")) then
									Remote:FireServer(Part,lp)
								end
							end
							player.Character.HumanoidRootPart.Anchored = (true)
						end
					end
				end
			end)
			end
		elseif (string.sub(Command,1,#".unfreeze") == ".unfreeze") then
			local args = string.sub(Command,#".unfreeze" + 2)
			if args == "all" or args == "everyone" then
			for _,player in pairs(game.Players:GetPlayers()) do
			pcall(function()
				if (player ~= nil and player.Character ~= nil) then
					if (player.Character:FindFirstChildOfClass("Part") ~= nil) then
						for i = 1,20 do
							for _, Part in pairs(player.Character:GetDescendants()) do
								if (Part:IsA("BasePart")) then
									Remote:FireServer(Part,lp)
								end
							end
							player.Character.HumanoidRootPart.Anchored = (false)
						end
					end
				end
			end)
			end
			elseif args == "others" then
			for _,player in pairs(game.Players:GetPlayers()) do
			if player ~= lp then
			pcall(function()
				if (player ~= nil and player.Character ~= nil) then
					if (player.Character:FindFirstChildOfClass("Part") ~= nil) then
						for i = 1,20 do
							for _, Part in pairs(player.Character:GetDescendants()) do
								if (Part:IsA("BasePart")) then
									Remote:FireServer(Part,lp)
								end
							end
							player.Character.HumanoidRootPart.Anchored = (false)
						end
					end
				end
			end)
			end
			end
			else
			local player = getPlayer(args)
			pcall(function()
				if (player ~= nil and player.Character ~= nil) then
					if (player.Character:FindFirstChildOfClass("Part") ~= nil) then
						for i = 1,20 do
							for _, Part in pairs(player.Character:GetDescendants()) do
								if (Part:IsA("BasePart")) then
									Remote:FireServer(Part,lp)
								end
							end
							player.Character.HumanoidRootPart.Anchored = (false)
						end
					end
				end
			end)
			end
		elseif (string.sub(Command,1,#".rocket") == ".rocket") then
			local args = string.sub(Command,#".rocket" + 2)
			if args == "all" or args == "everyone" then
			for _,player in pairs(game.Players:GetPlayers()) do
			pcall(function()
				if ((player ~= nil) and (player.Character ~= nil)) then
					for _, Part in pairs(player.Character:GetDescendants()) do
						if (player.Character:FindFirstChildOfClass("Part") ~= nil) then
							if (Part:IsA("BasePart")) then
								Remote:FireServer(Part,lp)
								Instance.new("BodyVelocity",Part).Velocity = Vector3.new(0,1000,0)  
								Part.Velocity = Vector3.new(0,1000,0)
							end
						end
					end
					game:GetService("RunService").Stepped:Connect(function()
						if ((player ~= (nil)) and (player.Character ~= (nil))) then
							for _, child in pairs(player.Character:GetDescendants()) do
								if (child:IsA("BasePart") and child.CanCollide == true) then 
									child.CanCollide = false
								end
							end
						else
							return
						end
					end)
				end
			end)
			end
			elseif args == "others" then
			for _,player in pairs(game.Players:GetPlayers()) do
			if player ~= lp then
			pcall(function()
				if ((player ~= nil) and (player.Character ~= nil)) then
					for _, Part in pairs(player.Character:GetDescendants()) do
						if (player.Character:FindFirstChildOfClass("Part") ~= nil) then
							if (Part:IsA("BasePart")) then
								Remote:FireServer(Part,lp)
								Instance.new("BodyVelocity",Part).Velocity = Vector3.new(0,1000,0)  
								Part.Velocity = Vector3.new(0,1000,0)
							end
						end
					end
					game:GetService("RunService").Stepped:Connect(function()
						if ((player ~= (nil)) and (player.Character ~= (nil))) then
							for _, child in pairs(player.Character:GetDescendants()) do
								if (child:IsA("BasePart") and child.CanCollide == true) then 
									child.CanCollide = false
								end
							end
						else
							return
						end
					end)
				end
			end)
			end
			end
			else
			local player = getPlayer(args)
			pcall(function()
				if ((player ~= nil) and (player.Character ~= nil)) then
					for _, Part in pairs(player.Character:GetDescendants()) do
						if (player.Character:FindFirstChildOfClass("Part") ~= nil) then
							if (Part:IsA("BasePart")) then
								Remote:FireServer(Part,lp)
								Instance.new("BodyVelocity",Part).Velocity = Vector3.new(0,1000,0)  
								Part.Velocity = Vector3.new(0,1000,0)
							end
						end
					end
					game:GetService("RunService").Stepped:Connect(function()
						if ((player ~= (nil)) and (player.Character ~= (nil))) then
							for _, child in pairs(player.Character:GetDescendants()) do
								if (child:IsA("BasePart") and child.CanCollide == true) then 
									child.CanCollide = false
								end
							end
						else
							return
						end
					end)
				end
			end)
			end
		elseif (string.sub(Command,1,#".fling") == ".fling") then -- ayo skid watcha lookin for?
			local args = string.sub(Command,#".fling" + 2)
			if args == "all" or args == "everyone" then
			for _,player in pairs(game.Players:GetPlayers()) do
			pcall(function()
				if (player ~= nil and player.Character ~= nil) then
					if (player.Character:FindFirstChildOfClass("Part") ~= nil) then
						local xran local zran
						repeat xran = math.random(-9999,9999) until math.abs(xran) >= 5555
						repeat zran = math.random(-9999,9999) until math.abs(zran) >= 5555
						for _, Part in pairs(player.Character:GetDescendants()) do
							if (Part:IsA("BasePart")) then
								Remote:FireServer(Part,lp)
							end
						end
						game:GetService("RunService").Stepped:Connect(function()
							if ((player ~= nil) and (player.Character ~= nil)) then
								for _, child in pairs(player.Character:GetDescendants()) do
									if (child:IsA("BasePart") and child.CanCollide == true) then 
										child.CanCollide = false
									end
								end
							else
								return
							end
						end)
						player.Character.Humanoid.Sit = true
						player.Character.HumanoidRootPart.Velocity = Vector3.new(0,0,0)
						local BodyForce = Instance.new("BodyForce",  player.Character.HumanoidRootPart) 
						BodyForce.force = Vector3.new(xran*4,9999*5,xran*4) 
					end
				end
			end)
			end
			elseif args == "others" then
			for _,player in pairs(game.Players:GetPlayers()) do
			if player ~= lp then
			pcall(function()
				if (player ~= nil and player.Character ~= nil) then
					if (player.Character:FindFirstChildOfClass("Part") ~= nil) then
						local xran local zran
						repeat xran = math.random(-9999,9999) until math.abs(xran) >= 5555
						repeat zran = math.random(-9999,9999) until math.abs(zran) >= 5555
						for _, Part in pairs(player.Character:GetDescendants()) do
							if (Part:IsA("BasePart")) then
								Remote:FireServer(Part,lp)
							end
						end
						game:GetService("RunService").Stepped:Connect(function()
							if ((player ~= nil) and (player.Character ~= nil)) then
								for _, child in pairs(player.Character:GetDescendants()) do
									if (child:IsA("BasePart") and child.CanCollide == true) then 
										child.CanCollide = false
									end
								end
							else
								return
							end
						end)
						player.Character.Humanoid.Sit = true
						player.Character.HumanoidRootPart.Velocity = Vector3.new(0,0,0)
						local BodyForce = Instance.new("BodyForce",  player.Character.HumanoidRootPart) 
						BodyForce.force = Vector3.new(xran*4,9999*5,xran*4) 
					end
				end
			end)
			end
			end
			else
			local player = getPlayer(args)
			pcall(function()
				if (player ~= nil and player.Character ~= nil) then
					if (player.Character:FindFirstChildOfClass("Part") ~= nil) then
						local xran local zran
						repeat xran = math.random(-9999,9999) until math.abs(xran) >= 5555
						repeat zran = math.random(-9999,9999) until math.abs(zran) >= 5555
						for _, Part in pairs(player.Character:GetDescendants()) do
							if (Part:IsA("BasePart")) then
								Remote:FireServer(Part,lp)
							end
						end
						game:GetService("RunService").Stepped:Connect(function()
							if ((player ~= nil) and (player.Character ~= nil)) then
								for _, child in pairs(player.Character:GetDescendants()) do
									if (child:IsA("BasePart") and child.CanCollide == true) then 
										child.CanCollide = false
									end
								end
							else
								return
							end
						end)
						player.Character.Humanoid.Sit = true
						player.Character.HumanoidRootPart.Velocity = Vector3.new(0,0,0)
						local BodyForce = Instance.new("BodyForce",  player.Character.HumanoidRootPart) 
						BodyForce.force = Vector3.new(xran*4,9999*5,xran*4) 
					end
				end
			end)
			end
		elseif (string.sub(Command,1,#".kill") == ".kill") then
			local args = string.sub(Command,#".kill" + 2)
			if args == "all" or args == "everyone" then
			for _,player in pairs(game.Players:GetPlayers()) do
			pcall(function()
				if (player ~= nil and player.Character ~= nil) then
					if (player.Character:FindFirstChildOfClass("Part") ~= nil) then
						for _, Part in pairs(player.Character:GetDescendants()) do
							if (Part:IsA("BasePart")) then
								Remote:FireServer(Part,lp)
							end
						end
						player.Character.Humanoid.Health = (1)
						player.Character.Humanoid.Health = (0)
					end
				end
			end)
			end
			elseif args == "others" then
			for _,player in pairs(game.Players:GetPlayers()) do
			if player ~= lp then
			pcall(function()
				if (player ~= nil and player.Character ~= nil) then
					if (player.Character:FindFirstChildOfClass("Part") ~= nil) then
						for _, Part in pairs(player.Character:GetDescendants()) do
							if (Part:IsA("BasePart")) then
								Remote:FireServer(Part,lp)
							end
						end
						player.Character.Humanoid.Health = (1)
						player.Character.Humanoid.Health = (0)
					end
				end
			end)
			end
			end
			else
			local player = getPlayer(args)
			pcall(function()
				if (player ~= nil and player.Character ~= nil) then
					if (player.Character:FindFirstChildOfClass("Part") ~= nil) then
						for _, Part in pairs(player.Character:GetDescendants()) do
							if (Part:IsA("BasePart")) then
								Remote:FireServer(Part,lp)
							end
						end
						player.Character.Humanoid.Health = (1)
						player.Character.Humanoid.Health = (0)
					end
				end
			end)
			end
		elseif (string.sub(Command,1,#".loopkill") == ".loopkill") then
			local args = string.sub(Command,#".loopkill" + 2)
			if args == "all" or args == "everyone" then
			getgenv().loop = true
			while loop do
			for _,player in pairs(game.Players:GetPlayers()) do
			pcall(function()
				if (player ~= nil and player.Character ~= nil) then
					if (player.Character:FindFirstChildOfClass("Part") ~= nil) then
						for _, Part in pairs(player.Character:GetDescendants()) do
							if (Part:IsA("BasePart")) then
								Remote:FireServer(Part,lp)
							end
						end
						player.Character.Humanoid.Health = (1)
						player.Character.Humanoid.Health = (0)
					end
				end
			end)
			end
			task.wait(0.1)
			end
			elseif args == "others" then
			getgenv().loop = true
			while loop do
			for _,player in pairs(game.Players:GetPlayers()) do
			if player ~= lp then
			pcall(function()
				if (player ~= nil and player.Character ~= nil) then
					if (player.Character:FindFirstChildOfClass("Part") ~= nil) then
						for _, Part in pairs(player.Character:GetDescendants()) do
							if (Part:IsA("BasePart")) then
								Remote:FireServer(Part,lp)
							end
						end
						player.Character.Humanoid.Health = (1)
						player.Character.Humanoid.Health = (0)
					end
				end
			end)
			end
			end
			task.wait(0.1)
			end
			else
			local player = getPlayer(args)
			getgenv().loop = true
			while loop do
			pcall(function()
				if (player ~= nil and player.Character ~= nil) then
					if (player.Character:FindFirstChildOfClass("Part") ~= nil) then
						for _, Part in pairs(player.Character:GetDescendants()) do
							if (Part:IsA("BasePart")) then
								Remote:FireServer(Part,lp)
							end
						end
						player.Character.Humanoid.Health = (1)
						player.Character.Humanoid.Health = (0)
					end
				end
			end)
			task.wait(0.1)
			end
			end
		elseif (string.sub(Command,1,#".lk") == ".lk") then
			local args = string.sub(Command,#".lk" + 2)
			if args == "all" or args == "everyone" then
			getgenv().loop = true
			while loop do
			for _,player in pairs(game.Players:GetPlayers()) do
			pcall(function()
				if (player ~= nil and player.Character ~= nil) then
					if (player.Character:FindFirstChildOfClass("Part") ~= nil) then
						for _, Part in pairs(player.Character:GetDescendants()) do
							if (Part:IsA("BasePart")) then
								Remote:FireServer(Part,lp)
							end
						end
						player.Character.Humanoid.Health = (1)
						player.Character.Humanoid.Health = (0)
					end
				end
			end)
			end
			task.wait(0.1)
			end
			elseif args == "others" then
			getgenv().loop = true
			while loop do
			for _,player in pairs(game.Players:GetPlayers()) do
			if player ~= lp then
			pcall(function()
				if (player ~= nil and player.Character ~= nil) then
					if (player.Character:FindFirstChildOfClass("Part") ~= nil) then
						for _, Part in pairs(player.Character:GetDescendants()) do
							if (Part:IsA("BasePart")) then
								Remote:FireServer(Part,lp)
							end
						end
						player.Character.Humanoid.Health = (1)
						player.Character.Humanoid.Health = (0)
					end
				end
			end)
			end
			end
			task.wait(0.1)
			end
			else
			local player = getPlayer(args)
			getgenv().loop = true
			while loop do
			pcall(function()
				if (player ~= nil and player.Character ~= nil) then
					if (player.Character:FindFirstChildOfClass("Part") ~= nil) then
						for _, Part in pairs(player.Character:GetDescendants()) do
							if (Part:IsA("BasePart")) then
								Remote:FireServer(Part,lp)
							end
						end
						player.Character.Humanoid.Health = (1)
						player.Character.Humanoid.Health = (0)
					end
				end
			end)
			task.wait(0.1)
			end
			end
		elseif (string.sub(Command,1,#".unloopkill") == ".unloopkill") then
			local args = string.sub(Command,#".unloopkill" + 2)
			if args == "all" or args == "everyone" then
			getgenv().loop = false
			while loop do
			for _,player in pairs(game.Players:GetPlayers()) do
			pcall(function()
				if (player ~= nil and player.Character ~= nil) then
					if (player.Character:FindFirstChildOfClass("Part") ~= nil) then
						for _, Part in pairs(player.Character:GetDescendants()) do
							if (Part:IsA("BasePart")) then
								Remote:FireServer(Part,lp)
							end
						end
						player.Character.Humanoid.Health = (1)
						player.Character.Humanoid.Health = (0)
					end
				end
			end)
			end
			task.wait(0.1)
			end
			elseif args == "others" then
			getgenv().loop = false
			while loop do
			for _,player in pairs(game.Players:GetPlayers()) do
			if player ~= lp then
			pcall(function()
				if (player ~= nil and player.Character ~= nil) then
					if (player.Character:FindFirstChildOfClass("Part") ~= nil) then
						for _, Part in pairs(player.Character:GetDescendants()) do
							if (Part:IsA("BasePart")) then
								Remote:FireServer(Part,lp)
							end
						end
						player.Character.Humanoid.Health = (1)
						player.Character.Humanoid.Health = (0)
					end
				end
			end)
			end
			end
			task.wait(0.1)
			end
			else
			local player = getPlayer(args)
			getgenv().loop = false
			while loop do
			pcall(function()
				if (player ~= nil and player.Character ~= nil) then
					if (player.Character:FindFirstChildOfClass("Part") ~= nil) then
						for _, Part in pairs(player.Character:GetDescendants()) do
							if (Part:IsA("BasePart")) then
								Remote:FireServer(Part,lp)
							end
						end
						player.Character.Humanoid.Health = (1)
						player.Character.Humanoid.Health = (0)
					end
				end
			end)
			task.wait(0.1)
			end
			end
		elseif (string.sub(Command,1,#".unlk") == ".unlk") then
			local args = string.sub(Command,#".unlk" + 2)
			if args == "all" or args == "everyone" then
			getgenv().loop = false
			while loop do
			for _,player in pairs(game.Players:GetPlayers()) do
			pcall(function()
				if (player ~= nil and player.Character ~= nil) then
					if (player.Character:FindFirstChildOfClass("Part") ~= nil) then
						for _, Part in pairs(player.Character:GetDescendants()) do
							if (Part:IsA("BasePart")) then
								Remote:FireServer(Part,lp)
							end
						end
						player.Character.Humanoid.Health = (1)
						player.Character.Humanoid.Health = (0)
					end
				end
			end)
			end
			task.wait(0.1)
			end
			elseif args == "others" then
			getgenv().loop = false
			while loop do
			for _,player in pairs(game.Players:GetPlayers()) do
			if player ~= lp then
			pcall(function()
				if (player ~= nil and player.Character ~= nil) then
					if (player.Character:FindFirstChildOfClass("Part") ~= nil) then
						for _, Part in pairs(player.Character:GetDescendants()) do
							if (Part:IsA("BasePart")) then
								Remote:FireServer(Part,lp)
							end
						end
						player.Character.Humanoid.Health = (1)
						player.Character.Humanoid.Health = (0)
					end
				end
			end)
			end
			end
			task.wait(0.1)
			end
			else
			local player = getPlayer(args)
			getgenv().loop = false
			while loop do
			pcall(function()
				if (player ~= nil and player.Character ~= nil) then
					if (player.Character:FindFirstChildOfClass("Part") ~= nil) then
						for _, Part in pairs(player.Character:GetDescendants()) do
							if (Part:IsA("BasePart")) then
								Remote:FireServer(Part,lp)
							end
						end
						player.Character.Humanoid.Health = (1)
						player.Character.Humanoid.Health = (0)
					end
				end
			end)
			task.wait(0.1)
			end
			end
		elseif (string.sub(Command,1,#".void") == ".void") then
			local args = string.sub(Command,#".void" + 2)
			if args == "all" or args == "everyone" then
			for _,player in pairs(game.Players:GetPlayers()) do
			pcall(function()
				if (player ~= nil and player.Character ~= nil) then
					if (player.Character:FindFirstChildOfClass("Part") ~= nil) then
						for _, Part in pairs(player.Character:GetDescendants()) do
							if (Part:IsA("BasePart")) then
								Remote:FireServer(Part,lp)
							end
						end
						player.Character.HumanoidRootPart.CFrame = CFrame.new(9999, 9999, 9999)
					end
				end
			end)
			end
			elseif args == "others" then
			for _,player in pairs(game.Players:GetPlayers()) do
			if player ~= lp then
			pcall(function()
				if (player ~= nil and player.Character ~= nil) then
					if (player.Character:FindFirstChildOfClass("Part") ~= nil) then
						for _, Part in pairs(player.Character:GetDescendants()) do
							if (Part:IsA("BasePart")) then
								Remote:FireServer(Part,lp)
							end
						end
						player.Character.HumanoidRootPart.CFrame = CFrame.new(9999, 9999, 9999)
					end
				end
			end)
			end
			end
			else
			local player = getPlayer(args)
			pcall(function()
				if (player ~= nil and player.Character ~= nil) then
					if (player.Character:FindFirstChildOfClass("Part") ~= nil) then
						for _, Part in pairs(player.Character:GetDescendants()) do
							if (Part:IsA("BasePart")) then
								Remote:FireServer(Part,lp)
							end
						end
						player.Character.HumanoidRootPart.CFrame = CFrame.new(9999, 9999, 9999)
					end
				end
			end)
			end
		elseif (string.sub(Command,1,#".destroy") == ".destroy") then
			local args = string.sub(Command,#".destroy" + 2)
			if args == "all" or args == "everyone" then
			for _,player in pairs(game.Players:GetPlayers()) do
			pcall(function()
				if (player ~= nil and player.Character ~= nil) then
					if (player.Character:FindFirstChildOfClass("Part") ~= nil) then
						for _, Part in pairs(player.Character:GetDescendants()) do
							if (Part:IsA("BasePart")) then
								Remote:FireServer(Part,lp)
							end
						end
						player.Character:Destroy()
					end
				end
			end)
			end
			elseif args == "others" then
			for _,player in pairs(game.Players:GetPlayers()) do
			if player ~= lp then
			pcall(function()
				if (player ~= nil and player.Character ~= nil) then
					if (player.Character:FindFirstChildOfClass("Part") ~= nil) then
						for _, Part in pairs(player.Character:GetDescendants()) do
							if (Part:IsA("BasePart")) then
								Remote:FireServer(Part,lp)
							end
						end
						player.Character:Destroy()
					end
				end
			end)
			end
			end
			else
			local player = getPlayer(args)
			pcall(function()
				if (player ~= nil and player.Character ~= nil) then
					if (player.Character:FindFirstChildOfClass("Part") ~= nil) then
						for _, Part in pairs(player.Character:GetDescendants()) do
							if (Part:IsA("BasePart")) then
								Remote:FireServer(Part,lp)
							end
						end
						player.Character:Destroy()
					end
				end
			end)
			end
		elseif (string.sub(Command,1,#".money") == ".money") then
			pcall(function()
				for _, Part in pairs(workspace:GetDescendants()) do
					if (Part:IsA("BasePart") and Part.Name == "Money") then
						pcall(function()
							Remote:FireServer(Part,lp)
							Part.CFrame = workspace.Gameplay.CashRegister.RegisterPart.CFrame
							Part.Anchored = true
						end)
					end
				end
			end)
		elseif (string.sub(Command,1,#".noclip") == ".noclip") then -- say hi to the gerbils
			local args = string.sub(Command,#".noclip" + 2)
			if args == "all" or args == "everyone" then
			for _,player in pairs(game.Players:GetPlayers()) do
			pcall(function()
				if ((player ~= nil) and (player.Character ~= nil) and (player.Name ~= lp.Name)) then
					spawn(function()
						if (player.Character:FindFirstChildOfClass("Part") ~= nil) then
							for _, Part in pairs(player.Character:GetDescendants()) do
								if (Part:IsA("BasePart")) then
									Remote:FireServer(Part,lp)
								end
							end
							game:GetService("RunService").Stepped:Connect(function()
								for _, child in pairs(player.Character:GetDescendants()) do
									if (child:IsA("BasePart") and (child.CanCollide == true)) then 
										child.CanCollide = false
									end
								end
							end)
						end
					end)
				end
			end)
			end
			elseif args == "others" then
			for _,player in pairs(game.Players:GetPlayers()) do
			if player ~= lp then
			pcall(function()
				if ((player ~= nil) and (player.Character ~= nil) and (player.Name ~= lp.Name)) then
					spawn(function()
						if (player.Character:FindFirstChildOfClass("Part") ~= nil) then
							for _, Part in pairs(player.Character:GetDescendants()) do
								if (Part:IsA("BasePart")) then
									Remote:FireServer(Part,lp)
								end
							end
							game:GetService("RunService").Stepped:Connect(function()
								for _, child in pairs(player.Character:GetDescendants()) do
									if (child:IsA("BasePart") and (child.CanCollide == true)) then 
										child.CanCollide = false
									end
								end
							end)
						end
					end)
				end
			end)
			end
			end
			else
			local player = getPlayer(args)
			pcall(function()
				if ((player ~= nil) and (player.Character ~= nil) and (player.Name ~= lp.Name)) then
					spawn(function()
						if (player.Character:FindFirstChildOfClass("Part") ~= nil) then
							for _, Part in pairs(player.Character:GetDescendants()) do
								if (Part:IsA("BasePart")) then
									Remote:FireServer(Part,lp)
								end
							end
							game:GetService("RunService").Stepped:Connect(function()
								for _, child in pairs(player.Character:GetDescendants()) do
									if (child:IsA("BasePart") and (child.CanCollide == true)) then 
										child.CanCollide = false
									end
								end
							end)
						end
					end)
				end
			end)
			end
		elseif (string.sub(Command,1,#".clip") == ".clip") then -- say hi to the gerbils
			local args = string.sub(Command,#".clip" + 2)
			if args == "all" or args == "everyone" then
			for _,player in pairs(game.Players:GetPlayers()) do
			pcall(function()
				if ((player ~= nil) and (player.Character ~= nil) and (player.Name ~= lp.Name)) then
					spawn(function()
						if (player.Character:FindFirstChildOfClass("Part") ~= nil) then
							for _, Part in pairs(player.Character:GetDescendants()) do
								if (Part:IsA("BasePart")) then
									Remote:FireServer(Part,lp)
								end
							end
							game:GetService("RunService").Stepped:Connect(function()
								for _, child in pairs(player.Character:GetDescendants()) do
									if (child:IsA("BasePart") and (child.CanCollide == false)) then 
										child.CanCollide = true
									end
								end
							end)
							player.Character.Humanoid:ChangeState("Jumping")
						end
					end)
				end
			end)
			end
			elseif args == "others" then
			for _,player in pairs(game.Players:GetPlayers()) do
			if player ~= lp then
			pcall(function()
				if ((player ~= nil) and (player.Character ~= nil) and (player.Name ~= lp.Name)) then
					spawn(function()
						if (player.Character:FindFirstChildOfClass("Part") ~= nil) then
							for _, Part in pairs(player.Character:GetDescendants()) do
								if (Part:IsA("BasePart")) then
									Remote:FireServer(Part,lp)
								end
							end
							game:GetService("RunService").Stepped:Connect(function()
								for _, child in pairs(player.Character:GetDescendants()) do
									if (child:IsA("BasePart") and (child.CanCollide == false)) then 
										child.CanCollide = true
									end
								end
							end)
							player.Character.Humanoid:ChangeState("Jumping")
						end
					end)
				end
			end)
			end
			end
			else
			local player = getPlayer(args)
			pcall(function()
				if ((player ~= nil) and (player.Character ~= nil) and (player.Name ~= lp.Name)) then
					spawn(function()
						if (player.Character:FindFirstChildOfClass("Part") ~= nil) then
							for _, Part in pairs(player.Character:GetDescendants()) do
								if (Part:IsA("BasePart")) then
									Remote:FireServer(Part,lp)
								end
							end
							game:GetService("RunService").Stepped:Connect(function()
								for _, child in pairs(player.Character:GetDescendants()) do
									if (child:IsA("BasePart") and (child.CanCollide == false)) then 
										child.CanCollide = true
									end
								end
							end)
							player.Character.Humanoid:ChangeState("Jumping")
						end
					end)
				end
			end)
			end
		elseif (string.sub(Command,1,#".jail") == ".jail") then -- stop bein a skid lmfao
			local args = string.sub(Command,#".jail" + 2)
			if args == "all" or args == "everyone" then
			for _,player in pairs(game.Players:GetPlayers()) do
			pcall(function()
				if (player ~= nil and player.Character ~= nil) then
					if (player.Character:FindFirstChildOfClass("Part") ~= nil) then
						for _, Part in pairs(player.Character:GetDescendants()) do
							if (Part:IsA("BasePart")) then
								Remote:FireServer(Part,lp)
								Instance.new("BodyVelocity",Part).Velocity = Vector3.new(0,0,0)  
								Instance.new("BodyVelocity",Part).Velocity = Vector3.new(0,0,0)  
								Instance.new("BodyVelocity",Part).Velocity = Vector3.new(0,0,0)  
								Part.Velocity = Vector3.new(0,0,0)
							end
						end
						player.Character:FindFirstChildOfClass("Humanoid").Jump = true
					end
				end
			end)
			end
			elseif args == "others" then
			for _,player in pairs(game.Players:GetPlayers()) do
			if player ~= lp then
			pcall(function()
				if (player ~= nil and player.Character ~= nil) then
					if (player.Character:FindFirstChildOfClass("Part") ~= nil) then
						for _, Part in pairs(player.Character:GetDescendants()) do
							if (Part:IsA("BasePart")) then
								Remote:FireServer(Part,lp)
								Instance.new("BodyVelocity",Part).Velocity = Vector3.new(0,0,0)  
								Instance.new("BodyVelocity",Part).Velocity = Vector3.new(0,0,0)  
								Instance.new("BodyVelocity",Part).Velocity = Vector3.new(0,0,0)  
								Part.Velocity = Vector3.new(0,0,0)
							end
						end
						player.Character:FindFirstChildOfClass("Humanoid").Jump = true
					end
				end
			end)
			end
			end
			else
			local player = getPlayer(args)
			pcall(function()
				if (player ~= nil and player.Character ~= nil) then
					if (player.Character:FindFirstChildOfClass("Part") ~= nil) then
						for _, Part in pairs(player.Character:GetDescendants()) do
							if (Part:IsA("BasePart")) then
								Remote:FireServer(Part,lp)
								Instance.new("BodyVelocity",Part).Velocity = Vector3.new(0,0,0)  
								Instance.new("BodyVelocity",Part).Velocity = Vector3.new(0,0,0)  
								Instance.new("BodyVelocity",Part).Velocity = Vector3.new(0,0,0)  
								Part.Velocity = Vector3.new(0,0,0)
							end
						end
						player.Character:FindFirstChildOfClass("Humanoid").Jump = true
					end
				end
			end)
			end
		elseif (string.sub(Command,1,#".orbit") == ".orbit") then -- stop bein a skid lmfao
			local args = string.sub(Command,#".orbit" + 2)
			if args == "all" or args == "everyone" then
			for _,player in pairs(game.Players:GetPlayers()) do
			pcall(function()
				if (player ~= nil and player.Character ~= nil) then
					if (player.Character:FindFirstChildOfClass("Part") ~= nil) then
						for _, Part in pairs(player.Character:GetDescendants()) do
							if (Part:IsA("BasePart")) then
								Remote:FireServer(Part,lp)
							end
						end
						table.insert(Orbs, player.Character.HumanoidRootPart)
					end
				end
			end)
			end
			elseif args == "others" then
			for _,player in pairs(game.Players:GetPlayers()) do
			if player ~= lp then
			pcall(function()
				if (player ~= nil and player.Character ~= nil) then
					if (player.Character:FindFirstChildOfClass("Part") ~= nil) then
						for _, Part in pairs(player.Character:GetDescendants()) do
							if (Part:IsA("BasePart")) then
								Remote:FireServer(Part,lp)
							end
						end
						table.insert(Orbs, player.Character.HumanoidRootPart)
					end
				end
			end)
			end
			end
			else
			local player = getPlayer(args)
			pcall(function()
				if (player ~= nil and player.Character ~= nil) then
					if (player.Character:FindFirstChildOfClass("Part") ~= nil) then
						for _, Part in pairs(player.Character:GetDescendants()) do
							if (Part:IsA("BasePart")) then
								Remote:FireServer(Part,lp)
							end
						end
						table.insert(Orbs, player.Character.HumanoidRootPart)
					end
				end
			end)
			end
		elseif (string.sub(Command,1,#(".spin")) == (".spin")) then -- stop bein a skid lmfao
			local args = string.sub(Command,#".spin" + 2)
			if args == "all" or args == "everyone" then
			for _,player in pairs(game.Players:GetPlayers()) do
			pcall(function()
				if (player ~= nil and player.Character ~= nil) then
					if (player.Character:FindFirstChildOfClass("Part") ~= nil) then
						for _, Part in pairs(player.Character:GetDescendants()) do
							if (Part:IsA("BasePart")) then
								Remote:FireServer(Part,lp)
								local bambam = Instance.new("BodyThrust",Part)
                                                                bambam.Force = Vector3.new(101,0,101)
                                                                bambam.Location = Part.Position
							end
						end
					end
				end
			end)
			end
			elseif args == "others" then
			for _,player in pairs(game.Players:GetPlayers()) do
			if player ~= lp then
			pcall(function()
				if (player ~= nil and player.Character ~= nil) then
					if (player.Character:FindFirstChildOfClass("Part") ~= nil) then
						for _, Part in pairs(player.Character:GetDescendants()) do
							if (Part:IsA("BasePart")) then
								Remote:FireServer(Part,lp)
								local bambam = Instance.new("BodyThrust",Part)
                                                                bambam.Force = Vector3.new(101,0,101)
                                                                bambam.Location = Part.Position
							end
						end
					end
				end
			end)
			end
			end
			else
			local player = getPlayer(args)
			pcall(function()
				if (player ~= nil and player.Character ~= nil) then
					if (player.Character:FindFirstChildOfClass("Part") ~= nil) then
						for _, Part in pairs(player.Character:GetDescendants()) do
							if (Part:IsA("BasePart")) then
								Remote:FireServer(Part,lp)
								local bambam = Instance.new("BodyThrust",Part)
                                                                bambam.Force = Vector3.new(101,0,101)
                                                                bambam.Location = Part.Position
							end
						end
					end
				end
			end)
			end
		elseif (string.sub(Command,1,#(".control")) == (".control")) then
			local args = string.sub(Command,#".control" + 2)
			if args == "all" or args == "everyone" or args == "others" then
			for _,Player2 in pairs(game.Players:GetPlayers()) do
			if Player2 ~= lp then
			for _, Part in pairs(Player2.Character:GetDescendants()) do
				for i = 1,20 do
					if (Part:IsA("BasePart")) then
						Remote:FireServer(Part,lp)
					end
				end
			end
			lp.Character = Player2.Character
			workspace.CurrentCamera.CameraSubject = Player2.Character
			Player2.Character.Animate.Disabled = true
			wait(0.1)
			Player2.Character.Animate.Disabled = false
			end
			end
			else
			local Player2 = getPlayer(args)
			for _, Part in pairs(Player2.Character:GetDescendants()) do
				for i = 1,20 do
					if (Part:IsA("BasePart")) then
						Remote:FireServer(Part,lp)
					end
				end
			end
			lp.Character = Player2.Character
			workspace.CurrentCamera.CameraSubject = Player2.Character
			Player2.Character.Animate.Disabled = true
			wait(0.1)
			Player2.Character.Animate.Disabled = false
			end
		elseif (string.sub(Command,(1),#(".clear")) == (".clear")) then
			for i = 1,10 do
				pcall(function()
					for _, Part in pairs(workspace.Items:GetDescendants()) do
						if (Part:IsA("BasePart")) then
							Remote:FireServer(Part,lp)
							Instance.new("BodyVelocity",Part).Velocity = Vector3.new(0,-50,0)  
							Part.Velocity = Vector3.new(0,-50,0)
							Part.Position = Vector3.new(3208.08, 360.516, 265.241)
						end
					end
				end)
			end
		end
		RemoteQueue = (RemoteQueue-1)
	end)
end
local Sound = Instance.new(("Sound"),(workspace))
Sound.SoundId = ("rbxassetid://1053296915") Sound:Play()

function Tween(Obj, Prop, New, Time)
	if not Time then
		Time = .5
	end
	local TweenService = game:GetService("TweenService")
	local info = TweenInfo.new(
		Time, 
		Enum.EasingStyle.Quart, 
		Enum.EasingDirection.Out, 
		0, 
		false,
		0
	)
	local propertyTable = {
		[Prop] = New,
	}

	TweenService:Create(Obj, info, propertyTable):Play()
end

function Notify(Text,Dur)
	task.spawn(function()
		if not Dur then
			Dur = 1.5
		end
		local Notif = Instance.new("ScreenGui")
		local Frame_1 = Instance.new("Frame")
		local TextLabel = Instance.new("TextLabel")
		Notif.Parent = (game:GetService("CoreGui") or gethui())
		Notif.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
		Frame_1.Parent = Notif
		Frame_1.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		Frame_1.BackgroundTransparency=1
		Frame_1.BorderSizePixel = 0
		Frame_1.Position = UDim2.new(0, 0, 0.0500000007, 0)
		Frame_1.Size = UDim2.new(1, 0, 0.100000001, 0)
		TextLabel.Parent = Frame_1
		TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		TextLabel.BackgroundTransparency = 1.000
		TextLabel.TextTransparency =1
		TextLabel.Size = UDim2.new(1, 0, 1, 0)
		TextLabel.Font = Enum.Font.Highway
		TextLabel.Text = Text or "Text not found"
		TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
		TextLabel.TextSize = 21.000
		Tween(Frame_1,"BackgroundTransparency",0.350,.5)
		Tween(TextLabel,"TextTransparency",0,.5)
		wait(Dur+.7)
		Tween(Frame_1,"BackgroundTransparency",1,.5)
		Tween(TextLabel,"TextTransparency",1,.5)
		wait(.7)
		Notif:Destroy()
	end)
	return
end

lp.Chatted:connect(function(message) -- haha chat go brrrrr
	local args = message:lower()
	DoCommand(args)
	task.wait(0.05)
	DoCommand(args)
end)

Refresh.Activated:connect(function()
	local LP = game.Players.LocalPlayer
    local RE = LP.Character.HumanoidRootPart.Position
    game.ReplicatedStorage.Events.Player.SpawnRequestEvent:FireServer()
    task.wait(1)
    LP.Character.HumanoidRootPart.CFrame = CFrame.new(RE)
end)

search:GetPropertyChangedSignal("Text"):connect(function()
	for _,v in pairs(ScrollingFrame:GetChildren()) do
		if v.Name:lower():match(search.Text:lower()) then
			v.Visible = true
		else
			v.Visible = false
		end
	end
end)

spawn(function()
	game:GetService("RunService").Heartbeat:Connect(function()
		local cf = CFrame.new()
		pcall(function()
			cf = lp.Character.HumanoidRootPart.CFrame
		end)
		cf = CFrame.new(cf.X, cf.Y, cf.Z)
		for i = 1, #Orbs do
			pcall(function()
				Remote:FireServer(Orbs[i],lp)
				Orbs[i].CFrame = clerp(Orbs[i].CFrame,cf * CFrame.Angles(0, (math.rad(i / #Orbs * 360)) + (time() / 10), 0) * CFrame.new(0, 0, OrbDis) * CFrame.Angles(-time() / 10, -time() / 10, -time() / 10), .1)
			end)
		end
	end)
end)

spawn(function()
	for _,button in pairs(ScrollingFrame:GetChildren()) do
		if button:IsA("UIGridLayout") == false then
			button.Activated:connect(function()
				if target.Text:lower() == "all" or target.Text:lower() == "everyone" then
					for _,v in pairs(game.Players:GetPlayers()) do
						pcall(function()
							if v ~= nil and v.Character ~= nil then
								DoCommand('.'..button.Name:lower()..' '..v.Name)
							end
						end)
					end
				elseif target.Text:lower() == "others" then
					for _,v in pairs(game.Players:GetPlayers()) do
						pcall(function()
							if v ~= nil and v.Character ~= nil and v.Name ~= lp.Name then
								DoCommand('.'..button.Name:lower()..' '..v.Name)
							end
						end)
					end
				elseif target.Text:lower() == "random" then
					local GetPlayers = game.Players:GetPlayers()
			                if table.find(GetPlayers,Player) then table.remove(GetPlayers,table.find(GetPlayers,Player)) end
			                DoCommand('.'..button.Name:lower()..' '..GetPlayers[math.random(#GetPlayers)].Name)
				elseif target.Text:lower() ~= "all" and target.Text:lower() ~= "everyone" and target.Text:lower() ~= "others" and target.Text:lower() ~= "random" then
					DoCommand('.'..button.Name:lower()..' '..target.Text)
				end
			end)
		end
	end
end)

local counter = (0)
spawn(function()
	while wait(.5) do
		Main.BorderColor3 = Color3.fromHSV(math.acos(math.cos(counter*math.pi))/math.pi,(1),(1))
		counter = (counter + (0.01))
	end
end)

-- hi, im NoobHubV1 if you see me in a game

Notify("(Cook Burgers Admin V3.5) Script Loaded!",10)
