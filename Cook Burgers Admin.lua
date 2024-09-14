local CmdGui = Instance.new("ScreenGui")
local Background = Instance.new("Frame")
local CmdName = Instance.new("TextLabel")
local FindCmd = Instance.new("TextBox")
local CmdHandler = Instance.new("ScrollingFrame")
local CmdText = Instance.new("TextButton")
local UIListLayout = Instance.new("UIListLayout")
local Background2 = Instance.new("Frame")
local Label = Instance.new("TextLabel")
local Execute = Instance.new("TextBox")
local Minimum = Instance.new("TextButton")
local Close = Instance.new("TextButton")
local Background3 = Instance.new("Frame")
local Topbar = Instance.new("TextLabel")
local CmdTitle = Instance.new("TextLabel")
local Background4 = Instance.new("Frame")
local Notify6 = Instance.new("TextLabel")
local Notify5 = Instance.new("TextLabel")
local Notify4 = Instance.new("TextLabel")
local Notify3 = Instance.new("TextLabel")
local Notify2 = Instance.new("TextLabel")
local Notify1 = Instance.new("TextLabel")
local CloseBar = Instance.new("TextButton")
local OpenBar = Instance.new("TextButton")
local TransparencyBar = Instance.new("TextButton")
local Prefix = ";"
local PrefixCmd = "!"

CmdGui.Name = "CmdGui"
CmdGui.Parent = game:GetService("CoreGui")
CmdGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Background.Name = "Background"
Background.Parent = CmdGui
Background.BackgroundColor3 = Color3.fromRGB(255, 128, 0)
Background.BorderSizePixel = 0
Background.Position = UDim2.new(0.368556708, 0, 0.11490047, 0)
Background.Size = UDim2.new(0, 350, 0, 350)
Background.Active = true
Background.Draggable = false

CmdName.Name = "CmdName"
CmdName.Parent = Background
CmdName.BackgroundColor3 = Color3.fromRGB(255, 128, 0)
CmdName.BorderSizePixel = 0
CmdName.Size = UDim2.new(0, 350, 0, 25)
CmdName.Font = Enum.Font.GothamBlack
CmdName.Text = "Commands"
CmdName.TextColor3 = Color3.fromRGB(255, 255 , 0)
CmdName.TextScaled = true
CmdName.TextSize = 14.000
CmdName.TextWrapped = true

FindCmd.Name = "FindCmd"
FindCmd.Parent = Background
FindCmd.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
FindCmd.BorderColor3 = Color3.fromRGB(255, 128, 0)
FindCmd.BorderSizePixel = 0
FindCmd.Position = UDim2.new(0.0714285746, 0, 0.0702347234, 0)
FindCmd.ClearTextOnFocus = false
FindCmd.Size = UDim2.new(0, 300, 0, 20)
FindCmd.Font = Enum.Font.SourceSans
FindCmd.PlaceholderColor3 = Color3.fromRGB(255, 128, 0)
FindCmd.PlaceholderText = "Search For Commands"
FindCmd.Text = ""
FindCmd.TextColor3 = Color3.fromRGB(255, 255, 0)
FindCmd.TextSize = 14.000
FindCmd.TextWrapped = true

CmdHandler.Name = "CmdHandler"
CmdHandler.Parent = Background
CmdHandler.Active = true
CmdHandler.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CmdHandler.BackgroundTransparency = 1.000
CmdHandler.BorderSizePixel = 0
CmdHandler.AutomaticCanvasSize = "Y"
CmdHandler.Position = UDim2.new(0.0714285746, 0, 0.142857149, 0)
CmdHandler.Size = UDim2.new(0, 300, 0, 290)
CmdHandler.ScrollBarThickness = 2

CmdText.Name = "CmdText"
CmdText.Parent = nil
CmdText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CmdText.BackgroundTransparency = 0.750
CmdText.BorderSizePixel = 0
CmdText.Size = UDim2.new(0, 300, 0, 25)
CmdText.Font = Enum.Font.SourceSans
CmdText.Text = "Text"
CmdText.TextColor3 = Color3.fromRGB(255, 255, 255)
CmdText.TextScaled = true
CmdText.TextSize = 14.000
CmdText.TextWrapped = true

UIListLayout.Parent = CmdHandler
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

Minimum.Name = "Minimum"
Minimum.Parent = Background
Minimum.BackgroundColor3 = Color3.fromRGB(255, 128, 0)
Minimum.BorderSizePixel = 0
Minimum.Position = UDim2.new(0.842857122, 0, 0.00571428565, 0)
Minimum.Size = UDim2.new(0, 20, 0, 20)
Minimum.Font = Enum.Font.SourceSans
Minimum.Text = "="
Minimum.TextColor3 = Color3.fromRGB(255, 255, 255)
Minimum.TextSize = 14.000
Minimum.MouseButton1Click:Connect(function()
	if Background.BackgroundTransparency == 0 then
		Background.BackgroundTransparency = 1
		Background.Size = UDim2.new(0, 350, 0, 25)
		FindCmd.Visible = false
		CmdHandler.Visible = false
	elseif Background.BackgroundTransparency == 1 then
		Background.BackgroundTransparency = 0
		Background.Size = UDim2.new(0, 350, 0, 350)
		FindCmd.Visible = true
		CmdHandler.Visible = true
	end
end)

Close.Name = "Close"
Close.Parent = Background
Close.BackgroundColor3 = Color3.fromRGB(155, 0, 0)
Close.BorderSizePixel = 0
Close.Position = UDim2.new(0.928571403, 0, 0.00571428565, 0)
Close.Size = UDim2.new(0, 20, 0, 20)
Close.Font = Enum.Font.SourceSans
Close.Text = "X"
Close.TextColor3 = Color3.fromRGB(255, 0, 0)
Close.TextSize = 14.000
Close.MouseButton1Click:Connect(function()
	Background.Visible = false
end)

-- New

Background2.Name = "Background"
Background2.Parent = CmdGui
Background2.BackgroundColor3 = Color3.fromRGB(255, 128, 0)
Background2.BorderSizePixel = 0
Background2.Position = UDim2.new(0.012, 0, 0.807, 0)
Background2.Size = UDim2.new(0, 250, 0, 80)
Background2.Active = true
Background2.Draggable = false

