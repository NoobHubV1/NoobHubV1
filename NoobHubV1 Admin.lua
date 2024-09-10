local CmdBar = Instance.new("ScreenGui")
local LoadingScreen = Instance.new("Frame")
local LoadingLabel = Instance.new("TextLabel")
local Background = Instance.new("Frame")
local Input = Instance.new("TextBox")
local Open = Instance.new("TextButton")
local Close2 = Instance.new("TextButton")
local Output = Instance.new("TextButton")
local OutputFrame = Instance.new("Frame")
local Close1 = Instance.new("TextButton")
local Output1 = Instance.new("TextLabel")
local Output4 = Instance.new("TextLabel")
local Output5 = Instance.new("TextLabel")
local Output6 = Instance.new("TextLabel")
local Output3 = Instance.new("TextLabel")
local Output2 = Instance.new("TextLabel")
local CmdGui = Instance.new("Frame")
local LableLOL = Instance.new("TextLabel")
local CmdHandler = Instance.new("ScrollingFrame")
local UIListLayout = Instance.new("UIListLayout")
local COMMANDS = Instance.new("TextLabel")
local Close = Instance.new("TextButton")

CmdBar.Name = "CmdBar"
CmdBar.Parent = game:GetService("CoreGui")
CmdBar.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

LoadingScreen.Name = "LoadingScreen"
LoadingScreen.Parent = CmdBar
LoadingScreen.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
LoadingScreen.BorderSizePixel = 0
LoadingScreen.Position = UDim2.new(0.402142167, 0, 0.415692836, 0)
LoadingScreen.Size = UDim2.new(0, 200, 0, 100)
LoadingScreen.Visible = true

LoadingLabel.Name = "LoadingLabel"
LoadingLabel.Parent = LoadingScreen
LoadingLabel.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
LoadingLabel.BackgroundTransparency = 1.000
LoadingLabel.BorderSizePixel = 0
LoadingLabel.Position = UDim2.new(0.125, 0, 0.25, 0)
LoadingLabel.Size = UDim2.new(0, 150, 0, 50)
LoadingLabel.Font = Enum.Font.SourceSans
LoadingLabel.Text = "Wating"
LoadingLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
LoadingLabel.TextSize = 20.000
coroutine.wrap(function()
	while wait() do
		if Background.Visible == false then
			LoadingLabel.Text = "Loading."
			wait(.1)
			LoadingLabel.Text = "Loading.."
			wait(.1)
			LoadingLabel.Text = "Loading..."
			wait(.1)
		else
			LoadingLabel.Text = "Loaded"
		end
	end
end)()

Background.Name = "Background"
Background.Parent = CmdBar
Background.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
Background.BorderSizePixel = 0
Background.Position = UDim2.new(0.0128585557, 0, 0.853088498, 0)
Background.Size = UDim2.new(0, 200, 0, 75)
Background.Visible = false
Background.Active = true
Background.Draggable = true

Input.Name = "Input"
Input.Parent = Background
Input.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
Input.BorderSizePixel = 0
Input.Position = UDim2.new(0.125, 0, 0.519999981, 0)
Input.Size = UDim2.new(0, 150, 0, 30)
Input.Font = Enum.Font.SourceSans
Input.PlaceholderColor3 = Color3.fromRGB(255, 255, 255)
Input.PlaceholderText = "Loading..."
Input.Text = ""
Input.TextColor3 = Color3.fromRGB(255, 255, 255)
Input.TextSize = 14.000

Open.Name = "Open"
Open.Parent = CmdBar
Open.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
Open.BorderSizePixel = 0
Open.Size = UDim2.new(0, 35, 0, 35)
Open.Visible = false
Open.Font = Enum.Font.Gotham
Open.Text = "Open"
Open.TextColor3 = Color3.fromRGB(255, 255, 255)
Open.TextScaled = true
Open.TextSize = 14.000
Open.TextWrapped = true
Open.MouseButton1Click:Connect(function()
	Background.Visible = true
	Close2.Visible = true
	Open.Visible = false
end)

Close2.Name = "Close2"
Close2.Parent = CmdBar
Close2.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
Close2.BorderSizePixel = 0
Close2.Size = UDim2.new(0, 35, 0, 35)
Close2.Font = Enum.Font.Gotham
Close2.Text = "Close"
Close2.TextColor3 = Color3.fromRGB(255, 255, 255)
Close2.TextScaled = true
Close2.TextSize = 14.000
Close2.TextWrapped = true
Close2.MouseButton1Click:Connect(function()
	Background.Visible = false
	Open.Visible = true
	Close2.Visible = false
end)

Output.Name = "Output"
Output.Parent = Background
Output.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
Output.BorderSizePixel = 0
Output.Position = UDim2.new(0.0350000001, 0, 0.0799999982, 0)
Output.Size = UDim2.new(0, 25, 0, 25)
Output.Font = Enum.Font.SourceSans
Output.Text = ">_"
Output.TextColor3 = Color3.fromRGB(255, 255, 255)
Output.TextScaled = true
Output.TextSize = 18.000
Output.TextWrapped = true
Output.MouseButton1Click:Connect(function()
	OutputFrame.Visible = true
end)

OutputFrame.Name = "OutputFrame"
OutputFrame.Parent = CmdBar
OutputFrame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
OutputFrame.BorderSizePixel = 0
OutputFrame.Position = UDim2.new(0.0128585557, 0, 0.569282115, 0)
OutputFrame.Size = UDim2.new(0, 100, 0, 150)
OutputFrame.Visible = true
OutputFrame.Active = true
OutputFrame.Draggable = true

Close1.Name = "Close1"
Close1.Parent = OutputFrame
Close1.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
Close1.BorderSizePixel = 0
Close1.Position = UDim2.new(0.916666627, 0, 0, 0)
Close1.Size = UDim2.new(0, 25, 0, 25)
Close1.Font = Enum.Font.Gotham
Close1.Text = "X"
Close1.TextColor3 = Color3.fromRGB(255, 255, 255)
Close1.TextScaled = true
Close1.TextSize = 14.000
Close1.TextWrapped = true
Close1.MouseButton1Click:Connect(function()
	OutputFrame.Visible = false
end)

Output1.Name = "Output1"
Output1.Parent = OutputFrame
Output1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Output1.BackgroundTransparency = 1.000
Output1.BorderSizePixel = 0
Output1.Position = UDim2.new(0, 0, 0.833333313, 0)
Output1.Size = UDim2.new(0, 100, 0, 25)
Output1.Font = Enum.Font.SourceSans
Output1.Text = ""
Output1.TextColor3 = Color3.fromRGB(255, 255, 255)
Output1.TextScaled = true
Output1.TextSize = 14.000
Output1.TextWrapped = true

Output4.Name = "Output4"
Output4.Parent = OutputFrame
Output4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Output4.BackgroundTransparency = 1.000
Output4.BorderSizePixel = 0
Output4.Position = UDim2.new(0, 0, 0.333333313, 0)
Output4.Size = UDim2.new(0, 100, 0, 25)
Output4.Font = Enum.Font.SourceSans
Output4.Text = ""
Output4.TextColor3 = Color3.fromRGB(255, 255, 255)
Output4.TextScaled = true
Output4.TextSize = 14.000
Output4.TextWrapped = true

Output5.Name = "Output5"
Output5.Parent = OutputFrame
Output5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Output5.BackgroundTransparency = 1.000
Output5.BorderSizePixel = 0
Output5.Position = UDim2.new(0, 0, 0.166666627, 0)
Output5.Size = UDim2.new(0, 100, 0, 25)
Output5.Font = Enum.Font.SourceSans
Output5.Text = ""
Output5.TextColor3 = Color3.fromRGB(255, 255, 255)
Output5.TextScaled = true
Output5.TextSize = 14.000
Output5.TextWrapped = true

Output6.Name = "Output6"
Output6.Parent = OutputFrame
Output6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Output6.BackgroundTransparency = 1.000
Output6.BorderSizePixel = 0
Output6.Size = UDim2.new(0, 100, 0, 25)
Output6.Font = Enum.Font.SourceSans
Output6.Text = ""
Output6.TextColor3 = Color3.fromRGB(255, 255, 255)
Output6.TextScaled = true
Output6.TextSize = 14.000
Output6.TextWrapped = true

Output3.Name = "Output3"
Output3.Parent = OutputFrame
Output3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Output3.BackgroundTransparency = 1.000
Output3.BorderSizePixel = 0
Output3.Position = UDim2.new(0, 0, 0.5, 0)
Output3.Size = UDim2.new(0, 100, 0, 25)
Output3.Font = Enum.Font.SourceSans
Output3.Text = ""
Output3.TextColor3 = Color3.fromRGB(255, 255, 255)
Output3.TextScaled = true
Output3.TextSize = 14.000
Output3.TextWrapped = true

Output2.Name = "Output2"
Output2.Parent = OutputFrame
Output2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Output2.BackgroundTransparency = 1.000
Output2.BorderSizePixel = 0
Output2.Position = UDim2.new(0, 0, 0.666666687, 0)
Output2.Size = UDim2.new(0, 100, 0, 25)
Output2.Font = Enum.Font.SourceSans
Output2.Text = ""
Output2.TextColor3 = Color3.fromRGB(255, 255, 255)
Output2.TextScaled = true
Output2.TextSize = 14.000
Output2.TextWrapped = true

CmdGui.Name = "CmdGui"
CmdGui.Parent = CmdBar
CmdGui.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
CmdGui.BorderSizePixel = 0
CmdGui.Position = UDim2.new(0.353657007, 0, 0.248747885, 0)
CmdGui.Size = UDim2.new(0, 300, 0, 300)
CmdGui.Visible = false
CmdGui.Active = true
CmdGui.Draggable = true

LableLOL.Name = "LableLOL"
LableLOL.Parent = CmdGui
LableLOL.BackgroundColor3 = Color3.fromRGB(255, 0, 255)
LableLOL.BorderSizePixel = 0
LableLOL.Size = UDim2.new(0, 300, 0, 25)
LableLOL.Font = Enum.Font.GothamBlack
LableLOL.Text = "NoobHubV1 Admin"
LableLOL.TextColor3 = Color3.fromRGB(255, 255, 255)
LableLOL.TextScaled = true
LableLOL.TextSize = 14.000
LableLOL.TextWrapped = true

