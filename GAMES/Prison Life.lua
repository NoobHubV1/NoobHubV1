local Library = loadstring(Game:HttpGetAsync(("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wizard")))()
local Players = game.Players
local plr = Players.LocalPlayer
local Player = Players.LocalPlayer

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

local ConvertPosition = function(Position)
	if typeof(Position):lower() == "position" then
		return CFrame.new(Position)
	else
		return Position
	end
end

local function UnSit()
	plr.Character.Humanoid.Sit = false
end

local swait = function()
	game:GetService("RunService").Stepped:Wait()
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

local function MoveTo(Cframe)
	Cframe = ConvertPosition(Cframe)
	local Amount = 5
	if Player.PlayerGui['Home']['hud']['Topbar']['titleBar'].Title.Text:lower() == "lights out" or Player.PlayerGui.Home.hud.Topbar.titleBar.Title.Text:lower() == "lightsout" then
		Amount = 11
	end
	for i = 1, Amount do
		UnSit()
		Player.Character:WaitForChild("HumanoidRootPart").CFrame = Cframe
		swait()
	end
end

local GetCameraPosition = function(Player)
	return workspace["CurrentCamera"].CFrame
end

local function Loop(Times, calling)
	for i = 1, tonumber(Times) do
		calling()
	end
end

local function GetPosition(Player)
	game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart")

	if Player then
		return API:GetPart(Player).CFrame
	elseif not Player then
		return API:GetPart(plr).CFrame
	end
end

local GetPart = function(Target)
	game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart")

	return Target.Character:FindFirstChild("HumanoidRootPart") or Target.Character:FindFirstChild("Head")
end

local function WaitForRespawn(Cframe,NoForce)
	game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart")

	local Cframe = ConvertPosition(Cframe)
	local CameraCframe = GetCameraPosition()
	coroutine.wrap(function()
		local a
		a = Player.CharacterAdded:Connect(function(NewCharacter)
			pcall(function()
				coroutine.wrap(function()
					workspace.CurrentCamera:GetPropertyChangedSignal("CFrame"):Wait()
					Loop(5, function()
						workspace["CurrentCamera"].CFrame = CameraCframe
					end)
				end)()
				NewCharacter:WaitForChild("HumanoidRootPart")
				MoveTo(Cframe)
				if NoForce then
					task.spawn(function()
						NewCharacter:WaitForChild("ForceField"):Destroy()
					end)
				end
			end)
			a:Disconnect()
			Cframe = nil
		end)
		task.spawn(function()
			wait(2)
			if a then
				a:Disconnect()
			end
		end)
	end)()
end

local ChangeTeam = function(TeamPath,NoForce,Pos)
        pcall(function()
		repeat task.wait() until game:GetService("Players").LocalPlayer.Character
		game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart")

		WaitForRespawn(Pos or GetPosition(),NoForce)
	end)
	if TeamPath == game.Teams.Criminals then
		task.spawn(function()
			Workspace.Remote.TeamEvent:FireServer("Bright orange")
		end)
		repeat swait() until Player.Team == game.Teams.Inmates and Player.Character:FindFirstChild("HumanoidRootPart")
		repeat
			swait()
			if firetouchinterest then
				firetouchinterest(plr.Character:FindFirstChildOfClass("Part"), game:GetService("Workspace")["Criminals Spawn"]:GetChildren()[1], 0)
				firetouchinterest(plr.Character:FindFirstChildOfClass("Part"), game:GetService("Workspace")["Criminals Spawn"]:GetChildren()[1], 1)
			end
			game:GetService("Workspace")["Criminals Spawn"]:GetChildren()[1].Transparency = 1
			game:GetService("Workspace")["Criminals Spawn"]:GetChildren()[1].CanCollide = false
			game:GetService("Workspace")["Criminals Spawn"]:GetChildren()[1].CFrame = GetPosition()
		until plr.Team == game:GetService("Teams").Criminals
		game:GetService("Workspace")["Criminals Spawn"]:GetChildren()[1].CFrame = CFrame.new(0, 3125, 0)
	else
		if TeamPath == game.Teams.Neutral then
			workspace['Remote']['TeamEvent']:FireServer("Medium stone grey")
		else
			if not TeamPath or not TeamPath.TeamColor then
				workspace['Remote']['TeamEvent']:FireServer("Bright orange")
			else
				workspace['Remote']['TeamEvent']:FireServer(TeamPath.TeamColor.Name)
			end
		end
	end
end

local CreateBulletTable = function(Amount, Hit, IsTrue)
	local Args = {}
	for i = 1, tonumber(Amount) do
		if IsTrue then
			Args[#Args + 1] = {
				["RayObject"] = Ray.new(Vector3.new(990.272583, 101.489975, 2362.74878), Vector3.new(-799.978333, 0.23157759, -5.88794518)),
				["Distance"] = 198.9905242919922,
				["Cframe"] = CFrame.new(894.362549, 101.288307, 2362.53491, -0.0123058055, 0.00259522465, -0.999920964, 3.63797837e-12, 0.999996722, 0.00259542116, 0.999924302, 3.19387436e-05, -0.0123057645),
			}
		else
			Args[#Args + 1] = {
				["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),
				["Distance"] = 0,
				["Cframe"] = CFrame.new(),
				["Hit"] = Hit,
			}
		end
	end
	return Args
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

local function AdminGui()
	loadstring(Game:HttpGet('https://raw.githubusercontent.com/NoobHubV1/RobloxScripts/main/Prison%20Life%20Admin.lua'))()
end

local Window = Library:NewWindow("NoobHubV1 Hub")

local PrisonLife = Window:NewSection("Main")

PrisonLife:CreateDropdown("Team", {"Inmate","Guard","Neutral","Criminal"}, 1, function(Value)if Value == "Criminal" then
                                                                                                     ChangeTeam(game.Teams.Criminals)
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

local PrisonLife = Window:NewSection("Others")

PrisonLife:CreateButton("Tiger Admin", function()TigerAdmin()
end)

PrisonLife:CreateButton("Admin Gui", function()AdminGui()
end)

Notif("(Prison Life Script By NoobHubV1) Script Loaded!)")
