local lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/NoobHubV1/RobloxScripts/main/Arceus%20X%20V3%20Lib.lua"))()
local States = {
      AutoParry = false
}
local ScriptDisabled = false

lib:SetTitle("Gun Ball")
lib:SetTitleColor(0, 0, 255)

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

local function Notif(Text,Dur,Color,Title)
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
		TextLabel.Text = "["..Title.."] "..Text or "You I'm Gay"
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

function ParryAttempt()
	game.ReplicatedStorage.RemoteEvent:FireServer({["name"] = "defense",["origin"] = "balltargets"},{})
end

function MoveTo(Cframe)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Cframe
end

lib:AddToggle("Auto Parry", function(v)
	States.AutoParry = v
	Notif("Auto Parry has been changed to "..tostring(States.AutoParry),3,Color3.fromRGB(0, 255, 0),"Success")
end)

lib:AddButton("Parry", function()
	ParryAttempt()
end)

lib:AddButton("Unload", function()
	lib:Destroy()
	ScriptDisabled = true
	Notif("Script is Unloaded",3,Color3.fromRGB(0, 255, 255),"Unload")
end)

spawn(function()
	while task.wait() do
		if States.AutoParry and not ScriptDisabled then
			ParryAttempt()
		end
	end
end)

lib:SetTheme("Default")
Notif("Script Loaded!",6,Color3.fromRGB(255, 0, 0),"Loads")
