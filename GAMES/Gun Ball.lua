local Workspace = game:GetService("Workspace")
local CoreGui = game:GetService("CoreGui")
local Players = game:GetService("Players")
local GunBall = Instance.new("ScreenGui")
local BG = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local Unload = Instance.new("TextButton")
local Minimum = Instance.new("TextButton")
local Toggle = Instance.new("TextButton")
local StatusPF = Instance.new("TextLabel")
local Status = Instance.new("TextLabel")
local Credit = Instance.new("TextLabel")

GunBall.Name = "GunBall"
GunBall.Parent = game.CoreGui

BG.Name = "BG"
BG.Parent = GunBall
BG.BackgroundColor3 = Color3.new(0.0980392, 0.0980392, 0.0980392)
BG.BorderColor3 = Color3.new(0.0588235, 0.0588235, 0.0588235)
BG.BorderSizePixel = 2
BG.Position = UDim2.new(0.149479166, 0, 0.82087779, 0)
BG.Size = UDim2.new(0, 210, 0, 127)
BG.Active = true
BG.Draggable = true

Title.Name = "Title"
Title.Parent = BG
Title.BackgroundColor3 = Color3.new(0.266667, 0.00392157, 0.627451)
Title.BorderColor3 = Color3.new(0.180392, 0, 0.431373)
Title.BorderSizePixel = 2
Title.Size = UDim2.new(0, 210, 0, 33)
Title.Font = Enum.Font.Highway
Title.Text = "Gun Ball"
Title.TextColor3 = Color3.new(1, 1, 1)
Title.FontSize = Enum.FontSize.Size32
Title.TextSize = 30
Title.TextStrokeColor3 = Color3.new(0.180392, 0, 0.431373)
Title.TextStrokeTransparency = 0

Unload.Parent = BG
Unload.BackgroundColor3 = Color3.new(255, 0, 0)
Unload.BorderColor3 = Color3.new(0.180392, 0, 0.431373)
Unload.BorderSizePixel = 2
Unload.Position = UDim2.new(0.928571403, 0, 0.00571428565, 0)
Unload.Size = UDim2.new(0, 20, 0, 20)
Unload.Font = Enum.Font.Highway
Unload.FontSize = Enum.FontSize.Size28
Unload.Text = "X"
Unload.TextColor3 = Color3.new(1, 1, 1)
Unload.TextSize = 25
Unload.TextStrokeColor3 = Color3.new(0.180392, 0, 0.431373)
Unload.TextStrokeTransparency = 0

Minimum.Parent = BG
Minimum.BackgroundColor3 = Color3.new(0, 155, 155)
Minimum.BorderColor3 = Color3.new(0.180392, 0, 0.431373)
Minimum.BorderSizePixel = 2
Minimum.Position = UDim2.new(0.842857122, 0, 0.00571428565, 0)
Minimum.Size = UDim2.new(0, 20, 0, 20)
Minimum.Font = Enum.Font.Highway
Minimum.FontSize = Enum.FontSize.Size28
Minimum.Text = "="
Minimum.TextColor3 = Color3.new(1, 1, 1)
Minimum.TextSize = 25
Minimum.TextStrokeColor3 = Color3.new(0.180392, 0, 0.431373)
Minimum.TextStrokeTransparency = 0
Minimum.MouseButton1Click:Connect(function()
	if BG.BackgroundTransparency == 0 then
		BG.BackgroundTransparency = 1
		BG.Size = UDim2.new(0, 210, 0, 25)
		Toggle.Visible = false
		StatusPF.Visible = false
		Status.Visible = false
		Credit.Visible = false
		Minimum.Text = "+"
	elseif BG.BackgroundTransparency == 1 then
		BG.BackgroundTransparency = 0
		BG.Size = UDim2.new(0, 210, 0, 127)
		Toggle.Visible = true
		StatusPF.Visible = true
		Status.Visible = true
		Credit.Visible = true
		Minimum.Text = "="
	end
end)

Toggle.Parent = BG
Toggle.BackgroundColor3 = Color3.new(0.266667, 0.00392157, 0.627451)
Toggle.BorderColor3 = Color3.new(0.180392, 0, 0.431373)
Toggle.BorderSizePixel = 2
Toggle.Position = UDim2.new(0.152380958, 0, 0.374192119, 0)
Toggle.Size = UDim2.new(0, 146, 0, 36)
Toggle.Font = Enum.Font.Highway
Toggle.FontSize = Enum.FontSize.Size28
Toggle.Text = "Auto Parry"
Toggle.TextColor3 = Color3.new(1, 1, 1)
Toggle.TextSize = 25
Toggle.TextStrokeColor3 = Color3.new(0.180392, 0, 0.431373)
Toggle.TextStrokeTransparency = 0

