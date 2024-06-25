local CmdBar = Instance.new("ScreenGui")
local LoadingScreen = Instance.new("Frame")
local LoadingLabel = Instance.new("TextLabel")
local Background = Instance.new("Frame")
local Input = Instance.new("TextBox")
local Output = Instance.new("TextButton")
local OutputFrame = Instance.new("Frame")
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
	if OutputFrame.Visible == true then
		OutputFrame.Visible = false
	else
		OutputFrame.Visible = true
	end
end)

OutputFrame.Name = "OutputFrame"
OutputFrame.Parent = CmdBar
OutputFrame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
OutputFrame.BorderSizePixel = 0
OutputFrame.Position = UDim2.new(0.0128585557, 0, 0.569282115, 0)
OutputFrame.Size = UDim2.new(0, 100, 0, 150)
OutputFrame.Visible = false
OutputFrame.Active = true
OutputFrame.Draggable = true

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
LableLOL.Text = "Easy Admin"
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

COMMANDS.Name = "COMMANDS"
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

local Prefix = "-"
local States = {}
local Admin = {}
local LoopKill = {}
local InvisibleChecked = {}
local SpamArrestSuper = {}
local bgp = game:GetService("MarketplaceService"):UserOwnsGamePassAsync(game.Players.LocalPlayer.UserId, 96651)
--local bgp = game:GetService("MarketplaceService"):UserOwnsGamePassAsync(tonumber((game:GetService("Players").LocalPlayer.CharacterAppearance):split('=')[#((game:GetService("Players").LocalPlayer.CharacterAppearance):split('='))]), 96651)
local Used = false
local Gyro = nil
local Velocity = nil

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

function Kill(Player)
	pcall(function()
		if not Player or Player.Character:FindFirstChild("ForceField") then return end
		if Player.TeamColor.Name == game.Players.LocalPlayer.TeamColor.Name then
			local savedcf = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
			local savedcamcf = workspace.CurrentCamera.CFrame
			workspace.Remote.loadchar:InvokeServer(nil, BrickColor.random().Name)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = savedcf
			workspace.CurrentCamera.CFrame = savedcamcf
		end
		local Head = Player.Character.Head
		local Gun = game.Players.LocalPlayer.Character:FindFirstChild("Remington 870") or game.Players.LocalPlayer.Backpack:FindFirstChild("Remington 870")
		if not Gun then
			workspace.Remote.ItemHandler:InvokeServer({Position=game.Players.LocalPlayer.Character.Head.Position,Parent=workspace.Prison_ITEMS.giver["Remington 870"]})
		end
		Gun = game.Players.LocalPlayer.Character:FindFirstChild("Remington 870") or game.Players.LocalPlayer.Backpack:FindFirstChild("Remington 870")
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

		Gun.Parent = game.Players.LocalPlayer.Character
		game.Players.LocalPlayer.Character:FindFirstChild("Remington 870"):Destroy(]
	end)
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

function Teleport(Player, Position)
	if Player == nil or Position == nil then return end
	local savedcf = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
	workspace.Remote.loadchar:InvokeServer()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = savedcf
	workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["M9"].ITEMPICKUP)
	local CHAR = game.Players.LocalPlayer.Character
	CHAR.Humanoid.Name = "1"
	local c = CHAR["1"]:Clone()
	c.Name = "Humanoid"
	c.Parent = CHAR
	CHAR["1"]:Destroy()
	game.Workspace.CurrentCamera.CameraSubject = CHAR
	CHAR.Animate.Disabled = true
	wait()
	CHAR.Animate.Disabled = false
	CHAR.Humanoid.DisplayDistanceType = "None"
	game.Players.LocalPlayer:FindFirstChild("Backpack"):FindFirstChild("M9").Parent = CHAR
	local STOP = 0
	repeat wait(.1)
		STOP = STOP + 1
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Player.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, 0.5)
	until (not game.Players.LocalPlayer.Character:FindFirstChild("M9") or not game.Players.LocalPlayer.Character.HumanoidRootPart or not Player.Character.HumanoidRootPart or not game.Players.LocalPlayer.Character.HumanoidRootPart.Parent or not Player.Character.HumanoidRootPart.Parent or STOP > 500) and STOP > 3
	local STOP_2 = 0
	repeat wait()
		STOP_2 = STOP_2 + 1
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Position
	until STOP_2 > 10
	workspace.Remote.loadchar:InvokeServer()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = savedcf
end

function TeleportV(Player, Player2)
	if Player == nil or Player2 == nil then return end
	local savedcf = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
	workspace.Remote.loadchar:InvokeServer()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = savedcf
	workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["M9"].ITEMPICKUP)
	local CHAR = game.Players.LocalPlayer.Character
	CHAR.Humanoid.Name = "1"
	local c = CHAR["1"]:Clone()
	c.Name = "Humanoid"
	c.Parent = CHAR
	CHAR["1"]:Destroy()
	game.Workspace.CurrentCamera.CameraSubject = CHAR
	CHAR.Animate.Disabled = true
	wait()
	CHAR.Animate.Disabled = false
	CHAR.Humanoid.DisplayDistanceType = "None"
	game.Players.LocalPlayer:FindFirstChild("Backpack"):FindFirstChild("M9").Parent = CHAR
	local STOP = 0
	repeat wait(.1)
		STOP = STOP + 1
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Player.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, 0.5)
	until (not game.Players.LocalPlayer.Character:FindFirstChild("M9") or not game.Players.LocalPlayer.Character.HumanoidRootPart or not Player.Character.HumanoidRootPart or not game.Players.LocalPlayer.Character.HumanoidRootPart.Parent or not Player.Character.HumanoidRootPart.Parent or STOP > 500) and STOP > 3
	local STOP_2 = 0
	repeat wait()
		STOP_2 = STOP_2 + 1
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Player2.Character.HumanoidRootPart.CFrame
	until STOP_2 > 10
	workspace.Remote.loadchar:InvokeServer()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = savedcf
