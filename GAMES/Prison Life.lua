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

local function ChangeTeam(Team)
	if Team == game.Teams.Criminals then
		local LP = game.Players.LocalPlayer
    local RE = LP.Character.HumanoidRootPart.Position
    workspace.Remote.TeamEvent:FireServer("Bright orange")
    task.wait(0.7)
    LP.Character.HumanoidRootPart.CFrame = CFrame.new(RE)
		LCS = game.Workspace["Criminals Spawn"].SpawnLocation
    LCS.CanCollide = false
    LCS.Size = Vector3.new(51.05, 24.12, 54.76)
    LCS.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
    LCS.Transparency = 1
    task.wait()
    LCS.CFrame = CFrame.new(-920.510803, 92.2271957, 2138.27002, 0, 0, -1, 0, 1, 0, 1, 0, 0)
    LCS.Size = Vector3.new(6, 0.2, 6)
    LCS.Transparency = 0
	elseif Team == game.Teams.Inmates then
		local LP = game.Players.LocalPlayer
    local RE = LP.Character.HumanoidRootPart.Position
    workspace.Remote.TeamEvent:FireServer("Bright orange")
    task.wait(0.7)
    LP.Character.HumanoidRootPart.CFrame = CFrame.new(RE)
	elseif Team == game.Teams.Guards then
		local LP = game.Players.LocalPlayer
    local RE = LP.Character.HumanoidRootPart.Position
    workspace.Remote.TeamEvent:FireServer("Bright blue")
    task.wait(0.7)
    LP.Character.HumanoidRootPart.CFrame = CFrame.new(RE)
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

local function UnequipTool()
	game.Players.LocalPlayer.Character.Humanoid:UnequipTools()
end

local AllGuns = function()
        GiveItem("Remington 870")
        GiveItem("AK-47")
        GiveItem("M9")
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

local AutoGuns = function(State)
	getgenv().Loop = State
	while Loop do
	AllGuns()
	task.wait()
	end
end

local function Refresh()
        ChangeTeam(plr.Team)
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

local AutoRefresh = function(State)
	getgenv().Loop = State
while Loop do
local plr = game.Players.LocalPlayer
if plr.Character.Humanoid.Health == 0 then
Refresh()
end
task.wait(0.1)
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

PrisonLife:CreateButton("Refresh", function()Refresh()
end)

PrisonLife:CreateToggle("Auto Refresh", function(Value)AutoRefresh(Value)
end)

local PrisonLife = Window:NewSection("Item")

PrisonLife:CreateDropdown("Item", {"Shotgun","AK-47","M9","Hammer","Knife","M4A1"}, 1, function(Value)SelectedItem = Value
end)

PrisonLife:CreateButton("Give Item", function()GiveItem(SelectedItem)
end)

PrisonLife:CreateToggle("Auto All Guns", function(Value)AutoGuns(Value)
end)

PrisonLife:CreateButton("Server Crash", function()ServerCrash()
end)

local PrisonLife = Window:NewSection("Others")

PrisonLife:CreateButton("Tiger Admin 3.0", function()LoadstringHttps("https://raw.githubusercontent.com/H17S32/Tiger_Admin/main/Tiger%20Admin%203.0")
end)

PrisonLife:CreateButton("Admin Gui", function()LoadstringHttps("https://raw.githubusercontent.com/NoobHubV1/RobloxScripts/main/Prison%20Life%20Admin.lua")
end)

Notif("(Prison Life Script By NoobHubV1) Script Loaded!)")