StatusPF.Name = "StatusPF"
StatusPF.Parent = BG
StatusPF.BackgroundColor3 = Color3.new(1, 1, 1)
StatusPF.BackgroundTransparency = 1
StatusPF.Position = UDim2.new(0.314285725, 0, 0.708661377, 0)
StatusPF.Size = UDim2.new(0, 56, 0, 20)
StatusPF.Font = Enum.Font.Highway
StatusPF.FontSize = Enum.FontSize.Size24
StatusPF.Text = "Status:"
StatusPF.TextColor3 = Color3.new(1, 1, 1)
StatusPF.TextSize = 20
StatusPF.TextStrokeColor3 = Color3.new(0.333333, 0.333333, 0.333333)
StatusPF.TextStrokeTransparency = 0
StatusPF.TextWrapped = true

Status.Name = "Status"
Status.Parent = BG
Status.BackgroundColor3 = Color3.new(1, 1, 1)
Status.BackgroundTransparency = 1
Status.Position = UDim2.new(0.580952346, 0, 0.708661377, 0)
Status.Size = UDim2.new(0, 56, 0, 20)
Status.Font = Enum.Font.Highway
Status.FontSize = Enum.FontSize.Size14
Status.Text = "off"
Status.TextColor3 = Color3.new(0.666667, 0, 0)
Status.TextScaled = true
Status.TextSize = 14
Status.TextStrokeColor3 = Color3.new(0.180392, 0, 0.431373)
Status.TextWrapped = true
Status.TextXAlignment = Enum.TextXAlignment.Left

Credit.Name = "Credit"
Credit.Parent = BG
Credit.BackgroundColor3 = Color3.new(1, 1, 1)
Credit.BackgroundTransparency = 1
Credit.Position = UDim2.new(0.195238099, 0, 0.866141737, 0)
Credit.Size = UDim2.new(0, 128, 0, 17)
Credit.Font = Enum.Font.SourceSans
Credit.FontSize = Enum.FontSize.Size18
Credit.Text = "Created by NoobHubV1"
Credit.TextColor3 = Color3.new(1, 1, 1)
Credit.TextSize = 16
Credit.TextStrokeColor3 = Color3.new(0.196078, 0.196078, 0.196078)
Credit.TextStrokeTransparency = 0
Credit.TextWrapped = true

local States = {
      AutoParry = false
}

local ScriptDisabled = false

local function ParryAttempt()
	game:GetService("ReplicatedStorage").RemoteEvent:FireServer({["name"] = "defense",["origin"] = "balltargets"},{})
end

local function Tween(Obj, Prop, New, Time)
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

local function Notif(Text,Dur,Color,calling)
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
		TextLabel.Text = "["..calling.."] "..Text or "You I'm Gay"
		TextLabel.TextColor3 = Color or Color3.fromRGB(255, 255, 255)
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

Toggle.MouseButton1Click:connect(function()
 if Status.Text == "on" then
  Status.Text = "off"
  Status.TextColor3 = Color3.new(170,0,0)
  States.AutoParry = false 
  Notif("Auto Parry".." has been changed to "..tostring(States.AutoParry),3,Color3.fromRGB(0, 255, 0),"Success")
 elseif Status.Text == "off" then
  Status.Text = "on"
  Status.TextColor3 = Color3.new(0,185,0)
  States.AutoParry = true
  Notif("Auto Parry".." has been changed to "..tostring(States.AutoParry),3,Color3.fromRGB(0, 255, 0),"Success")
 end
end)

Unload.MouseButton1Click:Connect(function()
	GunBall:Destroy()
	ScriptDisabled = true
	Notif("Script is Unloaded, see you soon!",3,Color3.fromRGB(0, 255, 255),"Unloading...")
end)

spawn(function()
	while task.wait() do
		if States.AutoParry and not ScriptDisabled then
			task.spawn(ParryAttempt)
		end
	end
end)

Notif("Loaded Script V1.1 NoobHubV1",5,Color3.fromRGB(0, 255, 0),"Loads")