end

function ArrestEvent(Player, Time)
	for i = 1,tonumber(Time) or 1 do
		workspace.Remote.arrest:InvokeServer(Player.Character.Head)
	end
end

function Arrest(Player, Time)
	local Time = tonumber(Time) or 1
	local savedcf = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
	local savedcamcf = workspace.CurrentCamera.CFrame
	local savedteam = game.Players.LocalPlayer.TeamColor.Name
	if Player then
		repeat wait()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Player.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, 1)
			for i = 1,Time do
				coroutine.wrap(function()
					workspace.Remote.arrest:InvokeServer(Player.Character.Head)
				end)()
			end
		until Player.Character:FindFirstChild("Head"):FindFirstChild("handcuffedGui")
		wait()
	end
	workspace.Remote.loadchar:InvokeServer(nil, BrickColor.new(savedteam).Name)
	game.Players.LocalPlayer.Character.Humanoid.Sit = false
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = savedcf
	workspace.CurrentCamera.CFrame = savedcamcf
end

function Team(team)
	if team == "i" then
		workspace.Remote.TeamEvent:FireServer("Bright orange")
	elseif team == "g" then
		workspace.Remote.TeamEvent:FireServer("Bright blue")
	elseif team == "n" then
		workspace.Remote.TeamEvent:FireServer("Medium stone grey")
	elseif team == "c" then
		local cpad = workspace["Criminals Spawn"].SpawnLocation
		local cpcf = cpad.CFrame
		local savedcf = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
		cpad.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
		cpad.CFrame = cpcf
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = savedcf
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

ChatNotify('[EZ Admin]: Thanks '..game.Players.LocalPlayer.DisplayName..' for using "Easy Admin"')
ChatNotify('[EZ Admin]: Made by : Discord > LocalPlayer#7434 | Youtube > CXZ NAME_R')
ChatNotify('To see all avaibled commands please chat/type "'..Prefix..'cmd" or "'..Prefix..'cmds" and enjoy')
ChatNotify('The commands are hard to under stand you can open output ot see what they do')
Input.PlaceholderText = "Press "..Prefix.." to enter"

