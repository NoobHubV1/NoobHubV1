local plr = game.Players.LocalPlayer

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

function Notif(Text,Dur)
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

function GetPlayer(Player)
        local function findPlayer(stringg)
		for _, v in pairs(game.Players:GetPlayers()) do
			if (stringg:lower() == (v.Name:lower()):sub(1, #stringg)) or (stringg:lower() == (v.DisplayName:lower()):sub(1, #stringg)) then return v end
		end
	end
	return findPlayer(Player)
end

local function savePos()
	return plr.Character.HumanoidRootPart.CFrame
end

local function savecamPos()
	return workspace["CurrentCamera"].CFrame
end

local ChangeTeam = function(Team)
                        local location = savePos()
	                local savecam = savecamPos()
                        if Team == game.Teams.Criminals then
                        workspace.Remote.TeamEvent:FireServer("Bright blue")
		        plr.CharacterAdded:Wait() wait(0.065)
                        plr.Character.HumanoidRootPart.CFrame = CFrame.new(-919.958, 95.327, 2138.189)
                        plr.CharacterAdded:Wait() wait(0.065)
                        plr.Character.HumanoidRootPart.CFrame = location
		        workspace["CurrentCamera"].CFrame = savecam
                        elseif Team == game.Teams.Guards then
                        workspace.Remote.TeamEvent:FireServer("Bright blue")
                        plr.CharacterAdded:Wait() wait(0.065)
                        plr.Character.HumanoidRootPart.CFrame = location
		        workspace["CurrentCamera"].CFrame = savecam
                        elseif Team == game.Teams.Inmates then
                        workspace.Remote.TeamEvent:FireServer("Bright orange")
                        plr.CharacterAdded:Wait() wait(0.065)
                        plr.Character.HumanoidRootPart.CFrame = location
		        workspace["CurrentCamera"].CFrame = savecam
	                elseif Team == game.Teams.Neutral then
		        workspace.Remote.TeamEvent:FireServer("Medium stone grey")
                        end
end

function U() spawn(function() while getgenv().autore do if plr.Character.Humanoid.Health <= 15 then ChangeTeam(plr.Team) end
wait()
end
end)
end

local destruct = Instance.new("ScreenGui")
local open = Instance.new("TextButton")
local close = Instance.new("TextButton")
local main = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local line = Instance.new("Frame")
local ImageLabel = Instance.new("ImageLabel")
local scripts = Instance.new("ScrollingFrame")
local UIGridLayout = Instance.new("UIGridLayout")
local AutoRespawn = Instance.new("TextButton")
local UnautoRespawn = Instance.new("TextButton")
local Cure = Instance.new("TextButton")
local player = Instance.new("TextBox")

--Properties:

destruct.Name = "destruct"
destruct.Parent = game.CoreGui
destruct.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

open.Name = "open"
open.Parent = destruct
open.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
open.BorderSizePixel = 0
open.Size = UDim2.new(0, 200, 0, 50)
open.Font = Enum.Font.Roboto
open.Text = "Open"
open.TextColor3 = Color3.fromRGB(255, 255, 255)
open.TextSize = 14.000
open.MouseButton1Click:Connect(function()
open.Visible = false
close.Visible = true
main.Visible = true
end)

close.Name = "close"
close.Parent = destruct
close.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
close.BorderSizePixel = 0
close.Size = UDim2.new(0, 200, 0, 50)
close.Font = Enum.Font.Roboto
close.Text = "Close"
close.TextColor3 = Color3.fromRGB(255, 255, 255)
close.TextSize = 14.000
close.MouseButton1Click:Connect(function()
open.Visible = true
close.Visible = false
main.Visible = false
end)

main.Name = "main"
main.Parent = destruct
main.BackgroundColor3 = Color3.fromRGB(76, 76, 76)
main.BackgroundTransparency = 0.3
main.BorderSizePixel = 0
main.Position = UDim2.new(0.268847764, 0, 0.372854918, 0)
main.Size = UDim2.new(0, 325, 0, 239)
main.Visible = false
main.Active = true

local UserInputService = game:GetService("UserInputService")

local gui = main

local dragging
local dragInput
local dragStart
local startPos

local function update(input)
	local delta = input.Position - dragStart
	gui:TweenPosition(UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y), Enum.EasingDirection.InOut, Enum.EasingStyle.Sine, 0.05, true)
end

gui.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
		dragging = true
		dragStart = input.Position
		startPos = gui.Position

		input.Changed:Connect(function()
			if input.UserInputState == Enum.UserInputState.End then
				dragging = false
			end
		end)
	end
end)

