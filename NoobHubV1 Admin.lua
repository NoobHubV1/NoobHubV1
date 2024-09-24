local CmdGui = Instance.new("ScreenGui")
local LoadingScreen = Instance.new("Frame")
local Background = Instance.new("Frame")
local LoadingLabel = Instance.new("TextLabel")
local CmdName = Instance.new("TextLabel")
local FindCmd = Instance.new("TextBox")
local CmdHandler = Instance.new("ScrollingFrame")
local CmdText = Instance.new("TextButton")
local UIListLayout = Instance.new("UIListLayout")
local Background2 = Instance.new("Frame")
local Label = Instance.new("TextLabel")
local Execute = Instance.new("TextBox")
local States = Instance.new("TextButton")
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
local Background5 = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local line = Instance.new("Frame")
local scripts = Instance.new("ScrollingFrame")
local AutoRespawn = Instance.new("TextButton")
local AutoGuns = Instance.new("TextButton")
local AntiBring = Instance.new("TextButton")
local UIGridLayout = Instance.new("UIGridLayout")
local Prefix = ";"

CmdGui.Name = "CmdGui"
CmdGui.Parent = game:GetService("CoreGui")
CmdGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

LoadingScreen.Name = "LoadingScreen"
LoadingScreen.Parent = CmdGui
LoadingScreen.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
LoadingScreen.BorderSizePixel = 0
LoadingScreen.Position = UDim2.new(0.402142167, 0, 0.415692836, 0)
LoadingScreen.Size = UDim2.new(0, 200, 0, 100)

LoadingLabel.Name = "LoadingLabel"
LoadingLabel.Parent = LoadingScreen
LoadingLabel.BackgroundColor3 = Color3.fromRGB(255, 128, 0)
LoadingLabel.BorderSizePixel = 0
LoadingLabel.Position = UDim2.new(0.125, 0, 0.25, 0)
LoadingLabel.Size = UDim2.new(0, 150, 0, 50)
LoadingLabel.Font = Enum.Font.GothamBlack
LoadingLabel.Text = "Waiting"
LoadingLabel.TextColor3 = Color3.fromRGB(255, 255, 0)
LoadingLabel.TextScaled = true
LoadingLabel.TextSize = 14.000
LoadingLabel.TextWrapped = true
coroutine.wrap(function()
	while wait() do
		if Background2.Visible == false then
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
Background.Parent = CmdGui
Background.BackgroundColor3 = Color3.fromRGB(255, 128, 0)
Background.BorderSizePixel = 0
Background.Position = UDim2.new(0.368556708, 0, 0.11490047, 0)
Background.Size = UDim2.new(0, 350, 0, 350)
Background.Active = true
Background.Draggable = true
Background.Visible = false

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

Background2.Name = "Background2"
Background2.Parent = CmdGui
Background2.BackgroundColor3 = Color3.fromRGB(255, 128, 0)
Background2.BorderSizePixel = 0
Background2.Position = UDim2.new(0.012, 0, 0.807, 0)
Background2.Size = UDim2.new(0, 250, 0, 80)
Background2.Active = true
Background2.Draggable = true
Background2.Visible = false

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
Execute.PlaceholderText = "Loading..."
Execute.Text = ""
Execute.TextColor3 = Color3.fromRGB(255, 128, 0)
Execute.TextSize = 14.000
Execute.TextWrapped = true

States.Name = "States"
States.Parent = Background2
States.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
States.BorderSizePixel = 0
States.Position = UDim2.new(0.899999976, 0, -0.210084036, 0)
States.Size = UDim2.new(0, 25, 0, 25)
States.Font = Enum.Font.GothamBlack
States.Text = ">"
States.TextColor3 = Color3.fromRGB(255, 255, 255)
States.TextScaled = true
States.TextSize = 14.000
States.TextWrapped = true
States.MouseButton1Click:Connect(function()
	if Background5.Visible == true then
		Background5.Visible = false
		States.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
		States.Text = ">"
	else
		Background5.Visible = true
		States.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
		States.Text = "<"
	end
end)

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
Background4.Draggable = true
Background4.Visible = false

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
CloseBar.Visible = false
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
OpenBar.Size = UDim2.new(0, 65, 0, 65)
OpenBar.Visible = true
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

Background5.Name = "Background5"
Background5.Parent = CmdGui
Background5.BackgroundColor3 = Color3.fromRGB(255, 128, 0)
Background5.BorderSizePixel = 0
Background5.Position = UDim2.new(0.368556708, 0, 0.11490047, 0)
Background5.Size = UDim2.new(0, 425, 0, 339)
Background5.Active = true
Background5.Draggable = true
Background5.Visible = false

TextLabel.Name = "TextLabel"
TextLabel.Parent = Background5
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 128, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0.292307675, 0, 0, 0)
TextLabel.Size = UDim2.new(0, 250, 0, 25)
TextLabel.Font = Enum.Font.GothamBlack
TextLabel.Text = "States"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 0)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true

line.Name = "line"
line.Parent = Background5
line.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
line.BorderSizePixel = 0
line.Position = UDim2.new(0, 0, 0.106986806, 0)
line.Size = UDim2.new(0, 325, 0, 6)

scripts.Name = "scripts"
scripts.Parent = Background5
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

AutoRespawn.Name = "AutoRespawn"
AutoRespawn.Parent = scripts
AutoRespawn.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
AutoRespawn.BorderSizePixel = 0
AutoRespawn.Size = UDim2.new(0, 200, 0, 50)
AutoRespawn.Font = Enum.Font.Roboto
AutoRespawn.Text = "Auto Respawn: On"
AutoRespawn.TextColor3 = Color3.fromRGB(255, 255, 255)
AutoRespawn.TextSize = 14.000

AutoGuns.Name = "AutoGuns"
AutoGuns.Parent = scripts
AutoGuns.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
AutoGuns.BorderSizePixel = 0
AutoGuns.Size = UDim2.new(0, 200, 0, 50)
AutoGuns.Font = Enum.Font.Roboto
AutoGuns.Text = "Auto Guns: On"
AutoGuns.TextColor3 = Color3.fromRGB(255, 255, 255)
AutoGuns.TextSize = 14.000

AntiBring.Name = "AntiBring"
AntiBring.Parent = scripts
AntiBring.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
AntiBring.BorderSizePixel = 0
AntiBring.Size = UDim2.new(0, 200, 0, 50)
AntiBring.Font = Enum.Font.Roboto
AntiBring.Text = "Anti Bring: Off"
AntiBring.TextColor3 = Color3.fromRGB(255, 255, 255)
AntiBring.TextSize = 14.000

local Versions = "2.0"
local Cmd = {}

