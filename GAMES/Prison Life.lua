local Library = loadstring(Game:HttpGetAsync(("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wizard")))()
local plr = game.Players.LocalPlayer

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
		API:Tween(Frame_1,"BackgroundTransparency",0.350,.5)
		API:Tween(TextLabel,"TextTransparency",0,.5)
		wait(Dur+.7)
		API:Tween(Frame_1,"BackgroundTransparency",1,.5)
		API:Tween(TextLabel,"TextTransparency",1,.5)
		wait(.7)
		Notif:Destroy()
	end)
	return
end

local ChangeTeam = function(Team)
        if Team == game.Teams.Inmates then
                workspace.Remote.TeamEvent:FireServer("Bright orange")
        elseif Team == game.Teams.Guards then
                workspace.Remote.TeamEvent:FireServer("Bright blue")
        elseif Team == game.Teams.Neutral then
                workspace.Remote.TeamEvent:FireServer("Medium stone grey")
        elseif Team == game.Teams.Criminals then
                LCS = game.Workspace["Criminals Spawn"].SpawnLocation
                LCS.CanCollide = false
                LCS.Size = Vector3.new(51.05, 24.12, 54.76)
                LCS.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                LCS.Transparency = 1
                wait(0.5)
                LCS.CFrame = CFrame.new(-920.510803, 92.2271957, 2138.27002, 0, 0, -1, 0, 1, 0, 1, 0, 0)
                LCS.Size = Vector3.new(6, 0.2, 6)
                LCS.Transparency = 0
        end
end

local function GiveItem(Item)
        if Item == "Shotgun" then
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

local AllGuns = function()
        GiveItem("Shotgun")
        wait(.3)
        GiveItem("AK-47")
        wait(.3)
        GiveItem("M9")
        wait(.3)
        GiveItem("M4A1")
end

local function AllItems()
        GiveItem("Shotgun")
        wait(.3)
        GiveItem("AK-47")
        wait(.3)
        GiveItem("M9")
        wait(.3)
        GiveItem("M4A1")
        wait(.3)
        GiveItem("Hammer")
        wait(.3)
        GiveItem("Knife")
end

local function Respawn()
        ChangeTeam(plr.Team)
end

local function AutoInfAmmo(State)
        getgenv().Loop = State
        while Loop do
        local gun = require(game.Players.LocalPlayer.Character:FindFirstChildOf("Tool").GunStates)
        gun["MaxAmmo"] = 999999999999
	gun["StoredAmmo"] = 999999999999
	gun["AmmoPerClip"] = 999999999999
	gun["CurrentAmmo"] = 999999999999
        task.wait(.5)
        end
end

local function InfAmmo()
        local gun = require(game.Players.LocalPlayer.Character:FindFirstChildOf("Tool").GunStates)
        gun["MaxAmmo"] = 999999999999
	gun["StoredAmmo"] = 999999999999
	gun["AmmoPerClip"] = 999999999999
	gun["CurrentAmmo"] = 999999999999
end

local FastFire = function()
        local gun = require(game.Players.LocalPlayer.Character:FindFirstChildOf("Tool").GunStates)
        gun.FireRate = 0
        gun.Range = math.huge
        gun.Spread = 5
        gun.ReloadTime = 0
end

local function AutoFastFire(State)
        getgenv().Loop = State
        while Loop do
        local gun = require(game.Players.LocalPlayer.Character:FindFirstChildOf("Tool").GunStates)
        gun.FireRate = 0
        gun.Range = math.huge
        gun.Spread = 5
        gun.ReloadTime = 0
        task.wait(.5)
        end
end

local TigerAdmin = function()
        loadstring(Game:HttpGet('https://raw.githubusercontent.com/NoobHubV1/RobloxScripts/main/Tiger%20Admin.lua'))()
end

local Window = Library:NewWindow("NoobHubV1 Hub")

local PrisonLife = Window:NewSection("Main")

PrisonLife:CreateDropdown("Team", {"Inmate","Guard","Neutral","Criminal"}, 1, function(Value)if Value == "Criminal" then
                                                                                                     ChangeTeam(game.Teams.Criminals)
                                                                                                     wait(1)
                                                                                                     Respawn()
                                                                                             elseif Value == "Inmate" then
                                                                                                     ChangeTeam(game.Teams.Inmates)
                                                                                             elseif Value == "Guard" then
                                                                                                     ChangeTeam(game.Teams.Guards)
                                                                                             elseif Value == "Neutral" then
                                                                                                     ChangeTeam(game.Teams.Neutral)
                                                                                             end
end)

PrisonLife:CreateButton("Respawn", function()Respawn()
end)

local PrisonLife = Window:NewSection("Item")

PrisonLife:CreateDropdown("Item", {"Shotgun","AK-47","M9","Hammer","Knife","M4A1"}, 1, function(Value)SelectedItem = Value
end)

PrisonLife:CreateButton("Give Item", function()GiveItem(SelectedItem)
end)

local PrisonLife = Window:NewSection("Gun Mode")

PrisonLife:CreateButton("Inf Ammo", function()InfAmmo()
end)

PrisonLife:CreateToggle("Auto Inf Ammo", function(Value)AutoInfAmmo(Value)
end)

PrisonLife:CreateButton("Fast Fire", function()FastFire()
end)

PrisonLife:CreateToggle("Auto Fast Fire", function(Value)AutoFastFire(Value)
end)

local PrisonLife = Window:NewSection("Tiger Admin By NoobHubV1")

PrisonLife:CreateButton("Tiger Admin", function()TigerAdmin()
end)

Notif("(Prison Life Script By NoobHubV1) Script Loaded!)")