function Chatted(Message)
	split = Message:split(" ")
	arg1 = split[1]
	arg2 = split[2]
	arg3 = split[3]
	arg4 = split[4]
	if Command("cmd") or Command("cmds") then
		local Commands = {
			Prefix.."cmd/cmds - show cmds bar",
			Prefix.."re - re",
			Prefix.."res - respawn",
			Prefix.."crim [plr] - crim player",
			Prefix.."t/team [i,g,n,c,code] - changes team",
			Prefix.."k/kill [plr,i,g,c,all] - kill",
			Prefix.."lk [plr,i,g,c,all] - loop kills",
			Prefix.."ulk [plr,i,g,c,all] - unloop kills",
			Prefix.."to [plr] - go to player",
			Prefix.."sa [plr] - spam arrest player",
			Prefix.."beam [plr] [time] - beam player",
			Prefix.."dcn - disconnect",
			Prefix.."bring [plr] - bring player",
			Prefix.."sc/spch [plr] - spam player chat",
			Prefix.."unsc/unspch - unspam player chat",
			Prefix.."lb/lbring [plr] - loop bring player",
			Prefix.."unlb/unlbring - unloop bring player",
			Prefix.."pf [prefix] - set prefix",
			Prefix.."ar [plr,c] - arrest player",
			Prefix.."g/gun - obtains guns",
			Prefix.."ag/agun [on,off] - auto gun",
			Prefix.."ac [on,off] - anti crash",
			Prefix.."ara [on,off] - arrest aura",
			Prefix.."are [on,off] - auto re",
			Prefix.."cph [on,off] - copy chat",
			Prefix.."ka/kau [on,off] - kill aura",
			Prefix.."af [on,off] - anti fling",
			Prefix.."sp [on,off] - super punch",
			Prefix.."fp [on,off] - fast punch",
			Prefix.."asa/aspar [on,off] - anti spam arrest (off ff)",
			Prefix.."avo/avoid [on,off] - anti void",
			Prefix.."v [plr] - void player",
			Prefix.."fps - get more fps",
			Prefix.."abg/gui - abuser gui",
			Prefix.."sp [speed] - speed",
			Prefix.."jp [jump] - jump power",
			Prefix.."hip [hip] - hip height",
			Prefix.."god [on,off] - god mode",
			Prefix.."ff [on,off] - force field / ff",
			Prefix.."rpf [on,off] - rapid fire",
			Prefix.."at [on,off] - anti taser",
			Prefix.."ain [on,off] - anti invisible",
			Prefix.."vi [plr] - view player",
			Prefix.."uvi - unview player",
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
			Prefix.."f [speed] - fly",
			Prefix.."uf - unfly",
			Prefix.."tp [plr] [plr] - tp player to player",
			Prefix.."inv [on,off] - invisible",
			Prefix.."nsh [on,off] - anti shield",
			Prefix.."b - base ball bat",
			Prefix.."bu [count] - bullets",
			Prefix.."fs [count] - fire speed",
			Prefix.."rt [count] - reload time",
			Prefix.."afi [yes,y,no,n] - auto fire",
			Prefix.."ad [plr] - admin",
			Prefix.."uad [plr] - unadmin",
			Prefix.."cad - clear admins",
			Prefix.."trap [plr] - trap player",
			Prefix.."uw [plr] - tp player neutral spawn",
			Prefix.."sho [plr] - shock player",
			Prefix.."att [plr] - attach player",
			Prefix.."uatt - unattach player",
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
	if Command("att") then
		local player = GetPlayer(arg2)
		if player then
			States.attach = true
			repeat wait(.3)
				workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["M9"].ITEMPICKUP)
				game.Players.LocalPlayer.Character.Humanoid.Name = 1
				local l = game.Players.LocalPlayer.Character["1"]:Clone()
				l.Parent = game.Players.LocalPlayer.Character
				l.Name = "Humanoid"
				game.Players.LocalPlayer.Character.Animate.Disabled = true
				wait()
				game.Players.LocalPlayer.Character.Animate.Disabled = false
				game.Players.LocalPlayer.Character["1"]:Destroy()
				game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character
				game.Players.LocalPlayer.Backpack:FindFirstChild("M9").Parent = game.Players.LocalPlayer.Character
				repeat wait()
					player.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, -0.75)
				until not game.Players.LocalPlayer.Character:FindFirstChild("M9")
				game.Players.LocalPlayer.CharacterRemoving:Wait()
				local savedcf = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
				workspace.Remote.loadchar:InvokeServer()
				local savedcamcf = workspace.CurrentCamera.CFrame
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = savedcf
				workspace.CurrentCamera.CFrame = savedcamcf
			until not States.attach
		end
	end
	if Command("uatt") then
		States.attach = false
	end
	if Command("sa") then
		local player = GetPlayer(arg2)
		if player then
			if player.TeamColor.Name == "Bright orange" then
				local CanArrest = false
				repeat wait()
					Teleport(player, CFrame.new(976.48529052734, 99.990005493164, 2338.4716796875))
					if (player.Character.HumanoidRootPart.Position-Vector3.new(976.48529052734, 99.990005493164, 2338.4716796875)).Magnitude < 10 then
						CanArrest = true
					end
				until (CanArrest or not game.Players[player.Name])
			end
			if player.TeamColor.Name ~= "Bright orange" and player.TeamColor.Name ~= "Really red" then
				repeat wait()
					Teleport(player, CFrame.new(-975.58190917969, 109.32379150391, 2061.7973632813)) 
				until (player.TeamColor.Name == "Really red" or not game.Players[player.Name])
			end
			wait(.1)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = player.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, 1)
			for i = 1,1000 do
				coroutine.wrap(function()
					ArrestEvent(player, math.huge)
				end)()
			end
			Notify("spam arrested "..player.DisplayName)
		end
	end
	if Command("sho") then
		Teleport(GetPlayer(arg2), CFrame.new(698.88549804688, 117.66983032227, 2567.1765136719))
	end
	if Command("ac") then
		if arg2 == "on" then
			States.anticrash = true
			Notify("anti crash "..arg2)
		elseif arg2 == "off" then
			States.anticrash = false
			Notify("anti crash "..arg2)
		end
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
	end
	if Command("uw") then
		local player = GetPlayer(arg2)
		if player then
			Teleport(player, CFrame.new(875.02471923828, 27.789987564087, 2348.7604980469))
			Notify("sent "..player.DisplayName.." to spawn")
		end
	end
	if Command("trap") then
		local player = GetPlayer(arg2)
		if player then
			Teleport(player, CFrame.new(948.90356445313, 101.36474609375, 2340.0891113281))
			Notify("trapped "..player.DisplayName)
		end
	end
	if Command("ad") then
		local player = GetPlayer(arg2)
		if player then
			if not Admin[player.UserId] then
				Admin[player.UserId] = {player = player}
				Chat("/w "..player.Name.." You've got admin type "..Prefix.."cmd or "..Prefix.."cmds to see all avaibled commands")
				Notify("adminned "..player.DisplayName)
			end
		end
	end
	if Command("uad") then
		local player = GetPlayer(arg2)
		if player then
			if Admin[player.UserId] then
				Admin[player.UserId] = nil
				Chat("/w "..player.Name.." You've been removed admin")
				Notify("unadminned "..player.DisplayName)
			end
		end
	end
	if Command("cad") then
		Admin = {}
		Notify("cleared admins")
	end
	if Command("ain") then
		if arg2 == "on" then
			States.antiinvisible = true
			Notify("anti invisible "..arg2)
		elseif arg2 == "off" then
			States.antiinvisible = false
			Notify("anti invisible "..arg2)
		end
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
	end
	if Command("bu") then
		local req = require(game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").GunStates)
		req["Bullets"] = tonumber(arg2) or tonumber(req["Bullets"])
		Notify("set bullets to "..tonumber(arg2) or tonumber(req["Bullets"]))
	end
	if Command("fs") then
		local req = require(game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").GunStates)
		req["FireRate"] = tonumber(arg2) or tonumber(req["FireRate"])
		Notify("set fire speed to "..tonumber(arg2) or tonumber(req["FireRate"]))
	end
	if Command("rt") then
		local req = require(game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").GunStates)
		req["ReloadTime"] = tonumber(arg2) or tonumber(req["ReloadTime"])
		Notify("set reload time to "..tonumber(arg2) or tonumber(req["ReloadTime"]))
	end
	if Command("afi") then
		local req = require(game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").GunStates)
		if arg2 == "yes" or arg2 == "y" then
			req["AutoFire"] = true
			Notify("set fire mode to auto")
		elseif arg2 == "no" or arg2 == "n" then
			req["AutoFire"] = false
			Notify("set fire mode to semi")
		end
	end
	if Command("b") then
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
	if Command("inv") then
		local player
		local position
		local humanoidrootpart
		if arg2 == "on" then
			States.invisible = true
			player = game.Players.LocalPlayer
			position = player.Character.HumanoidRootPart.Position
			player.Character:MoveTo(position + Vector3.new(0, 1000000, 0))
			humanoidrootpart = player.Character.HumanoidRootPart:Clone()
			player.Character.HumanoidRootPart:Destroy()
			humanoidrootpart.Parent = player.Character
			player.Character:MoveTo(position)
		elseif arg2 == "off" then
			States.invisible = false
		end
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
	end
	if Command("nsh") then
		if arg2 == "on" then
			States.antishield = true
			Notify("anti shield "..arg2)
		elseif arg2 == "off" then
			States.antishield = false
			Notify("anti shield "..arg2)
		end
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
	end
	if Command("tp") then
		local player1 = GetPlayer(arg2)
		local player2 = GetPlayer(arg3)
		if player1 and player2 then
			local char1,char2 = player1.Character,player2.Character
			if char1 and char2 then
				TeleportV(player1, player2)
				Notify("tp "..player1.DisplayName.." to "..player2.DisplayName)
			end
		end
	end
	if Command("lk") or Command("loopkill") then
		local player = GetPlayer(arg2)
		if arg2 == "all" then
			States.loopkill_criminals = true
			States.loopkill_guards = true
			States.loopkill_inmates = true
			States.loopkill_other = true
			Notify("loop kills all")
		elseif arg2 == "inmates" then
			States.loopkill_inmates = true
			Notify("loop kills inmates")
		elseif arg2 == "guards" then
			States.loopkill_guards = true
			Notify("loop kills guards")
		elseif arg2 == "criminals" then
			States.loopkill_criminals = true
			Notify("loop kills criminals")
		else
			if player and not LoopKill[player.UserId] then
				LoopKill[player.UserId] = {player = player}
				Notify("loop kills "..player.DisplayName)
			end
		end
	end
	if Command("unlk") or Command("unloopkill") then
		local player = GetPlayer(arg2)
		if arg2 == "all" then
			States.loopkill_criminals = false
			States.loopkill_guards = false
			States.loopkill_inmates = false
			States.loopkill_other = false
			Notify("unloop kills all")
		elseif arg2 == "inmates" then
			States.loopkill_inmates = false
			Notify("unloop kills inmates")
		elseif arg2 == "guards" then
			States.loopkill_guards = false
			Notify("unloop kills guards")
		elseif arg2 == "criminals" then
			States.loopkill_criminals = false
			Notify("unloop kills criminals")
		else
			if player and LoopKill[player.UserId] then
				LoopKill[player.UserId] = nil
				Notify("unloop kills "..player.DisplayName)
			end
		end
	end
	if Command("f") then
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
	if Command("uf") then
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
	if Command("at") then
		if arg2 == "on" then
			States.antitaser = true
			Notify("anti taser "..arg2)
		elseif arg2 == "off" then
			States.antitaser = false
			Notify("anti taser "..arg2)
		end
		game.Players.LocalPlayer.CharacterAdded:Connect(function()
			if States.antitaser then
				game.Players.LocalPlayer.Character:WaitForChild("ClientInputHandler")
				game.Players.LocalPlayer.Character.ClientInputHandler.Disabled = true
				game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 24
				game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
			end
		end)
		local savedcf = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
		local savedcamcf = workspace.CurrentCamera.CFrame
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = savedcf
		workspace.CurrentCamera.CFrame = savedcamcf
	end
	if Command("rpf") then
		if arg2 == "on" then
			States.rapidfire = true
			Notify("rapid fire "..arg2)
		elseif arg2 == "off" then
			States.rapidfire = false
			Notify("rapid fire "..arg2)
		end
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
									Tool:Destroy()
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
		local savedcf = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
		local savedcamcf = workspace.CurrentCamera.CFrame
		if game.Players.LocalPlayer.TeamColor.Name ~= "Medium stone grey" then
			workspace.Remote.loadchar:InvokeServer()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = savedcf
			workspace.CurrentCamera.CFrame = savedcamcf
		else
			workspace.Remote.loadchar:InvokeServer(nil, BrickColor.new("Bright orange").Name)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = savedcf
			workspace.CurrentCamera.CFrame = savedcamcf
			workspace.Remote.TeamEvent:FireServer("Medium stone grey")
		end
	end
	if Command("c") then
		States.noclip = false
		Notify("clips")
	end
	if Command("nc") then
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
	if Command("re") then
		local savedcamcf = workspace.CurrentCamera.CFrame
		local savedcf = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
		workspace.Remote.loadchar:InvokeServer()
		workspace.CurrentCamera.CFrame = savedcamcf
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = savedcf
		Notify("re player")
	end
	if Command("res") then
		workspace.Remote.loadchar:InvokeServer()
		Notify("respawned player")
	end
	if Command("crim") then
		local player = GetPlayer(arg2)
		if player then
			Teleport(player, CFrame.new(-976, 110, 2070))
			Notify("crimmed "..player.DisplayName)
		end
	end
	if Command("t") or Command("team") then
		if arg2 == "i" then
			workspace.Remote.TeamEvent:FireServer("Bright orange")
			Notify("inmate team")
		elseif arg2 == "g" then
			workspace.Remote.TeamEvent:FireServer("Bright blue")
			Notify("guard team")
		elseif arg2 == "n" then
			workspace.Remote.TeamEvent:FireServer("Medium stone grey")
			Notify("neutral team")
		elseif arg2 == "c" then
			if game.Players.LocalPlayer.TeamColor.Name ~= "Bright blue" then
				local CrimPad = workspace["Criminals Spawn"].SpawnLocation
				CrimPad.CanCollide = false
				CrimPad.Transparency = 1
				CrimPad.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
				wait()
				CrimPad.CanCollide = true
				CrimPad.Transparency = 0
				CrimPad.CFrame = CFrame.new(-920.510803, 92.2271957, 2138.27002, 0, 0, -1, 0, 1, 0, 1, 0, 0)
			else
				local savedcf = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
				local savedcamcf = workspace.CurrentCamera.CFrame
				local CrimPad = workspace["Criminals Spawn"].SpawnLocation
				CrimPad.CanCollide = false
				CrimPad.Transparency = 1
				CrimPad.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
				wait()
				CrimPad.CanCollide = true
				CrimPad.Transparency = 0
				CrimPad.CFrame = CFrame.new(-920.510803, 92.2271957, 2138.27002, 0, 0, -1, 0, 1, 0, 1, 0, 0)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = savedcf
				workspace.CurrentCamera.CFrame = savedcamcf
			end
			Notify("criminal team")
		else
			local savedcf = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
			local savedcamcf = workspace.CurrentCamera.CFrame
			if arg3 == nil and arg4 == nil then
				workspace.Remote.loadchar:InvokeServer(nil, arg2)
			elseif arg3 ~= nil and arg4 == nil then
				workspace.Remote.loadchar:InvokeServer(nil, arg2.." "..arg3)
			else
				workspace.Remote.loadchar:InvokeServer(nil, arg2.." "..arg3.." "..arg4)
			end
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = savedcf
			workspace.CurrentCamera.CFrame = savedcamcf
			Notify("custom team")
		end
	end
	if Command("kill") or Command("k") then
		if arg2 == "c" then
			for i,v in pairs(game.Teams.Criminals:GetPlayers()) do
				if v ~= game.Players.LocalPlayer then
					Kill(v)
				end
			end
			Notify("killed criminals")
		elseif arg2 == "i" then
			for i,v in pairs(game.Teams.Inmates:GetPlayers()) do
				if v ~= game.Players.LocalPlayer then
					Kill(v)
				end
			end
			Notify("killed inmates")
		elseif arg2 == "g" then
			for i,v in pairs(game.Teams.Guards:GetPlayers()) do
				if v ~= game.Players.LocalPlayer then
					Kill(v)
				end
			end
			Notify("killed criminals")
		elseif arg2 == "all" then
			for i,v in pairs(game.Players:GetPlayers()) do
				if v ~= game.Players.LocalPlayer then
					Kill(v)
				end
			end
		else
			Kill(GetPlayer(arg2))
			Notify("killed "..GetPlayer(arg2).DisplayName)
		end
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
	if Command("dcn") then
		Notify("disconnecting")
		while wait() do
			pcall(function()
				coroutine.wrap(function()
					local Head = game.Players.LocalPlayer.Character.Head
					local Gun = game.Players.LocalPlayer.Character:FindFirstChild("Remington 870") or game.Players.LocalPlayer.Backpack:FindFirstChild("Remington 870")
					Head = game.Players.LocalPlayer.Character.Head
					if not Gun then
						workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["Remington 870"].ITEMPICKUP)
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
	if Command("bring") then
		local player = GetPlayer(arg2)
		if player then
			Teleport(player, game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
			Notify("brought "..player.DisplayName)
		end
	end
	if Command("sc") or Command("spch") then
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
	if Command("unsc") or Command("unspch") then
		States.spamchat = false
		Notify("unspammed chat")
	end
	if Command("lb") or Command("lbring") then
		local player = GetPlayer(arg2)
		if player then
			Notify("looping bring "..player.DisplayName)
			States.loopbring = true
			repeat wait()
				Teleport(player, game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
			until not States.loopbring or not game.Players[player.Name]
		end
	end
	if Command("unlb") or Command("unlbring") then
		States.loopbring = false
		Notify("unloop bring")
	end
	if Command("pf") then
		if arg2 ~= nil then
			Notify("changed prefix to "..arg2)
			Prefix = arg2
			wait(.2)
			Input.PlaceholderText = "Press "..Prefix.." to enter"
		end
	end
	if Command("ar") then
		local player = GetPlayer(arg2)
		if arg2 == "c" then
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
	if Command("g") or Command("gun") then
		if bgp then
			workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["Remington 870"].ITEMPICKUP)
			workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["M4A1"].ITEMPICKUP)
			workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["AK-47"].ITEMPICKUP)
			workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["M9"].ITEMPICKUP)
		else
			workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["Remington 870"].ITEMPICKUP)
			workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["AK-47"].ITEMPICKUP)
			workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["M9"].ITEMPICKUP)
		end
		Notify("grabbed a gun")
	end
	if Command("ag") or Command("agun") then
		if arg2 == "on" then
			States.autogun = true
			Notify("auto gun "..arg2)
		elseif arg2 == "off" then
			States.autogun = false
			Notify("auto gun "..arg2)
		end
		if bgp then
			workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["Remington 870"].ITEMPICKUP)
			workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["M4A1"].ITEMPICKUP)
			workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["AK-47"].ITEMPICKUP)
			workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["M9"].ITEMPICKUP)
		else
			workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["Remington 870"].ITEMPICKUP)
			workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["AK-47"].ITEMPICKUP)
			workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["M9"].ITEMPICKUP)
		end
		game.Players.LocalPlayer.CharacterAdded:Connect(function()
			if bgp then
				workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["Remington 870"].ITEMPICKUP)
				workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["M4A1"].ITEMPICKUP)
				workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["AK-47"].ITEMPICKUP)
				workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["M9"].ITEMPICKUP)
			else
				workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["Remington 870"].ITEMPICKUP)
				workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["AK-47"].ITEMPICKUP)
				workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["M9"].ITEMPICKUP)
			end
		end)
	end
	if Command("are") then
		if arg2 == "on" then
			States.autore = true
			Notify("auto re "..arg2)
		elseif arg2 == "off" then
			States.autore = false
			Notify("auto re "..arg2)
		end
		while wait() do
			if States.autore then
				pcall(function()
					if game.Players.LocalPlayer.Character.Humanoid.Health < 1 then
						local savedcf = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
						local savedcamcf = workspace.CurrentCamera.CFrame
						if game.Players.LocalPlayer.TeamColor.Name ~= "Medium stone grey" then
							workspace.Remote.loadchar:InvokeServer()
						else
							workspace.Remote.loadchar:InvokeServer(nil, BrickColor.new("Bright orange").Name)
							workspace.Remote.TeamEvent:FireServer("Medium stone grey")
						end
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = savedcf
						workspace.CurrentCamera.CFrame = savedcamcf
					end
				end)
			end
		end
	end
	if Command("kau") or Command("ka") then
		if arg2 == "on" then
			States.killaura = true
			Notify("kill aura "..arg2)
		elseif arg2 == "off" then
			States.killaura = false
			Notify("kill aura "..arg2)
		end
		while wait() do
			if States.killaura then
				for i,v in pairs(game.Players:GetPlayers()) do
					if v ~= game.Players.LocalPlayer then
						pcall(function()
							if (v.Character.HumanoidRootPart.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 10 then
								for n = 1,10 do
									coroutine.wrap(function()
										game.ReplicatedStorage.meleeEvent:FireServer(v)
									end)()
								end
							end
						end)
					end
				end
			end
		end
	end
	if Command("af") then
		if arg2 == "on" then
			States.antifling = true
			Notify("anti fling "..arg2)
		elseif arg2 == "off" then
			States.antifling = false
			Notify("anti fling "..arg2)
		end
		game.Players.LocalPlayer.CharacterAdded:Connect(function()
			if States.antifling then
				game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
				game.Players.LocalPlayer.Character.HumanoidRootPart.Size = Vector3.new(math.huge, game.Players.LocalPlayer.Character.HumanoidRootPart.Size.Y, math.huge)
			end
		end)
	end
	if Command("sp") then
		if arg2 == "on" then
			States.superpunch = true
			Notify("super punch "..arg2)
		elseif arg2 == "off" then
			States.superpunch = false
			Notify("super punch "..arg2)
		end
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
	end
	if Command("fp") then
		if arg2 == "on" then
			States.fastpunch = true
			Notify("fast punch "..arg2)
		elseif arg2 == "off" then
			States.fastpunch = false
			Notify("fast punch "..arg2)
		end
		while wait() do
			pcall(function()
				if States.fastpunch then
					getsenv(game.Players.LocalPlayer.Character.ClientInputHandler).cs.isFighting = false
				end
			end)
		end
	end
	if Command("anspar") or Command("asa")  then
		if arg2 == "on" then
			States.antispamarrest = true
			Notify("anti spam arrest "..arg2)
		elseif arg2 == "off" then
			States.antispamarrest = false
			Notify("anti spam arrest "..arg2)
		end
		while wait() do
			if States.antispamarrest then
				pcall(function()
					if game.Players.LocalPlayer.TeamColor.Name == "Really red" then
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(888, 100, 2388)
						workspace.Remote.loadchar:InvokeServer(nil, BrickColor.Random().Name)
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(888, 100, 2388)
					end
					if game.Players.LocalPlayer.Character.Head:FindFirstChild("handcuffedGui") then
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(888, 100, 2388)
						workspace.Remote.loadchar:InvokeServer(nil, BrickColor.Random().Name)
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(888, 100, 2388)
					end
				end)
			end
		end
	end
	if Command("avo") or Command("avoid") then
		if arg2 == "on" then
			States.antivoid = true
			Notify("anti void "..arg2)
		elseif arg2 == "off" then
			States.antivoid = false
			Notify("anti void "..arg2)
		end
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
	end
	if Command("v") then
		local player = GetPlayer(arg2)
		if player then
			Teleport(player, CFrame.new(89999, 89999, 89999))
			Notify("void "..GetPlayer(arg2).DisplayName)
		end
	end
	if Command("fps") then
		if arg2 == "on" then
			States.fps = true
			for _,v in pairs(game:GetDescendants()) do
				pcall(function()
					v.Material = Enum.Material.Plastic
				end)
			end
			Notify("boost fps "..arg2)
		elseif arg2 == "off" then
			States.fps = false
			Notify("boost fps "..arg2)
		end
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
	end
	if Command("ara") then
		if arg2 == "on" then
			States.arrestaura = true
			Notify("arrest aure "..arg2)
		elseif arg2 == "off" then
			States.arrestaura = false
			Notify("arrest aure "..arg2)
		end
		while wait() do
			if States.arrestaura then
				for i,v in pairs(game.Players:GetPlayers()) do
					if v ~= game.Players.LocalPlayer then
						pcall(function()
							if (v.Character.HumanoidRootPart.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 10 then
								coroutine.wrap(function()
									ArrestEvent(v, 1)
								end)()
							end
						end)
					end
				end
			end
		end
	end
	if Command("abgui") or Command("gui") then
		if not Used then
			Used = true
			loadstring(game:HttpGet(("https://pastebin.com/raw/KW3s90S8"), true))()
			Notify("loaded abuser gui")
		end
	end
	if Command("sp") then
		if arg2 ~= "on" or arg2 ~= "off" then
			game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = tonumber(arg2) or 16
			Notify("set speed to "..tonumber(arg2) or 16)
		end
	end
	if Command("jp") then
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = tonumber(arg2) or 50
		Notify("set jump power to "..arg2 or 50)
	end
	if Command("hh") then
		game.Players.LocalPlayer.Character.Humanoid.HipHeight = tonumber(arg2) or 0
		Notify("set hip height to "..arg2 or 0)
	end
	if Command("god") then
		if arg2 == "on" then
			States.godmode = true
			Notify("god mode "..arg2)
		elseif arg2 == "off" then
			States.godmode = false
			Notify("god mode "..arg2)
		end
		while wait() do
			if States.godmode then
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
					wait(5)
					local savedcf = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
					local savedcamcf = workspace.CurrentCamera.CFrame
					local savedteam = game.Players.LocalPlayer.TeamColor.Name
					workspace.Remote.loadchar:InvokeServer(nil, BrickColor.new(savedteam).Name)
					workspace.CurrentCamera.CFrame = savedcamcf
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = savedcf
				end)
			end
		end
	end
	if Command("ff") then
		if arg2 == "on" then
			States.forcefield = true
			Notify("force field "..arg2)
		elseif arg2 == "off" then
			States.forcefield = false
			Notify("force field "..arg2)
		end
		while wait() do
			if States.forcefield then
				pcall(function()
					if not game.Players.LocalPlayer.Character:FindFirstChild("ForceField") then
						local savedcf = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
						local savedcamcf = workspace.CurrentCamera.CFrame
						local savedteam = game.Players.LocalPlayer.TeamColor.Name
						workspace.Remote.loadchar:InvokeServer(nil, BrickColor.new("Really red").Name)
						if savedteam == "Bright blue" then
							workspace.Remote.TeamEvent:FireServer("Bright blue")
						elseif savedteam == "Bright orange" then
							workspace.Remote.TeamEvent:FireServer("Bright orange")
						elseif savedteam == "Medium stone grey" then
							workspace.Remote.TeamEvent:FireServer("Medium stone grey")
						elseif savedteam ~= "Medium stone grey" and savedteam ~= "Bright orange" and savedteam ~= "Bright blue" then
							workspace.Remote.TeamEvent:FireServer("Medium stone grey")
						end
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = savedcf
						workspace.CurrentCamera.CFrame = savedcamcf
					end
				end)
			end
		end
	end
	if Command("vi") then
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
	if Command("uvi") then
		States.viewing = nil
		workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character
		Notify("unview")
	end
	if Command("rj") then
		Notify("rejoining")
		game:GetService("TeleportService"):Teleport(game.PlaceId, game.Players.LocalPlayer)
	end
	if Command("quit") then
		game:Shutdown()
	end
	if Command("cph") then
		if arg2 == "on" then
			States.copychat = true
		elseif arg2 == "off" then
			States.copychat = false
		end
	end

end

game.Players.LocalPlayer.Chatted:Connect(Chatted)

function AdminChatted(message, player)
	split = message:split(" ")
	arg1 = split[1]
	arg2 = split[2]
	arg3 = split[3]
	arg4 = split[4]
	if Command("crim") then
		local target = GetPlayer(arg2)
		if target then
			Teleport(target, CFrame.new(-919, 96, 2138))
		end
	end
	if Command("k") then
		local target = GetPlayer(arg2)
		if target then
			Kill(target)
		end
	end
	if Command("lk") then
		local target = GetPlayer(arg2)
		if target then
			if not LoopKill[target.UserId] then
				LoopKill[target.UserId] = {player = target}
			end
		end
	end
	if Command("ulk") then
		local target = GetPlayer(arg2)
		if target then
			if LoopKill[target.UserId] then
				LoopKill[target.UserId] = nil
			end
		end
	end
	if Command("nex") then
		Teleport(player, CFrame.new(888, 100, 2388))
	end
	if Command("arm") then
		Teleport(player, CFrame.new(789, 100, 2260))
	end
	if Command("base") then
		Teleport(player, CFrame.new(-943, 95, 2055))
	end
	if Command("bac") then
		Teleport(player, CFrame.new(982, 100, 2334))
	end
	if Command("to") then
		TeleportV(player, GetPlayer(arg2))
	end
	if Command("bring") then
		TeleportV(GetPlayer(arg2), player)
	end
	if Command("cmd") or Command("cmds") then
		Chat("/w "..player.Name.." "..Prefix.."crim [plr] "..Prefix.."k [plr] "..Prefix.."lk [plr] "..Prefix.."ulk [plr]")
		Chat("/w "..player.Name.." "..Prefix.."to [plr] "..Prefix.."bac "..Prefix.."base "..Prefix.."arm "..Prefix..nex"")
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
	while wait() do
		if States.loopkill_criminals then
			for i,v in pairs(game.Teams.Criminals:GetPlayers()) do
				pcall(function()
					if v ~= game.Players.LocalPlayer then
						Kill(v)
					end
				end)
			end
		end
	end
end)

spawn(function()
	while wait() do
		if States.loopkill_inmates then
			for i,v in pairs(game.Teams.Inmates:GetPlayers()) do
				pcall(function()
					if v ~= game.Players.LocalPlayer then
						Kill(v)
					end
				end)
			end
		end
	end
end)

spawn(function()
	while wait() do
		if States.loopkill_guards then
			for i,v in pairs(game.Teams.Guards:GetPlayers()) do
				pcall(function()
					if v ~= game.Players.LocalPlayer then
						Kill(v)
					end
				end)
			end
		end
	end
end)

spawn(function()
	while wait() do
		if States.loopkill_other then
			for i,v in pairs(game.Players:GetPlayers()) do
				if v ~= game.Players.LocalPlayer then
					pcall(function()
						if v.TeamColor.Name ~= "Really red" or v.TeamColor.Name ~= "Bright blue" or v.TeamColor.Name ~= "Bright orange" then
							Kill(v)
						end
					end)
				end
			end
		end
	end
end)

Background.Visible = true

wait(1)

LoadingScreen.Visible = false