Label.Name = "Label"
Label.Parent = Background2
Label.BackgroundColor3 = Color3.fromRGB(255, 128, 0)
Label.BorderSizePixel = 0
Label.Position = UDim2.new(0, 0, 0, 0)
Label.Size = UDim2.new(0, 250, 0, 25)
Label.Font = Enum.Font.GothamBlack
Label.Text = "Execute Bar"
Label.TextColor3 = Color3.fromRGB(255, 255, 0)
Label.TextScaled = true
Label.TextSize = 14.000
Label.TextWrapped = true

Execute.Name = "Execute"
Execute.Parent = Background2
Execute.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
Execute.BorderColor3 = Color3.fromRGB(255, 128, 0)
Execute.Position = UDim2.new(0.097, 0, 0.436, 0)
Execute.ClearTextOnFocus = false
Execute.Size = UDim2.new(0, 190, 0, 30)
Execute.Font = Enum.Font.SourceSans
Execute.PlaceholderColor3 = Color3.fromRGB(255, 255, 255)
Execute.PlaceholderText = "Press "..Prefix.." To Execute!"
Execute.Text = ""
Execute.TextColor3 = Color3.fromRGB(255, 128, 0)
Execute.TextSize = 14.000
Execute.TextWrapped = true

Background3.Name = "Background3"
Background3.Parent = CmdGui
Background3.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
Background3.BorderSizePixel = 0
Background3.Position = UDim2.new(0.306701034, 0, 0.288421065, 0)
Background3.Size = UDim2.new(0, 190, 0, 100)
Background3.Active = true
Background3.Visible = false

Topbar.Name = "Topbar"
Topbar.Parent = Background3
Topbar.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
Topbar.BorderSizePixel = 0
Topbar.Size = UDim2.new(0, 200, 0, 25)
Topbar.Font = Enum.Font.GothamBlack
Topbar.Text = ""
Topbar.TextColor3 = Color3.fromRGB(0, 0, 0)
Topbar.TextScaled = true
Topbar.TextSize = 14.000
Topbar.TextWrapped = true

CmdTitle.Name = "CmdTitle"
CmdTitle.Parent = Background3
CmdTitle.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
CmdTitle.BackgroundTransparency = 0.750
CmdTitle.BorderSizePixel = 0
CmdTitle.Position = UDim2.new(0.0500000007, 0, 0.379999995, 0)
CmdTitle.Size = UDim2.new(0, 180, 0, 40)
CmdTitle.Font = Enum.Font.GothamBlack
CmdTitle.Text = ""
CmdTitle.TextColor3 = Color3.fromRGB(255, 128, 0)
CmdTitle.TextSize = 14.000
CmdTitle.TextWrapped = true

Background4.Name = "Background4"
Background4.Parent = CmdGui
Background4.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
Background4.BorderSizePixel = 0
Background4.Position = UDim2.new(0.0154639352, 0, 0.519107938, 0)
Background4.Size = UDim2.new(0, 250, 0, 119)
Background4.Active = true
Background4.Draggable = false

Notify6.Name = "Notify6"
Notify6.Parent = Background4
Notify6.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
Notify6.BackgroundTransparency = 0.750
Notify6.BorderSizePixel = 0
Notify6.Position = UDim2.new(0, 0, -0.00512820482, 0)
Notify6.Size = UDim2.new(0, 250, 0, 20)
Notify6.Font = Enum.Font.GothamBlack
Notify6.Text = ""
Notify6.TextColor3 = Color3.fromRGB(255, 255, 255)
Notify6.TextScaled = true
Notify6.TextSize = 14.000
Notify6.TextWrapped = true

Notify5.Name = "Notify5"
Notify5.Parent = Background4
Notify5.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Notify5.BackgroundTransparency = 1.000
Notify5.BorderSizePixel = 0
Notify5.Position = UDim2.new(0, 0, 0.162939027, 0)
Notify5.Size = UDim2.new(0, 250, 0, 20)
Notify5.Font = Enum.Font.GothamBlack
Notify5.Text = "infobar"
Notify5.TextColor3 = Color3.fromRGB(255, 255, 255)
Notify5.TextScaled = true
Notify5.TextSize = 14.000
Notify5.TextWrapped = true

Notify4.Name = "Notify4"
Notify4.Parent = Background4
Notify4.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Notify4.BackgroundTransparency = 1.000
Notify4.BorderSizePixel = 0
Notify4.Position = UDim2.new(0, 0, 0.331006259, 0)
Notify4.Size = UDim2.new(0, 250, 0, 20)
Notify4.Font = Enum.Font.GothamBlack
Notify4.Text = ""
Notify4.TextColor3 = Color3.fromRGB(255, 255, 255)
Notify4.TextScaled = true
Notify4.TextSize = 14.000
Notify4.TextWrapped = true

Notify3.Name = "Notify3"
Notify3.Parent = Background4
Notify3.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Notify3.BackgroundTransparency = 1.000
Notify3.BorderSizePixel = 0
Notify3.Position = UDim2.new(0, 0, 0.499073505, 0)
Notify3.Size = UDim2.new(0, 250, 0, 20)
Notify3.Font = Enum.Font.GothamBlack
Notify3.Text = ""
Notify3.TextColor3 = Color3.fromRGB(255, 255, 255)
Notify3.TextScaled = true
Notify3.TextSize = 14.000
Notify3.TextWrapped = true

Notify2.Name = "Notify2"
Notify2.Parent = Background4
Notify2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Notify2.BackgroundTransparency = 1.000
Notify2.BorderSizePixel = 0
Notify2.Position = UDim2.new(0, 0, 0.667140722, 0)
Notify2.Size = UDim2.new(0, 250, 0, 20)
Notify2.Font = Enum.Font.GothamBlack
Notify2.Text = ""
Notify2.TextColor3 = Color3.fromRGB(255, 255, 255)
Notify2.TextScaled = true
Notify2.TextSize = 14.000
Notify2.TextWrapped = true

Notify1.Name = "Notify1"
Notify1.Parent = Background4
Notify1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Notify1.BackgroundTransparency = 1.000
Notify1.BorderSizePixel = 0
Notify1.Position = UDim2.new(0, 0, 0.835207999, 0)
Notify1.Size = UDim2.new(0, 250, 0, 20)
Notify1.Font = Enum.Font.GothamBlack
Notify1.Text = ""
Notify1.TextColor3 = Color3.fromRGB(255, 255, 255)
Notify1.TextScaled = true
Notify1.TextSize = 14.000
Notify1.TextWrapped = true