gui.InputChanged:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
		dragInput = input
	end
end)

UserInputService.InputChanged:Connect(function(input)
	if input == dragInput and dragging then
		update(input)
	end
end)

TextLabel.Parent = main
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0.292307675, 0, 0, 0)
TextLabel.Size = UDim2.new(0, 134, 0, 25)
TextLabel.Font = Enum.Font.Roboto
TextLabel.Text = "NoobHubV1"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 17.000

line.Name = "line"
line.Parent = main
line.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
line.BorderSizePixel = 0
line.Position = UDim2.new(0, 0, 0.106986806, 0)
line.Size = UDim2.new(0, 325, 0, 6)

ImageLabel.Parent = main
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.BackgroundTransparency = 1.000
ImageLabel.BorderSizePixel = 0
ImageLabel.Position = UDim2.new(0.184615389, 0, 0, 0)
ImageLabel.Size = UDim2.new(0, 25, 0, 25)
ImageLabel.Image = "http://www.roblox.com/asset/?id=4483345998"
ImageLabel.ScaleType = Enum.ScaleType.Fit

scripts.Name = "scripts"
scripts.Parent = main
scripts.Active = true
scripts.BackgroundColor3 = Color3.fromRGB(63, 63, 63)
scripts.BackgroundTransparency = 1
scripts.BorderSizePixel = 0
scripts.Position = UDim2.new(0, 0, 0.134782612, 0)
scripts.Size = UDim2.new(0, 325, 0, 173)
scripts.CanvasSize = UDim2.new(0, 0, 1.150, 0)

UIGridLayout.Parent = scripts
UIGridLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIGridLayout.CellSize = UDim2.new(0, 100, 0, 30)

AutoRespawn.Name = "AutoRespawn"
AutoRespawn.Parent = scripts
AutoRespawn.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
AutoRespawn.BorderSizePixel = 0
AutoRespawn.Size = UDim2.new(0, 200, 0, 50)
AutoRespawn.Font = Enum.Font.Roboto
AutoRespawn.Text = "Auto Respawn: On"
AutoRespawn.TextColor3 = Color3.fromRGB(255, 255, 255)
AutoRespawn.TextSize = 14.000

UnautoRespawn.Name = "UnautoRespawn"
UnautoRespawn.Parent = scripts
UnautoRespawn.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
UnautoRespawn.BorderSizePixel = 0
UnautoRespawn.Size = UDim2.new(0, 200, 0, 50)
UnautoRespawn.Font = Enum.Font.Roboto
UnautoRespawn.Text = "Auto Respawn: Off"
UnautoRespawn.TextColor3 = Color3.fromRGB(255, 255, 255)
UnautoRespawn.TextSize = 14.000

Cure.Name = "Cure"
Cure.Parent = scripts
Cure.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
Cure.BorderSizePixel = 0
Cure.Size = UDim2.new(0, 200, 0, 50)
Cure.Font = Enum.Font.Roboto
Cure.Text = "Give Cure"
Cure.TextColor3 = Color3.fromRGB(255, 255, 255)
Cure.TextSize = 14.000
Cure.MouseButton1Down:Connect(function()
GiveItem("Cure")
end)

player.Name = "player"
player.Parent = main
player.BackgroundColor3 = Color3.fromRGB(85, 85, 85)
player.BorderSizePixel = 0
player.Position = UDim2.new(0.0246153846, 0, 0.870292902, 0)
player.Size = UDim2.new(0, 310, 0, 23)
player.ClearTextOnFocus = true
player.Font = Enum.Font.SourceSans
player.PlaceholderColor3 = Color3.fromRGB(152, 152, 152)
player.PlaceholderText = "PLAYER"
player.Text = ""
player.TextColor3 = Color3.fromRGB(255, 255, 255)
player.TextSize = 14.000

AutoRespawn.MouseButton1Down:Connect(function()
AutoRespawn.Visible = false
UnautoRespawn.Visible = true
getgenv().autore = true U()
end)

UnautoRespawn.MouseButton1Down:Connect(function()
AutoRespawn.Visible = true
UnautoRespawn.Visible = false
getgenv().autore = false U()
end)
