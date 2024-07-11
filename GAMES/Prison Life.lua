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

local function UnequipTool()
	game.Players.LocalPlayer.Character.Humanoid:UnequipTools()
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

local LoadstringHttps = function(Https)
	loadstring(Game:HttpGet(Https))()
end

local function ServerCrash()
	while wait() do
local Gun = "Remington 870"

local Player = game.Players.LocalPlayer.Name

GiveItem(Gun)

for i,v in pairs(game.Players[ Player ].Backpack:GetChildren()) do
    if v.name == (Gun) then
        v.Parent = game.Players.LocalPlayer.Character
    end
end

Gun = game.Players[ Player ].Character[ Gun ]

UnequipTool()

function FireGun(target)
coroutine.resume(coroutine.create(function()
local bulletTable = {}
table.insert(bulletTable, {
Hit = target,
Distance = 100,
Cframe = CFrame.new(0,1,1),
RayObject = Ray.new(Vector3.new(0.1,0.2), Vector3.new(0.3,0.4))
})
game.ReplicatedStorage.ShootEvent:FireServer(bulletTable, Gun)
wait()
end))
end

while game:GetService("RunService").Stepped:wait() do
for count = 0, 10, 10 do
FireGun()
end
end
wait(5)
	end
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

PrisonLife:CreateButton("Server Crash", function()ServerCrash()
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

PrisonLife:CreateButton("Tiger Admin 3.0", function()LoadstringHttps("https://raw.githubusercontent.com/H17S32/Tiger_Admin/main/Tiger%20Admin%203.0")
end)

PrisonLife:CreateButton("Admin Gui", function()LoadstringHttps("https://raw.githubusercontent.com/NoobHubV1/RobloxScripts/main/Prison%20Life%20Admin.lua")
end)

Notif("(Prison Life Script By NoobHubV1) Script Loaded!)")