CloseBar.Name = "CloseBar"
CloseBar.Parent = Background4
CloseBar.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
CloseBar.BorderSizePixel = 0
CloseBar.Position = UDim2.new(0.899999976, 0, -0.210084036, 0)
CloseBar.Size = UDim2.new(0, 25, 0, 25)
CloseBar.Font = Enum.Font.GothamBlack
CloseBar.Text = "X"
CloseBar.TextColor3 = Color3.fromRGB(255, 255, 255)
CloseBar.TextScaled = true
CloseBar.TextSize = 14.000
CloseBar.TextWrapped = true
CloseBar.MouseButton1Click:Connect(function()
	Background4.Visible = false
	OpenBar.Visible = true
	CloseBar.Visible = false
end)

OpenBar.Name = "OpenBar"
OpenBar.Parent = CmdGui
OpenBar.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
OpenBar.BorderSizePixel = 0
OpenBar.Size = UDim2.new(0, 55, 0, 55)
OpenBar.Visible = false
OpenBar.Font = Enum.Font.GothamBlack
OpenBar.Text = "Open"
OpenBar.TextColor3 = Color3.fromRGB(255, 255, 255)
OpenBar.TextScaled = true
OpenBar.TextSize = 14.000
OpenBar.TextWrapped = true
OpenBar.MouseButton1Click:Connect(function()
	Background4.Visible = true
	OpenBar.Visible = false
	CloseBar.Visible = true
end)

TransparencyBar.Name = "TransparencyBar"
TransparencyBar.Parent = Background4
TransparencyBar.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
TransparencyBar.BorderSizePixel = 0
TransparencyBar.Position = UDim2.new(0.799999952, 0, -0.210084036, 0)
TransparencyBar.Size = UDim2.new(0, 25, 0, 25)
TransparencyBar.Font = Enum.Font.GothamBlack
TransparencyBar.Text = "="
TransparencyBar.TextColor3 = Color3.fromRGB(0, 100, 100)
TransparencyBar.TextScaled = true
TransparencyBar.TextSize = 14.000
TransparencyBar.TextWrapped = true
TransparencyBar.MouseButton1Click:Connect(function()
	if TransparencyBar.Text == "=" then
		Background4.BackgroundTransparency = 0.750
		CloseBar.BackgroundTransparency = 0.750
		TransparencyBar.BackgroundTransparency = 0.750
		TransparencyBar.Text = "+"
	else
		Background4.BackgroundTransparency = 0.000
		CloseBar.BackgroundTransparency = 0.000
		TransparencyBar.BackgroundTransparency = 0.000
		TransparencyBar.Text = "="
	end
end)

local Versions = "1.0"
local Cmd = {}