CmdHandler.Name = "CmdHandler"
CmdHandler.Parent = CmdGui
CmdHandler.Active = true
CmdHandler.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CmdHandler.BackgroundTransparency = 1.000
CmdHandler.BorderSizePixel = 0
CmdHandler.AutomaticCanvasSize = "XY"
CmdHandler.Position = UDim2.new(0.0833333358, 0, 0.116666675, 0)
CmdHandler.Size = UDim2.new(0, 250, 0, 250)
CmdHandler.ScrollBarThickness = 2

UIListLayout.Parent = CmdHandler
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

COMMANDS.Name = "CMDS"
COMMANDS.Parent = nil
COMMANDS.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
COMMANDS.BackgroundTransparency = 1.000
COMMANDS.BorderSizePixel = 0
COMMANDS.Size = UDim2.new(0, 250, 0, 20)
COMMANDS.Font = Enum.Font.SourceSans
COMMANDS.Text = "lol"
COMMANDS.AutomaticSize = "X"
COMMANDS.TextXAlignment = "Left"
COMMANDS.TextColor3 = Color3.fromRGB(255, 255, 255)
COMMANDS.TextScaled = false
COMMANDS.TextSize = 20.000
COMMANDS.TextWrapped = false

Close.Name = "Close"
Close.Parent = CmdGui
Close.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
Close.BorderSizePixel = 0
Close.Position = UDim2.new(0.916666627, 0, 0, 0)
Close.Size = UDim2.new(0, 25, 0, 25)
Close.Font = Enum.Font.Gotham
Close.Text = "X"
Close.TextColor3 = Color3.fromRGB(255, 255, 255)
Close.TextScaled = true
Close.TextSize = 14.000
Close.TextWrapped = true
Close.MouseButton1Click:Connect(function()
	CmdGui.Visible = false
end)

if DisableScript then
	DisableScript()
end

local States = {}
      States.autogun = true
      States.autore = true
      States.ff = false
      States.copychat = false
      States.Clickkill = false
      States.Clickarrest = false
      States.loopkillall = false
      States.loopkillinmates = false
      States.loopkillguards = false
      States.loopkillcriminals = false
      States.invisible = false
      States.antishield = false
      States.god = false
      States.antitaser = false
      States.rapidfire = false
      States.antivoid = false
      States.antifling = false
      States.fps = false
      States.arrestaura = false
      States.antiarrest = false
      States.superpunch = false
      States.fastpunch = false
      States.anticrash = false
      States.antiinvisible = false
      States.Clicktase = false

