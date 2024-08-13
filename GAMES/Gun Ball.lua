-- Made by NoobHubV1
 
 -- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local re2 = Instance.new("TextButton")
local re1 = Instance.new("TextButton")

--Properties:

ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.ResetOnSpawn = false

Main.Name = "Main"
Main.Parent = ScreenGui
Main.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
Main.BorderColor3 = Color3.fromRGB(255, 0, 0)
Main.BorderSizePixel = 2
Main.Position = UDim2.new(0.00485906005, 0, 0.609179854, 0)
Main.Size = UDim2.new(0.17087847, 0, 0.381620556, 0)

re2.Name = "re2"
re2.Parent = Main
re2.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
re2.Position = UDim2.new(0.0705073774, 0, 0.271171719, 0)
re2.Size = UDim2.new(0.858350694, 0, 0.453797489, 0)
re2.Visible = false
re2.Font = Enum.Font.Arcade
re2.Text = "Spam Parry : On"
re2.TextColor3 = Color3.fromRGB(255, 255, 255)
re2.TextScaled = true
re2.TextSize = 14.000
re2.TextStrokeTransparency = 0.000
re2.TextWrapped = true

re1.Name = "re1"
re1.Parent = Main
re1.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
re1.Position = UDim2.new(0.0705073774, 0, 0.271171719, 0)
re1.Size = UDim2.new(0.858350694, 0, 0.453797489, 0)
re1.Font = Enum.Font.Arcade
re1.Text = "Spam Parry"
re1.TextColor3 = Color3.fromRGB(255, 255, 255)
re1.TextScaled = true
re1.TextSize = 14.000
re1.TextStrokeTransparency = 0.000
re1.TextWrapped = true

-- Scripts:

local function Parry()
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

local function Notif(Text,Dur)
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

local function MKANE_fake_script() -- re2.LocalScript 
	local script = Instance.new('LocalScript', re2)

	script.Parent.MouseButton1Click:Connect(function()
		script.Parent.Visible = false
		script.Parent.Parent.re1.Visible = true
		_G.Loop = false
	
		while _G.Loop == true do
			for i = 1, 50 do
			Parry()
			end
                        task.wait()
		end
	end)
end
coroutine.wrap(MKANE_fake_script)()
local function ARECQSO_fake_script() -- re1.LocalScript 
	local script = Instance.new('LocalScript', re1)

	script.Parent.MouseButton1Click:Connect(function()
		script.Parent.Text = "Spam Parry : Off"
		script.Parent.Visible = false
		script.Parent.Parent.re2.Visible = true
		_G.Loop = true
	
		while _G.Loop == true do
			for i = 1, 50 do
			Parry()
			end
                        task.wait()
		end
	end)
end
coroutine.wrap(ARECQSO_fake_script)()
local function VYXMZ_fake_script() -- Main.drag 
	local script = Instance.new('LocalScript', Main)

	local UserInputService = game:GetService("UserInputService")
	
	local gui = script.Parent
	
	local dragging
	local dragInput
	local dragStart
	local startPos
	
	local function update(input)
		local delta = input.Position - dragStart
		gui.Position = gui:TweenPosition(UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y), 'Out', 'Linear', 0.09, true); -- drag speed
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
end
coroutine.wrap(VYXMZ_fake_script)()
