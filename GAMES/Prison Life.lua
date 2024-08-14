local Library = loadstring(Game:HttpGetAsync(("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wizard")))()
local Players = game.Players
local plr = Players.LocalPlayer
local BuyGamepass = game:GetService("MarketplaceService"):UserOwnsGamePassAsync(tonumber((game:GetService("Players").LocalPlayer.CharacterAppearance):split('=')[#((game:GetService("Players").LocalPlayer.CharacterAppearance):split('='))]), 96651)

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

local function GetChar()
	return plr.Character
end

local GetPos = function()
        return GetChar().Torso.Position
end

local function Criminal()
	local savedcf = GetPos()
	if plr.Team == game.Teams.Guards then
	     task.wait()
	GetChar().HumanoidRootPart.CFrame = CFrame.new(-919.958, 95.327, 2138.189)
	task.wait(0.4)
	GetChar().HumanoidRootPart.CFrame = CFrame.new(savedcf)
	elseif plr.Team == game.Teams.Inmates then
	GetChar().HumanoidRootPart.CFrame = CFrame.new(-919.958, 95.327, 2138.189)
	task.wait()
        GetChar().HumanoidRootPart.CFrame = CFrame.new(savedcf)
	end
end

local function ChangeTeam(Team)
	local savedcf = GetPos()
	if Team == game.Teams.Criminals then
workspace.Remote.TeamEvent:FireServer("Bright blue") task.wait(0.2)
plr.Character.HumanoidRootPart.CFrame = CFrame.new(-919.958, 95.327, 2138.189)
task.wait(0.4)
plr.Character.HumanoidRootPart.CFrame = CFrame.new(savedcf)
	elseif Team == game.Teams.Inmates then
		workspace.Remote.TeamEvent:FireServer("Bright orange")
		task.wait(0.19)
		GetChar().HumanoidRootPart.CFrame = CFrame.new(savedcf)
	elseif Team == game.Teams.Guards then
		workspace.Remote.TeamEvent:FireServer("Bright blue")
		task.wait(0.19)
		GetChar().HumanoidRootPart.CFrame = CFrame.new(savedcf)
	elseif Team == game.Teams.Neutral then
		workspace.Remote.TeamEvent:FireServer("Medium stone grey")
	end
end

local SelectedTeam = function(TeamPath)
	if TeamPath == "Criminal" then
        Criminal()
        elseif TeamPath == "Inmate" then
        ChangeTeam(game.Teams.Inmates)
        elseif TeamPath == "Guard" then
        ChangeTeam(game.Teams.Guards)
        elseif TeamPath == "Neutral" then
        ChangeTeam(game.Teams.Neutral)
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

local function UnequipTool()
	game.Players.LocalPlayer.Character.Humanoid:UnequipTools()
end

local KillAura = function(State)
	getgenv().Loop = State
	while Loop do
			for i, e in pairs(game.Players:GetChildren()) do
				if e ~= game.Players.LocalPlayer then
					local meleeEvent = game:GetService("ReplicatedStorage").meleeEvent
					meleeEvent:FireServer(e)
	
				end
		        end
	task.wait()
	end
end

local function SilentAim()
	local Players = game.Players
local LocalPlayer = Players.LocalPlayer
local GetPlayers = Players.GetPlayers
local Camera = workspace.CurrentCamera
local WTSP = Camera.WorldToScreenPoint
local FindFirstChild = game.FindFirstChild
local Vector2_new = Vector2.new
local Mouse = LocalPlayer.GetMouse(LocalPlayer)
function ClosestChar()
    local Max, Close = math.huge
    for I,V in pairs(GetPlayers(Players)) do
        if V ~= LocalPlayer and V.Team ~= LocalPlayer.Team and V.Character then
            local Head = FindFirstChild(V.Character, "Head")
            if Head then
                local Pos, OnScreen = WTSP(Camera, Head.Position)
                if OnScreen then
                    local Dist = (Vector2_new(Pos.X, Pos.Y) - Vector2_new(Mouse.X, Mouse.Y)).Magnitude
                    if Dist < Max then
                        Max = Dist
                        Close = V.Character
                    end
                end
            end
        end
    end
    return Close
end

local MT = getrawmetatable(game)
local __namecall = MT.__namecall
setreadonly(MT, false)
MT.__namecall = newcclosure(function(self, ...)
    local Method = getnamecallmethod()
    if Method == "FindPartOnRay" and not checkcaller() and tostring(getfenv(0).script) == "GunInterface" then
        local Character = ClosestChar()
        if Character then
            return Character.Head, Character.Head.Position
        end
    end

    return __namecall(self, ...)
end)
setreadonly(MT, true)
end

local AllGuns = function()
	if BuyGamepass then
             GiveItem("Remington 870")
             GiveItem("AK-47")
             GiveItem("M9")
	     GiveItem("M4A1")
	else
	     GiveItem("Remington 870")
             GiveItem("AK-47")
             GiveItem("M9")
	end
end

local function AllItems()
	if BuyGamepass then
	     GiveItem("Remington 870")
             GiveItem("AK-47")
             GiveItem("M9")
             GiveItem("M4A1")
             GiveItem("Hammer")
             GiveItem("Knife")
	else
             GiveItem("Remington 870")
             GiveItem("AK-47")
             GiveItem("M9")
             GiveItem("Hammer")
             GiveItem("Knife")
        end
end

local AutoGuns = function(State)
	getgenv().Loop = State
	while Loop do
	task.wait(0.3)
	AllGuns()
	end
end

local AutoItems = function(State)
	getgenv().Loop = State
	while Loop do
	task.wait(0.3)
	AllItems()
	end
end

local function Respawn()
        ChangeTeam(plr.Team)
end

local function Noclip(State)
    player = game.Players.LocalPlayer
    character = player.Character

        for _, v in pairs(character:GetDescendants()) do
            pcall(function()
                if v:IsA("BasePart") then
                    v.CanCollide = State
                end
            end)
	end

    game:GetService("RunService").Stepped:wait()
end

local LoadstringHttps = function(Https)
	loadstring(Game:HttpGet(Https))()
end

local function ServerCrash()
	getgenv().Loop = true
	while Loop do
	for i = 1, 10 do
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
task.wait()
	end
	task.wait()
	end
end

local AutoRespawn = function(State)
	getgenv().Loop = State
	while Loop do
	wait()
	if GetChar().Humanoid.Health <= 30 then
	Respawn()
	end
	end
end

local function AntiFling()
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

local AntiBring = function(State)
	getgenv().Loop = State
	while Loop do
	if GetChar().Humanoid.Sit == true then
	GetChar().Humanoid:ChangeState("Jumping")
	end
	task.wait()
	end
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
	Criminal()
	task.wait(0.15)
        KillTeam(BrickColor.new("Bright orange").Name)
	task.wait(0.15)
	KillTeam(BrickColor.new("Bright blue").Name)
	if plr.Team == game.Teams.Criminals then
	ChangeTeam(game.Teams.Inmates)
	task.wait(0.15)
	KillTeam(BrickColor.new("Really red").Name)
	end
end

local LoopkillInmates = function(State)
	getgenv().lkinmates = State
	while lkinmates do
	KillInmates()
	task.wait()
	end
end

local LoopkillGuards = function(State)
	getgenv().lkguards = State
	while lkguards do
	KillGuards()
	task.wait()
	end
end

local function LoopkillCriminals(State)
	getgenv().lkcriminals = State
	while lkcriminals do
	KillCriminals()
	task.wait()
	end
end

local function LoopkillAll(State)
	getgenv().lkall = State
	while lkall do
	KillAll()
	task.wait(0.7)
	end
end

local Window = Library:NewWindow("NoobHubV1 Hub")

local PrisonLife = Window:NewSection("Main")

PrisonLife:CreateDropdown("Team", {"Inmate","Guard","Neutral","Criminal"}, 1, function(Value)SelectedTeam(Value)
end)

PrisonLife:CreateButton("Refresh", function()Respawn()
end)

PrisonLife:CreateToggle("Auto Respawn", function(Value)AutoRespawn(Value)
end)

PrisonLife:CreateToggle("Kill Aura", function(Value)KillAura(Value)
end)

PrisonLife:CreateButton("Anti Fling", function()AntiFling()
end)

local PrisonLife = Window:NewSection("Kill")

PrisonLife:CreateButton("Kill Inmates", function()KillInmates()
end)

PrisonLife:CreateButton("Kill Guards", function()KillGuards()
end)

PrisonLife:CreateButton("Kill Criminals", function()KillCriminals()
end)

PrisonLife:CreateButton("Kill All", function()KillAll()
end)

PrisonLife:CreateToggle("Loop kill Inmates", function(Value)LoopkillInmates(Value)
end)

PrisonLife:CreateToggle("Loop kill Guards", function(Value)LoopkillGuards(Value)
end)

PrisonLife:CreateToggle("Loop kill Criminals", function(Value)LoopkillCriminals(Value)
end)

PrisonLife:CreateToggle("Loop kill All", function(Value)LoopkillAll(Value)
end)

local PrisonLife = Window:NewSection("Player")

PrisonLife:CreateTextbox("WalkSpeed", function(Value)plr.Character.Humanoid.WalkSpeed = Value
end)

PrisonLife:CreateTextbox("JumpPower", function(Value)plr.Character.Humanoid.JumpPower = Value
end)

PrisonLife:CreateToggle("Noclip", function(Value)getgenv().Noclipping = Value
			if Noclipping == true then
				spawn(function()
					while Noclipping == true do
						Noclip(false)
						task.wait(.05)
					end
				end)
			end
			if Noclipping == false then
				Noclip(true)
			task.wait(0.3)
			GetChar().Humanoid:ChangeState("Jumping")
		        end
end)

PrisonLife:CreateToggle("AntiBring/AntiSit", function(Value)AntiBring(Value)
end)

local PrisonLife = Window:NewSection("Item")

PrisonLife:CreateDropdown("Item", {"Remington 870","AK-47","M9","Hammer","Knife","M4A1"}, 1, function(Value)SelectedItem = Value
end)

PrisonLife:CreateButton("Give Item", function()GiveItem(SelectedItem)
end)

PrisonLife:CreateToggle("Auto All Guns", function(Value)AutoGuns(Value)
end)

PrisonLife:CreateToggle("Auto All Items", function(Value)AutoItems(Value)
end)

PrisonLife:CreateButton("All Guns", function()AllGuns()
end)

PrisonLife:CreateButton("All Items", function()AllItems()
end)

PrisonLife:CreateButton("Silent Aim", function()SilentAim()
end)

PrisonLife:CreateButton("Server Crash", function()ServerCrash()
end)

local PrisonLife = Window:NewSection("Others")

PrisonLife:CreateButton("Tiger Admin 3.0", function()LoadstringHttps("https://raw.githubusercontent.com/H17S32/Tiger_Admin/main/Tiger%20Admin%203.0")
end)

PrisonLife:CreateButton("Admin Gui", function()LoadstringHttps("https://raw.githubusercontent.com/NoobHubV1/RobloxScripts/main/Prison%20Life%20Admin.lua")
end)

PrisonLife:CreateButton("Auto Respawn Button", function()Notif("Script Made by iTsSaalty") task.wait(1)
LoadstringHttps("https://raw.githubusercontent.com/NoobHubV1/NoobHubV1/main/Auto%20Respawn.lua")
end)

Notif("(Prison Life Script By NoobHubV1) Script Loaded!)")