local Prefix = ";"
local Admin = {}
local LoopKill = {}
local InvisibleChecked = {}
local SpamArrestSuper = {}
local bgp = game:GetService("MarketplaceService"):UserOwnsGamePassAsync(game.Players.LocalPlayer.UserId, 96651)
--local bgp = game:GetService("MarketplaceService"):UserOwnsGamePassAsync(tonumber((game:GetService("Players").LocalPlayer.CharacterAppearance):split('=')[#((game:GetService("Players").LocalPlayer.CharacterAppearance):split('='))]), 96651)
local Used = false
local Gyro = nil
local Velocity = nil
local Players = game.Players
local plr = Players.LocalPlayer
local char = plr.CharacterAdded

local function GetPlayer(String)
	if not String then return end
	local Yes = {}
	for _,Player in ipairs(game.Players:GetPlayers()) do
		if string.lower(Player.Name):match(string.lower(String)) or string.lower(Player.DisplayName):match(string.lower(String)) then
			table.insert(Yes, Player)
		end
	end
	if #Yes > 0 then
		return Yes[1]
	elseif #Yes < 1 then
		return nil
	end
end

function TPCFrame(Arg2)
	plr.Character.HumanoidRootPart.CFrame = Arg2
end

function savePos()
	return plr.Character.HumanoidRootPart.CFrame
end

function savecamPos()
	return workspace["CurrentCamera"].CFrame
end

function saveteam()
	return plr.Team
end

function Criminal()
	local savedcf = savePos()
	local savedcamcf = savecamPos()
	if plr.Team == game.Teams.Guards then
	TPCFrame(CFrame.new(-919.958, 95.327, 2138.189))
	char:Wait() task.wait(0.06)
	TPCFrame(savedcf)
	workspace["CurrentCamera"].CFrame = savedcamcf
	elseif plr.Team == game.Teams.Inmates then
	TPCFrame(CFrame.new(-919.958, 95.327, 2138.189))
	task.wait()
        TPCFrame(savedcf)
	end
end

function ChangeTeam(Team)
                        local savedcf = savePos()
	                local savedcamcf = savecamPos()
                        if Team == game.Teams.Criminals then
                        workspace.Remote.TeamEvent:FireServer("Bright blue")
		        char:Wait() task.wait(0.06)
                        TPCFrame(CFrame.new(-919.958, 95.327, 2138.189))
		        char:Wait() task.wait(0.06)
                        TPCFrame(savedcf)
		        workspace["CurrentCamera"].CFrame = savedcamcf
                        elseif Team == game.Teams.Guards then
                        workspace.Remote.TeamEvent:FireServer("Bright blue")
                        char:Wait() task.wait(0.06)
                        TPCFrame(savedcf)
		        workspace["CurrentCamera"].CFrame = savedcamcf
                        elseif Team == game.Teams.Inmates then
                        workspace.Remote.TeamEvent:FireServer("Bright orange")
                        char:Wait() task.wait(0.06)
                        TPCFrame(savedcf)
		        workspace["CurrentCamera"].CFrame = savedcamcf
	                elseif Team == game.Teams.Neutral then
		        workspace.Remote.TeamEvent:FireServer("Medium stone grey")
                        end
end

function ChangeTeamNoSavePos(Team)
                        if Team == game.Teams.Criminals then
                        workspace.Remote.TeamEvent:FireServer("Bright blue")
		        char:Wait() task.wait(0.06)
                        TPCFrame(CFrame.new(-919.958, 95.327, 2138.189))
                        elseif Team == game.Teams.Guards then
                        workspace.Remote.TeamEvent:FireServer("Bright blue")
                        elseif Team == game.Teams.Inmates then
                        workspace.Remote.TeamEvent:FireServer("Bright orange")
	                elseif Team == game.Teams.Neutral then
		        workspace.Remote.TeamEvent:FireServer("Medium stone grey")
                        end
end

function GiveItem(Item)
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

function Goto(Player)
	TPCFrame(Player.Character.HumanoidRootPart.CFrame)
end

function KillPlayer(Player)
	local events = {}
	local gun = plr.Character:FindFirstChild("AK-47") or plr.Backpack:FindFirstChild("AK-47")
	GiveItem("AK-47")
	coroutine.wrap(function()
		for i = 1,50 do
			game.ReplicatedStorage.ReloadEvent:FireServer(gun)
			task.wait()
		end
	end)()
	for i = 1,10 do
		events[#events + 1] = {
			Hit = Player.Character:FindFirstChild("Head") or Player.Character:FindFirstChildOfClass("Part"),
			Cframe = CFrame.new(),
			RayObject = Ray.new(Vector3.new(), Vector3.new()),
			Distance = 0
		}
	end
	game.ReplicatedStorage.ShootEvent:FireServer(events, gun)
end

function Tase(Player)
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
		ChangeTeam(game.Teams.Guards)
	end
	gun = game.Players.LocalPlayer.Character:FindFirstChild("Taser") or game.Players.LocalPlayer.Backpack:FindFirstChild("Taser")
	game.ReplicatedStorage.ShootEvent:FireServer(events, gun)
	ChangeTeam(savedteam)
end

function TaseNoSaveTeam(Player)
        local events = {}
	local gun = plr.Character:FindFirstChild("Taser") or plr.Backpack:FindFirstChild("Taser")
	coroutine.wrap(function()
		for i = 1,5 do
			game.ReplicatedStorage.ReloadEvent:FireServer(gun)
			task.wait()
		end
	end)()
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
	if gun then -- nothing
        else
		ChangeTeam(game.Teams.Guards)
	end
	game.ReplicatedStorage.ShootEvent:FireServer(events, gun)
end

function TaseTeam(Team)
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
		ChangeTeam(game.Teams.Guards)
	end
	gun = game.Players.LocalPlayer.Character:FindFirstChild("Taser") or game.Players.LocalPlayer.Backpack:FindFirstChild("Taser")
	game.ReplicatedStorage.ShootEvent:FireServer(events, gun)
	ChangeTeam(savedteam)
end

function TaseAll()
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
		ChangeTeam(game.Teams.Guards)
	end
	gun = game.Players.LocalPlayer.Character:FindFirstChild("Taser") or game.Players.LocalPlayer.Backpack:FindFirstChild("Taser")
	game.ReplicatedStorage.ShootEvent:FireServer(events, gun)
	ChangeTeam(savedteam)
end

function Kill(Player)
	if Player.Character.Humanoid.Health == 0 or Player.Character:FindFirstChild("ForceField") then -- nothing
	else
        if Player.Team == game.Teams.Inmates then
	if plr.Team == game.Teams.Inmates then
	Criminal()
	task.wait(0.05)
	KillPlayer(Player)
	elseif plr.Team == game.Teams.Guards then
	Criminal()
	task.wait(0.15)
	KillPlayer(Player)
	elseif plr.Team == game.Teams.Criminals then
	KillPlayer(Player)
	end
        elseif Player.Team == game.Teams.Guards then
        if plr.Team == game.Teams.Guards then
        Criminal()
        task.wait(0.3)
        KillPlayer(Player)
        elseif plr.Team == game.Teams.Criminals then
        KillPlayer(Player)
        elseif plr.Team == game.Teams.Inmates then
        KillPlayer(Player)
        end
        elseif Player.Team == game.Teams.Criminals then
        if plr.Team == game.Teams.Guards then
        ChangeTeam(game.Teams.Inmates)
        task.wait(0.2)
        KillPlayer(Player)
        elseif plr.Team == game.Teams.Criminals then
        ChangeTeam(game.Teams.Inmates)
        task.wait(0.2)
        KillPlayer(Player)
        elseif plr.Team == game.Teams.Inmates then
        KillPlayer(Player)
	end
	elseif Player.Team == game.Teams.Neutral then
	if plr.Team == game.Teams.Guards then
        KillPlayer(Player)
        elseif plr.Team == game.Teams.Criminals then
        KillPlayer(Player)
        elseif plr.Team == game.Teams.Inmates then
        KillPlayer(Player)
	end
        end
	end
end

function KillInmates()
	for i,v in pairs(game.Teams.Inmates:GetPlayers()) do
	if v ~= plr then
	if v.Character.Humanoid.Health == 0 or v.Character:FindFirstChild("ForceField") then -- nothing
	else
	Kill(v)
	end
	end
	end
end

function KillGuards()
	for i,v in pairs(game.Teams.Guards:GetPlayers()) do
	if v ~= plr then
	if v.Character.Humanoid.Health == 0 or v.Character:FindFirstChild("ForceField") then -- nothing
	else
	Kill(v)
	end
	end
	end
end

function KillCriminals()
	for i,v in pairs(game.Teams.Criminals:GetPlayers()) do
	if v ~= plr then
	if v.Character.Humanoid.Health == 0 or v.Character:FindFirstChild("ForceField") then -- nothing
	else
	Kill(v)
	end
	end
	end
end

function KillAll()
	for i,v in pairs(game.Players:GetPlayers()) do
		if v ~= plr then
			if v.Team == game.Teams.Inmates or v.Team == game.Teams.Guards or v.Team == game.Teams.Criminals then
				if v.Character.Humanoid.Health == 0 or v.Character:FindFirstChild("ForceField") then -- nothing
				else
					Kill(v)
				end
			end
		end
	end
end

function Refresh()
  ChangeTeam(plr.Team)
end

function Respawn()
  ChangeTeamNoSavePos(plr.Team)
end

function Beam(Player, Time)
	if not Player or Player.Character:FindFirstChild("ForceField") then return end
	for i = 1,tonumber(Time) or 1 do
		pcall(function()
			local Head = Player.Character.Head
			local Gun = game.Players.LocalPlayer.Character:FindFirstChild("Remington 870") or game.Players.LocalPlayer.Backpack:FindFirstChild("Remington 870")
			if not Gun then
				workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["Remington 870"].ITEMPICKUP)
			end
			Gun = game.Players.LocalPlayer.Character:FindFirstChild("Remington 870") or game.Players.LocalPlayer.Backpack:FindFirstChild("Remington 870")
			if Gun and Head then
				game.ReplicatedStorage.ShootEvent:FireServer({
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = math.huge,["Cframe"] = Player.Character.HumanoidRootPart.CFrame,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = math.huge,["Cframe"] = Player.Character.HumanoidRootPart.CFrame,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = math.huge,["Cframe"] = Player.Character.HumanoidRootPart.CFrame,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = math.huge,["Cframe"] = Player.Character.HumanoidRootPart.CFrame,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = math.huge,["Cframe"] = Player.Character.HumanoidRootPart.CFrame,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = math.huge,["Cframe"] = Player.Character.HumanoidRootPart.CFrame,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = math.huge,["Cframe"] = Player.Character.HumanoidRootPart.CFrame,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = math.huge,["Cframe"] = Player.Character.HumanoidRootPart.CFrame,["Hit"] = Head}
				}, Gun)
			end
			Gun.Parent = game.Players.LocalPlayer.Character
			game.Players.LocalPlayer.Character:FindFirstChild("Remington 870"):Destroy()
		end)
	end
end

function ArrestEvent(Player, Time)
	for i = 1,tonumber(Time) or 1 do
		workspace.Remote.arrest:InvokeServer(Player.Character.Head)
	end
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
			plr.Character.Humanoid.Sit = false
			for i = 1,Time do
				coroutine.wrap(function()
					workspace.Remote.arrest:InvokeServer(Player.Character.Head)
				end)()
			end
		until Player.Character.Head:FindFirstChild("handcuffedGui")
	end
	game.Players.LocalPlayer.Character.Humanoid.Sit = false
	TPCFrame(savedcf)
	workspace.CurrentCamera.CFrame = savedcamcf
	end
end

function Notify(Message, Color)
	Output6.TextColor3 = Output5.TextColor3
	Output6.Text = Output5.Text
	Output5.TextColor3 = Output4.TextColor3
	Output5.Text = Output4.Text
	Output4.TextColor3 = Output3.TextColor3
	Output4.Text = Output3.Text
	Output3.TextColor3 = Output2.TextColor3
	Output3.Text = Output2.Text
	Output2.TextColor3 = Output1.TextColor3
	Output2.Text = Output1.Text
	Output1.Text = "[*] "..Message
	Output1.TextColor3 = Color or Color3.fromRGB(255, 255, 255)
end

function ChatNotify(Message, Colors, Size)
	game.StarterGui:SetCore("ChatMakeSystemMessage", {
		Text = Message,
		Color = Colors or Color3.fromRGB(255, 255, 255),
		Font = Enum.Font.SourceSans,
		FontSize = Size or Enum.FontSize.Size48
	})
end

function Chat(Message)
	game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(Message, "ALl")
end

function Command(Cmd)
	return arg1 == Prefix..Cmd
end

ChatNotify('[NoobHubV1 Admin]: Thanks '..game.Players.LocalPlayer.DisplayName..' for using "NoobHubV1 Admin"')
ChatNotify('[NoobHubV1 Admin]: Made by : NoobHubV1 | Youtube > @PhoBo2014')
ChatNotify('To see all avaibled commands please chat/type "'..Prefix..'cmd" or "'..Prefix..'cmds" and enjoy')
ChatNotify('The commands are hard to under stand you can open output ot see what they do')
Input.PlaceholderText = "Press "..Prefix.." to enter"
Notify("Loaded Admin Commands")

function Chatted(Message)
	split = Message:split(" ")
	arg1 = split[1]
	arg2 = split[2]
	arg3 = split[3]
	arg4 = split[4]
	if Command("cmd") or Command("cmds") then
		local Commands = {
			Prefix.."cmd/cmds - show cmds bar",
			Prefix.."unload/destroygui/destroy - destroygui",
			Prefix.."re/refresh - refresh",
			Prefix.."res/respawn - respawn",
			Prefix.."inmates/inmate - inmate team",
			Prefix.."guards/guard - guard team ",
			Prefix.."kill [plr] - kill",
                        Prefix.."killinmates - kill team inmates",
                        Prefix.."killguards [plr] - kill team guards",
                        Prefix.."killcriminals - kill team criminals",
                        Prefix.."killall - kill all",
			Prefix.."loopkill [plr] - loop kills",
                        Prefix.."loopkillinmates - loop kills team inmates",
                        Prefix.."loopkillguards - loop kills team guards",
                        Prefix.."loopkillcriminals - loop kills team criminals",
                        Prefix.."loopkillall - loop kills all",
			Prefix.."unloopkill [plr] - unloop kills",
                        Prefix.."unloopkillinmates - unloop kills team inmates",
                        Prefix.."unloopkillguards - unloop kills team guards",
                        Prefix.."unloopkillcriminals - unloop kills team criminals",
                        Prefix.."unloopkillall - unloop kills all",
			Prefix.."to [plr] - go to player",
			Prefix.."beam [plr] [time] - beam player",
			Prefix.."disconnect - disconnect",
			Prefix.."spamchat [plr] - spam player chat",
			Prefix.."unspamchat - unspam player chat",
			Prefix.."prefix [prefix] - set prefix",
			Prefix.."arrest [plr,criminals] - arrest player",
			Prefix.."guns - obtains guns",
			Prefix.."autoguns/aguns - auto gun on",
			Prefix.."unautoguns/unaguns - auto gun off",
			Prefix.."anticrash - anti crash on",
			Prefix.."unanticrash - anti crash off",
			Prefix.."arrestaura - arrest aura on",
			Prefix.."unarrestaura - arrest aura off",
			Prefix.."autore/autorespawn - auto respawn on",
			Prefix.."unautore/unautorespawn - auto respawn on",
			Prefix.."copychat - copy chat",
			Prefix.."uncopychat - copy chat",
			Prefix.."killaura [plr] - kill aura",
			Prefix.."unkillaura [plr] - unkill aura",
			Prefix.."antifling- anti fling on",
			Prefix.."unantifling- anti fling off",
			Prefix.."superpunch - super punch on",
			Prefix.."unsuperpunch - super punch off",
			Prefix.."fastpunch - fast punch on",
			Prefix.."antiarrest - anti arrest on",
			Prefix.."unantiarrest - anti arrest off",
			Prefix.."antivoid - anti void on",
			Prefix.."unantivoid - anti void off",
			Prefix.."fps - get more fps",
			Prefix.."abusergui - abuser gui",
			Prefix.."ws/speed [speed] - speed",
			Prefix.."jp/jumpower [jump] - jump power",
			Prefix.."hipheight [hip] - hip height",
			Prefix.."god/godmode - god mode on",
			Prefix.."ungod/ungodmode - god mode off",
			Prefix.."ff/forcefield - force field / ff",
			Prefix.."unff/unforcefield - force field / ff",
			Prefix.."rapidfire - rapid fire on",
			Prefix.."unrapidfire - rapid fire off",
			Prefix.."antitase - anti taser on",
			Prefix.."unantitase - anti taser off",
			Prefix.."antiinvisible/antighost - anti invisible",
			Prefix.."unantiinvisible/unantighost - anti invisible",
			Prefix.."view [plr] - view player",
			Prefix.."unview - unview player",
			Prefix.."nex - nexus",
			Prefix.."rof - cells roof",
			Prefix.."tow - tower",
			Prefix.."base - crim base",
			Prefix.."arm - armory",
			Prefix.."yar - yard",
			Prefix.."caf - cafeteria",
			Prefix.."bac - back nexus",
			Prefix.."cel - cells",
			Prefix.."gr - gate room",
			Prefix.."nc - no clips",
			Prefix.."c - clips",
			Prefix.."quit - leave",
			Prefix.."rj - rejoin",
			Prefix.."fly [speed] - fly",
			Prefix.."unfly - unfly",
			Prefix.."invisible/ghost - invisible on",
			Prefix.."uninvisible/unghost - invisible off",
			Prefix.."antishield - anti shield on",
			Prefix.."unantishield - anti shield off",
			Prefix.."baseballbat - base ball bat",
			Prefix.."bullets [count] - bullets",
			Prefix.."firespeed [count] - fire speed",
			Prefix.."reload [count] - reload time",
			Prefix.."autofire - auto fire on",
			Prefix.."unautofire - auto fire off",
			Prefix.."admin [plr] - admin",
			Prefix.."unadmin [plr] - unadmin",
			Prefix.."clearadmins - clear admins",
			Prefix.."tase/taze [plr] - tase player",
			Prefix.."taseinmates/tazeinmates - tase team inmates",
			Prefix.."tasecriminals/tasecriminals/tasecrims/tazecrims - tase team criminals",
			Prefix.."taseall/tazeall - tase inmates and criminals",
			Prefix.."taseaura [plr] - tase aura",
			Prefix.."untaseaura [plr] - untase aura",
			Prefix.."clickkill - click kill player",
			Prefix.."unclickkill - unclick kill player",
			Prefix.."clickarrest - click arrest player",
			Prefix.."unclickarrest - unclick arrest player",
			Prefix.."clicktase - click tase player",
			Prefix.."unclicktase - unclick tase player",
		}
		for i,v in pairs(CmdHandler:GetChildren()) do
			if v:IsA("TextLabel") then
				v:Destroy()
			end
		end
		local longtext = 0
		for i,v in pairs(Commands) do
			local clone = COMMANDS:Clone()
			clone.Text = v
			clone.Parent = CmdHandler
		end
		CmdGui.Visible = true
		Notify("commands")
	end
	if Command("unload") or Command("destroygui") or Command("destroy") then
		pcall(function()
		CmdBar:Destroy()
		local States = {}
                local Admin = {}
                local LoopKill = {}
                local InvisibleChecked = {}
                local SpamArrestSuper = {}
		ScriptDisabled = true
		for i,v in pairs(game.Lighting:GetChildren()) do
			v.Parent = workspace
		end
	        end)
	end
	if Command("anticrash") then
		States.anticrash = true
		Notify("anti crash on")
	end
	if Command("unanticrash") then
		States.anticrash = false
		Notify("anti crash off")
	end
	if Command("admin") then
		local player = GetPlayer(arg2)
		if player then
			if not Admin[player.UserId] then
				Admin[player.UserId] = {player = player}
				Chat("/w "..player.Name.." You've got admin type "..Prefix.."cmd or "..Prefix.."cmds to see all avaibled commands")
				Notify("adminned "..player.DisplayName)
			end
		end
	end
	if Command("unadmin") then
		local player = GetPlayer(arg2)
		if player then
			if Admin[player.UserId] then
				Admin[player.UserId] = nil
				Chat("/w "..player.Name.." You've been removed admin")
				Notify("unadminned "..player.DisplayName)
			end
		end
	end
	if Command("clearadmins") then
		Admin = {}
		Notify("cleared admins")
	end
	if Command("antiinvisible") or Command("antighost") then
		States.antiinvisible = true
		Notify("anti invisible on")
	end
	if Command("unantiinvisible") or Command("unantighost") then
		States.antiinvisible = false
		Notify("anti invisible off")
	end
	if Command("bullets") then
		local req = require(game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").GunStates)
		req["Bullets"] = tonumber(arg2) or tonumber(req["Bullets"])
		Notify("set bullets to "..tonumber(arg2) or tonumber(req["Bullets"]))
	end
	if Command("firespeed") then
		local req = require(game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").GunStates)
		req["FireRate"] = tonumber(arg2) or tonumber(req["FireRate"])
		Notify("set fire speed to "..tonumber(arg2) or tonumber(req["FireRate"]))
	end
	if Command("reloadtime") then
		local req = require(game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").GunStates)
		req["ReloadTime"] = tonumber(arg2) or tonumber(req["ReloadTime"])
		Notify("set reload time to "..tonumber(arg2) or tonumber(req["ReloadTime"]))
	end
	if Command("autofire") then
		local req = require(game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").GunStates)
		req["AutoFire"] = true
		Notify("set fire mode to auto")

	end
	if Command("unautofire") then
		local req = require(game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").GunStates)
		req["AutoFire"] = false
		Notify("set fire mode to semi")

	end
	if Command("baseballbat") then
		local LocalPlayer = game.Players.LocalPlayer
		local Character = LocalPlayer.Character
		local Backpack = LocalPlayer.Backpack
		local Humanoid = Character.Humanoid
		if not Backpack:FindFirstChild("Bat") or not Backpack:FindFirstChild("Bat") then
			local BaseBallBat = Instance.new("Tool", Backpack)
			local Handle = Instance.new("Part", BaseBallBat)
			BaseBallBat.GripPos = Vector3.new(0, -1.15, 0)
			BaseBallBat.Name = "Bat"
			Handle.Name = "Handle"
			Handle.Size = Vector3.new(0.4, 5, 0.4)
			local Animation =Instance.new("Animation", BaseBallBat)
			Animation.AnimationId = "rbxassetid://218504594"
			local Track = Humanoid:LoadAnimation(Animation)
			local Cooldown = false
			local Attacked = false
			local Attacking = false
			BaseBallBat.Equipped:Connect(function()
				BaseBallBat.Activated:Connect(function()
					if not Cooldown then
						Cooldown = true
						Attacking = true
						Track:Play()
						Handle.Touched:Connect(function(Hit)
							if Hit.Parent and Hit.Parent ~= game.Players.LocalPlayer and not Attacked and Attacking then
								Attacked = true
								for i = 1,15 do
									game.ReplicatedStorage.meleeEvent:FireServer(game.Players[Hit.Parent.Name])
								end
							end
						end)
						wait(0.25)
						Cooldown = false
						Attacked = false
						Attacking = false
					end
				end)
			end)
		end
		Notify("base ball bat")
	end
	if Command("invisible") or Command("ghost") then
		local player
		local position
		local humanoidrootpart
		States.invisible = true
			player = game.Players.LocalPlayer
			position = player.Character.HumanoidRootPart.Position
			player.Character:MoveTo(position + Vector3.new(0, 1000000, 0))
			humanoidrootpart = player.Character.HumanoidRootPart:Clone()
			player.Character.HumanoidRootPart:Destroy()
			humanoidrootpart.Parent = player.Character
			player.Character:MoveTo(position)
	end
	if Command("uninvisible") or Command("unghost") then
		States.invisible = false
	end
	if Command("antishield") then
		States.antishield = true
		Notify("anti shield on")
	end
	if Command("unantishield") then
		States.antishield = false
		Notify("anti shield off")
	end
	if Command("loopkill") then
		local player = GetPlayer(arg2)
			if player and not LoopKill[player.UserId] then
				LoopKill[player.UserId] = {player = player}
				Notify("loop kills "..player.DisplayName)
			end
	end
	if Command("unloopkill") then
		local player = GetPlayer(arg2)
			if player and LoopKill[player.UserId] then
				LoopKill[player.UserId] = nil
				Notify("unloop kills "..player.DisplayName)
			end
	end
        if Command("loopkillall") then
		States.loopkillall = true
		Notify("loop kills all")
        end
        if Command("loopkillinmates") then
		States.loopkillinmates = true
                Notify("loop kills inmates")
        end
        if Command("loopkillguards") then
		States.loopkillguards = true
                Notify("loop kills guards")
        end
        if Command("loopkillcriminals") then
		States.loopkillcriminals = true
                Notify("loop kills criminals")
        end
        if Command("unloopkillall") then
		States.loopkillall = false
                Notify("unloop kills all")
        end
        if Command("unloopkillinmates") then
		States.loopkillinmates = false
                Notify("unloop kills inmates")
        end
        if Command("unloopkillguards") then
	        States.loopkillguards = false
                Notify("unloop kills guards")
        end
        if Command("unloopkillcriminals") then
	      States.loopkillcriminals = false
              Notify("unloop kills criminals")
        end
        if Command("clearloopkills") then
              States.loopkillcriminals = false
              States.loopkillinmates = false
              States.loopkillguards = false
              States.loopkillall = false
              Notify("clear loop kills")
        end
	if Command("fly") then
		States.fly = true
		States.flyspeed = tonumber(arg2) or tonumber(States.flyspeed) or 1
		Notify("fly")
		pcall(function()
			Gyro.P = 0
			Gyro.MaxTorque = Vector3.new(0, 0, 0)
			Gyro.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
			Velocity.MaxForce = Vector3.new(0, 0, 0)
			Velocity.Velocity = Vector3.new(0, 0, 0)
			Gyro:Destroy()
			Velocity:Destroy()
			Gyro = nil
			Velocity = nil
		end)
		pcall(function()
			Gyro = Instance.new("BodyGyro", game.Players.LocalPlayer.Character.HumanoidRootPart)
			Velocity = Instance.new("BodyVelocity", game.Players.LocalPlayer.Character.HumanoidRootPart)
			Gyro.MaxTorque = Vector3.new(9e4, 9e4, 9e4)
			Gyro.P = 9e4
			Gyro.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
			Velocity.MaxForce = Vector3.new(9e4, 9e4, 9e4)
			Velocity.Velocity = Vector3.new(0, 0, 0)
		end)
		local controls = {"w","a","s","d","e","q"}
		local controlsValues = {1, -1, -1, 1, -1, 1}
		local controlsStats = {w = 0, a = 0, s = 0, d = 0, e = 0, q = 0}
		game:GetService("RunService").RenderStepped:Connect(function()
			if States.fly then
				Gyro.CFrame = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position, workspace.CurrentCamera.CFrame.p) * CFrame.Angles(0, math.rad(180), 0)
				Velocity.Velocity = ((Gyro.CFrame.lookVector + Vector3.new(0, 0.25, 0)) * (controlsStats["w"] + controlsStats["s"])) + ((Gyro.CFrame * CFrame.new(controlsStats["a"] + controlsStats["d"], controlsStats["e"] + controlsStats["q"], 0).p) - (Gyro.CFrame.p))
				game.Players.LocalPlayer.Character.Humanoid.PlatformStand = true
			end
		end)
		game.Players.LocalPlayer:GetMouse().KeyDown:Connect(function(key)
			for i,v in pairs(controls) do
				if key == v then
					controlsStats[key] = controlsValues[i] * 25 * States.flyspeed
				end
			end
		end)
		game.Players.LocalPlayer:GetMouse().KeyUp:Connect(function(key)
			for i,v in pairs(controls) do
				if key == v then
					controlsStats[key] = controlsValues[i] * 0
				end
			end
		end)
		game.Players.LocalPlayer.CharacterAdded:Connect(function()
			if States.fly then
				States.fly = false
				pcall(function()
					Gyro.P = 0
					Gyro.MaxTorque = Vector3.new(0, 0, 0)
					Gyro.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
					Velocity.MaxForce = Vector3.new(0, 0, 0)
					Velocity.Velocity = Vector3.new(0, 0, 0)
					Gyro:Destroy()
					Velocity:Destroy()
					Gyro = nil
					Velocity = nil
					game.Players.LocalPlayer.Character.Humanoid.PlatformStand = false
				end)
				game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
				pcall(function()
					Gyro = Instance.new("BodyGyro", game.Players.LocalPlayer.Character.HumanoidRootPart)
					Velocity = Instance.new("BodyVelocity", game.Players.LocalPlayer.Character.HumanoidRootPart)
					Gyro.MaxTorque = Vector3.new(9e4, 9e4, 9e4)
					Gyro.P = 9e4
					Gyro.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
					Velocity.MaxForce = Vector3.new(9e4, 9e4, 9e4)
					Velocity.Velocity = Vector3.new(0, 0, 0)
				end)
				States.fly = true
			end
		end)
	end
	if Command("unfly") then
		States.fly = false
		Notify("unfly")
		pcall(function()
			Gyro.P = 0
			Gyro.MaxTorque = Vector3.new(0, 0, 0)
			Gyro.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
			Velocity.MaxForce = Vector3.new(0, 0, 0)
			Velocity.Velocity = Vector3.new(0, 0, 0)
			Gyro:Destroy()
			Velocity:Destroy()
			Gyro = nil
			Velocity = nil
			game.Players.LocalPlayer.Character.Humanoid.PlatformStand = false
		end)
	end
	if Command("antitase") then
		States.antitaser = true
		Refresh()
		Notify("anti taser on")
	end
	if Command("unantitase") then
		States.antitaser = false
		Refresh()
		Notify("anti taser off")
	end
	if Command("rapidfire") then
		States.rapidfire = true
		Notify("rapid fire on")
	end
	if Command("unrapidfire") then
		States.rapidfire = false
		Notify("rapid fire off")
	end
	if Command("clip") then
		States.noclip = false
		Notify("clips")
	end
	if Command("noclip") then
		States.noclip = true
		Notify("no clips")
		game:GetService("RunService").Stepped:Connect(function()
			if States.noclip then
				pcall(function()
					game.Players.LocalPlayer.Character:FindFirstChild("Head").CanCollide = false
					game.Players.LocalPlayer.Character:FindFirstChild("Torso").CanCollide = false
				end)
			end
		end)
	end
	if Command("nex") then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(872.7822265625, 99.990005493164, 2387.4567871094)
	end
	if Command("rof") then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(924.82531738281, 138.46385192871, 2458.8420410156)
	end
	if Command("tow") then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(822.69244384766, 130.03994750977, 2588.4006347656)
	end
	if Command("base") then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-942.98992919922, 94.128784179688, 2056.1499023438)
	end
	if Command("arm") then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(792.8857421875, 102.78999328613, 2250.7065429688)
	end
	if Command("yar") then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(793.51580810547, 98.18994140625, 2546.2531738281)
	end
	if Command("caf") then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(874.12316894531, 99.989959716797, 2251.3356933594)
	end
	if Command("gr") then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(504.37423706055, 102.03991699219, 2242.4948730469)
	end
	if Command("bac") then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(978.74920654297, 99.990005493164, 2341.8315429688)
	end
	if Command("cel") then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(933.19299316406, 114.79006195068, 2500.8937988281)
	end
	if Command("re") or Command("refresh") then
		Refresh()
		Notify("re player")
	end
	if Command("res") then
		Respawn()
		Notify("respawned player")
	end
	if Command("inmate") or Command("inmates") then
		ChangeTeam(game.Teams.Inmates)
		Notify("inmate team")
	end
	if Command("guard") or Command("guards") then
		ChangeTeam(game.Teams.Guards)
		if plr.TeamColor.Name == "Bright blue" then
		Notify("guard team")
		else
		Notify("guards team full")
		end
	end
	if Command("criminal") or Command("criminals") or Command("crims") or Command("crim") then
		Criminal()
		Notify("criminal team")
	end
	if Command("kill") then
	        local player = GetPlayer(arg2)
		if player ~= nil then
		for i = 1,3 do
		Kill(player)
		end
		Notify("killed "..player.DisplayName)
		else
		Notify("No Player Found")
		end
	end
	if Command("killcriminals") then
	        KillCriminals()
		Notify("killed criminals")
	end
	if Command("killinmates") then
	        KillInmates()
		Notify("killed inmates")
	end
	if Command("killguards") then
	        KillGuards()
		Notify("killed criminals")
	end
	if Command("killall") then
	        KillAll()
		Notify("killed all")
	end
	if Command("to") then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace[GetPlayer(arg2).Name].HumanoidRootPart.CFrame
		Notify("go to "..GetPlayer(arg2).DisplayName)
	end
	if Command("beam") then
		local Time = tonumber(arg2) or 1
		Beam(GetPlayer(arg2), Time)
		Notify("beamed "..GetPlayer(arg2).DisplayName.." "..Time.." time(s)")
	end
	if Command("disconnect") then
		Notify("disconnecting")
		while wait() do
			pcall(function()
				coroutine.wrap(function()
					local Head = game.Players.LocalPlayer.Character.Head
					local Gun = game.Players.LocalPlayer.Character:FindFirstChild("Remington 870") or game.Players.LocalPlayer.Backpack:FindFirstChild("Remington 870")
					Head = game.Players.LocalPlayer.Character.Head
					if not Gun then
						GiveItem("Remington 870")
						Gun = game.Players.LocalPlayer.Character:FindFirstChild("Remington 870") or game.Players.LocalPlayer.Backpack:FindFirstChild("Remington 870")
					end
					if Gun and Head then
						game.ReplicatedStorage.ShootEvent:FireServer({
							{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = 0,["Cframe"] = CFrame.new(),["Hit"] = Head},
							{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = 0,["Cframe"] = CFrame.new(),["Hit"] = Head},
							{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = 0,["Cframe"] = CFrame.new(),["Hit"] = Head},
							{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = 0,["Cframe"] = CFrame.new(),["Hit"] = Head},
							{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = 0,["Cframe"] = CFrame.new(),["Hit"] = Head},
							{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = 0,["Cframe"] = CFrame.new(),["Hit"] = Head},
							{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = 0,["Cframe"] = CFrame.new(),["Hit"] = Head},
							{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = 0,["Cframe"] = CFrame.new(),["Hit"] = Head}
						}, Gun)
					end
				end)()
			end)
		end
	end
	if Command("spamchat") then
		local player = GetPlayer(arg2)
		if player then
			Notify("spamming "..player.DisplayName.." chat")
			States.spamchat = true
			repeat
				for i = 1,10 do
					coroutine.wrap(function()
						game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("LOL LOL LOL LOL LOL LOL LOL LOL LOL LOL LOL LOL LOL LOL LOL LOL LOL LOL LOL LOL LOL LOL LOL LOL LOL LOL LOL LOL LOL LOL LOL LOL", "ALl")
					end)()
				end
				wait(15)
			until not game.Players[player.Name] or not States.spamchat
		end
	end
	 if Command("unspamchat") then
		States.spamchat = false
		Notify("unspammed chat")
	 end
	 if Command("prefix") then
		if arg2 ~= nil then
			Notify("changed prefix to "..arg2)
			Prefix = arg2
			wait(.2)
			Input.PlaceholderText = "Press "..Prefix.." to enter"
		end
	end
	if Command("arrest") then
		local player = GetPlayer(arg2)
		if arg2 == "criminals" then
			for i,v in pairs(game.Teams.Criminals:GetPlayers()) do
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = player.Character.HumanoidRootPart.CFrame
				for i = 1,100 do
					coroutine.wrap(function()
						ArrestEvent(player, 10)
					end)()
				end
			end
			Notify("arrested criminals")
		else
			if player and player.TeamColor.Name == "Really red" then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = player.Character.HumanoidRootPart.CFrame
				for i = 1,100 do
					coroutine.wrap(function()
						ArrestEvent(player, 10)
					end)()
				end
				Notify("arrested "..player.DisplayName)
			end
		end
	end
	if Command("guns") or Command("gun") then
		if bgp then
			GiveItem("AK-47")
			GiveItem("Remington 870")
			GiveItem("M9")
			GiveItem("M4A1")
		else
			GiveItem("AK-47")
			GiveItem("Remington 870")
			GiveItem("M9")
		end
		Notify("grabbed a gun")
	end
	if Command("autoguns") or Command("aguns") then
		States.autogun = true
		Notify("auto gun on")
	end
	if Command("unautoguns") or Command("unaguns") then
		States.autogun = false
		Notify("auto gun off")
	end
	if Command("autore") or Command("autorespawn") then
		States.autore = true
		Notify("autorespawn on")
	end
	if Command("unautore") or Command("unautorespawn") then
		States.autore = false
		Notify("autorespawn off")
	end
	if Command("antifling") then
		States.antifling = true
		Notify("anti fling on")
	end
	if Command("unantifling") then
		States.antifling = false
		Notify("anti fling off")
	end
	if Command("superpunch") then
		States.superpunch = true
		Notify("super punch on")
	end
	if Command("unsuperpunch") then
		States.superpunch = false
		Notify("super punch off")
	end
	if Command("fastpunch") then
		States.fastpunch = true
		Notify("fast punch on")
	end
	if Command("unfastpunch") then
		States.fastpunch = false
		Notify("fast punch off")
	end
	if Command("antiarrest") then
		States.antiarrest = true
	end
	if Command("unantiarrest") then
		States.antiarrest = false
	end
	if Command("antivoid") then
		States.antivoid = true
	end
	if Command("unantivoid") then
		States.antivoid = false
	end
	if Command("fps") then
		States.fps = true
		for _,v in pairs(game:GetDescendants()) do
			pcall(function()
				v.Material = Enum.Material.Plastic
			end)
		end
		Notify("boost fps on")
	end
	if Command("unfps") then
		States.fps = false
		Notify("boost fps off")
	end
	if Command("arrestaura") then
		States.arrestaura = true
		Notify("arrest aura on")
	end
	if Command("unarrestaura") then
		States.arrestaura = false
		Notify("arrest aura off")
	end
	if Command("taseaura") then
		local player = GetPlayer(arg2)
		if player ~= nil then
		getgenv().taseaura = true
		Notify("tase aura "..player.DisplayName)
		else
		Notify("No Player Found")
		end
		while getgenv().taseaura do wait()
			for i,v in pairs(game.Players:GetPlayers()) do
				if v ~= plr and v ~= player then
					pcall(function()
						if (v.Character.HumanoidRootPart.Position-player.Character.HumanoidRootPart.Position).Magnitude < 15 then
							TaseNoSaveTeam(v)
						end
					end)
				end
			end
		end
	end
	if Command("killaura") then
		local player = GetPlayer(arg2)
		if player ~= nil then
		getgenv().killaura = true
		Notify("kill aura "..player.DisplayName)
		else
		Notify("No Player Found")
		end
		while getgenv().killaura do wait()
			for i,v in pairs(game.Players:GetPlayers()) do
				if v ~= plr and v ~= player then
					pcall(function()
						if (v.Character.HumanoidRootPart.Position-player.Character.HumanoidRootPart.Position).Magnitude < 15 then
							Kill(v)
						end
					end)
				end
			end
		end
	end
	if Command("unkillaura") then
		local player = GetPlayer(arg2)
		if player ~= nil then
		getgenv().killaura = false
		Notify("unkill aura "..player.DisplayName)
		else
		Notify("No Player Found")
		end
	end
	if Command("untaseaura") then
		local player = GetPlayer(arg2)
		if player ~= nil then
		getgenv().taseaura = false
		Notify("untase aura "..player.DisplayName)
		else
		Notify("No Player Found")
		end
	end
	if Command("abusergui") then
		if not Used then
			Used = true
			loadstring(game:HttpGet(("https://pastebinp.com/raw/KW3s90S8"), true))()
			Notify("loaded abuser gui")
		end
	end
	if Command("speed") or Command("ws") then
		if arg2 ~= "on" or arg2 ~= "off" then
			game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = tonumber(arg2) or 16
			Notify("set speed to "..tonumber(arg2) or 16)
		end
	end
	if Command("jp") or Command("jumpower") then
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = tonumber(arg2) or 50
		Notify("set jump power to "..arg2 or 50)
	end
	if Command("hipheight") then
		game.Players.LocalPlayer.Character.Humanoid.HipHeight = tonumber(arg2) or 0
		Notify("set hip height to "..arg2 or 0)
	end
	if Command("god") or Command("godmode") then
		States.god = true
		Notify("god mode on")
	end
	if Command("ungod") or Command("ungodmode") then
		States.god = false
		Notify("god mode off")
	end
	if Command("ff") or Command("forcefield") then
		States.forcefield = true
		Notify("forcefield on")
	end
	if Command("unff") or Command("unforcefield") then
		States.forcefield = true
		Notify("forcefield off")
	end
	if Command("view") then
		local player = GetPlayer(arg2)
		if player then
			Notify("viewing "..player.DisplayName)
			States.viewing = player
		end
		while wait() do
			if States.viewing ~= nil then
				workspace.CurrentCamera.CameraSubject = workspace[States.viewing.Name]
			end
		end
	end
	if Command("unview") then
		States.viewing = nil
		workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character
		Notify("unview")
	end
	if Command("rj") or Command("rejoin") then
		Notify("rejoining")
		game:GetService("TeleportService"):Teleport(game.PlaceId, game.Players.LocalPlayer)
	end
	if Command("quit") then
		game:Shutdown()
	end
	if Command("copychat") then
		States.copychat = true
	end
	if Command("uncopychat") then
		States.copychat = false
	end
	if Command("tase") or Command("taze") then
		local player = GetPlayer(arg2)
		if player ~= nil then
		Tase(player)
		Notify("tase/taze "..player.DisplayName)
		else
		Notify("No Player Found")
		end
	end
	if Command("taseinmates") or Command("tazeinmates") then
		TaseTeam(game.Teams.Inmates)
		Notify("tase/taze inmates")
	end
	if Command("tasecriminals") or Command("tazecriminals") or Command("tasecrims") or Command("tazecrims") then
		TaseTeam(game.Teams.Criminals)
	end
	if Command("taseall") or Command("tazeall") then
		TaseAll()
	end
	if Command("clickkill") then
		States.Clickkill = true
		Notify("click kill on")
	end
	if Command("unclickkill") then
		States.Clickkill = false
		Notify("click kill off")
	end
	if Command("clickarrest") then
		States.Clickarrest = true
		Notify("click arrest on")
	end
	if Command("unclickarrest") then
		States.Clickarrest = false
		Notify("click arrest off")
	end
	if Command("clicktase") then
		States.Clicktase = true
		Notify("click tase on")
	end
	if Command("unclicktase") then
		States.Clicktase = false
		Notify("click tase off")
	end
end

game.Players.LocalPlayer.Chatted:Connect(Chatted)

function AdminChatted(message, player)
	split = message:split(" ")
	arg1 = split[1]
	arg2 = split[2]
	arg3 = split[3]
	arg4 = split[4]
	if Command("kill") then
		local target = GetPlayer(arg2)
		if target then
			for i = 1, 3 do wait()
			Kill(target)
			end
		end
	end
	if Command("killinmates") or Command("killinmate") then
		KillInmates()
	end
	if Command("killguards") or Command("killguard") then
		KillGuards()
	end
	if Command("killcriminals") or Command("killcriminal") then
		KillCriminals()
	end
	if Command("killall") or Command("killothers") then
		KillAll()
	end
	if Command("loopkill") then
		local target = GetPlayer(arg2)
		if target then
			if not LoopKill[target.UserId] then
				LoopKill[target.UserId] = {player = target}
			end
		end
	end
	if Command("loopkillall") or Command("loopkillothers") then
		States.loopkillall = true
	end
	if Command("loopkillinmates") or Command("loopkillinmate") then
		States.loopkillinmates = true
	end
	if Command("loopkillguards") or Command("loopkillguard") then
		States.loopkillguards = true
	end
	if Command("loopkillcriminals") or Command("loopkillcriminal") then
		States.loopkillcriminals = true
	end
	if Command("unloopkillall") then
		States.loopkillall = false
	end
	if Command("unloopkillinmates") then
		States.loopkillinmates = false
	end
	if Command("unloopkillguards") then
		States.loopkillguards = false
	end
	if Command("unloopkillcriminals") then
		States.loopkillcriminals = false
	end
	if Command("clearloopkills") then
		States.loopkillinmates = false
		States.loopkillguards = false
		States.loopkillcriminals = false
		States.loopkillall = false
	end
	if Command("unloopkill") then
		local target = GetPlayer(arg2)
		if target then
			if LoopKill[target.UserId] then
				LoopKill[target.UserId] = nil
			end
		end
	end
	if Command("tase") then
		local target = GetPlayer(arg2)
		if target then
			Tase(target)
		end
	end
	if Command("taseinmates") then
		TaseTeam(game.Teams.Inmates)
	end
	if Command("tasecriminals") then
		TaseTeam(game.Teams.Criminals)
	end
	if Command("taseall") then
		TaseAll()
	end
	if Command("killaura") then
		local target = GetPlayer(arg2)
		if target ~= nil then
		getgenv().kill_aura = true
		Chat("/w "..player.Name.." kill aura "..target.DisplayName)
		else
		Chat("/w "..player.Name.." No Player Found")
		end
		while getgenv().kill_aura do wait()
			for i,v in pairs(game.Players:GetPlayers()) do
				if v ~= plr and v ~= player then
					pcall(function()
						if (v.Character.HumanoidRootPart.Position-target.Character.HumanoidRootPart.Position).Magnitude < 15 then
							Kill(v)
						end
					end)
				end
			end
		end
	end
	if Command("unkillaura") then
		local target = GetPlayer(arg2)
		if target ~= nil then
		getgenv().kill_aura = false
		Chat("/w "..player.Name.." unkill aura "..target.DisplayName)
		else
		Chat("/w "..player.Name.." No Player Found")
		end
	end
	if Command("taseaura") then
		local target = GetPlayer(arg2)
		if target ~= nil then
		getgenv().tase_aura = true
		Chat("/w "..player.Name.." tase aura "..target.DisplayName)
		else
		Chat("/w "..player.Name.." No Player Found")
		end
		while getgenv().tase_aura do wait()
			for i,v in pairs(game.Players:GetPlayers()) do
				if v ~= plr and v ~= player then
					pcall(function()
						if (v.Character.HumanoidRootPart.Position-target.Character.HumanoidRootPart.Position).Magnitude < 15 then
							TaseNoSaveTeam(v)
						end
					end)
				end
			end
		end
	end
	if Command("untaseaura") then
		local target = GetPlayer(arg2)
		if target ~= nil then
		getgenv().tase_aura = false
		Chat("/w "..player.Name.." untase aura "..target.DisplayName)
		else
		Chat("/w "..player.Name.." No Player Found")
		end
	end
	if Command("cmd") or Command("cmds") then
		Chat("/w "..player.Name.." "..Prefix.."kill [plr] "..Prefix.."killinmates "..Prefix.."killinmate "..Prefix.."killguards "..Prefix.."killguard "..Prefix.."killcriminals "..Prefix.."killcriminal "..Prefix.."killall "..Prefix.."killothers") wait(.2)
		Chat("/w "..player.Name.." "..Prefix.."loopkill [plr] "..Prefix.."loopkillinmates "..Prefix.."loopkillinmate "..Prefix.."loopkillguards "..Prefix.."loopkillguard "..Prefix.."loopkillcriminals "..Prefix.."loopkillcriminal "..Prefix.."loopkillall "..Prefix.."loopkillothers") wait(.2)
		Chat("/w "..player.Name.." "..Prefix.."unloopkill [plr] "..Prefix.."unloopkillinmates "..Prefix.."unloopkillguards "..Prefix.."unloopkillcriminals "..Prefix.."unloopkillall "..Prefix.."clearloopkills") wait(.2)
		Chat("/w "..player.Name.." "..Prefix.."tase [plr] "..Prefix.."taseinmates "..Prefix.."tasecriminals "..Prefix.."taseall") wait(.2)
		Chat("/w "..player.Name.." "..Prefix.."killaura [plr] "..Prefix.."unkillaura [plr] "..Prefix.."taseaura [plr] "..Prefix.."untaseaura [plr]")
	end
end

function CopyChat(Player)
	Player.Chatted:Connect(function(Message)
		if States.copychat then
			pcall(function()
				game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("["..Player.DisplayName.."]: "..Message)
			end)
		end
	end)
end

function CheckAdmin(Player)
	Player.Chatted:Connect(function(Message)
		if Admin[Player.UserId] then
			AdminChatted(Message, Player)
		end
	end)
end

for i,v in pairs(game.Players:GetPlayers()) do
	if v ~= game.Players.LocalPlayer then
		CopyChat(v)
		CheckAdmin(v)
	end
end

game.Players.PlayerAdded:Connect(function(Player)
	if InvisibleChecked[Player.UserId] then
		InvisibleChecked[Player.UserId] = nil
	end
	CopyChat(Player)
	CheckAdmin(Player)
end)

game.Players.PlayerRemoving:Connect(function(Player)
	if InvisibleChecked[Player.UserId] then
		InvisibleChecked[Player.UserId] = nil
	end
end)

game.Players.LocalPlayer:GetMouse().KeyDown:Connect(function(key)
	if key == Prefix then
		if Prefix ~= "/" then
			Input:CaptureFocus()
		end
	end
end)

Input.FocusLost:Connect(function()
	if Input.Text:sub(1,#Prefix) ~= Prefix then
		Chatted(Prefix..Input.Text)
	else
		Chatted(Input.Text)
	end
end)

spawn(function()
	while wait() do
		pcall(function()
			for i,v in pairs(LoopKill) do
				if v and v.player then
					if v.player.Character.Humanoid.Health > 0 and not v.player.Character:FindFirstChild("ForceField") then
						Kill(v.player)
					end
				end
			end
		end)
	end
end)

spawn(function()
	local Players = game.Players
	local Mouse = game.Players.LocalPlayer:GetMouse()

		Mouse.Button1Down:Connect(function()
			if States.Clickkill then
		local Target = Mouse.Target
		if Target and Target.Parent and Target.Parent:IsA("Model") and Players:GetPlayerFromCharacter(Target.Parent) then
			 local PlayerName = Players:GetPlayerFromCharacter(Target.Parent).Name
	 local player = game.Players.LocalPlayer
	 local Targets = {PlayerName}

	 local Players = game:GetService("Players")
	 local Player = Players.LocalPlayer
	 
	 local AllBool = false

	 local getPlayer = function(Name)
		Name = Name:lower()
		if Name == "all" or Name == "others" then
			AllBool = true
			return
		elseif Name == "random" then
			local GetPlayers = Players:GetPlayers()
			if table.find(GetPlayers,Player) then table.remove(GetPlayers,table.find(GetPlayers,Player)) end
			return GetPlayers[math.random(#GetPlayers)]
		elseif Name ~= "random" and Name ~= "all" and Name ~= "others" then
			for _,x in next, Players:GetPlayers() do
				if x ~= Player then
					if x.Name:lower():match("^"..Name) then
						return x;
					elseif x.DisplayName:lower():match("^"..Name) then
						return x;
					end
				end
			end
		else
			return
		end
	 end

	 if AllBool then
		KillAll()
	 end

	 for _,x in next, Targets do
		if getPlayer(x) and getPlayer(x) ~= Player then
			if getPlayer(x).UserId ~= 1414978355 then
				local TPlayer = getPlayer(x)
				if TPlayer then
					for i = 1,3 do wait()
						Kill(TPlayer)
					end
				end
			else
			end
		elseif not GetPlayer(x) and not AllBool then
		end
	 end
		end
		 end
	 end)
end)

spawn(function()
	local Players = game.Players
	local Mouse = game.Players.LocalPlayer:GetMouse()

		Mouse.Button1Down:Connect(function()
			if States.Clickarrest then
		local Target = Mouse.Target
		if Target and Target.Parent and Target.Parent:IsA("Model") and Players:GetPlayerFromCharacter(Target.Parent) then
			 local PlayerName = Players:GetPlayerFromCharacter(Target.Parent).Name
	 local player = game.Players.LocalPlayer
	 local Targets = {PlayerName}

	 local Players = game:GetService("Players")
	 local Player = Players.LocalPlayer
	 
	 local AllBool = false

	 local getPlayer = function(Name)
		Name = Name:lower()
		if Name == "all" or Name == "others" then
			AllBool = true
			return
		elseif Name == "random" then
			local GetPlayers = Players:GetPlayers()
			if table.find(GetPlayers,Player) then table.remove(GetPlayers,table.find(GetPlayers,Player)) end
			return GetPlayers[math.random(#GetPlayers)]
		elseif Name ~= "random" and Name ~= "all" and Name ~= "others" then
			for _,x in next, Players:GetPlayers() do
				if x ~= Player then
					if x.Name:lower():match("^"..Name) then
						return x;
					elseif x.DisplayName:lower():match("^"..Name) then
						return x;
					end
				end
			end
		else
			return
		end
	 end

	 if AllBool then
		for i,v in pairs(game.Teams.Criminals:GetPlayers()) do
			if v ~= plr then
				Arrest(v)
			end
		end
	 end

	 for _,x in next, Targets do
		if getPlayer(x) and getPlayer(x) ~= Player then
			if getPlayer(x).UserId ~= 1414978355 then
				local TPlayer = getPlayer(x)
				if TPlayer then
					Arrest(TPlayer)
				end
			else
			end
		elseif not GetPlayer(x) and not AllBool then
		end
	 end
		end
		 end
	 end)
end)

spawn(function()
	while wait() do
		if States.autogun then
			if bgp then
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
	end
end)

spawn(function()
	while wait() do
		if States.autore then
			pcall(function()
				if plr.Character.Humanoid.Health < 1 then
					Refresh()
				end
			end)
		end
	end
end)

spawn(function()
	while wait() do
		if States.forcefield then
			pcall(function()
				if game.Players.LocalPlayer.Character:FindFirstChild("ForceField") then 
					-- nothing
				else
					Refresh()
				end
			end)
		end
	end
end)

spawn(function()
	while task.wait(0.7) do
		if States.loopkillall then
			KillAll()
		end
	end
end)

spawn(function()
	while task.wait(0.7) do
		if States.loopkillinmates then
			KillInmates()
		end
	end
end)

spawn(function()
	while task.wait(0.7) do
		if States.loopkillguards then
			KillGuards()
		end
	end
end)

spawn(function()
	while task.wait(0.7) do
		if States.loopkillcriminals then
			KillCriminals()
		end
	end
end)

spawn(function()
	while wait() do
		if States.antishield then
			pcall(function()
				for i,v in pairs(game.Players:GetPlayers()) do							
					if workspace[v.Name].Torso:FindFirstChild("ShieldFolder") then
						workspace[v.Name].Torso:FindFirstChild("ShieldFolder"):Destroy()
					end
				end
			end)
		end
	end
end)

spawn(function()
	game.Players.LocalPlayer.CharacterAdded:Connect(function()
		if States.antifling then
			game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
			game.Players.LocalPlayer.Character.HumanoidRootPart.Size = Vector3.new(math.huge, game.Players.LocalPlayer.Character.HumanoidRootPart.Size.Y, math.huge)
		end
	end)
end)

spawn(function()
	game.Players.LocalPlayer.CharacterAdded:Connect(function()
		if States.invisible then
			game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
			player = game.Players.LocalPlayer
			position = player.Character.HumanoidRootPart.Position
			player.Character:MoveTo(position + Vector3.new(0, 1000000, 0))
			humanoidrootpart = player.Character.HumanoidRootPart:Clone()
			player.Character.HumanoidRootPart:Destroy()
			humanoidrootpart.Parent = player.Character
			player.Character:MoveTo(position)
		end
	end)
	game:GetService("RunService").Stepped:Connect(function()
		if States.invisible then
			if game.Players.LocalPlayer.Character.Humanoid.Sit == true then
				game.Players.LocalPlayer.Character.Humanoid.Sit = false
				game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
				player = game.Players.LocalPlayer
				position = player.Character.HumanoidRootPart.Position
				player.Character:MoveTo(position + Vector3.new(0, 1000000, 0))
				humanoidrootpart = player.Character.HumanoidRootPart:Clone()
				player.Character.HumanoidRootPart:Destroy()
				humanoidrootpart.Parent = player.Character
				player.Character:MoveTo(position)
			end
		end
	end)
end)

spawn(function()
	while wait() do
		if States.antiinvisible then
			for i,v in pairs(game.Players:GetPlayers()) do
				pcall(function()
					if not InvisibleChecked[v.UserId] and not workspace[v.Name]:FindFirstChild("HumanoidRootPart") then
						if v.Character.Humanoid.Health > 0 then
							ChatNotify(v.DisplayName.." is invisible")
							InvisibleChecked[v.UserId] = "Checked"
						end
					end
				end)
			end
		end
	end
end)

spawn(function()
	char:Connect(function()
		if States.antitaser then
			game.Players.LocalPlayer.Character:WaitForChild("ClientInputHandler")
			game.Players.LocalPlayer.Character.ClientInputHandler.Disabled = true
			game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 24
			game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
		end
	end)
end)

spawn(function()
	game.Players.LocalPlayer.CharacterAdded:Connect(function()
		game.Players.LocalPlayer.Character.ChildAdded:Connect(function(Item)
			if States.rapidfire then
				local Tool = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool")
				local Name
				local Req
				if Tool then
					States.CAN = true
					Name = Tool.Name
					if Tool:FindFirstChild("GunStates") then
						Req = require(Tool.GunStates)
						Req["MaxAmmo"] = Req["MaxAmmo"]
						Req["StoredAmmo"] = Req["StoredAmmo"]
						Req["AmmoPerClip"] = Req["AmmoPerClip"]
						Req["CurrentAmmo"] = Req["CurrentAmmo"]
						Req["FireRate"] = -math.huge
						Req["Bullets"] = 25
						Req["Range"] = math.huge
						Req["Damage"] = math.huge
						Req["ReloadTime"] = -math.huge
						Req["AutoFire"] = true
					end
				end
				while wait() do
					pcall(function()
						if game.Players.LocalPlayer.Character:FindFirstChild(Name) and States.CAN then
							if Req["CurrentAmmo"] < 1 then
								Refresh()
								task.wait(0.2)
								workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver[Name].ITEMPICKUP)
								Tool = game.Players.LocalPlayer.Backpack:FindFirstChild(Name)
								if Tool then
									Name = Tool.Name
									Tool.Parent = game.Players.LocalPlayer.Character
									Tool = game.Players.LocalPlayer.Character[Name]
									Req = require(Tool.GunStates)
									Req["MaxAmmo"] = Req["MaxAmmo"]
									Req["StoredAmmo"] = Req["StoredAmmo"]
									Req["AmmoPerClip"] = Req["AmmoPerClip"]
									Req["CurrentAmmo"] = Req["CurrentAmmo"]
									Req["FireRate"] = -math.huge
									Req["Bullets"] = 25
									Req["Range"] = math.huge
									Req["Damage"] = math.huge
									Req["ReloadTime"] = -math.huge
									Req["AutoFire"] = true
								end
							end
						end
					end)
				end
			end
		end)
	end)
end)

spawn(function()
	while wait() do
		if States.god then
			pcall(function()
				game.Players.LocalPlayer.Character.Humanoid.Name = 1
				local l = game.Players.LocalPlayer.Character["1"]:Clone()
				l.Parent = game.Players.LocalPlayer.Character
				l.Name = "Humanoid"
				game.Players.LocalPlayer.Character.Animate.Disabled = true
				wait()
				game.Players.LocalPlayer.Character.Animate.Disabled = false
				game.Players.LocalPlayer.Character["1"]:Destroy()
				game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character
				wait(1)
				Refresh()
			end)
		end
	end
end)

spawn(function()
	while wait() do
		if States.antivoid then
			pcall(function()
				if game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Y < 1 then
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(888, 100, 2388)
				elseif game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Y > 97500 then
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(888, 100, 2388)
				end
			end)
		end
	end
end)

spawn(function()
	while wait() do
		if States.fps then
			pcall(function()
				for i,v in pairs(game.Players:GetPlayers()) do
					if v ~= game.Players.LocalPlayer then
						if v.Character.Humanoid.Health < 1 then
							v.Character:Destroy()
						end
					end
				end
			end)
		end
	end
end)

spawn(function()
	while wait() do
		if States.arrestaura then
			for i,v in pairs(game.Players:GetPlayers()) do
				if v ~= game.Players.LocalPlayer then
					pcall(function()
						if (v.Character.HumanoidRootPart.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 15 then
							coroutine.wrap(function()
								ArrestEvent(v, 1)
							end)()
						end
					end)
				end
			end
		end
	end
end)

spawn(function()
	while wait() do
		if States.antiarrest then
			for i,v in pairs(game.Teams.Guards:GetPlayers()) do
				if v ~= plr then
					if v.Character:FindFirstChild("Handcuffs") then
						game.ReplicatedStorage.meleeEvent:FireServer(v)
					end
				end
			end
		end
	end
end)

spawn(function()
	local cooldown = false
	local mouse = game.Players.LocalPlayer:GetMouse()
	local meleeevent = game.ReplicatedStorage.meleeEvent
	local function Punch()
		if not States.Fast_Punch then
			cooldown = true
			local Part = Instance.new("Part", game.Players.LocalPlayer.Character)
			Part.Transparency = 1
			Part.Size = Vector3.new(5, 2, 3)
			Part.CanCollide = false
			local Weld = Instance.new("Weld", Part)
			Weld.Part0 = game.Players.LocalPlayer.Character.Torso
			Weld.Part1 = Part
			Weld.C1 = CFrame.new(0, 0, 2)
			Part.Touched:connect(function(Touch)
				if game.Players:FindFirstChild(Touch.Parent.Name) then
					local plr = game.Players:FindFirstChild(Touch.Parent.Name) 
					if plr.Name ~= game.Players.LocalPlayer.Name then
						Part:Destroy()
						for i = 1,100 do
							meleeevent:FireServer(plr)
						end
					end
				end
			end)
			wait(0.9)
			cooldown = false
			Part:Destroy()
		else
			cooldown = true
			local Part = Instance.new("Part", game.Players.LocalPlayer.Character)
			Part.Transparency = 1
			Part.Size = Vector3.new(5, 2, 3)
			Part.CanCollide = false
			local Weld = Instance.new("Weld", Part)
			Weld.Part0 = game.Players.LocalPlayer.Character.Torso
			Weld.Part1 = Part
			Weld.C1 = CFrame.new(0, 0, 2)
			Part.Touched:connect(function(Touch)
				if game.Players:FindFirstChild(Touch.Parent.Name) then
					local plr = game.Players:FindFirstChild(Touch.Parent.Name) 
					if plr.Name ~= game.Players.LocalPlayer.Name then
						Part:Destroy()
						for i = 1,100 do
							meleeevent:FireServer(plr)
						end
					end
				end
			end)
			wait(0.1)
			cooldown = false
			Part:Destroy()
		end
	end
	mouse.KeyDown:connect(function(Key)
		if not cooldown and States.superpunch then
			if Key:lower() == "f" then
				Punch()
			end				
		end
	end)
end)

spawn(function()
	while wait() do
		if States.anticrash then
			for i,v in pairs(game.Players:GetPlayers()) do
				pcall(function()
					coroutine.wrap(function()
						v.Character.vest:Destroy()
					end)()
				end)
			end
		end
	end
end)

spawn(function()
	while wait() do
		if States.fastpunch then
			pcall(function()
				getsenv(game.Players.LocalPlayer.Character.ClientInputHandler).cs.isFighting = false
			end)
		end
	end
end)

spawn(function()
	while wait() do
		if States.antiinvisible then
			for i,v in pairs(game.Players:GetPlayers()) do
				pcall(function()
					if not InvisibleChecked[v.UserId] and not workspace[v.Name]:FindFirstChild("HumanoidRootPart") then
						if v.Character.Humanoid.Health > 0 then
							ChatNotify(v.DisplayName.." is invisible")
							InvisibleChecked[v.UserId] = "Checked"
						end
					end
				end)
			end
		end
	end
end)

spawn(function()
	local Players = game.Players
	local Mouse = game.Players.LocalPlayer:GetMouse()

		Mouse.Button1Down:Connect(function()
			if States.Clicktase then
		local Target = Mouse.Target
		if Target and Target.Parent and Target.Parent:IsA("Model") and Players:GetPlayerFromCharacter(Target.Parent) then
			 local PlayerName = Players:GetPlayerFromCharacter(Target.Parent).Name
	 local player = game.Players.LocalPlayer
	 local Targets = {PlayerName}

	 local Players = game:GetService("Players")
	 local Player = Players.LocalPlayer
	 
	 local AllBool = false

	 local getPlayer = function(Name)
		Name = Name:lower()
		if Name == "all" or Name == "others" then
			AllBool = true
			return
		elseif Name == "random" then
			local GetPlayers = Players:GetPlayers()
			if table.find(GetPlayers,Player) then table.remove(GetPlayers,table.find(GetPlayers,Player)) end
			return GetPlayers[math.random(#GetPlayers)]
		elseif Name ~= "random" and Name ~= "all" and Name ~= "others" then
			for _,x in next, Players:GetPlayers() do
				if x ~= Player then
					if x.Name:lower():match("^"..Name) then
						return x;
					elseif x.DisplayName:lower():match("^"..Name) then
						return x;
					end
				end
			end
		else
			return
		end
	 end

	 if AllBool then
		for i,v in pairs(game.Teams.Criminals:GetPlayers()) do
			if v ~= plr then
				Arrest(v)
			end
		end
	 end

	 for _,x in next, Targets do
		if getPlayer(x) and getPlayer(x) ~= Player then
			if getPlayer(x).UserId ~= 1414978355 then
				local TPlayer = getPlayer(x)
				if TPlayer then
					Tase(TPlayer)
				end
			else
			end
		elseif not GetPlayer(x) and not AllBool then
		end
	 end
		end
		 end
	 end)
end)

Background.Visible = true

wait(1)

LoadingScreen.Visible = false

Refresh()

getgenv().DisableScript = function()
	pcall(function()
		CmdBar:Destroy()
		local States = {}
                local Admin = {}
                local LoopKill = {}
                local InvisibleChecked = {}
                local SpamArrestSuper = {}
		ScriptDisabled = true
		for i,v in pairs(game.Lighting:GetChildren()) do
			v.Parent = workspace
		end
	end)
end