Cmd[#Cmd + 1] = {Text = "versions "..Versions,Title = "Script Made NoobHubV1"}
Cmd[#Cmd + 1] = {Text = "menu made by me NoobHubV1",Title = "Script maker"}
Cmd[#Cmd + 1] =	{Text = "cmd / cmds",Title = "Show commands bar"}
Cmd[#Cmd + 1] =	{Text = "rejoin / rj",Title = "Rejoin the game"}
Cmd[#Cmd + 1] =	{Text = "leave / leaveserver / quit",Title = "Leave the server"}
Cmd[#Cmd + 1] =	{Text = "admin / giveadmin [plr]",Title = "Give a commands to player"}
Cmd[#Cmd + 1] =	{Text = "unadmin / removeadmin [plr]",Title = "Remove a commands from player"}
Cmd[#Cmd + 1] =	{Text = "kill [plr,team,all]",Title = "Kill the player"}
Cmd[#Cmd + 1] =	{Text = "tase [plr,team,all]",Title = "Tase the player"}
Cmd[#Cmd + 1] =	{Text = "loopkill / loopkills / lk [plr,team,all]",Title = "Loop kills player"}
Cmd[#Cmd + 1] =	{Text = "unloopkill / unloopkills / unlk [plr,team,all]",Title = "Unloop kills player"}
Cmd[#Cmd + 1] =	{Text = "inmate / inmates / prisoner / prisoners",Title = "Become inmate team"}
Cmd[#Cmd + 1] =	{Text = "guard / guards / cop / polices",Title = "Become guard team"}
Cmd[#Cmd + 1] =	{Text = "crim / criminals / criminal / makecrim [plr]",Title = "Become criminal player team"}
Cmd[#Cmd + 1] =	{Text = "loopcrim / loopcriminals / loopcriminal [plr]",Title = "loop criminal team player"}
Cmd[#Cmd + 1] =	{Text = "unloopcrim / unloopcriminals / unloopcriminal [plr]",Title = "unloop criminal team player"}
Cmd[#Cmd + 1] =	{Text = "neutral / neutrals",Title = "Become neutral team"}
Cmd[#Cmd + 1] =	{Text = "re / refresh",Title = "Respawn on old position"}
Cmd[#Cmd + 1] =	{Text = "res / respawn",Title = "Respawn on respawn pads"}
Cmd[#Cmd + 1] =	{Text = "goto / to [plr]",Title = "Teleports to the player"}
Cmd[#Cmd + 1] =	{Text = "arrest [plr] [time]",Title = "Arrest player that is a criminal"}
Cmd[#Cmd + 1] =	{Text = "arrestall / arrestothers",Title = "Arrest all criminals"}
Cmd[#Cmd + 1] =	{Text = "auto / autore / autorefresh / autorespawn [on,off]",Title = "Auto respawn on old position when died"}
Cmd[#Cmd + 1] =	{Text = "killaura [plr]",Title = "Activate kill aura Player"}
Cmd[#Cmd + 1] =	{Text = "nokillaura / unkillaura [plr]",Title = "Unactivate kill aura Player"}
Cmd[#Cmd + 1] = {Text = "antifling [on,off]",Title = "Activate anti fling"}
Cmd[#Cmd + 1] = {Text = "god",Title = "Become a god mode"}
Cmd[#Cmd + 1] = {Text = "ungod",Title = "Unbecome a god mode"}
Cmd[#Cmd + 1] =	{Text = "view / spectate / watch [plr]",Title = "Spectates the player"}
Cmd[#Cmd + 1] =	{Text = "unview / unspectate / stopwatch",Title = "Unspectates the player"}
Cmd[#Cmd + 1] =	{Text = "fastpunch / speedpunchh",Title = "Activate fast punch"}
Cmd[#Cmd + 1] =	{Text = "slowpunch / nofastpunch / normalspeedpunch",Title = "unactivate fast punch"}
Cmd[#Cmd + 1] =	{Text = "superpunch / onepunch",Title = "Activate super punch"}
Cmd[#Cmd + 1] =	{Text = "nosuperpunch / normalpunch",Title = "Unactivate super punch"}
Cmd[#Cmd + 1] =	{Text = "prefix / newprefix / changeprefix [prefix text]",Title = "Changes prefix"}
Cmd[#Cmd + 1] = {Text = "antilag / boostfps",Title = "Boost a little fps"}
Cmd[#Cmd + 1] = {Text = "unantilag",Title = "Stop boost the fps"}
Cmd[#Cmd + 1] = {Text = "noclip / noclips [on,off]",Title = "Activate no clips"}
Cmd[#Cmd + 1] =	{Text = "getpos",Title = "Prints positions"}
Cmd[#Cmd + 1] =	{Text = "unload / destroygui",Title = "Unload the scripts"}
Cmd[#Cmd + 1] =	{Text = "reload / update",Title = "Reload the script to new version"}
Cmd[#Cmd + 1] =	{Text = "How to open console?",Title = "To open console chat /console or press F9 or Fn + F9"}
Cmd[#Cmd + 1] =	{Text = "lagserver / disconnect",Title = "Lag server and disconnect after 5 minutes of lagging"}
Cmd[#Cmd + 1] =	{Text = "unlagserver / undisconnect",Title = "Stop lag server"}
Cmd[#Cmd + 1] =	{Text = "speed / setspeed / walkspeed [count]",Title = "Changes walk speeds"}
Cmd[#Cmd + 1] =	{Text = "jumppower / setjumppower [count]",Title = "Changes jump powers"}
Cmd[#Cmd + 1] =	{Text = "hipheight / sethipheight [count]",Title = "Changes hip heights"}
Cmd[#Cmd + 1] =	{Text = "gravity / setgravity [count]",Title = "Changes gravity"}
Cmd[#Cmd + 1] =	{Text = "resetspeed / resetwalkspeed",Title = "Reset walk speeds"}
Cmd[#Cmd + 1] =	{Text = "resetjumppower / rejumppower",Title = "Reset jump powers"}
Cmd[#Cmd + 1] =	{Text = "resethipheight / rehipheight",Title = "Reset hip heights"}
Cmd[#Cmd + 1] =	{Text = "resetgravity / regravity",Title = "Reset gravity"}
Cmd[#Cmd + 1] =	{Text = "baseballbat / bat",Title = "Gets bat"}
Cmd[#Cmd + 1] =	{Text = "superknife",Title = "Gets super knife"}
Cmd[#Cmd + 1] =	{Text = "firespeed / setfirespeed [count]",Title = "Changes fire speed for the gun"}
Cmd[#Cmd + 1] =	{Text = "autofire",Title = "Changes gun ststes to auto fire"}
Cmd[#Cmd + 1] =	{Text = "semifire",Title = "Changes gun ststes to semi fire"}
Cmd[#Cmd + 1] =	{Text = "burst / burstbullets / bullets [count]",Title = "Changes a bullets for the gun will come out when shot"}
Cmd[#Cmd + 1] =	{Text = "reloadtime / reloadtimes [count]",Title = "Changes reload times for the gun"}
Cmd[#Cmd + 1] =	{Text = "gun / guns / allguns",Title = "Obtains all guns"}
Cmd[#Cmd + 1] =	{Text = "ak",Title = "Obtains ak-47"}
Cmd[#Cmd + 1] =	{Text = "shotgun",Title = "Obtains remington 870"}
Cmd[#Cmd + 1] =	{Text = "m9",Title = "Obtains m9"}
Cmd[#Cmd + 1] =	{Text = "m4a1",Title = "Obtains m4a1"}
Cmd[#Cmd + 1] =	{Text = "autogun / autoguns / autoallguns / aguns [on,off]",Title = "Activate auto gun when respawned"}
Cmd[#Cmd + 1] =	{Text = "antitase [on,off]",Title = "Bypass taser when got tased"}
Cmd[#Cmd + 1] =	{Text = "infjump [on,off]",Title = "Activate inf jump"}
Cmd[#Cmd + 1] =	{Text = "nodoors / deletedoors",Title = "Deletes all doors"}
Cmd[#Cmd + 1] =	{Text = "restoredoors / doors",Title = "Restores all doors"}
Cmd[#Cmd + 1] =	{Text = "nowalls / deletewalls - delete walls",Title = "Deletes all walls"}
Cmd[#Cmd + 1] =	{Text = "walls / restorewalls - restore walls",Title = "Restore all walls"}
Cmd[#Cmd + 1] =	{Text = "anticrash / antivest [on,off]",Title = "Anti crash when someone spamming armor"}
Cmd[#Cmd + 1] =	{Text = "antishield / noshield [on,off]",Title = "Anti shield users"}
Cmd[#Cmd + 1] =	{Text = "gatetower [plr]",Title = "Teleports to the gate tower"}
Cmd[#Cmd + 1] =	{Text = "tower [plr]",Title = "Teleports to the yard tower"}
Cmd[#Cmd + 1] =	{Text = "sewer [plr]",Title = "Teleports to the sewer"}
Cmd[#Cmd + 1] = {Text = "yard [plr]",Title = "Teleports to yard"}
Cmd[#Cmd + 1] =	{Text = "backnexus [plr]",Title = "Teleports to the back nexus"}
Cmd[#Cmd + 1] =	{Text = "nexus [plr]",Title = "Teleports to the nexus"}
Cmd[#Cmd + 1] =	{Text = "gate [plr]",Title = "Teleports to the gate"}
Cmd[#Cmd + 1] = {Text = "findowner / checkscriptowner",Title = "Find a script owner in the server"}
Cmd[#Cmd + 1] = {Text = "getplayer / getplayers",Title = "Get a players counts in the server"}
Cmd[#Cmd + 1] = {Text = "rapidfire",Title = "Activate rapid fire"}
Cmd[#Cmd + 1] = {Text = "autorapidfire",Title = "Auto activate rapid fire"}
Cmd[#Cmd + 1] = {Text = "unautorapidfire",Title = "Unauto activate rapid fire"}
Cmd[#Cmd + 1] =	{Text = "armory [plr]",Title = "Teleports to the armory"}
Cmd[#Cmd + 1] =	{Text = "cafe [plr]",Title = "Teleports to the cafeteria"}
Cmd[#Cmd + 1] =	{Text = "crimbase / criminalbase / cbase [plr]",Title = "Teleports to the criminals base"}
Cmd[#Cmd + 1] =	{Text = "lunchroom [plr]",Title = "Teleports to the cafeteria room"}
Cmd[#Cmd + 1] =	{Text = "void [plr]",Title = "Teleports to the void"}
Cmd[#Cmd + 1] =	{Text = "spamchat [delay]",Title = "Spam the chat"}
Cmd[#Cmd + 1] =	{Text = "unspamchat",Title = "Unspam the chat"}
Cmd[#Cmd + 1] =	{Text = "findposition / getposition / getpos",Title = "Find positions"}
Cmd[#Cmd + 1] =	{Text = "loadpos / loadposition",Title = "Loads positions"}
Cmd[#Cmd + 1] =	{Text = "notify",Title = "Send a message when player leave / join"}
Cmd[#Cmd + 1] =	{Text = "nonotify",Title = "Stop send a message when player leave / join"}
Cmd[#Cmd + 1] =	{Text = "copychat",Title = "Copies all players chats"}
Cmd[#Cmd + 1] =	{Text = "uncopychat",Title = "uncopies all players chats"}
Cmd[#Cmd + 1] =	{Text = "chatnotify [on,off]",Title = "Chats when player leave / join"}
Cmd[#Cmd + 1] =	{Text = "opengate",Title = "Open the gate"}
Cmd[#Cmd + 1] = {Text = "bring [plr]",Title = "Teleport player to me"}
Cmd[#Cmd + 1] =	{Text = "antifell / antivoid",Title = "Activate anti fell to the void when respawn as custom team"}
Cmd[#Cmd + 1] =	{Text = "unantifell / unantivoid",Title = "Unactivate anti fell to the void when respawn as custom team"}
Cmd[#Cmd + 1] =	{Text = "beam [plr]",Title = "Shoot a beam to player"}
Cmd[#Cmd + 1] =	{Text = "lagbeam / beam2 [plr]",Title = "Shoot a beam to player but lag"}
Cmd[#Cmd + 1] =	{Text = "crash / beam3 [plr]",Title = "Shoot a beam to player but even more lag"}
Cmd[#Cmd + 1] = {Text = "antiarrest [on,off]",Title = "Activate anti arrest"}
Cmd[#Cmd + 1] = {Text = "arrestaura",Title = "Activate arrest aura"}
Cmd[#Cmd + 1] = {Text = "unarrestaura",Title = "Unctivate arrest aura"}
Cmd[#Cmd + 1] = {Text = "forcefield / ff [on,off]",Title = "Activate forcefield"}
Cmd[#Cmd + 1] = {Text = "car",Title = "Bring Car"}
Cmd[#Cmd + 1] = {Text = "carsto [plr]",Title = "Bring Car To Player"}
Cmd[#Cmd + 1] = {Text = "esp [on,off]",Title = "Activate esp"}
Cmd[#Cmd + 1] = {Text = "clickkill [on,off]",Title = "Activate click kill"}
Cmd[#Cmd + 1] = {Text = "antibring [on,off]",Title = "Activate anti bring"}
Cmd[#Cmd + 1] =	{Text = "!getprefix",Title = "If you for get prefix you can type this in chat"}

local States = {}
      States.autorespawn = true
      States.autoguns = true
      States.ff = false
      States.Godmode = false
      States.loopkillinmates = false
      States.loopkillguards = false
      States.loopkillcriminals = false
      States.loopkillall = false
      States.antivoid = false
      States.Noclip = false
      States.Esp = false
      States.Clickkill = false
      States.antifling = false
      States.antibring = false
      States.infjump = false
      States.loopcrim = false
      States.antitase = false

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

local Slient = false
local ScriptDisabled = false
local LoopBeam = {}
local LoopKill = {}
local LoopTase = {}
local LoopCrim = {}
local Admin = {}
local Watching = nil
local BuyGamepass = game:GetService("MarketplaceService"):UserOwnsGamePassAsync(tonumber((game:GetService("Players").LocalPlayer.CharacterAppearance):split('=')[#((game:GetService("Players").LocalPlayer.CharacterAppearance):split('='))]), 96651)

function Notify(Message, Color, Text)
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

function GetPlayer(String,IgnoreError)
	if not String then
		return nil
	end
	if String:lower() == "me" then
		return plr
        elseif String:lower() == "random" then
		local GetPlayers = game.Players:GetPlayers()
		if table.find(GetPlayers,Player) then table.remove(GetPlayers,table.find(GetPlayers,Player)) end
		return GetPlayers[math.random(#GetPlayers)]
	end
	String = String:gsub("%s+", "")
	for _, v in pairs(game:GetService("Players"):GetPlayers()) do
		if v.Name:lower():match("^" .. String:lower()) or v.DisplayName:lower():match("^" .. String:lower()) then
			return v
		end
	end
	if not IgnoreError then
		Notify("No Player Found For Name "..String, Color3.fromRGB(255, 0, 0), "Error")
	end
	return nil
end

function getPlayer(String,IgnoreError,Target)
	if not String then
		return nil
	end
	if String:lower() == "me" then
		return plr
        elseif String:lower() == "random" then
		local GetPlayers = game.Players:GetPlayers()
		if table.find(GetPlayers,Player) then table.remove(GetPlayers,table.find(GetPlayers,Player)) end
		return GetPlayers[math.random(#GetPlayers)]
	end
	String = String:gsub("%s+", "")
	for _, v in pairs(game:GetService("Players"):GetPlayers()) do
		if v.Name:lower():match("^" .. String:lower()) or v.DisplayName:lower():match("^" .. String:lower()) then
			return v
		end
	end
	if not IgnoreError then
		Chat("/w "..Target.Name.." No Player Found For Name "..String)
	end
	return nil
end

local function GetPos()
	return plr.Character.HumanoidRootPart.CFrame
end

local function GetCamPos()
	return workspace.CurrentCamera.CFrame
end

local function GetTeam()
	return plr.TeamColor.Name
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

function GuardsFull(a)
	if #game:GetService("Teams").Guards:GetPlayers() == 8 then
		if a then
			if plr.TeamColor.Name == "Bright blue" then
				return false
			end
		end
		return false
	end
	return true
end

function Criminal()
	local savedcf = GetPos()
	local savedcamcf = GetCamPos()
	if plr.TeamColor.Name == "Bright blue" then
	TPCFrame(CFrame.new(-919.958, 95.327, 2138.189))
	char:Wait() task.wait(0.065)
	TPCFrame(savedcf)
	workspace["CurrentCamera"].CFrame = savedcamcf
	elseif plr.TeamColor.Name == "Bright orange" then
	firetouchinterest(plr.Character.HumanoidRootPart, game.Workspace["Criminals Spawn"].SpawnLocation, 0)
	end
end

function ChangeTeam(Team, Position, NoForce)
	if not Position then Position = GetPos() end
	if typeof(Position):lower() == "position" then Position = CFrame.new(Position) end
	local LastPosition = GetPos()
	local LastCameraPosition = workspace.CurrentCamera.CFrame
	if not Team then Team = plr.TeamColor.Name end
	local done = false
	Respawned = plr.CharacterAdded:Connect(function(c)
		if done then return end
		done = true
		task.spawn(function()
			workspace.CurrentCamera.CameraType = Enum.CameraType.Scriptable
			wait(.1)
			workspace.CurrentCamera.CameraType = Enum.CameraType.Custom
			workspace.CurrentCamera.CameraSubject = plr.Character:WaitForChild("Humanoid")

		end)
		for i = 1,15 do task.wait()
			c:WaitForChild("HumanoidRootPart").CFrame = LastPosition
			game:GetService("RunService").Stepped:Wait()
		end
		Position = nil--// why the fuck it keep spawning somewhere else!!!! GRRRRR
		NoForce = nil
		LastCameraPosition = nil
		Team = nil
	end)
	if Team == "Bright orange" then
		Position = Position
		workspace.Remote.TeamEvent:FireServer("Bright orange")
	elseif Team == "Bright blue" then
		Position = Position
		workspace.Remote.TeamEvent:FireServer(game.Teams.Guards.TeamColor.Name)
	elseif Team == "Really red" then
		workspace.Remote.TeamEvent:FireServer(game.Teams.Inmates.TeamColor.Name)
		plr.CharacterAdded:Wait() wait()
		repeat task.wait()
			game:GetService("RunService").Stepped:Wait()
			if firetouchinterest then
				firetouchinterest(plr.Character:FindFirstChildOfClass("Part"), game:GetService("Workspace")["Criminals Spawn"]:GetChildren()[1], 0)
				firetouchinterest(plr.Character:FindFirstChildOfClass("Part"), game:GetService("Workspace")["Criminals Spawn"]:GetChildren()[1], 1)
			end
			game:GetService("Workspace")["Criminals Spawn"]:GetChildren()[1].Transparency = 1
			game:GetService("Workspace")["Criminals Spawn"]:GetChildren()[1].CanCollide = false
			game:GetService("Workspace")["Criminals Spawn"]:GetChildren()[1].CFrame = GetPos()
		until plr.TeamColor.Name == "Really red"
	end
	return nil
end

function GiveItem(Item)
        Workspace.Remote.ItemHandler:InvokeServer({Position=game.Players.LocalPlayer.Character.Head.Position,Parent=workspace.Prison_ITEMS:FindFirstChild(Item, true)})
end

function Guns()
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

function KillPlayer(Player)
	if not Player.Character.Humanoid.Health == 0 or not Player.Character:FindFirstChild("ForceField") then
	local events = {}
	local gun = plr.Character:FindFirstChild("AK-47") or plr.Backpack:FindFirstChild("AK-47")
	GiveItem("AK-47")
	for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
		if v.Name ~= "Taser" and v:FindFirstChild("GunStates") then
			gun = v
		end
	end
	coroutine.wrap(function()
		for i = 1,30 do
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
end

function KillTeam(Team,Target)
	if not Target then
		-- nothing
	end
	local events = {}
	local gun = plr.Character:FindFirstChild("AK-47") or plr.Backpack:FindFirstChild("AK-47")
	for i,v in pairs(game.Players:GetPlayers()) do
		if v ~= game.Players.LocalPlayer and v ~= Target or plr then
			if v.TeamColor.Name == Team then
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
	end
	GiveItem("AK-47")
	for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
		if v.Name ~= "Taser" and v:FindFirstChild("GunStates") then
			gun = v
		end
	end
	coroutine.wrap(function()
		for i = 1,30 do
			game.ReplicatedStorage.ReloadEvent:FireServer(gun)
			task.wait()
		end
	end)()
	game.ReplicatedStorage.ShootEvent:FireServer(events, gun)
end

function Kill2Team(Team1, Team2, Target)
	if not Target then
		-- nothing
	end
	local events = {}
	local gun = plr.Character:FindFirstChild("AK-47") or plr.Backpack:FindFirstChild("AK-47")
	for i,v in pairs(game.Players:GetPlayers()) do
		if v ~= game.Players.LocalPlayer and v ~= Target or plr then
			if v.TeamColor.Name == Team1 or v.TeamColor.Name == Team2 then
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
	end
	GiveItem("AK-47")
	for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
		if v.Name ~= "Taser" and v:FindFirstChild("GunStates") then
			gun = v
		end
	end
	coroutine.wrap(function()
		for i = 1,30 do
			game.ReplicatedStorage.ReloadEvent:FireServer(gun)
			task.wait()
		end
	end)()
	game.ReplicatedStorage.ShootEvent:FireServer(events, gun)
end

function Kill(Player)
	if Player.Character.Humanoid.Health == 0 then -- nothing
	else
        if Player.TeamColor.Name == "Bright orange" then
	if plr.TeamColor.Name == "Bright orange" then
	Criminal()
	task.wait(0.1)
	KillPlayer(Player)
	elseif plr.TeamColor.Name == "Bright blue" then
	Criminal()
	task.wait(0.2)
	KillPlayer(Player)
	elseif plr.TeamColor.Name == "Really red" then
	KillPlayer(Player)
	end
        elseif Player.TeamColor.Name == "Bright blue" then
        if plr.TeamColor.Name == "Bright blue" then
        Criminal()
        task.wait(0.2)
        KillPlayer(Player)
        elseif plr.TeamColor.Name == "Really red" then
        KillPlayer(Player)
        elseif plr.TeamColor.Name == "Bright orange" then
        KillPlayer(Player)
        end
        elseif Player.TeamColor.Name == "Really red" then
        if plr.TeamColor.Name == "Bright blue" then
        ChangeTeam(BrickColor.new("Bright orange").Name)
        task.wait(0.2)
        KillPlayer(Player)
        elseif plr.TeamColor.Name == "Really red" then
        ChangeTeam(BrickColor.new("Bright orange").Name)
        task.wait(0.15)
        KillPlayer(Player)
        elseif plr.TeamColor.Name == "Bright orange" then
        KillPlayer(Player)
	end
	elseif Player.TeamColor.Name == "Medium stone grey" then
	if plr.TeamColor.Name == "Bright blue" then
        KillPlayer(Player)
        elseif plr.TeamColor.Name == "Really red" then
        KillPlayer(Player)
        elseif plr.TeamColor.Name == "Bright orange" then
        KillPlayer(Player)
	end
        end
	end
end

function CheckKillTeam(TeamPath,Target)
	if not Target then
		-- nothing
	end
	if TeamPath == "Bright orange" then
	for i,v in pairs(game.Teams.Inmates:GetPlayers()) do
	if v ~= plr and v ~= Target or plr then
	if v.Character.Humanoid.Health == 0 or v.Character:FindFirstChild("ForceField") then -- nothing
	else
	if plr.TeamColor.Name == "Really red" then
	KillTeam("Bright orange",Target)
	elseif plr.TeamColor.Name == "Bright orange" then
	Criminal()
	task.wait(0.1)
	KillTeam("Bright orange",Target)
	elseif plr.TeamColor.Name == "Bright blue" then
	Criminal()
	task.wait(0.2)
	KillTeam("Bright orange",Target)
	end
	end
	end
	end
	elseif TeamPath == "Bright blue" then
        for i,v in pairs(game.Teams.Guards:GetPlayers()) do
	if v ~= plr and v ~= Target or plr then
	if v.Character.Humanoid.Health == 0 or v.Character:FindFirstChild("ForceField") then -- nothing
	else
	if plr.TeamColor.Name == "Really red" or plr.TeamColor.Name == "Bright orange" then
	KillTeam("Bright blue",Target)
	elseif plr.TeamColor.Name == "Bright blue" then
	ChangeTeam(game.Teams.Inmates)
	task.wait(0.2)
	KillTeam("Bright blue",Target)
	end
	end
	end
	end
	elseif TeamPath == "Really red" then
	for i,v in pairs(game.Teams.Criminals:GetPlayers()) do
	if v ~= plr and v ~= Target or plr then
	if v.Character.Humanoid.Health == 0 or v.Character:FindFirstChild("ForceField") then -- nothing
	else
	if plr.TeamColor.Name == "Really red" then
	ChangeTeam(BrickColor.new("Bright orange").Name)
	task.wait(0.2)
	KillTeam("Really red",Target)
	elseif plr.TeamColor.Name == "Bright blue" or plr.TeamColor.Name == "Bright orange" then
	KillTeam("Really red",Target)
	end
	end
	end
	end
	end
end

function KillInmatesAndGuards(Target)
	if not Target then
		-- nothing
	end
	for i,v in pairs(game.Players:GetPlayers()) do
	if v ~= plr and v ~= Target then
	if v.TeamColor.Name == "Bright blue" or v.TeamColor.Name == "Bright orange" then
	if v.Character.Humanoid.Health == 0 or v.Character:FindFirstChild("ForceField") then
	else
	if plr.TeamColor.Name == "Bright orange" or plr.TeamColor.Name == "Bright blue" then
	Criminal()
	task.wait(0.2)
	Kill2Team("Bright orange", "Bright blue", Target)
	elseif plr.TeamColor.Name == "Really red" then
	Kill2Team("Bright orange", "Bright blue", Target)
	end
	end
	end
	end
	end
end

function KillAll(Target)
	if not Target then
		-- nothing
	end
	for i,v in pairs(game.Players:GetPlayers()) do
		if v ~= plr and v ~= Target then
			if v.TeamColor.Name == "Bright orange" or v.TeamColor.Name == "Bright blue" then
				if not v.Character.Humanoid.Health == 0 or not v.Character:FindFirstChild("ForceField") then
					KillInmatesAndGuards(Target)
				end
			end
		end
	end
	task.wait(0.1)
	for i,v in pairs(game.Players:GetPlayers()) do
		if v ~= plr and v ~= Target then
			if v.TeamColor.Name == "Really red" then
				if not v.Character.Humanoid.Health == 0 or not v.Character:FindFirstChild("ForceField") then
					CheckKillTeam(BrickColor.new("Really red").Name,Target)
				end
			end
		end
	end
end

function Tase(Player)
        local events = {}
	local gun = nil
	local savedteam = GetTeam()
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
	if not game.Players.LocalPlayer.Character:FindFirstChild("Taser") or game.Players.LocalPlayer.Backpack:FindFirstChild("Taser") then
		ChangeTeam(BrickColor.new("Bright blue").Name)
	end
	gun = game.Players.LocalPlayer.Character:FindFirstChild("Taser") or game.Players.LocalPlayer.Backpack:FindFirstChild("Taser")
	game.ReplicatedStorage.ShootEvent:FireServer(events, gun)
	ChangeTeam(BrickColor.new(savedteam).Name)
end

function TaseTeam(Team)
	local events = {}
	local gun = nil
	local savedteam = GetTeam()
	for i,v in pairs(game.Players:GetPlayers()) do
		if v ~= plr and v.TeamColor.Name == Team then
			events[#events + 1] = {
				Hit = v.Character:FindFirstChildOfClass("Part"),
				Cframe = CFrame.new(),
				RayObject = Ray.new(Vector3.new(), Vector3.new()),
				Distance = 0
			}
		end
	end
	if not game.Players.LocalPlayer.Character:FindFirstChild("Taser") or game.Players.LocalPlayer.Backpack:FindFirstChild("Taser") then
		ChangeTeam(BrickColor.new("Bright blue").Name)
	end
	gun = game.Players.LocalPlayer.Character:FindFirstChild("Taser") or game.Players.LocalPlayer.Backpack:FindFirstChild("Taser")
	game.ReplicatedStorage.ShootEvent:FireServer(events, gun)
	ChangeTeam(BrickColor.new(savedteam).Name)
end

function TaseAll()
	local events = {}
	local gun = nil
	local savedteam = GetTeam()
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
	if not game.Players.LocalPlayer.Character:FindFirstChild("Taser") or game.Players.LocalPlayer.Backpack:FindFirstChild("Taser") then
		ChangeTeam(BrickColor.new("Bright blue").Name)
	end
	gun = game.Players.LocalPlayer.Character:FindFirstChild("Taser") or game.Players.LocalPlayer.Backpack:FindFirstChild("Taser")
	game.ReplicatedStorage.ShootEvent:FireServer(events, gun)
	ChangeTeam(BrickColor.new(savedteam).Name)
end

function TaseTeamWhitelisted(Team,Target)
	local events = {}
	local gun = nil
	local savedteam = GetTeam()
	for i,v in pairs(game.Players:GetPlayers()) do
		if v ~= plr and v ~= Target or plr then
			if v.TeamColor.Name == Team then
				events[#events + 1] = {
					Hit = v.Character:FindFirstChildOfClass("Part"),
					Cframe = CFrame.new(),
					RayObject = Ray.new(Vector3.new(), Vector3.new()),
					Distance = 0
				}
			end
		end
	end
	if not game.Players.LocalPlayer.Character:FindFirstChild("Taser") and not game.Players.LocalPlayer:FindFirstChild("Backpack"):FindFirstChild("Taser") then
		ChangeTeam(BrickColor.new("Bright blue").Name)
	end
	gun = game.Players.LocalPlayer.Character:FindFirstChild("Taser") or game.Players.LocalPlayer.Backpack:FindFirstChild("Taser")
	game.ReplicatedStorage.ShootEvent:FireServer(events, gun)
	ChangeTeam(BrickColor.new(savedteam).Name)
end

function TaseAllWhitelisted(Target)
	local events = {}
	local gun = nil
	local savedteam = GetTeam()
	for i,v in pairs(game.Players:GetPlayers()) do
		if v ~= plr and v ~= Target or plr then
			events[#events + 1] = {
				Hit = v.Character:FindFirstChildOfClass("Part"),
				Cframe = CFrame.new(),
				RayObject = Ray.new(Vector3.new(), Vector3.new()),
				Distance = 0
			}
		end
	end
	if not game.Players.LocalPlayer.Character:FindFirstChild("Taser") and not game.Players.LocalPlayer:FindFirstChild("Backpack"):FindFirstChild("Taser") then
		ChangeTeam(BrickColor.new("Bright blue").Name)
	end
	gun = game.Players.LocalPlayer.Character:FindFirstChild("Taser") or game.Players.LocalPlayer.Backpack:FindFirstChild("Taser")
	game.ReplicatedStorage.ShootEvent:FireServer(events, gun)
	ChangeTeam(BrickColor.new(savedteam).Name)
end

function ArrestEvent(Player, Time)
	local Player = Player or plr
	local Time = Time or 1
	for i = 1,Time do
		workspace.Remote.arrest:InvokeServer(Player.Character.Head)
	end
end

function Arrest(Player, Time)
        if Player.Character.Humanoid.Health == 0 then -- nothing
	else
	local Time = Time or 1
	local savedcf = GetPos()
	local savedcamcf = GetCamPos()
	local Attempts = 0
	if Player then
		repeat task.wait()
			Attempts = Attempts + 1
			TPCFrame(Player.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, 0))
			plr.Character.Humanoid.Sit = false
			for i = 1,Time do
				coroutine.wrap(function()
					ArrestEvent(Player, 1)
				end)()
			end
		until Player.Character.Head:FindFirstChild("handcuffedGui") or Attempts > 120
		task.wait()
	end
	game.Players.LocalPlayer.Character.Humanoid.Sit = false
	TPCFrame(savedcf)
	workspace.CurrentCamera.CFrame = savedcamcf
	end
end

function GetCar(To)
	if not To then To = GetPos() end
	local Car = nil
	local L = GetPos()
	for i,v in pairs(game:GetService("Workspace").CarContainer:GetChildren()) do
		if v and v:IsA("Model") then
			if v:WaitForChild("Body"):WaitForChild("VehicleSeat").Occupant == nil then
				Car = v
			end
		end
	end
	if not Car then
		coroutine.wrap(function()
			if not Car then
				Car = game:GetService("Workspace").CarContainer.ChildAdded:Wait()
			end
		end)()
		for i = 1,3 do
		task.wait()
		TPCFrame(game:GetService("Workspace").Prison_ITEMS.buttons:GetChildren()[7]["Car Spawner"].CFrame*CFrame.new(0,2.5,0))
		end
		wait(.23)
		repeat task.wait()
			task.spawn(function()
				workspace.Remote.ItemHandler:InvokeServer(game:GetService("Workspace").Prison_ITEMS.buttons:GetChildren()[7]["Car Spawner"])
			end)
		until Car
	end
	repeat task.wait() until Car
	Car:WaitForChild("Body"):WaitForChild("VehicleSeat")
	Car.PrimaryPart = Car.Body.VehicleSeat
	local Seat = Car.Body.VehicleSeat
	TPCFrame(To)
	repeat task.wait()
		Car:SetPrimaryPartCFrame(To)
		Seat:Sit(plr.Character:FindFirstChildOfClass("Humanoid"))
	until plr.Character:FindFirstChildOfClass("Humanoid").Sit == true
	Car:SetPrimaryPartCFrame(To)
	wait()
	plr.Character:FindFirstChildOfClass('Humanoid').Sit = false
	wait(0.15)
	TPCFrame(L)
end

function Bring(Target,TeleportTo)
	if not TeleportTo then TeleportTo = GetPos() end
	local CarSelected = nil
	local Seat = nil
	local Attempts = 0
	local L = GetPos()
	for i,v in pairs(game:GetService("Workspace").CarContainer:GetChildren()) do
		if v then
			if v:WaitForChild("Body"):WaitForChild("VehicleSeat").Occupant == nil then
				CarSelected = v
			end
		end
	end
	if not CarSelected then
		coroutine.wrap(function()
			if not CarSelected then
				CarSelected = game:GetService("Workspace").CarContainer.ChildAdded:Wait()
			end
		end)()
		for i = 1,3 do task.wait()
		TPCFrame(game:GetService("Workspace").Prison_ITEMS.buttons:GetChildren()[7]["Car Spawner"].CFrame*CFrame.new(0,2.5,0))
		end
		wait(.23)
		repeat task.wait()
			task.spawn(function()
				workspace.Remote.ItemHandler:InvokeServer(game:GetService("Workspace").Prison_ITEMS.buttons:GetChildren()[7]["Car Spawner"])
			end)
		until CarSelected
	end
	repeat game:GetService("RunService").RenderStepped:Wait() until CarSelected ~= nil
	if CarSelected then
		CarSelected:WaitForChild("Body"):WaitForChild("VehicleSeat")
		CarSelected.PrimaryPart = CarSelected.Body.VehicleSeat
		Seat = CarSelected.Body.VehicleSeat
		CarSelected:SetPrimaryPartCFrame(plr.Character:GetPrimaryPartCFrame())
		repeat task.wait()
			Seat:Sit(plr.Character:FindFirstChildOfClass("Humanoid"))
		until plr.Character:FindFirstChildOfClass("Humanoid").Sit == true
		repeat task.wait()
			Attempts = Attempts+1
			if not Target.Character or Target.Character:FindFirstChildOfClass("Humanoid").Health <1 then
				break
			end
			CarSelected:SetPrimaryPartCFrame(Target.Character:GetPrimaryPartCFrame()*CFrame.new(0,-.2,-5))
		until Target.Character:FindFirstChildOfClass("Humanoid").Sit == true or Attempts >300
		for i =1,5 do
			task.wait()
			CarSelected:SetPrimaryPartCFrame(TeleportTo)
		end
		wait()
		plr.Character.Humanoid.Sit = false
		wait()
		TPCFrame(L)
	end
end

function CreateBeam(Player, Distance, Position)
	if Player then
		pcall(function()
			local Backpack = game.Players.LocalPlayer.Backpack
			local Character = game.Players.LocalPlayer.Character
			local Gun = Backpack:FindFirstChild("Remington 870") or Character:FindFirstChild("Remington 870")
			GiveItem("Remington 870")
			Gun = Backpack:FindFirstChild("Remington 870") or Character:FindFirstChild("Remington 870")
			local Head = Player.Character.Head
			if Head and Player and Character and Backpack and Gun and Distance and Position then
				for i = 1,50 do
					       game.ReplicatedStorage.ReloadEvent:FireServer(Gun)
					task.wait()
				end
				game.ReplicatedStorage.ShootEvent:FireServer({
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head}
				}, Gun)
			end
		end)
	end
end

function CreateBeam2(Player, Distance, Position)
	if Player then
		pcall(function()
			local Backpack = game.Players.LocalPlayer.Backpack
			local Character = game.Players.LocalPlayer.Character
			local Gun = Backpack:FindFirstChild("AK-47") or Character:FindFirstChild("AK-47")
			GiveItem("AK-47")
			Gun = Backpack:FindFirstChild("AK-47") or Character:FindFirstChild("AK-47")
			local Head = Player.Character.Head
			if Head and Player and Character and Backpack and Gun and Distance and Position then
				game.ReplicatedStorage.ShootEvent:FireServer({
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
				}, Gun)
			end
			Gun.Handle:Destroy()
			Gun.Parent = game.Players.LocalPlayer.Character
			game.Players.LocalPlayer.Character:FindFirstChild("AK-47"):Destroy()
		end)
	end
end

function CreateBeam3(Player, Distance, Position)
	if Player then
		pcall(function()
			local Backpack = game.Players.LocalPlayer.Backpack
			local Character = game.Players.LocalPlayer.Character
			local Gun = Backpack:FindFirstChild("M9") or Character:FindFirstChild("M9")
			GiveItem("M9")
			Gun = Backpack:FindFirstChild("M9") or Character:FindFirstChild("M9")
			local Head = Player.Character.Head
			if Head and Player and Character and Backpack and Gun and Distance and Position then
				game.ReplicatedStorage.ShootEvent:FireServer({
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head},
					{["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),["Distance"] = Distance,["Cframe"] = Position,["Hit"] = Head}
				}, Gun)
			end
			Gun.Handle:Destroy()
			Gun.Parent = game.Players.LocalPlayer.Character
			game.Players.LocalPlayer.Character:FindFirstChild("M9"):Destroy()
		end)
	end
end

function Beam(Player, Distance, Time)
	if Player and Distance then
		local RunService = game:GetService("RunService")
		RunService:BindToRenderStep(Player.Name, math.huge, function()
			coroutine.wrap(function()
				CreateBeam(Player, Distance, Player.Character.HumanoidRootPart.CFrame)
			end)()
		end)
		delay(Time, function()
			pcall(function()
				RunService:UnbindFromRenderStep(Player.Name)
			end)
		end)
	end
end

function LagBeam(Player, Distance, Time)
	if Player and Distance then
		local RunService = game:GetService("RunService")
		RunService:BindToRenderStep(Player.Name, math.huge, function()
			coroutine.wrap(function()
				CreateBeam(Player, Distance, Player.Character.HumanoidRootPart.CFrame)
			end)()
			coroutine.wrap(function()
				CreateBeam2(Player, Distance, Player.Character.HumanoidRootPart.CFrame)
			end)()
			coroutine.wrap(function()
				CreateBeam3(Player, Distance, Player.Character.HumanoidRootPart.CFrame)
			end)()
		end)
		delay(Time, function()
			pcall(function()
				RunService:UnbindFromRenderStep(Player.Name)
			end)
		end)
	end
end

function DetectMove(Player)
	local oldpos = Player.Character.HumanoidRootPart.CFrame
	local Move
	local Time = 0
	repeat wait(.1)
		Time = Time + 1
		if oldpos ~= Player.Character.HumanoidRootPart.CFrame then
			Move = true
		else
			Move = false
		end
	until (Time >= 500 and Move == false) or Move == true
	return Move
end

function ChangeState(Name,arg2)
	if States[Name] == nil then
		States[Name] = false
	end
	if States[Name] ~= nil then
		if arg2 then
			if arg2 == "on" then
				States[Name] = true
				ChangeTeam(plr.TeamColor.Name)
				Notify("Turn "..Name.." on", Color3.fromRGB(0, 255, 0), "Success")
			elseif arg2 == "off" then
				States[Name] = false
				ChangeTeam(plr.TeamColor.Name)
				Notify("Turn "..Name.." off", Color3.fromRGB(0, 255, 0), "Success")
			end
			return
		end
		local Value = not States[Name]
		States[Name] = Value
		ChangeTeam(plr.TeamColor.Name)
		Notify("Turn "..Name.." "..Value, Color3.fromRGB(0, 255, 0), "Success")
	end
end

function BadArea(Player)
	local mod = require(game.ReplicatedStorage["Modules_client"]["RegionModule_client"])
	local a = pcall(function()
		if mod.findRegion(Player.Character) then
			mod = mod.findRegion(Player.Character)["Name"]
		end
	end)
	if not a then
		return
	end
	for i, v in pairs(game:GetService("ReplicatedStorage").PermittedRegions:GetChildren()) do
		if v and mod == v.Value then
			return false
		end
	end
	return true
end

local function GetPlayerPart(Player)
	if not Player then return end
	if Player:FindFirstChild("HumanoidRootPart") then
		return Player.HumanoidRootPart
	elseif Player:FindFirstChild("Torso") then
		return Player.Torso
	end
end

local Mouse = game.Players.LocalPlayer:GetMouse()

function CopyChat(Player)
	Player.Chatted:Connect(function(Message)
		if States.CopyChat then
			Chat("["..Player.DisplayName.."]: "..Message)
		end
	end)
end

function Died(Player)
	pcall(function()
		if Player.Character.Humanoid.Health < 1 then
			if States.ChatNotify then
				Chat(Player.DisplayName.." Died")
			end
			if States.Notify then
				game.StarterGui:SetCore("SendNotification", {
					Title = "Game",
					Text = Player.DisplayName.." Died",
					Icon = game.Players:GetUserThumbnailAsync(Player.UserId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size352x352)
				})
			end
		end
	end)
end

function PlayerPickUp(Player)
	Player.Backpack.ChildAdded:Connect(function(Item)
		if States.ChatNotify then
			Chat(Player.DisplayName.." Pick Up "..Item.Name)
		end
		if States.Notify then
			game.StarterGui:SetCore("SendNotification", {
				Title = "Game",
				Text = Player.DisplayName.." Pick Up "..Item.Name,
				Icon = game.Players:GetUserThumbnailAsync(Player.UserId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size352x352)
			})
		end
	end)
end

function Esp(player)
	pcall(function()
		local Billboard = Instance.new("BillboardGui", game.Players.LocalPlayer.PlayerGui)
		local Frame = Instance.new("Frame", Billboard)
		local Label_Billboard = Instance.new("TextLabel", Billboard)

		Billboard.Name = "ESP"
		Billboard.Adornee = workspace:FindFirstChild(player.Name).Head
		Billboard.AlwaysOnTop = true
		Billboard.ExtentsOffset = Vector3.new(0, 1.25, 0)
		Billboard.Size = UDim2.new(0, 6, 0, 6)

		Frame.Name = "ESP_2"
		Frame.BackgroundColor = BrickColor.new(player.TeamColor.Name)
		Frame.BorderSizePixel = 0
		Frame.BackgroundTransparency = 0.250
		Frame.Position = UDim2.new(-0.5, 0, -0.5, 0)
		Frame.Visible = true
		Frame.Size = UDim2.new(2, 0, 2, 0)
		Frame.ZIndex = 1

		Label_Billboard.Name = "ESP_3"
		Label_Billboard.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Label_Billboard.BackgroundTransparency = 1.000
		Label_Billboard.Text = player.DisplayName
		Label_Billboard.Font = Enum.Font.GothamBlack
		Label_Billboard.FontSize = Enum.FontSize.Size18
		Label_Billboard.BorderSizePixel = 0
		Label_Billboard.Visible = true
		Label_Billboard.Position = UDim2.new(0, 0, 0, -40)
		Label_Billboard.TextColor3 = Color3.fromRGB(0, 0, 0)
		Label_Billboard.ZIndex = 2
		Label_Billboard.Size = UDim2.new(2, 0, 10, 0)
	end)
end

local function Collide(player)
	if player and player.Character then
	for i,v in pairs (player.Character:GetDescendants()) do
	if v:IsA"BasePart" and States.antifling then
	v.CanCollide = false
     v.AssemblyAngularVelocity = Vector3.new(0, 0, 0)
    v.AssemblyLinearVelocity = Vector3.new(0, 0, 0)
    v.CustomPhysicalProperties = PhysicalProperties.new(0, 0, 0)
	end
	end
	end
end

local function Loadstring(Https)
	if not Https then return end
	loadstring(game:HttpGet((Https), true))()
end

local function Command(Cmd)
	return Arg1 == Prefix..Cmd
end

local function PrefixCommand(Cmd)
	return Arg1 == "!"..Cmd
end

local Walls = {
	game.Workspace.Prison_Halls.walls,
	game.Workspace.Prison_Halls.roof,
	game.Workspace.Prison_Halls.outlines,
	game.Workspace.Prison_Halls.lights,
	game.Workspace.Prison_Halls.accent,
	game.Workspace.Prison_Halls.glass,
	game.Workspace.Prison_Cellblock.b_front,
	game.Workspace.Prison_Cellblock.doors,
	game.Workspace.Prison_Cellblock.c_tables,
	game.Workspace.Prison_Cellblock.a_front,
	game.Workspace.Prison_Cellblock.b_outerwall,
	game.Workspace.Prison_Cellblock.c_wall,
	game.Workspace.Prison_Cellblock.b_wall,
	game.Workspace.Prison_Cellblock.c_hallwall,
	game.Workspace.Prison_Cellblock.a_outerwall,
	game.Workspace.Prison_Cellblock.b_ramp,
	game.Workspace.Prison_Cellblock.a_ramp,
	game.Workspace.Prison_Cellblock.a_walls,
	game.Workspace.Prison_Cellblock.Cells_B,
	game.Workspace.Prison_Cellblock.Cells_A,
	game.Workspace.Prison_Cellblock.c_corner,
	game.Workspace.Prison_Cellblock.Wedge,
	game.Workspace.Prison_Cellblock.a_ceiling,
	game.Workspace.Prison_Cellblock.b_ceiling,
	game.Workspace.City_buildings,
	game.Workspace.Prison_OuterWall,
	game.Workspace.Prison_Fences,
	game.Workspace.Prison_Guard_Outpost,
	game.Workspace.Prison_Cafeteria.building,
	game.Workspace.Prison_Cafeteria.glass,
	game.Workspace.Prison_Cafeteria.oven,
	game.Workspace.Prison_Cafeteria.shelves,
	game.Workspace.Prison_Cafeteria.vents,
	game.Workspace.Prison_Cafeteria.accents,
	game.Workspace.Prison_Cafeteria["vending machine"],
	game.Workspace.Prison_Cafeteria.Prison_table1,
	game.Workspace.Prison_Cafeteria.counter,
	game.Workspace.Prison_Cafeteria.boxes,
	game.Workspace.Prison_Cafeteria["trash bins"]
}

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
Execute.PlaceholderText = "Press "..Prefix.." To Execute!"

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
			LoopTase = {}
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
			LoopTase = {}
			Admin = {}
			ScriptDisabled = true
			for i,v in pairs(game.Lighting:GetChildren()) do
				v.Parent = workspace
			end
		end)
		Loadstring("https://raw.githubusercontent.com/NoobHubV1/NoobHubV1/main/NoobHubV1%20Admin.lua")
	end
	if Command("beam") then
		local Player = GetPlayer(Arg2)
		if Player then
			Beam(Player, math.huge, 7)
			Notify("Beamed "..Player.Name, Color3.fromRGB(0, 255, 0), "Success")
		else
			Notify("No player found", Color3.fromRGB(255, 0, 0), "Error")
		end
	end
	if Command("lagbeam") or Command("beam2") then
		local Player = GetPlayer(Arg2)
		if Player then
			LagBeam(Player, math.huge, 7)
			Notify("Lag beamed "..Player.Name, Color3.fromRGB(255, 0, 0), "Success")
		else
			Notify("No player found", Color3.fromRGB(255, 0, 0), "Error")
		end
	end
	if Command("crash") or Command("beam3") then
		local Player = GetPlayer(Arg2)
		if Player then
			LagBeam(Player, math.huge, 9000)
			Notify("Crashed "..Player.Name, Color3.fromRGB(0, 255, 0), "Success")
		else
			Notify("No player found", Color3.fromRGB(255, 0, 0), "Error")
		end
	end
	if Command("antiarrest") then
		local State = "antiarrest"
		ChangeState(State,Arg2)
	end
	if Command("inmate") or Command("inmates") or Command("prisoner") or Command("prisoners") then
		ChangeTeam(BrickColor.new("Bright orange").Name)
		Notify("Become inmate", Color3.fromRGB(0, 255, 0), "Success")
	end
	if Command("guard") or Command("guards") or Command("cop") or Command("polices") or Command("cops") then
		ChangeTeam(BrickColor.new("Bright blue").Name)
		Notify("Become guard", Color3.fromRGB(0, 255, 0), "Success")
	end
	if Command("gun") or Command("guns") or Command("allguns") then
		Guns()
		Notify("Get all guns", Color3.fromRGB(0, 255, 0), "Success")
	end
	if Command("autogun") or Command("autoguns") or Command("autoallguns") or Command("aguns") then
		local State = "autoguns"
		ChangeState(State,Arg2)
	end
	if Command("loopgoto") or Command("loopto") then
		local Player = GetPlayer(Arg2)
		if Player then
			States.LoopGoto = true
			repeat task.wait()
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Player.Character.HumanoidRootPart.CFrame
			until not States.LoopGoto or not game.Players[Player.Name]
		end
	end
	if Command("unloopgoto") or Command("unloopto") then
		States.LoopGoto = false
	end
	if Command("checkscriptowner") or Command("findowner") then
		for i,v in pairs(game.Players:GetPlayers()) do
			if v.DisplayName == "Hack" and v.Name == "ih4xalots" then
				ChatNotify("Script owner : "..v.Name.." / "..v.DisplayName, Color3.fromRGB(0, 255, 0))
			end
		end
	end
	if Command("getplayer") or Command("getplayers") then
		ChatNotify("Players : "..#game.Players:GetPlayers(), Color3.fromRGB(255, 255, 255))
	end
	if Command("autofire") then
		if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool"):FindFirstChild("GunStates") then
			local Gun = require(game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").GunStates)
			Gun["AutoFire"] = true
			Notify("Turn auto fire", Color3.fromRGB(0, 255, 0), "Success")
		else
			Notify("Equip a gun", Color3.fromRGB(255, 0, 0), "Error")
		end
	end
	if Command("semifire") then
		if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool"):FindFirstChild("GunStates") then
			local Gun = require(game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").GunStates)
			Gun["AutoFire"] = false
			Notify("Turn semi fire", Color3.fromRGB(0, 255, 0), "Success")
		else
			Notify("Equip a gun", Color3.fromRGB(255, 0, 0), "Error")
		end
	end
	if Command("firespeed") or Command("setfirespeed") then
		if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool"):FindFirstChild("GunStates") then
			local Gun = require(game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").GunStates)
			if tonumber(Arg2) ~= nil then
				Gun["FireRate"] = tonumber(Arg2)
				Notify("Set a gun fire speed to "..tonumber(Arg2), Color3.fromRGB(0, 255, 0), "Success")
			else
				Notify("Counts needed", Color3.fromRGB(255, 0, 0), "Error")
			end
		else
			Notify("Equip a gun", Color3.fromRGB(255, 0, 0), "Error")
		end
	end
	if Command("burst") or Command("burstbullets") or Command("bullets") then
		if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool"):FindFirstChild("GunStates") then
			local Gun = require(game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").GunStates)
			if tonumber(Arg2) ~= nil then
				Gun["Bullets"] = tonumber(Arg2)
				Notify("Set a gun burst bullets to "..tonumber(Arg2), Color3.fromRGB(0, 255, 0), "Success")
			else
				Notify("Counts needed", Color3.fromRGB(255, 0, 0), "Error")
			end
		else
			Notify("Equip a gun", Color3.fromRGB(255, 0, 0), "Error")
		end
	end
	if Command("reloadtime") or Command("reloadtimes") then
		if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool"):FindFirstChild("GunStates") then
			local Gun = require(game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").GunStates)
			if tonumber(Arg2) ~= nil then
				Gun["ReloadTime"] = tonumber(Arg2)
				Notify("Set a gun reload time to "..tonumber(Arg2), Color3.fromRGB(0, 255, 0), "Success")
			else
				Notify("Counts needed", Color3.fromRGB(255, 0, 0), "Error")
			end
		else
			Notify("Equip a gun", Color3.fromRGB(255, 0, 0), "Error")
		end
	end
	if Command("criminal") or Command("criminals") or Command("crim") or Command("crims") or Command("crimes") or Command("crime") or Command("makecrim") then
		local Target = GetPlayer(Arg2)
		if not Target then
		Criminal()
		Notify("Become criminal", Color3.fromRGB(0, 255, 0), "Success")
		end
		if Target then
			Bring(Target,CFrame.new(-919.4981689453125, 95.32719421386719, 2142.78271484375))
			Notify("Make Crim "..Target.Name, Color3.fromRGB(0, 255, 0), "Success")
		end
	end
	if Command("loopcriminal") or Command("loopcriminals") or Command("loopcrim") then
		local Player = GetPlayer(Arg2)
		if not Player then
			States.loopcrim = true
			Notify("Loop become criminal", Color3.fromRGB(0, 255, 0), "Success")
		end
		if Player then
			States.loopcrimplayer = true
			Notify("Loop make Crim "..Player.Name, Color3.fromRGB(0, 255, 0), "Success")
		end
		while wait() do
			if States.loopcrimplayer then
				if game.Players.LocalPlayer.TeamColor.Name ~= "Really red" then
					Bring(Player,CFrame.new(-919.4981689453125, 95.32719421386719, 2142.78271484375))
				end
			end
		end
	end
	if Command("unloopcriminal") or Command("unloopcriminals") or Command("unloopcrim") then
		local Player = GetPlayer(Arg2)
		if not Player then
			States.loopcrim = false
			Notify("Unloop become criminal", Color3.fromRGB(0, 255, 0), "Success")
		end
		if Player then
			States.loopcrimplayer = false
			Notify("Unloop make Crim "..Player.Name, Color3.fromRGB(0, 255, 0), "Success")
		end
	end
	if Command("neutral") or Command("neutrals") then
		ChangeTeam(BrickColor.new("Medium stone grey").Name)
		Notify("Become neutral", Color3.fromRGB(0, 255, 0), "Success")
	end
	if Command("chatnotify") then
		ChangeState("ChatNotify",Arg2)
	end
	if Command("antitase") or Command("antitaser") then
		ChangeState("antitase",Arg2)
	end
	if Command("print") then
		print(Message)
		Notify("Printed", Color3.fromRGB(0, 255, 0), "Success")
	end
	if Command("warn") then
		warn(Message)
		Notify("Warned", Color3.fromRGB(0, 255, 0), "Success")
	end
	if Command("error") then
		Notify("Printed error", Color3.fromRGB(0, 255, 0), "Success")
		error(Message)
	end
	if Command("chat") then
		Chat(Message)
		Notify("Chatted", Color3.fromRGB(0, 255, 0), "Success")
	end
	if Command("copychat") then
		States.CopyChat = true
		Notify("Turn copy chat on", Color3.fromRGB(0, 255, 0), "Success")
	end
	if Command("uncopychat") then
		States.CopyChat = false
		Notify("Turn copy chat off", Color3.fromRGB(0, 255, 0), "Success")
	end
	if Command("ak") then
		GiveItem("AK-47")
		Notify("Obtains Ak-47", Color3.fromRGB(0, 255, 0), "Success")
	end
	if Command("shotgun") then
		GiveItem("Remington 870")
		Notify("Obtains Remington 870", Color3.fromRGB(0, 255, 0), "Success")
	end
	if Command("m9") then
		GiveItem("M9")
		Notify("Obtains M9", Color3.fromRGB(0, 255, 0), "Success")
	end
	if Command("m4a1") then
		if BuyGamepass then
			GiveItem("M4A1")
			Notify("Obtains M4a1", Color3.fromRGB(0, 255, 0), "Success")
		else
			Notify("Player not BuyGamepass", Color3.fromRGB(255, 0, 0), "Error")
		end
	end
	if Command("tase") then
		local args = Arg2
		if args == "all" or args == "everyone" or args == "others" then
		TaseAll()
		elseif args == "inmates" then
		TaseTeam(BrickColor.new("Bright orange").Name)
		elseif args == "criminals" then
		TaseTeam(BrickColor.new("Really red").Name)
		else
		local Player = GetPlayer(args)
		Tase(Player)
		end
	end
	if Command("noshield") or Command("antishield") then
		ChangeState("antishield",Arg2)
	end
	if Command("kill") or Command("kills") then
		local args = Arg2
		if args == "all" or args == "everyone" or args == "others" then
		for i,v in pairs(game.Players:GetPlayers()) do
			if v ~= plr then
				if v.TeamColor.Name == "Really red" or v.TeamColor.Name == "Bright blue" or v.TeamColor.Name == "Bright orange" then
					if not v.Character.Humanoid.Health == 0 or not v.Character:FindFirstChild("ForceField") then
						Kill(v)
					end
				end
			end
		end
		Notify("Killed all players", Color3.fromRGB(0, 255, 0), "Success")
		elseif args == "inmates" then
		for i,v in pairs(game.Players:GetPlayers()) do
			if v ~= plr then
				if v.TeamColor.Name == "Bright orange" then
					if not v.Character.Humanoid.Health == 0 or not v.Character:FindFirstChild("ForceField") then
						Kill(v)
					end
				end
			end
		end
		Notify("Killed all inmates", Color3.fromRGB(0, 255, 0), "Success")
		elseif args == "guards" then
		for i,v in pairs(game.Players:GetPlayers()) do
			if v ~= plr then
				if v.TeamColor.Name == "Bright blue" then
					if not v.Character.Humanoid.Health == 0 or not v.Character:FindFirstChild("ForceField") then
						Kill(v)
					end
				end
			end
		end
		Notify("Killed all guards", Color3.fromRGB(0, 255, 0), "Success")
		elseif args == "criminals" then
		for i,v in pairs(game.Players:GetPlayers()) do
			if v ~= plr then
				if v.TeamColor.Name == "Really red" then
					if not v.Character.Humanoid.Health == 0 or not v.Character:FindFirstChild("ForceField") then
						Kill(v)
					end
				end
			end
		end
		Notify("Killed all criminals", Color3.fromRGB(0, 255, 0), "Success")
		else
		local Player = GetPlayer(args)
		Kill(Player)
		end
	end
	if Command("loopkill") or Command("loopkills") or Command("lk") then
		local args = Arg2
		if args == "all" or args == "everyone" or args == "others" then
		States.loopkillall = true
		Notify("Loop kills all", Color3.fromRGB(0, 255, 0), "Success")
		elseif args == "guards" then
		States.loopkillguards = true
		Notify("Loop kills guards", Color3.fromRGB(0, 255, 0), "Success")
		elseif args == "inmates" then
		States.loopkillinmates = true
		Notify("Loop kills inmates", Color3.fromRGB(0, 255, 0), "Success")
		elseif args == "criminals" then
		States.loopkillcriminals = true
		Notify("Loop kills criminals", Color3.fromRGB(0, 255, 0), "Success")
		else
		local Player = GetPlayer(args)
		if not LoopKill[Player.UserId] then
			LoopKill[Player.UserId] = {Player = Player}
			Notify("Loop kills "..Player.Name, Color3.fromRGB(0, 255, 0), "Success")
		else
			Notify("already loop kills", Color3.fromRGB(255, 0, 0), "Error")
		end
		end
	end
	if Command("unloopkill") or Command("unloopkills") or Command("unlk") then
		local args = Arg2
		if args == "all" or args == "everyone" or args == "others" then
		States.loopkillall = false
		Notify("Unloop kills all", Color3.fromRGB(0, 255, 0), "Success")
		elseif args == "guards" then
		States.loopkillguards = false
		Notify("Unloop kills guards", Color3.fromRGB(0, 255, 0), "Success")
		elseif args == "inmates" then
		States.loopkillinmates = false
		Notify("Unloop kills inmates", Color3.fromRGB(0, 255, 0), "Success")
		elseif args == "criminals" then
		States.loopkillcriminals = false
		Notify("Unloop kills criminals", Color3.fromRGB(0, 255, 0), "Success")
		else
		local Player = GetPlayer(Arg2)
		if LoopKill[Player.UserId] then
			LoopKill[Player.UserId] = nil
			Notify("Unloop kills "..Player.Name, Color3.fromRGB(0, 255, 0), "Success")
		else
			Notify("Player has no loop kills", Color3.fromRGB(255, 0, 0), "Error")
		end
		end
	end
	if Command("goto") or Command("to") then
		local Player = GetPlayer(Arg2)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace[Player.Name].HumanoidRootPart.CFrame
		Notify("Go to "..Player.Name, Color3.fromRGB(0, 255, 0), "Success")
	end
	if Command("re") or Command("refresh") then
		local savedteam = GetTeam()
		ChangeTeam(BrickColor.new(savedteam).Name)
		Notify("Refreshed", Color3.fromRGB(0, 255, 0), "Success")
	end
	if Command("res") or Command("respawn") then
		if plr.TeamColor.Name ~= "Really red" then
			workspace.Remote.TeamEvent:FireServer(BrickColor.new(plr.TeamColor.Name).Name)
		else
			workspace.Remote.TeamEvent:FireServer(BrickColor.new("Bright orange").Name)
			plr.CharacterAdded:Wait() wait()
			repeat task.wait()
				firetouchinterest(plr.Character.HumanoidRootPart, Workspace["Criminals Spawn"].SpawnLocation, 0)
			until plr.TeamColor.Name == "Really red"
		end
		Notify("Respawned", Color3.fromRGB(0, 255, 0), "Success")
	end
	if Command("view") or Command("spectate") or Command("watch") then
		local Player = GetPlayer(Arg2)
		if Player ~= nil then
			Watching = Player
			Notify("Viewing "..Player.Name, Color3.fromRGB(0, 255, 0), "Success")
		else
			Notify("No player found", Color3.fromRGB(255, 0, 0), "Error")
		end
		while wait() do
			if Watching ~= nil then
				pcall(function()
					workspace.CurrentCamera.CameraSubject = workspace[Watching.Name]
				end)
			end
		end
	end
	if Command("antifling") then
		ChangeState("antifling",Arg2)
	end
	if Command("statue") then
		States.Statue = true
		game.Players.LocalPlayer.Character:Connect(function()
			if States.Statue then
				
			end
		end)
	end
	if Command("unstatue") then
		States.Statue = false
	end
	if Command("noclip") or Command("noclips") then
		ChangeState("Noclip",Arg2)
	end
	if Command("antivest") or Command("anticrash") then
		ChangeState("anticrash",Arg2)
	end
	if Command("clickkill") then
		ChangeState("Clickkill",Arg2)
	end
	if Command("fastpunch") or Command("speedpunch") or Command("speedlypunch") or Command("superspeedpunch") then
		States.Fast_Punch = true
		Notify("Turn fast punch on", Color3.fromRGB(0, 255, 0), "Success")
	end
	if Command("slowpunch") or Command("normalspeedpunch") or Command("nofastpunch") or Command("unfastpunch") then
		States.Fast_Punch = false
		Notify("Turn fast punch off", Color3.fromRGB(0, 255, 0), "Success")
	end
	if Command("superpunch") or Command("onepunch") then
		local ReplicatedStorage = game:GetService("ReplicatedStorage")
		local MeleeEvent = ReplicatedStorage:FindFirstChild("meleeEvent")
		local Mouse = game.Players.LocalPlayer:GetMouse()
		local Punch = false
		local Cooldown = false
		States.SuperPunch = true
		Notify("Turn super punch on", Color3.fromRGB(0, 255, 0), "Success")

		local function Punch()
			if not States.Fast_Punch then
				Cooldown = true
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
								MeleeEvent:FireServer(plr)
							end
						end
					end
				end)
				wait(0.9)
				Cooldown = false
				Part:Destroy()
			else
				Cooldown = true
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
								MeleeEvent:FireServer(plr)
							end
						end
					end
				end)
				wait(0.1)
				Cooldown = false
				Part:Destroy()
			end
		end
		Mouse.KeyDown:connect(function(Key)
			if not Cooldown and States.SuperPunch then
				if Key:lower() == "f" then
					Punch()
				end				
			end
		end)
	end
	if Command("normalpunch") or Command("oldpunch") or Command("nosuperpunch") or Command("stoponepunch") or Command("unonepunch") or Command("unsuperpunch") then
		States.SuperPunch = false
		Notify("Turn super punch off", Color3.fromRGB(0, 255, 0), "Success")
	end
	if Command("bring") then
		local Player = GetPlayer(Arg2)
		Bring(Player)
		Notify("Bring "..Player.Name, Color3.fromRGB(0, 255, 0), "Success")
	end
	if Command("superknife") then
		local Knife = game.Players.LocalPlayer.Backpack:FindFirstChild("Crude Knife") or game.Players.LocalPlayer.Character:FindFirstChild("Crude Knife")
		if not Knife then
			GiveItem("Knife")
		end
		wait()
		Knife = game.Players.LocalPlayer.Backpack:FindFirstChild("Crude Knife") or game.Players.LocalPlayer.Character:FindFirstChild("Crude Knife")
		if Knife then
			local Cooldown = false
			local Hitting = false
			local Hitted = false
			Knife.Equipped:Connect(function()
				Knife.Activated:Connect(function()
					if not Cooldown then
						Cooldown = true
						Hitting = true
						for i,v in pairs(Knife:GetChildren()) do
							if v:IsA("Part") then
								v.Touched:Connect(function(Hit)
									if Hit and Hit.Parent ~= game.Players.LocalPlayer and not Hitted and Hitting then
										Hitted = true
										for i = 1,25 do
											game.ReplicatedStorage.meleeEvent:FireServer(game.Players[Hit.Parent.Name])
										end
									end
								end)
							end
						end
						wait(0.5)
						Cooldown = false
						Hitting = false
						Hitted = false
					end
				end)
			end)
		end
		Notify("Obtained super knife", Color3.fromRGB(0, 255, 0), "Success")
	end
	if Command("unview") or Command("unspectate") or Command("stopwatch") or Command("unwatch") then
		Watching = nil
		workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character
		Notify("Unviewed", Color3.fromRGB(0, 255, 0), "Success")
	end
	if Command("antivoid") or Command("antifell") then
		ChangeState("antivoid",Arg2)
	end
	if Command("infjump") then
		ChangeState("infjump",Arg2)
	end
	if Command("antibring") then
		ChangeState("antibring",Arg2)
	end
	if Command("killaura") then
		if not Arg2 then
		States.Kill_Aura = true
		Notify("Turn kill aura "..plr.Name.." on", Color3.fromRGB(0, 255, 0), "Success")
		end
		local Player = GetPlayer(Arg2)
		if Player ~= nil then
		States.Kill_Aura_Player = true
		Notify("Turn kill aura "..Player.Name.." on", Color3.fromRGB(0, 255, 0), "Success")
		else
		Notify("No Player Found", Color3.fromRGB(255, 0, 0), "Error")
		end
		while wait() do
			if States.Kill_Aura_Player then
				for i,v in pairs(game.Players:GetPlayers()) do
					if v ~= plr and v ~= Player then
						if (v.Character.HumanoidRootPart.Position-Player.Character.HumanoidRootPart.Position).Magnitude <= 25 then
							Kill(v)
						end
					end
				end
			end
		end
	end
	if Command("nokillaura") or Command("unkillaura") then
		if not Arg2 then
		States.Kill_Aura = false
		Notify("Turn kill aura "..plr.Name.." off", Color3.fromRGB(0, 255, 0), "Success")
		end
                local Player = GetPlayer(Arg2)
		if Player ~= nil then
		States.Kill_Aura_Player = false
		Notify("Turn kill aura "..Player.Name.." off", Color3.fromRGB(0, 255, 0), "Success")
		else
		Notify("No Player Found", Color3.fromRGB(255, 0, 0), "Error")
		end
	end
	if Command("autore") or Command("autorefresh") or Command("autorespawn") then
		ChangeState("autorespawn",Arg2)
	end
	if Command("car") then
		GetCar()
		Notify("Teleport Car To you", Color3.fromRGB(0, 255, 0), "Success")
	end
	if Command("autoguard") or Command("aguard") then
		ChangeState("autoguard",Arg2)
	end
	if Command("carsto") then
		local Player = GetPlayer(Arg2)
		if Player ~= nil then
			GetCar(Player.Character.HumanoidRootPart.CFrame)
			Notify("Teleport Car To "..Player.DisplayName, Color3.fromRGB(0, 255, 0), "Success")
		else
			Notify("No Player Found", Color3.fromRGB(255, 0, 0), "Error")
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
	if Command("speed") or Command("walkspeed") or Command("setspeed") or Command("setwalkspeed") then
		local WalkSpeed = tonumber(Arg2)
		if WalkSpeed ~= nil then
			game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = WalkSpeed
			Notify("Changed walk speed to "..WalkSpeed, Color3.fromRGB(0, 255, 0), "Success")
		else
			Notify("Counts needed", Color3.fromRGB(255, 0, 0), "Error")
		end
	end
	if Command("jumppower") or Command("jumphigh") or Command("setjumppower") then
		local JumpPower = tonumber(Arg2)
		if JumpPower ~= nil then
			game.Players.LocalPlayer.Character.Humanoid.JumpPower = JumpPower
			Notify("Changed jump power to "..JumpPower, Color3.fromRGB(0, 255, 0), "Success")
		else
			Notify("Counts needed", Color3.fromRGB(255, 0, 0), "Error")
		end
	end
	if Command("hipheight") or Command("sethipheight") then
		local HipHeight = tonumber(Arg2)
		if HipHeight ~= nil then
			game.Players.LocalPlayer.Character.Humanoid.HipHeight = HipHeight
			Notify("Changed hip height to "..HipHeight, Color3.fromRGB(0, 255, 0), "Success")
		else
			Notify("Counts needed", Color3.fromRGB(255, 0, 0), "Error")
		end
	end
	if Command("lagserver") or Command("disconnect") then
		States.Lag_Server = true
		Notify("Lagging server", Color3.fromRGB(0, 255, 0), "Success")
		while wait() do
			if States.Lag_Server then
				coroutine.wrap(function()
					pcall(function()
						GiveItem("Remington 870")

						local Gun = game.Players.LocalPlayer.Backpack["Remington 870"] or game.Players.LocalPlayer.Character["Remington 870"]

						local args = {
							[1] = {
								["RayObject"] = Ray.new(Vector3.new(), Vector3.new()), 
								["Distance"] = 0, 
								["Cframe"] = CFrame.new(), 
								["Hit"] = workspace[game.Players.LocalPlayer.Name].Head
							}, [2] = {
								["RayObject"] = Ray.new(Vector3.new(), Vector3.new()), 
								["Distance"] = 0, 
								["Cframe"] = CFrame.new(), 
								["Hit"] = workspace[game.Players.LocalPlayer.Name].Head
							}, [3] = {
								["RayObject"] = Ray.new(Vector3.new(), Vector3.new()), 
								["Distance"] = 0, 
								["Cframe"] = CFrame.new(), 
								["Hit"] = workspace[game.Players.LocalPlayer.Name].Head
							}, [4] = {
								["RayObject"] = Ray.new(Vector3.new(), Vector3.new()), 
								["Distance"] = 0, 
								["Cframe"] = CFrame.new(), 
								["Hit"] = workspace[game.Players.LocalPlayer.Name].Head
							}, [5] = {
								["RayObject"] = Ray.new(Vector3.new(), Vector3.new()), 
								["Distance"] = 0, 
								["Cframe"] = CFrame.new(), 
								["Hit"] = workspace[game.Players.LocalPlayer.Name].Head
							}, [6] = {
								["RayObject"] = Ray.new(Vector3.new(), Vector3.new()), 
								["Distance"] = 0, 
								["Cframe"] = CFrame.new(), 
								["Hit"] = workspace[game.Players.LocalPlayer.Name].Head
							}, [7] = {
								["RayObject"] = Ray.new(Vector3.new(), Vector3.new()), 
								["Distance"] = 0, 
								["Cframe"] = CFrame.new(), 
								["Hit"] = workspace[game.Players.LocalPlayer.Name].Head
							}, [8] = {
								["RayObject"] = Ray.new(Vector3.new(), Vector3.new()), 
								["Distance"] = 0, 
								["Cframe"] = CFrame.new(), 
								["Hit"] = workspace[game.Players.LocalPlayer.Name].Head
							}
						}

						game:GetService("ReplicatedStorage").ShootEvent:FireServer(args, Gun)
					end)
				end)()
			end
		end
	end
	if Command("unlagserver") or Command("stopdisconnect") or Command("undisconnect") then
		States.Lag_Server = false
		Notify("Unlagging server", Color3.fromRGB(0, 255, 0), "Success")
	end
	if Command("gravity") or Command("setgravity") then
		local Gravity = tonumber(Arg2)
		if Gravity ~= nil then
			workspace.Gravity = Gravity
			Notify("Changed gravity to "..Gravity, Color3.fromRGB(0, 255, 0), "Success")
		else
			Notify("Count needed", Color3.fromRGB(255, 0, 0), "Error")
		end
	end
	if Command("resetgravity") or Command("regravity") then
		workspace.Gravity = 196.2
		Notify("Resetted gravity", Color3.fromRGB(0, 255, 0), "Success")
	end
	if Command("resethipheight") or Command("rehipheight") then
		game.Players.LocalPlayer.Character.Humanoid.HipHeight = 0
		Notify("Resetted hip height", Color3.fromRGB(0, 255, 0), "Success")
	end
	if Command("resetspeed") or Command("respeed") then
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
		Notify("Resetted walk speed", Color3.fromRGB(0, 255, 0), "Success")
	end
	if Command("resetjumppower") or Command("rejumppower") then
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
		Notify("Resetted jump power", Color3.fromRGB(0, 255, 0), "Success")
	end
	if Command("leave") or Command("leaveserver") or Command("quit") then
		Notify("Leaving server", Color3.fromRGB(0, 255, 0), "Success")
		wait(.1)
		game:Shutdown()
	end
	if Command("rejoin") or Command("rj") then
		Notify("Rejoining server", Color3.fromRGB(0, 255, 0), "Success")
		wait(.1)
		game:GetService("TeleportService"):Teleport(game.PlaceId, game.Players.LocalPlayer)
	end
	if Command("nodoors") or Command("deletedoors") then
		if workspace:FindFirstChild("Doors") then
			workspace.Doors.Parent = game.Lighting
		end
		Notify("Deleted doors", Color3.fromRGB(0, 255, 0), "Success")
	end
	if Command("doors") or Command("restoredoors") then
		if game.Lighting:FindFirstChild("Doors") then
			game.Lighting.Doors.Parent = workspace
		end
		Notify("Restored doors", Color3.fromRGB(0, 255, 0), "Success")
	end
	if Command("nowalls") or Command("deletedoors") then
		pcall(function()
			for i,v in pairs(Walls) do
				v.Parent = game.Lighting
			end
		end)
		Notify("Deleted walls", Color3.fromRGB(0, 255, 0), "Success")
	end
	if Command("walls") or Command("restorewalls") then
		pcall(function()
			for i,v in pairs(game.Lighting:GetChildren()) do
				if v.Name ~= "Doors" then
					v.Parent = workspace
				end
			end
		end)
		Notify("Restored walls", Color3.fromRGB(0, 255, 0), "Success")
	end
	if Command("void") then
		local Pos = CFrame.new(8^8, 8^8, 8^8)
		local Player = GetPlayer(Arg2)
		if not Player then
			TPCFrame(Pos)
			Notify("Bring "..plr.DisplayName.." To Void", Color3.fromRGB(0, 255, 0), "Success")
		end
		if Player then
			Bring(Player, Pos)
			Notify("Bring "..Player.DisplayName.." To Void", Color3.fromRGB(0, 255, 0), "Success")
		end
	end
	if Command("god") or Command("godmode") then
		ChangeState("Godmode",Arg2)
	end
	if Command("arrest") or Command("handcuffs") then
		if Arg2 == "all" then
			for i,v in pairs(game:GetService("Players"):GetPlayers()) do
			if v and v~= game:GetService("Players").LocalPlayer and v.TeamColor.Name == "Really red" or (BadArea(v) and v.TeamColor.Name == "Bright orange") and v.Character.PrimaryPart and v.Character:FindFirstChildOfClass("Humanoid").Health>0 then
				Arrest(v, tonumber(Arg3))
			end
		end
		else
			local Player = GetPlayer(Arg2)
			for i,v in pairs(game:GetService("Players"):GetPlayers()) do
			        if v and v== Player and v.TeamColor.Name == "Really red" or (BadArea(v) and v.TeamColor.Name == "Bright orange") and v.Character.PrimaryPart and v.Character:FindFirstChildOfClass("Humanoid").Health>0 then
				        Arrest(v, tonumber(Arg3))
					Notify("Arrested "..Player.Name, Color3.fromRGB(0, 255, 0), "Success")
			        end
			end
		end
	end
	if Command("opengate") then
		local LastPosition = GetPos()
		TPCFrame(CFrame.new(504.5431823730469, 105.01119995117188, 2241.03173828125))
		task.wait(0.15)
		workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.buttons["Prison Gate"]["Prison Gate"])
		task.wait(0.1)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = LastPosition
		Notify("Opened gate", Color3.fromRGB(0, 255, 0), "Success")
	end
	if Command("esp") then
		ChangeState("Esp",Arg2)
	end
	if Command("findposition") or Command("getposition") or Command("getpos") or Command("findpos") then
		local CFrame = tostring(GetPos())
		local CamCFrame = tostring(GetCamPos())
		Notify("Player CFrame : "..CFrame, Color3.fromRGB(55, 155, 255), "CFrame")
		setclipboard(""..CFrame)
		Notify("Cam CFrame : "..CamCFrame, Color3.fromRGB(55, 155, 255), "CamCFrame")
		setclipboard(""..CamCFrame)
		Notify("Printed positions", Color3.fromRGB(0, 255, 0), "Success")
	end
	if Command("saveposition") or Command("savepos") then
		States.SavedCFrame = GetPos()
		Notify("Saved positions", Color3.fromRGB(0, 255, 0), "Success")
	end
	if Command("loadposition") or Command("loadpos") then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = States.SavedCFrame
		Notify("Loaded positions", Color3.fromRGB(0, 255, 0), "Success")
	end
	if Command("spamchat") then
		States.SpamChat = true
		Notify("Spamming chat", Color3.fromRGB(0, 255, 0), "Success")
		if tonumber(Arg2) ~= nil then
			States.Spam_Wait = tonumber(Arg2)
		else
			States.Spam_Wait = 1
		end
		while wait() do
			if States.SpamChat then
				local MessagesToChat = {
					"I'm your dad",
					"I'm your mom",
					"I'm a god and I'm your dad",
					"bro u so bad(''_'')",
					"OMG",
					"OML",
					"i spaming what u gonna do huh?;)",
					" ",
					"I'm magic guy because i pressed W,A,S and D on my keyboard and my character can be walked wow, I'M THE REAL MAGIC GUY!",
					"I'M THE MOST PRO IN HERE",
					"I'M A PRO IN THIS SERVER ALL OF YOU ARE NOOB!",
					"LOL XD LOL XD LOL XD",
					"Read my chat",
					"Can you die while you are died?",
					"You know what, I'm a god",
					"Follow xXichbinTimXx on roblox=)",
					"WOW",
					"wow",
					"\(ï¿£ï¸¶ï¿£*\))"
				}

				while true do
					wait(States.Spam_Wait)
					if States.SpamChat then
						pcall(function()
							Chat(MessagesToChat[math.random(1, #MessagesToChat)])
						end)
					end
				end
			end
		end
	end
	if Command("unspamchat") then
		States.SpamChat = false
		Notify("Unspamming chat", Color3.fromRGB(0, 255, 0), "Success")
	end
	if Command("rapidfire") then
		local Tool = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool")
		local Name
		local Req
		if Tool then
			Notify("Activated rapid fire", Color3.fromRGB(0, 255, 0), "Success")
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
						ChangeTeam(plr.TeamColor.Name)
						plr.CharacterAdded:Wait() wait(.5)
						GiveItem(Req)
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
	if Command("autorapidfire") then
		States.Auto_RapidFire = true
		Notify("Turn auto rapid fire on", Color3.fromRGB(0, 255, 0), "Success")
		game.Players.LocalPlayer.CharacterAdded:Connect(function()
			game.Players.LocalPlayer.Character.ChildAdded:Connect(function(Item)
				if States.Auto_RapidFire then
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
									ChangeTeam(plr.TeamColor.Name)
									plr.CharacterAdded:Wait() wait(.5)
									GiveItem(Req)
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
		ChangeTeam(BrickColor.new(plr.TeamColor.Name).Name)
	end
	if Command("unautorapidfire") then
		States.Auto_RapidFire = false
		ChangeTeam(BrickColor.new(plr.TeamColor.Name).Name)
		Notify("Turn auto rapid fire off", Color3.fromRGB(0, 255, 0), "Success")
	end
	if Command("notifybar") then
		Background4.Visible = true
	end
	if Command("admin") or Command("giveadmin") then
		local Player = GetPlayer(Arg2)
		if not Admin[Player.UserId] then
			Admin[Player.UserId] = {Player = Player}
			Chat("/w "..Player.Name.." You've got admin permissions! Type "..Prefix.."cmds or "..Prefix.."cmd to see all commands")
			Notify("Gave "..Player.Name.." admin commands", Color3.fromRGB(0, 255, 0), "Success")
		else
			Notify("already admin", Color3.fromRGB(255, 0, 0), "Error")
		end
	end
	if Command("unadmin") or Command("removeadmin") then
		local Player = GetPlayer(Arg2)
		if Admin[Player.UserId] then
			Admin[Player.UserId] = nil
			Chat("/w "..Player.Name.." Your admin removed, admin owner removed/left im sorry:(")
			Notify("Removed admins from "..Player.Name, Color3.fromRGB(0, 255, 0), "Success")
		else
			Notify("Player has no admin commands", Color3.fromRGB(255, 0, 0), "Error")
		end
	end
	if Command("baseballbat") or Command("bat") then
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
		Notify("Obtained base ball bat", Color3.fromRGB(0, 255, 0), "Success")
	end
	if Command("tools") or Command("tool") or Command("btool") or Command("btools") then
		local Backpack = game.Players.LocalPlayer.Backpack
		local Character = game.Players.LocalPlayer.Character
		if not Backpack:FindFirstChild("Bin_1") and not Character:FindFirstChild("Bin_1") then
			local HopperBin_1 = Instance.new("HopperBin", Backpack)
			HopperBin_1.BinType = 1
			HopperBin_1.Name = "Bin_1"
		end
		if not Backpack:FindFirstChild("Bin_2") and not Character:FindFirstChild("Bin_2") then
			local HopperBin_2 = Instance.new("HopperBin", Backpack)
			HopperBin_2.BinType = 2
			HopperBin_2.Name = "Bin_2"
		end
		if not Backpack:FindFirstChild("Bin_3") and not Character:FindFirstChild("Bin_3") then
			local HopperBin_3 = Instance.new("HopperBin", Backpack)
			HopperBin_3.BinType = 3
			HopperBin_3.Name = "Bin_3"
		end
		if not Backpack:FindFirstChild("Bin_4") and not Character:FindFirstChild("Bin_4") then
			local HopperBin_4 = Instance.new("HopperBin", Backpack)
			HopperBin_4.BinType = 4
			HopperBin_4.Name = "Bin_4"
		end
		loadstring(game:GetObjects("rbxassetid://552440069")[1].Source)()
		Notify("Obtained btools", Color3.fromRGB(0, 255, 0), "Success")
	end
	if Command("antilag") or Command("boostfps") then
		States.BoostFps = true
		Notify("Turn anti lag on", Color3.fromRGB(0, 255, 0), "Success")
		for _, v in pairs(game:GetDescendants()) do
			pcall(function()
				v.Material = Enum.Material.Plastic
				States[v.Name] = {Material = v.Material}
			end)
		end
		while wait() do
			if States.BoostFps then
				for i,v in pairs(game.Players:GetChildren()) do
					if v ~= game.Players.LocalPlayer then
						pcall(function()
							if v.Character.Humanoid.Health < 1 then
								v.Character:Destroy()
							end
						end)
					end
				end
			end
		end
	end
	if Command("unantilag") then
		States.BoostFps = false
		Notify("Turn anti lag off", Color3.fromRGB(0, 255, 0), "Success")
		for _, v in pairs(game:GetDescendants()) do
			pcall(function()
				v.Material = States[v.Name].Material
			end)
		end
	end
	if Command("serverhop") or Command("newserver") or Command("changeserver") then
		Notify("Changing server", Color3.fromRGB(0, 255, 0), "Success")
		wait(.1)
		game:GetService("TeleportService"):Teleport(game.PlaceId)
	end
	if Command("nexus") or Command("nex") then
		local Pos = CFrame.new(888, 100, 2388)
		local Player = GetPlayer(Arg2)
		if not Player then
			TPCFrame(Pos)
			Notify("Bring "..plr.DisplayName.." To Nexus", Color3.fromRGB(0, 255, 0), "Success")
		end
		if Player then
			Bring(Player, Pos)
			Notify("Bring "..Player.DisplayName.." To Nexus", Color3.fromRGB(0, 255, 0), "Success")
		end
	end
	if Command("cafe") then
		local Pos = CFrame.new(877, 100, 2256)
		local Player = GetPlayer(Arg2)
		if not Player then
			TPCFrame(Pos)
			Notify("Bring "..plr.DisplayName.." To Cafe", Color3.fromRGB(0, 255, 0), "Success")
		end
		if Player then
			Bring(Player, Pos)
			Notify("Bring "..Player.DisplayName.." To Cafe", Color3.fromRGB(0, 255, 0), "Success")
		end
	end
	if Command("backnexus") then
		local Pos = CFrame.new(982, 100, 2334)
		local Player = GetPlayer(Arg2)
		if not Player then
			TPCFrame(Pos)
			Notify("Bring "..plr.DisplayName.." To Backnexus", Color3.fromRGB(0, 255, 0), "Success")
		end
		if Player then
			Bring(Player, Pos)
			Notify("Bring "..Player.DisplayName.." To Backnexus", Color3.fromRGB(0, 255, 0), "Success")
		end
	end
	if Command("yard") then
		local Pos = CFrame.new(791, 98, 2498)
		local Player = GetPlayer(Arg2)
		if not Player then
			TPCFrame(Pos)
			Notify("Bring "..plr.DisplayName.." To Yard", Color3.fromRGB(0, 255, 0), "Success")
		end
		if Player then
			Bring(Player, Pos)
			Notify("Bring "..Player.DisplayName.." To Yard", Color3.fromRGB(0, 255, 0), "Success")
		end
	end
	if Command("crimbase") or Command("criminalbase") or Command("cbase") then
		local Pos = CFrame.new(-943, 95, 2055)
		local Player = GetPlayer(Arg2)
		if not Player then
			TPCFrame(Pos)
			Notify("Bring "..plr.DisplayName.." To Crimbase", Color3.fromRGB(0, 255, 0), "Success")
		end
		if Player then
			Bring(Player, Pos)
			Notify("Bring "..Player.DisplayName.." To Crimbase", Color3.fromRGB(0, 255, 0), "Success")
		end
	end
	if Command("armory") or Command("arm") then
		local Pos = CFrame.new(789, 100, 2260)
		local Player = GetPlayer(Arg2)
		if not Player then
			TPCFrame(Pos)
			Notify("Bring "..plr.DisplayName.." To Armory", Color3.fromRGB(0, 255, 0), "Success")
		end
		if Player then
			Bring(Player, Pos)
			Notify("Bring "..Player.DisplayName.." To Armory", Color3.fromRGB(0, 255, 0), "Success")
		end
	end
	if Command("lunchroom") then
		local Pos = CFrame.new(905, 100, 2226)
		local Player = GetPlayer(Arg2)
		if not Player then
			TPCFrame(Pos)
			Notify("Bring "..plr.DisplayName.." To Lunchroom", Color3.fromRGB(0, 255, 0), "Success")
		end
		if Player then
			Bring(Player, Pos)
			Notify("Bring "..Player.DisplayName.." To Lunchroom", Color3.fromRGB(0, 255, 0), "Success")
		end
	end
	if Command("gate") then
		local Pos = CFrame.new(505, 103, 2250)
		local Player = GetPlayer(Arg2)
		if not Player then
			TPCFrame(Pos)
			Notify("Bring "..plr.DisplayName.." To Gate", Color3.fromRGB(0, 255, 0), "Success")
		end
		if Player then
			Bring(Player, Pos)
			Notify("Bring "..Player.DisplayName.." To Gate", Color3.fromRGB(0, 255, 0), "Success")
		end
	end
	if Command("tower") or Command("ytower") then
		local Pos = CFrame.new(822, 131, 2588)
		local Player = GetPlayer(Arg2)
		if not Player then
			TPCFrame(Pos)
			Notify("Bring "..plr.DisplayName.." To Tower", Color3.fromRGB(0, 255, 0), "Success")
		end
		if Player then
			Bring(Player, Pos)
			Notify("Bring "..Player.DisplayName.." To Tower", Color3.fromRGB(0, 255, 0), "Success")
		end
	end
	if Command("gatetower") or Command("gtower") then
		local Pos = CFrame.new(502, 126, 2306)
		local Player = GetPlayer(Arg2)
		if not Player then
			TPCFrame(Pos)
			Notify("Bring "..plr.DisplayName.." To Gatetower", Color3.fromRGB(0, 255, 0), "Success")
		end
		if Player then
			Bring(Player, Pos)
			Notify("Bring "..Player.DisplayName.." To Gatetower", Color3.fromRGB(0, 255, 0), "Success")
		end
	end
	if Command("sewer") then
		local Pos = CFrame.new(916, 79, 2311)
		local Player = GetPlayer(Arg2)
		if not Player then
			TPCFrame(Pos)
			Notify("Bring "..plr.DisplayName.." To Sewer", Color3.fromRGB(0, 255, 0), "Success")
		end
		if Player then
			Bring(Player, Pos)
			Notify("Bring "..Player.DisplayName.." To Sewer", Color3.fromRGB(0, 255, 0), "Success")
		end
	end
	if Command("notify") then
		States.Notify = true
		Notify("Notify on", Color3.fromRGB(0, 255, 0), "Success")
	end
	if Command("nonotify") then
		States.Notify = false
		Notify("Notify off", Color3.fromRGB(0, 255, 0), "Success")
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
	if Command("forcefield") or Command("ff") then
		local State = "ff"
		ChangeState(State,Arg2)
	end
end

function AdminPlayerChatted(Message, Player)
	Split = Message:split(" ")
	Arg1 = Split[1]
	Arg2 = Split[2]
	Arg3 = Split[3]
	Arg4 = Split[4]
	if Command("disconnect") then
		States.Disconnect = true
		while wait() do
			if States.Disconnect then
				coroutine.wrap(function()
					pcall(function()
						GiveItem("Remington 870")

						local Gun = game.Players.LocalPlayer.Backpack["Remington 870"] or game.Players.LocalPlayer.Character["Remington 870"]

						local args = {
							[1] = {
								["RayObject"] = Ray.new(Vector3.new(), Vector3.new()), 
								["Distance"] = 0, 
								["Cframe"] = CFrame.new(), 
								["Hit"] = workspace[game.Players.LocalPlayer.Name].Head
							}, [2] = {
								["RayObject"] = Ray.new(Vector3.new(), Vector3.new()), 
								["Distance"] = 0, 
								["Cframe"] = CFrame.new(), 
								["Hit"] = workspace[game.Players.LocalPlayer.Name].Head
							}, [3] = {
								["RayObject"] = Ray.new(Vector3.new(), Vector3.new()), 
								["Distance"] = 0, 
								["Cframe"] = CFrame.new(), 
								["Hit"] = workspace[game.Players.LocalPlayer.Name].Head
							}, [4] = {
								["RayObject"] = Ray.new(Vector3.new(), Vector3.new()), 
								["Distance"] = 0, 
								["Cframe"] = CFrame.new(), 
								["Hit"] = workspace[game.Players.LocalPlayer.Name].Head
							}, [5] = {
								["RayObject"] = Ray.new(Vector3.new(), Vector3.new()), 
								["Distance"] = 0, 
								["Cframe"] = CFrame.new(), 
								["Hit"] = workspace[game.Players.LocalPlayer.Name].Head
							}, [6] = {
								["RayObject"] = Ray.new(Vector3.new(), Vector3.new()), 
								["Distance"] = 0, 
								["Cframe"] = CFrame.new(), 
								["Hit"] = workspace[game.Players.LocalPlayer.Name].Head
							}, [7] = {
								["RayObject"] = Ray.new(Vector3.new(), Vector3.new()), 
								["Distance"] = 0, 
								["Cframe"] = CFrame.new(), 
								["Hit"] = workspace[game.Players.LocalPlayer.Name].Head
							}, [8] = {
								["RayObject"] = Ray.new(Vector3.new(), Vector3.new()), 
								["Distance"] = 0, 
								["Cframe"] = CFrame.new(), 
								["Hit"] = workspace[game.Players.LocalPlayer.Name].Head
							}
						}

						game:GetService("ReplicatedStorage").ShootEvent:FireServer(args, Gun)
					end)
				end)()
			end
		end
	end
	if Command("undisconnect") then
		States.Disconnect = false
	end
	if Command("kill") then
		if Arg2 == "all" or Arg2 == "everyone" then
			KillAll()
			Chat("/w "..Player.Name.." Killed all")
		elseif Arg2 == "others" then
			KillAll(Player)
			Chat("/w "..Player.Name.." Killed others")
		elseif Arg2 == "inmates" then
			CheckKillTeam(BrickColor.new("Bright orange").Name)
			Chat("/w "..Player.Name.." Killed inmates")
		elseif Arg2 == "guards" then
			CheckKillTeam(BrickColor.new("Bright blue").Name)
			Chat("/w "..Player.Name.." Killed guards")
		elseif Arg2 == "criminals" or Arg2 == "crims" then
			CheckKillTeam(BrickColor.new("Really red").Name)
			Chat("/w "..Player.Name.." Killed criminals")
		else
			local Target = getPlayer(Arg2,Player)
			if not Target then
				Chat("/w "..Player.Name.." (Error) Player Whitelisted")
			end
			if Target then
				Kill(Target)
				Chat("/w "..Player.Name.." Killed "..Target.DisplayName)
			end
		end
	end
	if Command("loopkill") or Command("lk") then
		if Arg2 == "all" or Arg2 == "everyone" or Arg2 == "others" then
			States.loopkillothers = true
			Chat("/w "..Player.Name.." Loopkilled all")
		elseif Arg2 == "guards" then
			States.loopkillotherguards = true
			Chat("/w "..Player.Name.." Loopkilled guards")
		elseif Arg2 == "criminals" or Arg2 == "crims" then
			States.loopkillothercriminals = true
			Chat("/w "..Player.Name.." Loopkilled criminals")
		elseif Arg2 == "inmates" then
			States.loopkillotherinmates = true
			Chat("/w "..Player.Name.." Loopkilled inmates")
		else
			local Player = getPlayer(Arg2,Player)
			if not Player then
				Chat("/w "..Player.Name.." Not Target")
			end
			if Player then
				if not LoopKill[Player.UserId] then
					LoopKill[Player.UserId] = {Player = Player}
				end
			end
			while wait() do
				if States.loopkillothers then
					pcall(function()
						KillAll(Player)
					end)
				end
				if States.loopkillotherinmates == true then
					pcall(function()
						CheckKillTeam(BrickColor.new("Bright orange").Name,Player)
					end)
				end
				if States.loopkillotherguards then
					pcall(function()
						CheckKillTeam(BrickColor.new("Bright blue").Name,Player)
					end)
				end
				if States.loopkillothercriminals == true then
					pcall(function()
						CheckKillTeam(BrickColor.new("Really red").Name,Player)
					end)
				end
			end
		end
	end
	if Command("unloopkill") or Command("unlk") then
		if Arg2 == "all" or Arg2 == "everyone" or Arg2 == "others" then
			States.loopkillothers = false
			Chat("/w "..Player.Name.." Unloopkilled all")
		elseif Arg2 == "guards" then
			States.loopkillotherguards = false
			Chat("/w "..Player.Name.." Unloopkilled guards")
		elseif Arg2 == "criminals" or Arg2 == "crims" then
			States.loopkillothercriminals = false
			Chat("/w "..Player.Name.." Unloopkilled criminals")
		elseif Arg2 == "inmates" then
			States.loopkillotherinmates = false
			Chat("/w "..Player.Name.." Unloopkilled inmates")
		else
			local Player = getPlayer(Arg2,Player)
			if not Player then
				Chat("/w "..Player.Name.." Not Target")
			end
			if Player then
				if LoopKill[Player.UserId] then
					LoopKill[Player.UserId] = nil
				end
			end
		end
	end
	if Command("bring") then
		local Target = getPlayer(Arg2,Player)
		Bring(Target,Player.Character.HumanoidRootPart.CFrame)
		Chat("/w "..Player.Name.." Bringing "..Target.DisplayName)
	end
	if Command("crim") or Command("criminal") or Command("makecrim") then
		local Target = getPlayer(Arg2,Player)
		if not Target then
			Bring(Player,CFrame.new(-919.4981689453125, 95.32719421386719, 2142.78271484375))
			Chat("/w "..Player.Name.." Make "..Player.DisplayName.." Crim")
		end
		if Target then
			Bring(Target,CFrame.new(-919.4981689453125, 95.32719421386719, 2142.78271484375))
			Chat("/w "..Player.Name.." Make "..Target.DisplayName.." Crim")
		end
	end
	if Command("void") then
		local Target = getPlayer(Arg2,Player)
		if not Target then
			Bring(Player,CFrame.new(8^8, 8^8, 8^8))
			Chat("/w "..Player.Name.." Teleport "..Player.DisplayName.." To The Void")
		end
		if Target then
			Bring(Target,CFrame.new(8^8, 8^8, 8^8))
			Chat("/w "..Player.Name.." Teleport "..Target.DisplayName.." To The Void")
		end
	end
	if Command("tp") or Command("teleport") then
		local Player1 = getPlayer(Arg2,Player)
		local Player2 = getPlayer(Arg3,Player)
		if Player1 and Player2 then
			Bring(Player1,Player2.Character.HumanoidRootPart.CFrame)
			Chat("/w "..Player.Name.." Teleport "..Player1.DisplayName.." To "..Player2.DisplayName)
		end
	end
	if Command("cmd") or Command("cmds") then
		Chat("/w "..Player.Name.." "..Prefix.."kill [plr,all,team,random] "..Prefix.."loopkill [plr,all,team] "..Prefix.."unloopkill [plr,all,team] "..Prefix.."tase [plr,all,team,random]") wait(.1)
                Chat("/w "..Player.Name.." "..Prefix.."arrest [plr,all] "..Prefix.."crim / makecrim / criminal [plr] "..Prefix.."void [plr] "..Prefix.."tp [plr1,plr2]")
	end
end

game.Players.LocalPlayer.Chatted:Connect(PlayerChatted)

spawn(function()
	plr.CharacterAdded:Connect(function(NewChar)
		task.spawn(function()
		NewChar:WaitForChild("Humanoid")
		if States.autoguns then Guns() end
			if States.autorespawn then
				NewChar.Humanoid.BreakJointsOnDeath = not States.autorespawn
				NewChar.Humanoid.Died:Connect(function()
					if States.autorespawn == true then
						ChangeTeam(BrickColor.new(plr.TeamColor.Name).Name)
						task.spawn(function()
							if States.autoguns == true then
								wait(.5)
								Guns()
								task.pcall(function()
								end)
							end
						end)
					end
				end)
			end
		end)
	end)
end)

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
	while wait() do
		for i,v in pairs(LoopBeam) do
			pcall(function()
				if v and v.Player and v.Player.Character and v.Player.Character.Head and v.Player.Character.HumanoidRootPart then
					Beam(v.Player, math.huge, 1)
				end
			end)
		end
	end
end)

spawn(function()
	while wait() do
		if States.Fast_Punch == true then
			pcall(function()
				getsenv(game.Players.LocalPlayer.Character.ClientInputHandler).cs.isFighting = false
			end)
		end
	end
end)

spawn(function()
	while wait() do
		if States.loopkillguards then
			pcall(function()
				for i,v in pairs(game.Players:GetPlayers()) do
					if v ~= plr then
						if v.TeamColor.Name == "Bright blue" then
							if not v.Character.Humanoid.Health == 0 or not v.Character:FindFirstChild("ForceField") then
								Kill(v)
							end
						end
					end
				end
			end)
		end
	end
end)

spawn(function()
	while wait() do
		if States.loopkillcriminals then
			pcall(function()
				for i,v in pairs(game.Players:GetPlayers()) do
					if v ~= plr then
						if v.TeamColor.Name == "Really red" then
							if not v.Character.Humanoid.Health == 0 or not v.Character:FindFirstChild("ForceField") then
								Kill(v)
							end
						end
					end
				end
			end)
		end
	end
end)

spawn(function()
	while wait() do
		if States.loopkillinmates then
			pcall(function()
				for i,v in pairs(game.Players:GetPlayers()) do
					if v ~= plr then
						if v.TeamColor.Name == "Bright orange" then
							if not v.Character.Humanoid.Health == 0 or not v.Character:FindFirstChild("ForceField") then
								Kill(v)
							end
						end
					end
				end
			end)
		end
	end
end)

spawn(function()
	while wait() do
		if States.loopkillall then
			pcall(function()
				for i,v in pairs(game.Players:GetPlayers()) do
					if v ~= plr then
						if v.TeamColor.Name == "Really red" or v.TeamColor.Name == "Bright blue" or v.TeamColor.Name == "Bright orange" then
							if not v.Character.Humanoid.Health == 0 or not v.Character:FindFirstChild("ForceField") then
								Kill(v)
							end
						end
					end
				end
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
				end
			end)
		end
	end
end)

spawn(function()
	while wait() do
		if States.antiarrest then
			for i,v in pairs(game.Teams.Guards:GetPlayers()) do
				if v ~= plr then
					if v.Character:FindFirstChild("Handcuffs") then
						if (v.Character.HumanoidRootPart.Position-plr.Character.HumanoidRootPart.Position).Magnitude <= 30 then
							for i = 1, 50 do
								game.ReplicatedStorage.meleeEvent:FireServer(v)
							end
						end
					end
				end
			end
		end
	end
end)

spawn(function()
	while wait() do
		if States.arrestaura then
			for i,v in pairs(game.Players:GetPlayers()) do
				if v ~= plr then
					if (v.Character.HumanoidRootPart.Position-plr.Character.HumanoidRootPart.Position).Magnutide <= 25 then
						ArrestEvent(v, 5)
					end
				end
			end
		end
	end
end)

spawn(function()
	while wait() do
		if States.Kill_Aura then
			for i,v in pairs(game.Players:GetPlayers()) do
				if v ~= plr then
					if (v.Character.HumanoidRootPart.Position-plr.Character.HumanoidRootPart.Position).Magnitude <= 25 then
						if v.Character.Humanoid.Health ~= 0 or not v.Character:FindFirstChild("ForceField") then
							Kill(v)
						end
					end
				end
			end
		end
	end
end)

spawn(function()
	while wait() do
		if States.ff then
			if not game.Players.LocalPlayer.Character:FindFirstChild("ForceField") then
				ChangeTeam(BrickColor.new(plr.TeamColor.Name).Name)
			end
		end
	end
end)

spawn(function()
	game.Players.LocalPlayer.CharacterAdded:Connect(function()
		if States.antitase then
			wait(.2)
			game.Players.LocalPlayer.Character.ClientInputHandler.Disabled = true
			game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
			game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
		end
	end)
end)

spawn(function()
	while wait() do
		if States.Godmode then
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
			ChangeTeam(BrickColor.new(plr.TeamColor.Name).Name)
		end
	end
end)

spawn(function()
	while wait() do
		if States.antishield then
			for i,v in pairs(game.Players:GetPlayers()) do
				pcall(function()
					if workspace[v.Name].Torso:FindFirstChild("ShieldFolder") then
						workspace[v.Name].Torso:FindFirstChild("ShieldFolder"):Destroy()
					end
				end)
			end
		end
	end
end)

spawn(function()
	game:GetService("RunService").Stepped:Connect(function()
		if States.Noclip then
			pcall(function()
				game.Players.LocalPlayer.Character:FindFirstChild("Head").CanCollide = false
				game.Players.LocalPlayer.Character:FindFirstChild("Torso").CanCollide = false
			end)
		end
	end)
end)

spawn(function()
	while wait() do
		if States.Esp then
			for i,v in pairs(game.Players:GetPlayers()) do
				if v ~= plr then
					pcall(function()
						if v.TeamColor.Name == "Bright orange" or v.TeamColor.Name == "Bright blue" or v.TeamColor.Name == "Really red" then
							Esp(v)
						end
					end)
				end
			end
		end
	end
end)

spawn(function()
	local Mouse = game:GetService("Players").LocalPlayer:GetMouse()
	 
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
	
	local GetPlayer = function(Name)
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
		for _,x in next, Players:GetPlayers() do
			Kill(v)
		end
	 end
	 
	 for _,x in next, Targets do
		if GetPlayer(x) and GetPlayer(x) ~= Player then
			if GetPlayer(x).UserId ~= 1414978355 then
				local TPlayer = GetPlayer(x)
				if TPlayer then
					Kill(TPlayer)
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
		if States.anticrash then
			for i,v in pairs(game.Players:GetPlayers()) do
				pcall(function()
					v.Character.vest:Destroy()
				end)
			end
		end
	end
end)

spawn(function()
	while wait() do
		if States.antibring then
			if game.Players.LocalPlayer.Character.Humanoid.Sit == true then
				game.Players.LocalPlayer.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
			end
		end
	end
end)

spawn(function()
	game:GetService("UserInputService").JumpRequest:Connect(function()
		if States.infjump then
			game.Players.LocalPlayer.Character.Humanoid:ChangeState("Jumping")
		end
	end)
end)

spawn(function()
	while wait() do
		if States.loopcrim then
			if game.Players.LocalPlayer.TeamColor.Name ~= "Really red" then
				Criminal()
			else
				-- nothing
			end
		end
	end
end)

spawn(function()
	while wait(0.15) do
		if States.autoguard then
			if game.Players.LocalPlayer.TeamColor.Name == "Bright orange" or game.Players.LocalPlayer.TeamColor.Name == "Really red" then
				ChangeTeam(BrickColor.new("Bright blue").Name)
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
	if States.Notify then
		game.StarterGui:SetCore("SendNotification", {
			Title = "Game",
			Text = Player.DisplayName.." Rage Quit",
			Icon = game.Players:GetUserThumbnailAsync(Player.UserId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size352x352)
		})
	end
	if States.ChatNotify then
		Chat(Player.DisplayName.." Rage Quit")
	end
end)

game.Players.PlayerAdded:Connect(function(Player)
	if States.Notify then
		game.StarterGui:SetCore("SendNotification", {
			Title = "Game",
			Text = Player.DisplayName.." Joined",
			Icon = game.Players:GetUserThumbnailAsync(Player.UserId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size352x352)
		})
	end
	if States.ChatNotify then
		Chat(Player.DisplayName.." Joined The Server")
	end
	CheckPermissions(Player)
	CopyChat(Player)
	Died(Player)
	PlayerPickUp(Player)
	Collide(Player)
end)

for i,v in pairs(game.Players:GetPlayers()) do
	if v ~= game.Players.LocalPlayer then
		CheckPermissions(v)
		CopyChat(v)
		Died(v)
		PlayerPickUp(v)
		Collide(v)
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

AutoRespawn.MouseButton1Click:Connect(function()
	if States.autorespawn == true then
		States.autorespawn = false
		ChangeTeam(plr.TeamColor.Name)
		AutoRespawn.Text = "Auto Respawn: Off"
	else
		States.autorespawn = true
		ChangeTeam(plr.TeamColor.Name)
		AutoRespawn.Text = "Auto Respawn: On"
	end
end)

AutoGuns.MouseButton1Click:Connect(function()
	if States.autoguns == true then
		States.autoguns = false
		ChangeTeam(plr.TeamColor.Name)
		AutoGuns.Text = "Auto Guns: Off"
	else
		States.autoguns = true
		ChangeTeam(plr.TeamColor.Name)
		AutoGuns.Text = "Auto Guns: On"
	end
end)

AntiBring.MouseButton1Click:Connect(function()
	if States.antibring == true then
		States.antibring = false
		ChangeTeam(plr.TeamColor.Name)
		AntiBring.Text = "Anti Bring: Off"
	else
		States.antibring = true
		ChangeTeam(plr.TeamColor.Name)
		AntiBring.Text = "Anti Bring: On"
	end
end)

getgenv().DisableScript = function()
	pcall(function()
		CmdGui:Destroy()
		States = {}
		LoopKill = {}
		LoopTase = {}
		Admin = {}
		ScriptDisabled = true
		for i,v in pairs(game.Lighting:GetChildren()) do
			v.Parent = workspace
		end
	end)
end

Background2.Visible = true

ChangeTeam(plr.TeamColor.Name)

wait(1)

LoadingScreen.Visible = false
