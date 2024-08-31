local plr = game.Players.LocalPlayer
local char = plr.CharacterAdded
local BuyGamepass = game:GetService("MarketplaceService"):UserOwnsGamePassAsync(tonumber((plr.CharacterAppearance):split('=')[#((plr.CharacterAppearance):split('='))]), 96651)

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

function TPCFrame(Arg2)
	plr.Character.HumanoidRootPart.CFrame = Arg2
end

local function savePos()
	return plr.Character.HumanoidRootPart.CFrame
end

local function savecamPos()
	return workspace["CurrentCamera"].CFrame
end

local function Criminal()
	local savedcf = savePos()
	local savedcamcf = savecamPos()
	if plr.Team == game.Teams.Guards then
	TPCFrame(CFrame.new(-919.958, 95.327, 2138.189))
	char:Wait() wait(0.065)
	TPCFrame(savedcf)
	workspace["CurrentCamera"].CFrame = savedcamcf
	elseif plr.Team == game.Teams.Inmates then
	TPCFrame(CFrame.new(-919.958, 95.327, 2138.189))
	task.wait()
        TPCFrame(savedcf)
	end
end

local ChangeTeam = function(Team)
                        local savedcf = savePos()
	                local savedcamcf = savecamPos()
                        if Team == game.Teams.Criminals then
                        workspace.Remote.TeamEvent:FireServer("Bright blue")
		        char:Wait() wait(0.065)
                        TPCFrame(CFrame.new(-919.958, 95.327, 2138.189))
                        char:Wait() wait(0.065)
                        TPCFrame(savedcf)
		        workspace["CurrentCamera"].CFrame = savedcamcf
                        elseif Team == game.Teams.Guards then
                        workspace.Remote.TeamEvent:FireServer("Bright blue")
                        char:Wait() wait(0.065)
                        TPCFrame(savedcf)
		        workspace["CurrentCamera"].CFrame = savedcamcf
                        elseif Team == game.Teams.Inmates then
                        workspace.Remote.TeamEvent:FireServer("Bright orange")
                        char:Wait() wait(0.065)
                        TPCFrame(savedcf)
		        workspace["CurrentCamera"].CFrame = savedcamcf
	                elseif Team == game.Teams.Neutral then
		        workspace.Remote.TeamEvent:FireServer("Medium stone grey")
                        end
end

local function GiveItem(Item)
        if Item == "Remington 870" then
                Workspace.Remote.ItemHandler:InvokeServer({Position=game.Players.LocalPlayer.Character.Head.Position,Parent=workspace.Prison_ITEMS.giver["Remington 870"]})
        elseif Item == "Hammer" then
                Workspace.Remote.ItemHandler:InvokeServer({Position=game.Players.LocalPlayer.Character.Head.Position,Parent=workspace.Prison_ITEMS.single["Hammer"]})
        elseif Item == "Knife" then
                Workspace.Remote.ItemHandler:InvokeServer({Position=game.Players.LocalPlayer.Character.Head.Position,Parent=workspace.Prison_ITEMS.single["Crude Knife"]})
        elseif Item == "AK-47" then
                Workspace.Remote.ItemHandler:InvokeServer({Position=game.Players.LocalPlayer.Character.Head.Position,Parent=workspace.Prison_ITEMS.giver["AK-47"]})
        elseif Item == "M9" then
                Workspace.Remote.ItemHandler:InvokeServer({Position=game.Players.LocalPlayer.Character.Head.Position,Parent=workspace.Prison_ITEMS.giver["M9"]})
        elseif Item == "M4A1" then
                Workspace.Remote.ItemHandler:InvokeServer({Position=game.Players.LocalPlayer.Character.Head.Position,Parent=workspace.Prison_ITEMS.giver["M4A1"]})
        end
end

local function Kill(Player)
        local events = {}
	local gun = nil
	GiveItem("Remington 870")
	for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
		if v.Name ~= "Taser" and v:FindFirstChild("GunStates") then
			gun = v
		end
	end
	if gun == nil then
		for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
			if v.Name ~= "Taser" and v:FindFirstChild("GunStates") then
				gun = v
			end
		end
	end
	coroutine.wrap(function()
		for i = 1,30 do
			game.ReplicatedStorage.ReloadEvent:FireServer(gun)
			wait(.5)
		end
	end)()
	for i = 1,5 do
		events[#events + 1] = {
			Hit = Player.Character:FindFirstChild("Head") or Player.Character:FindFirstChildOfClass("Part"),
			Cframe = CFrame.new(),
			RayObject = Ray.new(Vector3.new(), Vector3.new()),
			Distance = 0
		}
	end
	game.ReplicatedStorage.ShootEvent:FireServer(events, gun)
end

local KillTeam = function(Team)
	local events = {}
	local gun = nil
	GiveItem("Remington 870")
	for i,v in pairs(game.Players:GetPlayers()) do
		if v ~= game.Players.LocalPlayer and v.TeamColor.Name == Team then
			if v.TeamColor.Name == game.Players.LocalPlayer.TeamColor.Name then
				local savedcf = GetOrientation()
				local camcf = workspace.CurrentCamera.CFrame
				workspace.Remote.loadchar:InvokeServer(nil, BrickColor.random().Name)
				workspace.CurrentCamera.CFrame = camcf
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = savedcf
			end
			for i = 1,10 do
				events[#events + 1] = {
					Hit = v.Character:FindFirstChild("Head") or v.Character:FindFirstChildOfClass("Part"),
					Cframe = CFrame.new(),
					RayObject = Ray.new(Vector3.new(), Vector3.new()),
					Distance = 0
				}
			end
		end
	end
	for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
		if v.Name ~= "Taser" and v:FindFirstChild("GunStates") then
			gun = v
		end
	end
	if gun == nil then
		for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
			if v.Name ~= "Taser" and v:FindFirstChild("GunStates") then
				gun = v
			end
		end
	end
	coroutine.wrap(function()
		for i = 1,30 do
			game.ReplicatedStorage.ReloadEvent:FireServer(gun)
			wait(.5)
		end
	end)()
	game.ReplicatedStorage.ShootEvent:FireServer(events, gun)
end

local function CheckTeamKill(Player)
        local Player = GetPlayer(Player)
        if Player.Team == game.Teams.Inmates then
	if plr.Team == game.Teams.Inmates then
	Criminal()
	task.wait(0.15)
	Kill(Player)
	elseif plr.Team == game.Teams.Guards then
	Criminal()
	task.wait(0.25)
	Kill(Player)
	elseif plr.Team == game.Teams.Criminals then
	Kill(Player)
	end
        elseif Player.Team == game.Teams.Guards then
        if plr.Team == game.Teams.Guards then
        Criminal()
        task.wait(0.4)
        Kill(Player)
        elseif plr.Team == game.Teams.Criminals then
        Kill(Player)
        elseif plr.Team == game.Teams.Inmates then
        Kill(Player)
        end
        elseif Player.Team == game.Teams.Criminals then
        if plr.Team == game.Teams.Guards then
        ChangeTeam(game.Teams.Inmates)
        task.wait(0.3)
        Kill(Player)
        elseif plr.Team == game.Teams.Criminals then
        ChangeTeam(game.Teams.Inmates)
        task.wait(0.3)
        Kill(Player)
        elseif plr.Team == game.Teams.Inmates then
        Kill(Player)
	end
        end
end

local KillInmates = function()
	if plr.Team == game.Teams.Criminals then
	KillTeam(BrickColor.new("Bright orange").Name)
	elseif plr.Team == game.Teams.Guards then
	Criminal()
	task.wait(0.45)
	KillTeam(BrickColor.new("Bright orange").Name)
	elseif plr.Team == game.Teams.Inmates then
	Criminal()
	task.wait(0.15)
	KillTeam(BrickColor.new("Bright orange").Name)
	end
end

local function KillGuards()
	if plr.Team == game.Teams.Guards then
	ChangeTeam(game.Teams.Inmates)
	task.wait(0.15)
	KillTeam(BrickColor.new("Bright blue").Name)
	elseif plr.Team == game.Teams.Inmates then
	KillTeam(BrickColor.new("Bright blue").Name)
	elseif plr.Team == game.Teams.Criminals then
	KillTeam(BrickColor.new("Bright blue").Name)
	end
end

local KillCriminals = function()
	if plr.Team == game.Teams.Criminals then
        ChangeTeam(game.Teams.Inmates)
	task.wait(0.15)
        KillTeam(BrickColor.new("Really red").Name)
	elseif plr.Team == game.Teams.Guards then
	ChangeTeam(game.Teams.Inmates)
	task.wait(0.15)
	KillTeam(BrickColor.new("Really red").Name)
	elseif plr.Team == game.Teams.Inmates then
	KillTeam(BrickColor.new("Really red").Name)
	end
end

local function KillAll()
	KillInmates()
	task.wait(0.1)
	KillGuards()
	task.wait(0.2)
	KillCriminals()
end

local function AllGuns()
        if BuyGamepass then
	GiveItem("AK-47")
	GiveItem("Remington 870")
	GiveItem("M9")
	GiveItem("M4A1")
	else
	GiveItem("AK-47")
	GiveItem("Remington 870")
	GiveItem("M9")
	end
end

local function Aura()
	for i, v in pairs(game.Players:GetPlayers()) do
	        if v ~= plr then
			 game.ReplicatedStorage.meleeEvent:FireServer(v)
	        end
	end
end
	
function A() spawn(function() while getgenv().autore do if plr.Character.Humanoid.Health <= 15 then ChangeTeam(plr.Team) end
wait()
end
end)
end

function U() spawn(function() while getgenv().loopkillall do KillAll()
task.wait(0.7)
end
end)
end

function C() spawn(function() while getgenv().loopkillinmates do KillInmates()
task.wait(0.3)
end
end)
end

function G() spawn(function() while getgenv().loopkillguards do KillGuards()
task.wait(0.3)
end
end)
end

function D() spawn(function() while getgenv().loopkillcriminals do KillCriminals()
task.wait(0.3)
end
end)
end

function H(Player) spawn(function() while getgenv().loopkillplayer do CheckTeamKill(Player)
task.wait(0.3)
end
end)
end

function Y() spawn(function() while getgenv().autoguns do AllGuns()
task.wait(0.5)
end
end)
end

function F() spawn(function() while getgenv().killaura do Aura()
task.wait()
end
end)
end

local NoobHubV1 = Instance.new("ScreenGui")
local open = Instance.new("TextButton")
local close = Instance.new("TextButton")
local main = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local line = Instance.new("Frame")
local ImageLabel = Instance.new("ImageLabel")
local scripts = Instance.new("ScrollingFrame")
local UIGridLayout = Instance.new("UIGridLayout")
local Refresh = Instance.new("TextButton")
local AutoRespawn = Instance.new("TextButton")
local UnautoRespawn = Instance.new("TextButton")
local Kill = Instance.new("TextButton")
local Loopkill = Instance.new("TextButton")
local Unloopkill = Instance.new("TextButton")
local AutoGuns = Instance.new("TextButton")
local UnautoGuns = Instance.new("TextButton")
local AllGuns = Instance.new("TextButton")
local Inmate = Instance.new("TextButton")
local Guard = Instance.new("TextButton")
local Criminal = Instance.new("TextButton")
local Neutral = Instance.new("TextButton")
local KillAura = Instance.new("TextButton")
local UnkillAura = Instance.new("TextButton")
local player = Instance.new("TextBox")

--Properties:

NoobHubV1.Name = "NoobHubV1"
NoobHubV1.Parent = game.CoreGui
NoobHubV1.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

open.Name = "open"
open.Parent = NoobHubV1
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
close.Parent = NoobHubV1
close.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
close.BorderSizePixel = 0
close.Size = UDim2.new(0, 200, 0, 50)
close.Visible = false
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
main.Parent = NoobHubV1
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

Refresh.Name = "Refresh"
Refresh.Parent = scripts
Refresh.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
Refresh.BorderSizePixel = 0
Refresh.Size = UDim2.new(0, 200, 0, 50)
Refresh.Font = Enum.Font.Roboto
Refresh.Text = "Respawn"
Refresh.TextColor3 = Color3.fromRGB(255, 255, 255)
Refresh.TextSize = 14.000

AutoRespawn.Name = "AutoRespawn"
AutoRespawn.Parent = scripts
AutoRespawn.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
AutoRespawn.BorderSizePixel = 0
AutoRespawn.Size = UDim2.new(0, 200, 0, 50)
AutoRespawn.Visible = false
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
UnautoRespawn.Text = "Auto Respawn"
UnautoRespawn.TextColor3 = Color3.fromRGB(255, 255, 255)
UnautoRespawn.TextSize = 14.000

Kill.Name = "Kill"
Kill.Parent = scripts
Kill.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
Kill.BorderSizePixel = 0
Kill.Size = UDim2.new(0, 200, 0, 50)
Kill.Font = Enum.Font.Roboto
Kill.Text = "Kill"
Kill.TextColor3 = Color3.fromRGB(255, 255, 255)
Kill.TextSize = 14.000

Loopkill.Name = "Loopkill"
Loopkill.Parent = scripts
Loopkill.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
Loopkill.BorderSizePixel = 0
Loopkill.Size = UDim2.new(0, 200, 0, 50)
Loopkill.Font = Enum.Font.Roboto
Loopkill.Text = "Loopkill"
Loopkill.TextColor3 = Color3.fromRGB(255, 255, 255)
Loopkill.TextSize = 14.000

Unloopkill.Name = "Unloopkill"
Unloopkill.Parent = scripts
Unloopkill.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
Unloopkill.BorderSizePixel = 0
Unloopkill.Size = UDim2.new(0, 200, 0, 50)
Unloopkill.Visible = false
Unloopkill.Font = Enum.Font.Roboto
Unloopkill.Text = "Unloopkill"
Unloopkill.TextColor3 = Color3.fromRGB(255, 255, 255)
Unloopkill.TextSize = 14.000

AutoGuns.Name = "AutoGuns"
AutoGuns.Parent = scripts
AutoGuns.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
AutoGuns.BorderSizePixel = 0
AutoGuns.Size = UDim2.new(0, 200, 0, 50)
AutoGuns.Visible = false
AutoGuns.Font = Enum.Font.Roboto
AutoGuns.Text = "Auto Guns: On"
AutoGuns.TextColor3 = Color3.fromRGB(255, 255, 255)
AutoGuns.TextSize = 14.000

UnautoGuns.Name = "UnautoGuns"
UnautoGuns.Parent = scripts
UnautoGuns.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
UnautoGuns.BorderSizePixel = 0
UnautoGuns.Size = UDim2.new(0, 200, 0, 50)
UnautoGuns.Font = Enum.Font.Roboto
UnautoGuns.Text = "Auto Guns"
UnautoGuns.TextColor3 = Color3.fromRGB(255, 255, 255)
UnautoGuns.TextSize = 14.000

AllGuns.Name = "AllGuns"
AllGuns.Parent = scripts
AllGuns.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
AllGuns.BorderSizePixel = 0
AllGuns.Size = UDim2.new(0, 200, 0, 50)
AllGuns.Font = Enum.Font.Roboto
AllGuns.Text = "All Guns"
AllGuns.TextColor3 = Color3.fromRGB(255, 255, 255)
AllGuns.TextSize = 14.000

Inmate.Name = "Inmate"
Inmate.Parent = scripts
Inmate.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
Inmate.BorderSizePixel = 0
Inmate.Size = UDim2.new(0, 200, 0, 50)
Inmate.Font = Enum.Font.Roboto
Inmate.Text = "Inmate"
Inmate.TextColor3 = Color3.fromRGB(255, 255, 255)
Inmate.TextSize = 14.000
Inmate.MouseButton1Down:Connect(function()
ChangeTeam(game.Teams.Inmates)
end)

Guard.Name = "Guard"
Guard.Parent = scripts
Guard.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
Guard.BorderSizePixel = 0
Guard.Size = UDim2.new(0, 200, 0, 50)
Guard.Font = Enum.Font.Roboto
Guard.Text = "Guard"
Guard.TextColor3 = Color3.fromRGB(255, 255, 255)
Guard.TextSize = 14.000
Guard.MouseButton1Down:Connect(function()
ChangeTeam(game.Teams.Guards)
end)

Criminal.Name = "Criminal"
Criminal.Parent = scripts
Criminal.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
Criminal.BorderSizePixel = 0
Criminal.Size = UDim2.new(0, 200, 0, 50)
Criminal.Font = Enum.Font.Roboto
Criminal.Text = "Criminal"
Criminal.TextColor3 = Color3.fromRGB(255, 255, 255)
Criminal.TextSize = 14.000
Criminal.MouseButton1Down:Connect(function()
ChangeTeam(game.Teams.Criminals)
end)

Neutral.Name = "Neutral"
Neutral.Parent = scripts
Neutral.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
Neutral.BorderSizePixel = 0
Neutral.Size = UDim2.new(0, 200, 0, 50)
Neutral.Font = Enum.Font.Roboto
Neutral.Text = "Neutral"
Neutral.TextColor3 = Color3.fromRGB(255, 255, 255)
Neutral.TextSize = 14.000
Neutral.MouseButton1Down:Connect(function()
ChangeTeam(game.Teams.Neutral)
end)

KillAura.Name = "KillAura"
KillAura.Parent = scripts
KillAura.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
KillAura.BorderSizePixel = 0
KillAura.Size = UDim2.new(0, 200, 0, 50)
KillAura.Visible = false
KillAura.Font = Enum.Font.Roboto
KillAura.Text = "Kill Aura: On"
KillAura.TextColor3 = Color3.fromRGB(255, 255, 255)
KillAura.TextSize = 14.000

UnkillAura.Name = "UnkillAura"
UnkillAura.Parent = scripts
UnkillAura.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
UnkillAura.BorderSizePixel = 0
UnkillAura.Size = UDim2.new(0, 200, 0, 50)
UnkillAura.Font = Enum.Font.Roboto
UnkillAura.Text = "Kill Aura"
UnkillAura.TextColor3 = Color3.fromRGB(255, 255, 255)
UnkillAura.TextSize = 14.000

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

Refresh.MouseButton1Down:Connect(function()
ChangeTeam(plr.Team)
end)

AutoRespawn.MouseButton1Down:Connect(function()
AutoRespawn.Visible = false
UnautoRespawn.Visible = true
getgenv().autore = false A()
end)

UnautoRespawn.MouseButton1Down:Connect(function()
UnautoRespawn.Text = "Auto Respawn: Off"
UnautoRespawn.Visible = false
AutoRespawn.Visible = true
getgenv().autore = true A()
end)

Kill.MouseButton1Down:Connect(function()
local Target = player.Text
if Target == "all" or Target == "others" or Target == "everyone" then
KillAll()
Notif("(Success) Killed all")
elseif Target == "inmates" then
KillInmates()
Notif("(Success) Killed inmates")
elseif Target == "guards" then
KillGuards()
Notif("(Success) Killed guards")
elseif Target == "criminals" then
KillCriminals()
Notif("(Success) Killed criminals")
else
if GetPlayer(Target) ~= nil then
CheckTeamKill(Target)
Notif("(Success) Killed "..GetPlayer(Target).DisplayName)
else
Notif("(Error) No Player Found",3)
end
end
end)

Loopkill.MouseButton1Down:Connect(function()
Loopkill.Visible = false
Unloopkill.Visible = true
local Target = player.Text
if Target == "all" or Target == "others" or Target == "everyone" then
getgenv().loopkillall = true
U()
Notif("(Success) Loopkilled all")
elseif Target == "inmates" then
getgenv().loopkillinmates = true
C()
Notif("(Success) Loopkilled inmates")
elseif Target == "guards" then
getgenv().loopkillguards = true
G()
Notif("(Success) Loopkilled guards")
elseif Target == "criminals" then
getgenv().loopkillcriminals = true
D()
Notif("(Success) Loopkilled criminals")
else
if GetPlayer(Target) ~= nil then
getgenv().loopkillplayer = true
H(GetPlayer(Target))
Notif("(Success) Loopkilled "..GetPlayer(Target).DisplayName)
else
Notif("(Error) No Player Found",3)
end
end
end)

Unloopkill.MouseButton1Down:Connect(function()
Loopkill.Visible = true
Unloopkill.Visible = false
local Target = player.Text
if Target == "all" or Target == "others" or Target == "everyone" then
getgenv().loopkillall = false
U()
Notif("(Success) Unloopkilled all")
elseif Target == "inmates" then
getgenv().loopkillinmates = false
C()
Notif("(Success) Unloopkilled inmates")
elseif Target == "guards" then
getgenv().loopkillguards = false
G()
Notif("(Success) Unloopkilled guards")
elseif Target == "criminals" then
getgenv().loopkillcriminals = false
D()
Notif("(Success) Unloopkilled criminals")
else
if GetPlayer(Target) ~= nil then
getgenv().loopkillplayer = false
H(GetPlayer(Target))
Notif("(Success) Unloopkilled "..GetPlayer(Target).DisplayName)
else
Notif("(Error) No Player Found",3)
end
end
end)

AutoGuns.MouseButton1Down:Connect(function()
AutoGuns.Visible = false
UnautoGuns.Visible = true
getgenv().autoguns = false Y()
end)

UnautoGuns.MouseButton1Down:Connect(function()
UnautoGuns.Text = "Auto Guns: Off"
UnautoGuns.Visible = false
AutoGuns.Visible = true
getgenv().autoguns = true Y()
end)

AllGuns.MouseButton1Down:Connect(function()
AllGuns()
end)

KillAura.MouseButton1Down:Connect(function()
KillAura.Visible = false
UnkillAura.Visible = true
getgenv().killaura = false F()
end)

UnkillAura.MouseButton1Down:Connect(function()
UnkillAura.Text = "Kill Aura: Off"
UnkillAura.Visible = false
KillAura.Visible = true
getgenv().killaura = true F()
end)