Cmd[#Cmd + 1] = {Text = "versions "..Versions,Title = "Script Made NoobHubV1"}
Cmd[#Cmd + 1] = {Text = "menu made by me NoobHubV1",Title = "Script maker"}
Cmd[#Cmd + 1] =	{Text = "cmd / cmds",Title = "Show commands bar"}
Cmd[#Cmd + 1] =	{Text = "drag [on,off]",Title = "drag script"}
Cmd[#Cmd + 1] =	{Text = "rejoin / rj",Title = "Rejoin the game"}
Cmd[#Cmd + 1] =	{Text = "leave / leaveserver / quit",Title = "Leave the server"}
Cmd[#Cmd + 1] =	{Text = "admin / giveadmin [plr]",Title = "Give a commands to player"}
Cmd[#Cmd + 1] =	{Text = "unadmin / removeadmin [plr]",Title = "Remove a commands from player"}
Cmd[#Cmd + 1] =	{Text = "kill [plr,others,all]",Title = "Kill the player"}
Cmd[#Cmd + 1] =	{Text = "bring [plr,all]",Title = "Bring the player"}
Cmd[#Cmd + 1] =	{Text = "teleport / tp [plr1,plr2]",Title = "tp player1 to player2"}
Cmd[#Cmd + 1] =	{Text = "goto / to [plr]",Title = "teleport the player"}
Cmd[#Cmd + 1] =	{Text = "loopkill / loopkills [plr,others,all]",Title = "Loop kills the player"}
Cmd[#Cmd + 1] =	{Text = "unloopkill / unloopkills [plr,others,all]",Title = "Unloop kills the player"}
Cmd[#Cmd + 1] =	{Text = "control [plr]",Title = "control the player"}
Cmd[#Cmd + 1] =	{Text = "speed [plr,all,others] [number]",Title = "speed the player"}
Cmd[#Cmd + 1] =	{Text = "findposition / findpos / getpos / getposition",Title = "player get pos"}
Cmd[#Cmd + 1] =	{Text = "prefix / newprefix / changeprefix [prefix text]",Title = "Changes prefix"}
Cmd[#Cmd + 1] =	{Text = "re / refresh",Title = "Respawn Character and save position"}
Cmd[#Cmd + 1] =	{Text = "res / respawn",Title = "Respawn Character not save position"}
Cmd[#Cmd + 1] =	{Text = "unload / destroygui",Title = "Unload the scripts"}
Cmd[#Cmd + 1] =	{Text = "reload / update",Title = "Reload the script"}
Cmd[#Cmd + 1] =	{Text = "voidkill [plr,all,others]",Title = "voidkill the player"}
Cmd[#Cmd + 1] =	{Text = "void [plr,all,others]",Title = "teleports player to the void"}
Cmd[#Cmd + 1] =	{Text = "freeze [plr,all,others]",Title = "freeze the player"}
Cmd[#Cmd + 1] =	{Text = "unfreeze [plr,all,others]",Title = "unfreeze the player"}
Cmd[#Cmd + 1] =	{Text = "How to open console?",Title = "To open console chat /console or press F9 or Fn + F9"}
Cmd[#Cmd + 1] =	{Text = "!getprefix",Title = "If you for get prefix you can type this in chat"}

local Players = game.Players
local plr = Players.LocalPlayer
local char = plr.CharacterAdded
local Mouse = plr:GetMouse()

for i = 1,#Cmd do
	local clone = CmdText:Clone()
	clone.Text = Cmd[i].Text
	clone.Name = "COMMANDS"
	local Ins = Instance.new("StringValue", clone)
	Ins.Name = "Title"
	Ins.Value = Cmd[i].Title
	local Ins2 = Instance.new("StringValue", clone)
	Ins2.Name = "TopbarName"
	Ins2.Value = Cmd[i].Text:split(" ")[1]
	clone.Parent = CmdHandler
	clone.MouseButton1Click:Connect(function()
		Execute:CaptureFocus()
		Execute.Text = clone.Text:split(" ")[1]
		Execute.CursorPosition = #Execute.Text + 1
	end)
end

Mouse.Move:Connect(function()
	local Guis = game:GetService("CoreGui"):GetGuiObjectsAtPosition(Mouse.X, Mouse.Y)
	local Gui
	for i,v in pairs(Guis) do
		if v.Parent == CmdHandler then
			Gui = v
		end
	end
	if Gui ~= nil then
		local PositionX
		local PositionY
		local X = Mouse.X
		local Y = Mouse.Y
		if Mouse.X > 200 then
			PositionX = Mouse.X - 201
		else
			PositionX = Mouse.X + 21
		end
		if Mouse.Y > (Mouse.ViewSizeY-96) then
			PositionY = Mouse.Y - 97
		else
			PositionY = Mouse.Y
		end
		Background3.Visible = true
		Background3.Position = UDim2.new(0, PositionX, 0, PositionY)
		Topbar.Text = Gui.TopbarName.Value
		CmdTitle.Text = Gui.Title.Value
	else
      Background3.Visible = false
  end
end)

if DisableScript then
	DisableScript()
end

local Remote = game:GetService("ReplicatedStorage").Events.Network.SetNetworkOwnership
local ScriptDisabled = false
local LoopKill = {}
local Admin = {}
local States = {}

local function GetPlayer(String)
	if not String then return end
	local Yes = {}
	for _, Player in ipairs(game.Players:GetPlayers()) do
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

local function GetPos()
	return plr.Character.HumanoidRootPart.CFrame
end

local function GetCamPos()
	return workspace.CurrentCamera.CFrame
end

function Goto(Player, Distance)
	local Distance = Distance or CFrame.new(0, 0, 0)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Player.Character.HumanoidRootPart.CFrame * Distance
end

function Split(Arguaments, Split)
	if not Arguaments or not Split then return end
	return Arguaments:split(Split)
end

function ChatNotify(Message, Colors, Size)
	game.StarterGui:SetCore("ChatMakeSystemMessage", {
		Text = Message,
		Color = Colors or Color3.fromRGB(255, 128, 0),
		Font = Enum.Font.SourceSans,
		FontSize = Size or Enum.FontSize.Size48
	})
end

function Chat(Message, Whisper)
	game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(Message, Whisper or "ALl")
end

function WaitForChild(Time, Parent, Child)
	if not Parent or not Child then return end
	if Parent == "LocalPlayer" then Parent = game.Players.LocalPlayer end
	if Parent == "Character" then Parent = game.Players.LocalPlayer.Character end
	if Parent == "Backpack" then Parent = game.Players.LocalPlayer.Character.Backpack end
	local Times = Time * 10 or 1
	repeat wait(.1)
		Time = Time - 1
	until Parent:FindFirstChild(Child) or Time <= 0
	if Parent and Parent:FindFirstChild(Child) then
		return Parent:FindFirstChild(Child)
	else
		return nil
	end
end

function TPCFrame(Arg2)
	plr.Character.HumanoidRootPart.CFrame = Arg2
end

function Kill(player)
	      pcall(function()
				if (player ~= nil and player.Character ~= nil) then
					if (player.Character:FindFirstChildOfClass("Part") ~= nil) then
						for _, Part in pairs(player.Character:GetDescendants()) do
							if (Part:IsA("BasePart")) then
								Remote:FireServer(Part,plr)
							end
						end
						player.Character.Humanoid.Health = (1)
					        player.Character.Humanoid.Health = (0)
					end
				end
			end)
end

function Teleport(player, cframe)
	pcall(function()
		if (player ~= nil and player.Character ~= nil) then
			if (player.Character:FindFirstChildOfClass("Part") ~= nil) then
				for _, Part in pairs(player.Character:GetDescendants()) do
					if (Part:IsA("BasePart")) then
						Remote:FireServer(Part,plr)
					end
				end
			player.Character.HumanoidRootPart.CFrame = cframe
			end
		end
	end)
end

function TeleportV(player1, player2)
	pcall(function()
		if (player1 ~= nil and player1.Character ~= nil) then
			if (player1.Character:FindFirstChildOfClass("Part") ~= nil) then
				for _, Part in pairs(player1.Character:GetDescendants()) do
					if (Part:IsA("BasePart")) then
						Remote:FireServer(Part,plr)
					end
				end
			player1.Character.HumanoidRootPart.CFrame = player2.Character.HumanoidRootPart.CFrame
			end
		end
	end)
end

function Control(player)
        for _, Part in pairs(player.Character:GetDescendants()) do
		for i = 1,20 do
			if (Part:IsA("BasePart")) then
				Remote:FireServer(Part,plr)
			end
		end
	end
	plr.Character = player.Character
	workspace.CurrentCamera.CameraSubject = player.Character
	player.Character.Animate.Disabled = true
	wait(0.1)
	player.Character.Animate.Disabled = false
end

function Refresh()
	local savedcf = GetPos()
	local savedcamcf = GetCamPos()
	game.ReplicatedStorage.Events.Player.SpawnRequestEvent:FireServer()
	char:Wait() task.wait(0.065)
	TPCFrame(savedcf)
	task.wait(0.065)
	workspace.CurrentCamera.CFrame = savedcamcf
end

function Speed(player, speed)
	pcall(function()
		if (player ~= nil and player.Character ~= nil) then
			if (player.Character:FindFirstChildOfClass("Part") ~= nil) then
				for _, Part in pairs(player.Character:GetDescendants()) do
					if (Part:IsA("BasePart")) then
						Remote:FireServer(Part,plr)
					end
				end
			player.Character.Humanoid.WalkSpeed = (speed)
			end
		end
	end)
end

local Mouse = game.Players.LocalPlayer:GetMouse()

local function Notify(Message, Color, Text)
	Notify6.Text = Notify5.Text
	Notify6.TextColor3 = Notify5.TextColor3
	Notify5.Text = Notify4.Text
	Notify5.TextColor3 = Notify4.TextColor3
	Notify4.Text = Notify3.Text
	Notify4.TextColor3 = Notify3.TextColor3
	Notify3.Text = Notify2.Text
	Notify3.TextColor3 = Notify2.TextColor3
	Notify2.Text = Notify1.Text
	Notify2.TextColor3 = Notify1.TextColor3
	Notify1.Text = "["..Text.."] "..Message
	Notify1.TextColor3 = Color or Color3.fromRGB(255, 255, 255)
end

local function Loadstring(Https)
	if not Https then return end
	loadstring(game:HttpGet((Https), true))()
end

local function Command(Cmd)
	return Arg1 == Prefix..Cmd
end

local function PrefixCommand(Cmd)
	return Arg1 == PrefixCmd..Cmd
end

--[[if not Slient then
	Chat("Admin Commands By xXichbinTimXx")
	Chat("Admin Commands Version "..Versions)
	Chat("Current Prefix Is "..Prefix)
	wait()
	Chat("Admin Commands Loaded!(â– -â– )")
else
	Chat("Loaded")
	Chat("P "..Prefix)
	Chat("V "..Versions)
end]]

Notify("Loaded admin commands", Color3.fromRGB(255, 0, 0), "Loads")

function PlayerChatted(Message)
	if ScriptDisabled then return end
	Split = Message:split(" ")
	Arg1 = Split[1]
	Arg2 = Split[2]
	Arg3 = Split[3]
	Arg4 = Split[4]
	if Command("unload") or Command("destroygui") then
		Notify("Unloading...", Color3.fromRGB(0, 255, 255), "Unloads")
		wait(.1)
		pcall(function()
			CmdGui:Destroy()
			States = {}
			LoopKill = {}
			Admin = {}
			ScriptDisabled = true
			for i,v in pairs(game.Lighting:GetChildren()) do
				v.Parent = workspace
			end
		end)
	end
	if Command("reload") or Command("update") then
		Notify("Reload Script...", Color3.fromRGB(0, 255, 255), "Reload")
		pcall(function()
			CmdGui:Destroy()
			States = {}
			LoopKill = {}
			Admin = {}
			ScriptDisabled = true
			for i,v in pairs(game.Lighting:GetChildren()) do
				v.Parent = workspace
			end
		end)
		Loadstring("https://raw.githubusercontent.com/NoobHubV1/NoobHubV1/main/NoobHubV1%20Admin.lua")
	end
  if Command("kill") or Command("kills") then
          if Arg2 == "all" or Arg2 == "everyone" then
          for i,v in pairs(game.Players:GetPlayers()) do
                  if v.Name ~= plr then
                          Kill(v)
                  end
          end
          Notify("Killed All Players", Color3.fromRGB(0, 255, 0), "Success")
          elseif Arg2 == "others" then
          for i,v in pairs(game.Players:GetPlayers()) do
                  if v ~= plr then
                          Kill(v)
                  end
          end
          Notify("Killed Others Players", Color3.fromRGB(0, 255, 0), "Success")
          else
          local Player = GetPlayer(Arg2)
          if Player ~= nil then
          Kill(Player)
          Notify("Killed "..Player.Name, Color3.fromRGB(0, 255, 0), "Success")
          else
          Notify("No Player Found", Color3.fromRGB(255, 0, 0), "Error")
          end
          end
  end
  if Command("loopkill") or Command("loopkills") then
          if Arg2 == "all" or Arg2 == "everyone" then
          States.loopkillall = true
          Notify("Loop kills all", Color3.fromRGB(0, 255, 0), "Success")
	  elseif Arg2 == "others" then
	  States.loopkillothers = true
	  Notify("Loop kills others", Color3.fromRGB(0, 255, 0), "Success")
          else
	  local Player = GetPlayer(Arg2)
          if Player ~= nil and not LoopKill[Player.UserId] then
		LoopKill[Player.UserId] = {Player = Player}
		Notify("Loop kills "..Player.Name, Color3.fromRGB(0, 255, 0), "Success")
	  else
	        Notify("No Player Found / already loop kills", Color3.fromRGB(255, 0, 0), "Error")
          end
          end
        end
	if Command("unloopkill") or Command("unloopkills") then
          if Arg2 == "all" or Arg2 == "everyone" then
          States.loopkillall = false
	  States.loopkillother = false
          Notify("Unloop kills all", Color3.fromRGB(0, 255, 0), "Success")
	  elseif Arg2 == "others" then
	  States.loopkillothers = false
	  Notify("Unloop kills others", Color3.fromRGB(0, 255, 0), "Success")
	  else
	  local Player = GetPlayer(Arg2)
          if Player ~= nil and LoopKill[Player.UserId] then
		LoopKill[Player.UserId] = nil
		Notify("Unoop kills "..Player.Name, Color3.fromRGB(0, 255, 0), "Success")
	  else
	        Notify("No Player Found / Player not loop kills", Color3.fromRGB(255, 0, 0), "Error")
          end
          end
	end
	if Command("bring") then
		if Arg2 == "all" or Arg2 == "everyone" or Arg2 == "others" then
		for i,v in pairs(game.Players:GetPlayers()) do
			if v ~= plr then
				for i = 1,2 do wait(.1)
					Teleport(v, GetPos())
				end
			end
		end
		Notify("Bringing all", Color3.fromRGB(0, 255, 0), "Success")
		else
		local Player = GetPlayer(Arg2)
		if Player ~= nil then
		for i = 1,2 do wait(.1)
		Teleport(Player, GetPos())
		end
		Notify("Bringing "..Player.Name, Color3.fromRGB(0, 255, 0), "Success")
		else
		Notify("No Player Found", Color3.fromRGB(255, 0, 0), "Error")
		end
		end
	end
	if Command("teleport") or Command("tp") then
		local Player1 = GetPlayer(Arg2)
		local Player2 = GetPlayer(Arg3)
		if Player1 ~= nil and Player2 ~= nil then
		for i = 1,2 do wait(.1)
		TeleportV(Player1, Player2)
		end
		Notify("teleport "..Player1.Name.." to "..Player2.Name, Color3.fromRGB(0, 255, 0), "Success")
		else
		Notify("No Player Found", Color3.fromRGB(255, 0, 0), "Error")
		end
	end
	if Command("goto") or Command("to") then
		local Player = GetPlayer(Arg2)
		if Player ~= nil then
		TeleportV(plr, Player)
		Notify("Goto "..Player.Name, Color3.fromRGB(0, 255, 0), "Success")
		else
		Notify("No Player Found", Color3.fromRGB(255, 0, 0), "Error")
		end
	end
	if Command("re") or Command("refresh") then
		Refresh()
		Notify("Refresh Character", Color3.fromRGB(0, 255, 0), "Success")
	end
	if Command("res") or Command("respawn") then
		game.ReplicatedStorage.Events.Player.SpawnRequestEvent:FireServer()
		Notify("Respawn Character", Color3.fromRGB(0, 255, 0), "Success")
	end
	if Command("control") then
		local Player = GetPlayer(Arg2)
		if Player ~= nil then
			Control(Player)
			Notify("Control "..Player.Name, Color3.fromRGB(0, 255, 0), "Success")
		else
			Notify("No Player Found", Color3.fromRGB(255, 0, 0), "Error")
		end
	end
	if Command("speed") then
		local speed = tonumber(Arg3)
		if Arg2 == "all" or Arg2 == "everyone" then
			for i,v in pairs(game.Players:GetPlayers()) do
				if v.Name ~= plr then
					Speed(v, speed)
				end
			end
		Notify("Speed all "..speed, Color3.fromRGB(0, 255, 0), "Success")
		elseif Arg2 == "others" then
			for i,v in pairs(game.Players:GetPlayers()) do
				if v ~= plr then
					Speed(v, speed)
				end
			end
		Notify("Speed others "..speed, Color3.fromRGB(0, 255, 0), "Success")
		else
			local Player = GetPlayer(Arg2)
			if Player ~= nil and speed ~= nil then
				Speed(Player, speed)
				Notify("Speed "..Player.Name.." "..speed, Color3.fromRGB(0, 255, 0), "Success")
			else
				Notify("No Player Found / No Number Found", Color3.fromRGB(255, 0, 0), "Error")
			end
		end
	end
	if Command("drag") then
		if not Arg2 then
			if Background.Draggable == true or Background2.Draggable == true or Background4.Draggable == true then
				Background.Draggable = false
				Background2.Draggable = false
				Background4.Draggable = false
			else
				Background.Draggable = true
				Background2.Draggable = true
				Background4.Draggable = true
			end
		end
		if Arg2 == "on" then
			Background.Draggable = true
			Background2.Draggable = true
			Background4.Draggable = true
		elseif Arg2 == "off" then
			Background.Draggable = false
			Background2.Draggable = false
			Background4.Draggable = false
		end
	end
	if Command("prefix") or Command("newprefix") or Command("changeprefix") then
		local NewPrefix = Arg2
		if NewPrefix ~= nil then
			Prefix = NewPrefix
			Execute.PlaceholderText = "Press "..Prefix.." To Enter"
			Notify("Changed prefix to "..NewPrefix, Color3.fromRGB(0, 255, 0), "Success")
		else
			Notify("Text needed", Color3.fromRGB(255, 0, 0), "Error")
		end
	end
	if Command("findposition") or Command("findpos") or Command("getposition") or Command("getpos") then
		local Position = tostring(plr.Character.HumanoidRootPart.Position)
		Notify("HumanoidRootPart Position : "..Position, Color3.fromRGB(55, 155, 255), "Position")
		setclipboard(""..Position)
		Notify("Find Position", Color3.fromRGB(0, 255, 0), "Success")
	end
	if Command("leave") or Command("leaveserver") or Command("quit") then
		Notify("Leaving server", Color3.fromRGB(0, 255, 0), "Success")
		wait(.1)
		game:Shutdown()
	end
	if Command("voidkill") then
		if Arg2 == "all" or Arg2 == "everyone" then
			for i,v in pairs(game.Players:GetPlayers()) do
				if v.Name ~= plr then
					for i = 1,3 do wait(.1)
						Teleport(v, CFrame.new(277, 122, -195))
					end
				end
			end
		Notify("Void Kill all", Color3.fromRGB(0, 255, 0), "Success")
		elseif Arg2 == "others" then
			for i,v in pairs(game.Players:GetPlayers()) do
				if v ~= plr then
					for i = 1,3 do wait(.1)
						Teleport(v, CFrame.new(277, 122, -195))
					end
				end
			end
		Notify("Void Kill others", Color3.fromRGB(0, 255, 0), "Success")
		else
			local Player = GetPlayer(Arg2)
			if Player ~= nil then
				for i = 1,3 do wait(.1)
				Teleport(Player, CFrame.new(277, 122, -195))
				end
				Notify("Void kill "..Player.Name, Color3.fromRGB(0, 255, 0), "Success")
			else
				Notify("No Player Found", Color3.fromRGB(255, 0, 0), "Error")
			end
		end
	end
	if Command("rejoin") or Command("rj") then
		Notify("Rejoining server", Color3.fromRGB(0, 255, 0), "Success")
		wait(.1)
		game:GetService("TeleportService"):Teleport(game.PlaceId)
	end
	if Command("freeze") then
		if Arg2 == "all" or Arg2 == "everyone" then
			for i,v in pairs(game.Players:GetPlayers()) do
				if v.Name ~= plr then
			                pcall(function()
		                                if (v ~= nil and v.Character ~= nil) then
							if (v.Character:FindFirstChildOfClass("Part") ~= nil) then
								for _, Part in pairs(v.Character:GetDescendants()) do
									if (Part:IsA("BasePart")) then
										Remote:FireServer(Part,plr)
									end
								end
								v.Character.HumanoidRootPart.Anchored = true
							end
						end
					end)
				end
			end
		Notify("Freeze all", Color3.fromRGB(0, 255, 0), "Success")
		elseif Arg2 == "others" then
			for i,v in pairs(game.Players:GetPlayers()) do
				if v ~= plr then
			                pcall(function()
		                                if (v ~= nil and v.Character ~= nil) then
							if (v.Character:FindFirstChildOfClass("Part") ~= nil) then
								for _, Part in pairs(v.Character:GetDescendants()) do
									if (Part:IsA("BasePart")) then
										Remote:FireServer(Part,plr)
									end
								end
								v.Character.HumanoidRootPart.Anchored = true
							end
						end
					end)
				end
			end
		Notify("Freeze others", Color3.fromRGB(0, 255, 0), "Success")
		else
			local Player = GetPlayer(Arg2)
			if Player ~= nil then
				pcall(function()
		                        if (Player ~= nil and Player.Character ~= nil) then
						if (Player.Character:FindFirstChildOfClass("Part") ~= nil) then
							for _, Part in pairs(Player.Character:GetDescendants()) do
								if (Part:IsA("BasePart")) then
									Remote:FireServer(Part,plr)
								end
							end
							Player.Character.HumanoidRootPart.Anchored = true
						end
					end
				end)
			Notify("Freeze "..Player.Name, Color3.fromRGB(0, 255, 0), "Success")
			else
				Notify("No Player Found", Color3.fromRGB(255, 0, 0), "Error")
			end
		end
	end
	if Command("admin") or Command("giveadmin") then
		local Player = GetPlayer(Arg2)
		if Player ~= nil and not Admin[Player.UserId] then
			Admin[Player.UserId] = {Player = Player}
			Chat("/w "..Player.Name.." You've got admin permissions! Type "..Prefix.."cmds or "..Prefix.."cmd to see all commands")
			Notify("Gave "..Player.Name.." admin commands", Color3.fromRGB(0, 255, 0), "Success")
		else
			Notify("No player found / already admin", Color3.fromRGB(255, 0, 0), "Error")
		end
	end
	if Command("unadmin") or Command("removeadmin") then
		local Player = GetPlayer(Arg2)
		if Player ~= nil and Admin[Player.UserId] then
			Admin[Player.UserId] = nil
			Chat("/w "..Player.Name.." Your admin removed, admin owner removed/left im sorry:(")
			Notify("Removed admins from "..Player.Name, Color3.fromRGB(0, 255, 0), "Success")
		else
			Notify("No player found / already admin", Color3.fromRGB(255, 0, 0), "Error")
		end
	end
	if Command("serverhop") or Command("newserver") or Command("changeserver") then
 		Notify("Changing server", Color3.fromRGB(0, 255, 0), "Success")
		wait(.1)
		game:GetService("TeleportService"):Teleport(game.PlaceId)
	end
	if PrefixCommand("getprefix") then
		Chat("Prefix : "..Prefix)
		Notify("Prefix : "..Prefix, Color3.fromRGB(0, 255, 0), "Success")
	end
	if Command("cmd") or Command("cmds") then
		if Background.Visible == true then
			Background.Visible = false
		else
			Background.Visible = true
		end
		Notify("Showed Commands", Color3.fromRGB(0, 255, 0), "Success")
	end

end

function AdminPlayerChatted(Message, Player)
	Split = Message:split(" ")
	Arg1 = Split[1]
	Arg2 = Split[2]
	Arg3 = Split[3]
	Arg4 = Split[4]
	if Command("kill") or Command("kills") then
		if Arg2 == "all" or Arg2 == "everyone" then
		for i,v in pairs(game.Players:GetPlayers()) do
			if v ~= plr then
				Kill(v)
			end
		end
		elseif Arg2 == "others" then
		for i,v in pairs(game.Players:GetPlayers()) do
			if v ~= plr and v ~= Player then
				Kill(v)
			end
		end
		else
		local Target = GetPlayer(Arg2)
		if Target ~= nil then
			Kill(Target)
			Chat("/w "..Player.Name.." (Success) Killed "..Target.DisplayName)
		else
			Chat("/w "..Player.Name.." No Player Found")
		end
		end
	end
	if Command("loopkill") or Command("loopkills") then
		if Arg2 == "all" or Arg2 == "everyone" then
		States.loopkillothers = true
		Chat("/w "..Player.Name.." (Success) Loop kills all")
		elseif Arg2 == "others" then
		States.loopkillother = true
		Chat("/w "..Player.Name.." (Success) Loop kills others")
		while task.wait(0.5) do
			if States.loopkillother then
				for i,v in pairs(game.players:GetPlayers()) do
					if v ~= plr and v ~= Player then
						Kill(v)
					end
				end
			end
		end
		else
		local Player = GetPlayer(Arg2)
		if Player ~= nil and not LoopKill[Player.UserId] then
			LoopKill[Player.UserId] = {Player = Player}
		end
		end
	end
	if Command("unloopkill") or Command("unloopkills") then
		if Arg2 == "all" or Arg2 == "everyone" then
		States.loopkillothers = false
		Chat("/w "..Player.Name.." (Success) Loop kills all")
		elseif Arg2 == "others" then
		States.loopkillother = false
		Chat("/w "..Player.Name.." (Success) Loop kills others")
		else
		local Player = GetPlayer(Arg2)
		if Player ~= nil and LoopKill[Player.UserId] then
			LoopKill[Player.UserId] = nil
		end
		end
	end
	if Command("bring") then
		if Arg2 == "all" or Arg2 == "everyone" or Arg2 == "others" then
		for i,v in pairs(game.Players:GetPlayers()) do
			if v ~= plr and v ~= Player then
				for i = 1,3 do wait(.1)
				TeleportV(v, Player)
				end
			end
		end
		Chat("/w "..Player.Name.." Bringing all")
		else
		local Target = GetPlayer(Arg2)
		if Target ~= nil then
			for i = 1,3 do wait(0.1)
			TeleportV(Target, Player)
			end
			Chat("/w "..Player.Name.." Bringing "..Target.DisplayName)
		else
			Chat("/w "..Player.Name.." No Player Found")
		end
		end
	end
	if Command("teleport") or Command("tp") then
		local Player1 = GetPlayer(Arg2)
		local Player2 = GetPlayer(Arg3)
		if Player1 ~= nil and Player2 ~= nil then
			for i = 1,3 do wait(.1)
				TeleportV(Player1, Player2)
			end
			Chat("/w "..Player.Name.." teleport "..Player1.DisplayName.." to "..Player2.DisplayName)
		else
			Chat("/w "..Player.Name.." No Player Found")
		end
	end
	if Command("goto") or Command("to") then
		local Target = GetPlayer(Arg2)
		if Target ~= nil then
			for i = 1,2 do wait(.1)
				TeleportV(Player, Target)
			end
			Chat("/w "..Player.Name.." goto "..Target.DisplayName)
		else
			Chat("/w "..Player.Name.." No Player Found")
		end
	end
	if Command("speed") then
		local speed = tonumber(Arg3)
		if Arg2 == "all" or Arg2 == "everyone" then
			for i,v in pairs(game.Players:GetPlayers()) do
				if v ~= plr then
					Speed(v, speed)
				end
			end
		Chat("/w "..Player.Name.." Speed all "..speed)
		elseif Arg2 == "others" then
			for i,v in pairs(game.Players:GetPlayers()) do
				if v ~= plr and v ~= Player then
					Speed(v, speed)
				end
			end
		Chat("/w "..Player.Name.." Speed others "..speed)
		else
			local Target = GetPlayer(Arg2)
			if Target ~= nil then
				Speed(Target, speed)
				Chat("/w "..Player.Name.." Speed "..Target.DisplayName.." "..speed)
			else
				Chat("/w "..Player.Name.." No Player Found")
			end
		end
	end
	if Command("voidkill") then
		if Arg2 == "all" or Arg2 == "everyone" then
			for i,v in pairs(game.Players:GetPlayers()) do
				if v ~= plr then
					for i = 1,3 do wait(.1)
						Teleport(v, CFrame.new(277, 122, -195))
					end
				end
			end
		Chat("/w "..Player.Name.." Void Kill all")
		elseif Arg2 == "others" then
			for i,v in pairs(game.Players:GetPlayers()) do
				if v ~= plr and v ~= Player then
					for i = 1,3 do wait(.1)
						Teleport(v, CFrame.new(277, 122, -195))
					end
				end
			end
		Chat("/w "..Player.Name.." Void Kill others")
		else
			local Target = GetPlayer(Arg2)
			if Target ~= nil then
				for i = 1,3 do wait(.1)
				Teleport(Target, CFrame.new(277, 122, -195))
				end
				Chat("/w "..Player.Name.." Voidkill "..Target.DisplayName)
			else
				Chat("/w "..Player.Name.." No Player Found")
			end
		end
	end
	if Command("cmd") or Command("cmds") then
		Chat("/w "..Player.Name.." "..Prefix.."kill [plr,all,others] "..Prefix.."loopkill [plr,all,others] "..Prefix.."unloopkill [plr,all,others]") wait(.1)
		Chat("/w "..Player.Name.." "..Prefix.."bring [plr,all] "..Prefix.."teleport / tp [plr1,plr2] "..Prefix.."goto / to [plr] "..Prefix.."speed [plr,all,others] [number]")
	end
end

game.Players.LocalPlayer.Chatted:Connect(PlayerChatted)

spawn(function()
	while wait() do
		for i,v in pairs(LoopKill) do
			pcall(function()
				if v.Player and v.Player.Character and v.Player.Character.Head and v.Player.Character.Humanoid.Health ~= 0 then
					Kill(v.Player)
				end
			end)
		end
	end
end)

spawn(function()
  while task.wait(0.5) do
    if States.loopkillall then
      for i,v in pairs(game.Players:GetPlayers()) do
        if v.Name ~= plr then
          Kill(v)
        end
      end
    end
  end
end)

spawn(function()
  while task.wait(0.5) do
    if States.loopkillothers then
      for i,v in pairs(game.Players:GetPlayers()) do
        if v ~= plr then
          Kill(v)
        end
      end
    end
  end
end)
		
function CheckPermissions(Player)
	Player.Chatted:Connect(function(Message)
		if Admin[Player.UserId] then
			AdminPlayerChatted(Message, Player)
		end
	end)
end

game.Players.PlayerRemoving:Connect(function(Player)
	CheckPermissions(Player)
end)

game.Players.PlayerAdded:Connect(function(Player)
	CheckPermissions(Player)
end)

for i,v in pairs(game.Players:GetPlayers()) do
	if v ~= game.Players.LocalPlayer then
		CheckPermissions(v)
	end
end

game.Players.LocalPlayer.CharacterAdded:Connect(function()
	States.CAN = false
end)

FindCmd.Changed:Connect(function()
	if FindCmd.Text ~= "" then
		for i,v in pairs(CmdHandler:GetChildren()) do
			if v:IsA("TextButton") then
				if not string.lower(v.Text):match(string.lower(FindCmd.Text)) then
					v.Parent = Background
					v.Visible = false
				end
			end
		end
		for i,v in pairs(Background:GetChildren()) do
			if v.Name == "COMMANDS" then
				if string.lower(v.Text):match(string.lower(FindCmd.Text)) then
					v.Parent = CmdHandler
					v.Visible = true
				end
			end
		end
	elseif FindCmd.Text == "" and (#CmdHandler:GetChildren()-1) ~= #Cmd  then
		for i,v in pairs(CmdHandler:GetChildren()) do
			if v:IsA("TextButton") then
				v:Destroy()
			end
		end
		for i,v in pairs(Background:GetChildren()) do
			if v.Name == "COMMANDS" then
				v:Destroy()
			end
		end
		for i = 1,#Cmd do
			local clone = CmdText:Clone()
			clone.Text = Cmd[i].Text
			clone.Name = "COMMANDS"
			local Ins = Instance.new("StringValue", clone)
			Ins.Name = "Title"
			Ins.Value = Cmd[i].Title
			local Ins2 = Instance.new("StringValue", clone)
			Ins2.Name = "TopbarName"
			Ins2.Value = Cmd[i].Text:split(" ")[1]
			clone.Parent = CmdHandler
			clone.MouseButton1Click:Connect(function()
				Execute:CaptureFocus()
				Execute.Text = clone.Text:split(" ")[1]
				Execute.CursorPosition = #Execute.Text + 1
			end)
		end
	end
end)

game.Players.LocalPlayer:GetMouse().KeyDown:Connect(function(Key)
	if Key == Prefix then
		if Prefix ~= "/" then
			Execute:CaptureFocus()
		end
	end
end)

Execute.FocusLost:Connect(function(FocusLost)
	if FocusLost then
		if Execute.Text:sub(1,#Prefix) ~= Prefix then
			PlayerChatted(Prefix..Execute.Text)
		else
			PlayerChatted(Execute.Text)
		end
	end
end)

getgenv().DisableScript = function()
	pcall(function()
		CmdGui:Destroy()
		States = {}
		LoopKill = {}
		Admin = {}
		ScriptDisabled = true
		for i,v in pairs(game.Lighting:GetChildren()) do
			v.Parent = workspace
		end
	end)
end
