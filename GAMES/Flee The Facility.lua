local Rayfield = loadstring(game:HttpGet('https://raw.github.com/NoobHubV1/RobloxScripts/main/RayField.lua'))()

local Window = Rayfield:CreateWindow({
   Name = "Flee The Facility",
   LoadingTitle = "Script Loaded! Made by NoobHubV1 Key: FleeTheFacility",
   LoadingSubtitle = "sub to @PhoBo2014",
   ConfigurationSaving = {
      Enabled = false,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "Big Hub"
   },
   Discord = {
      Enabled = false,
      Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD.
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },
   KeySystem = true, -- Set this to true to use our key system
   KeySettings = {
      Title = "Sirius Hub",
      Subtitle = "Key System",
      Note = "Join the discord (discord.gg/sirius)",
      FileName = "SiriusKey",
      SaveKey = true,
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = "FleeTheFacility"
   }
})

local Home = Window:CreateTab("Home", 13209388803) -- Title, Imagee
local Esp = Window:CreateTab("Esp", 13209481800) -- Title, Imagee
local Beast = Window:CreateTab("Beast", 13209523447) -- Title, Imagee
local NBeast = Window:CreateTab("Non-Beast", 13209387638)
local Player = Window:CreateTab("Player", 13209386618) -- Title, Imagee

local Section = Esp:CreateSection("ESP")
local button = Esp:CreateToggle({
   Name = "Player Esp",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(state)
if state == true then
	for i,v in pairs(game.Players:GetChildren()) do
		if v:IsA("Player") and v.Name ~= game.Players.LocalPlayer.Name then
			pcall(function()
				local transparency = 0.5
				local Folder = Instance.new("Folder",v.Character)
				Folder.Name = v.Name .. "'s ESP"
				--Head
				local Head = Instance.new("BoxHandleAdornment",Folder)
				Head.AlwaysOnTop = true
				Head.Adornee = v.Character.Head
				Head.ZIndex = 1
				Head.Name = "Head"
				Head.Transparency = transparency
				Head.Size = v.Character.Head.Size
				--Torso
				local Torso = Instance.new("BoxHandleAdornment",Folder)
				Torso.AlwaysOnTop = true
				Torso.Adornee = v.Character.Torso
				Torso.ZIndex = 1
				Torso.Name = "Torso"
				Torso.Transparency = transparency
				Torso.Size = v.Character.Torso.Size
				--Left Arm
				local LeftArm = Instance.new("BoxHandleAdornment",Folder)
				LeftArm.AlwaysOnTop = true
				LeftArm.Adornee = v.Character["Left Arm"]
				LeftArm.ZIndex = 1
				LeftArm.Name = "LeftArm"
				LeftArm.Transparency = transparency
				LeftArm.Size = v.Character["Left Arm"].Size
				--Right Arm
				local RightArm = Instance.new("BoxHandleAdornment",Folder)
				RightArm.AlwaysOnTop = true
				RightArm.Adornee = v.Character["Right Arm"]
				RightArm.ZIndex = 1
				RightArm.Name = "RightArm"
				RightArm.Transparency = transparency
				RightArm.Size = v.Character["Right Arm"].Size
				--Right Leg
				local RightLeg = Instance.new("BoxHandleAdornment",Folder)
				RightLeg.AlwaysOnTop = true
				RightLeg.Adornee = v.Character["Right Leg"]
				RightLeg.ZIndex = 1
				RightLeg.Name = "RightLeg"
				RightLeg.Transparency = transparency
				RightLeg.Size = v.Character["Right Leg"].Size
				--Left Leg
				local LeftLeg = Instance.new("BoxHandleAdornment",Folder)
				LeftLeg.AlwaysOnTop = true
				LeftLeg.Name = "LeftLeg"
				LeftLeg.Adornee = v.Character["Left Leg"]
				LeftLeg.ZIndex = 1
				LeftLeg.Transparency = transparency
				LeftLeg.Size = v.Character["Left Leg"].Size
				--Colors if beast or not
				getgenv().LoopBeastColor = game.RunService.Stepped:Connect(function()
				if v.TempPlayerStatsModule.IsBeast.Value == true then
					Head.Color3 = Color3.fromRGB(205, 98, 152)
					Torso.Color3 = Color3.fromRGB(205, 98, 152)
					LeftArm.Color3 = Color3.fromRGB(205, 98, 152)
					RightArm.Color3 = Color3.fromRGB(205, 98, 152)
					RightLeg.Color3 = Color3.fromRGB(205, 98, 152)
					LeftLeg.Color3 = Color3.fromRGB(205, 98, 152)
				elseif v.TempPlayerStatsModule.IsBeast.Value == false then
					Head.Color3 = Color3.new(225,1,1)
					Torso.Color3 = Color3.new(1,1,1)
					LeftArm.Color3 = Color3.new(1,1,1)
					RightArm.Color3 = Color3.new(1,1,1)
					RightLeg.Color3 = Color3.new(1,1,1)
					LeftLeg.Color3 = Color3.new(1,1,1)
				end
				end)
        --[[
        --BillboardGui
        local BillboardGui = Instance.new("BillboardGui",Folder)
        BillboardGui.AlwaysOnTop = true
        BillboardGui.Enabled = true
        BillboardGui.Adornee = v.Character.Head
        BillboardGui.Size = UDim2.new(0,100,0,100)
        --NameTag
        local NameTag = Instance.new("TextLabel",BillboardGui)
        NameTag.BackgroundTransparency = 1
        NameTag.Size = UDim2.new(0,100,0,10)
        if v.TempPlayerStatsModule.IsBeast.Value == true then
        NameTag.TextColor3 = Color3.new(1,0,0)
        elseif v.TempPlayerStatsModule.IsBeast.Value == false then
        NameTag.TextColor3 = Color3.new(1,1,1)
        end
        NameTag.ZIndex = 10
        NameTag.Visible = true
        NameTag.TextSize = 20
        NameTag.Text = "Name: " .. v.Name
        ]]
			end)
		end
	end
else
getgenv().LoopBeastColor:Disconnect()
for i,v in pairs(game.Players:GetChildren()) do
    if v:IsA("Player") then
   for i,e in pairs(v.Character:GetChildren()) do
   if e:IsA("Folder") then
       pcall(function()
       e:Destroy()
       end)
end
end
end
end
end
   end,
})

local Toggle = Esp:CreateToggle({
   Name = "Door Esp",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(state)
if state == true then
getgenv().DoorESP = false
	spawn(function()
		--single doors
		for i,v in pairs(workspace:GetDescendants()) do
			if v.Name == "SingleDoor" then
				pcall(function()
					local ESP = Instance.new("Highlight")
					ESP.Parent = v.Door
				end)

			end
		end
		wait(1)

		for i,v in pairs(workspace:GetDescendants()) do
			if v.Name == "SingleDoor" then
				spawn(function()
					while true do
						pcall(function()
							if v.DoorTrigger.ActionSign.Value == 11 then
								v.Door.Highlight.FillColor = Color3.new(0,1,0)
							elseif v.DoorTrigger.ActionSign.Value == 10 then
								v.Door.Highlight.FillColor = Color3.new(1,0,0)
							end
						end)
						if getgenv().DoorESP == true then
						    break;
						end
						wait(0.1)
					end
				end)
				
				
			end
		end
		
	end)
	--double doors
	spawn(function()
		for i,v in pairs(workspace:GetDescendants()) do
			if v.Name == "DoubleDoor" then
				pcall(function()
					local ESP = Instance.new("Highlight")
					ESP.Parent = v
				end)

			end
		end
		wait(1)

		for i,v in pairs(workspace:GetDescendants()) do
			if v.Name == "DoubleDoor" then
				spawn(function()
					while true do
						pcall(function()
							if v.DoorTrigger.ActionSign.Value == 11 then
								v.Highlight.FillColor = Color3.new(0,1,0)
							elseif v.DoorTrigger.ActionSign.Value == 10 then
								v.Highlight.FillColor = Color3.new(1,0,0)
							end
						end)
                        if getgenv().DoorESP == true then
                             print("Stopped itLop!2")
                             break;
                        end
                        wait(0.1)
					end
				end)
			end
		end
	end)
else
getgenv().DoorESP = true
	--signle door
	for i,v in pairs(workspace:GetDescendants()) do
		if v.Name == "SingleDoor" then
			pcall(function()
				v.Door.Highlight:Destroy()
			end)

		end
	end

	--double doors
	for i,v in pairs(workspace:GetDescendants()) do
		if v.Name == "DoubleDoor" then
			pcall(function()
				v.Highlight:Destroy()
			end)

		end
	end
end   end,
})

local Toggle = Esp:CreateToggle({
   Name = "Computer Esp",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(state)
   if state == true then
getgenv().StopComputerESP = false
for i,v in pairs(workspace:GetDescendants()) do 
    if v.Name == "ComputerTable" then
        pcall(function()
        local ESP = Instance.new("Highlight",v)
        end)
    end
end

spawn(function()
while true do
for i,v in pairs(workspace:GetDescendants()) do
    if v.Name == "ComputerTable" then
        if v.Screen.BrickColor == BrickColor.new("Bright blue") then
            pcall(function()
          v.Highlight.FillColor = Color3.new(0,0,1)
            end)
        elseif v.Screen.BrickColor == BrickColor.new("Dark green") then
            pcall(function()
          v.Highlight.FillColor = Color3.new(0,1,0)
            end)
        end
        if getgenv().StopComputerESP == true then
          print("Stopped itLop!PC")
          break;
        end
    end
end
wait(1)
end
end)
else
getgenv().StopComputerESP = true
for i,v in pairs(workspace:GetDescendants()) do 
    if v.Name == "ComputerTable" then
        pcall(function()
        v.Highlight:Destroy()
        end)
    end
end
end
   end,
})

local Toggle = Esp:CreateToggle({
   Name = "Freeze Pod Esp",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(state)
   if state == true then
for i,v in pairs(workspace:GetDescendants()) do 
    if v.Name == "FreezePod" then
        pcall(function()
        local ESP = Instance.new("Highlight",v)
        end)
    end
end
else
for i,v in pairs(workspace:GetDescendants()) do 
    if v.Name == "FreezePod" then
        pcall(function()
        v.Highlight:Destroy()
        end)
    end
end
end
   end,
})

local Section = Beast:CreateSection("Beast")

local Button = Beast:CreateButton({
   Name = "Infinite Sprint",
   Callback = function()
if game.Players.LocalPlayer.TempPlayerStatsModule.IsBeast.Value == true then
game.UserInputService.InputBegan:Connect(function(key)
if key.KeyCode == Enum.KeyCode.Q then
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 30
end
end)

game.UserInputService.InputEnded:Connect(function(key)
if key.KeyCode == Enum.KeyCode.Q then
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
end
end)

pcall(function()
game.Players.LocalPlayer.Character.PowersLocalScript:Destroy()    
end)
end
end,
})

local Button = Beast:CreateButton({
   Name = "No Slow",
   Callback = function()
if game.Players.LocalPlayer.TempPlayerStatsModule.IsBeast.Value == true then
pcall(function()
game.Players.LocalPlayer.Character.PowersLocalScript:Destroy()
end)
end
   end,
})

local Button = Beast:CreateButton({
   Name = "Enable Crawl",
   Callback = function()
if game.Players.LocalPlayer.TempPlayerStatsModule.IsBeast.Value == true then
game:GetService("Players").LocalPlayer.TempPlayerStatsModule.DisableCrawl.Value = false
end
end
})

local Button = Beast:CreateButton({
   Name = "Remove Sound And Glow",
   Callback = function()
if game.Players.LocalPlayer.TempPlayerStatsModule.IsBeast.Value == true then
for i,v in pairs(game.Players.LocalPlayer.Character.Hammer.Handle:GetChildren()) do
    if v:IsA("Sound") then
        pcall(function()
        v:Destroy()
        end)
    end
end

pcall(function()
game.Players.LocalPlayer.Character.Gemstone.Handle.PointLight:Destroy()
end)
end
end
})

local Button = Beast:CreateButton({
   Name = "Fix Camera",
   Callback = function()
local player = game.Players.LocalPlayer

	workspace.CurrentCamera.CameraSubject = player.Character:FindFirstChildWhichIsA('Humanoid')
	workspace.CurrentCamera.CameraType = "Custom"
	player.CameraMinZoomDistance = 0.5
	player.CameraMaxZoomDistance = math.huge
	player.CameraMode = "Classic"
	player.Character.Head.Anchored = false
   end,
})

local Section = NBeast:CreateSection("Non-Beast",true)

local Button = NBeast:CreateButton({
   Name = "Q to Sprint",
   Callback = function()
game.UserInputService.InputBegan:Connect(function(key)
if key.KeyCode == Enum.KeyCode.Q then
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 30
end
end)

game.UserInputService.InputEnded:Connect(function(key)
if key.KeyCode == Enum.KeyCode.Q then
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
end
end)

pcall(function()
game.Players.LocalPlayer.Character.PowersLocalScript:Destroy()    
end)
end,
})

local Button = NBeast:CreateToggle({
   Name = "Anti Pc Error",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(state)
spawn(function()
getgenv().Loop = state
while Loop do
game.ReplicatedStorage.RemoteEvent:FireServer("SetPlayerMinigameResult",true)
task.wait()
end
end)
end,
})

local Section = Player:CreateSection("Player")

local Button = Player:CreateButton({
   Name = "Respawn",
   Callback = function()
local plr = game.Players.LocalPlayer
plr.Character.Humanoid = 0
end,
})

local Button = Player:CreateButton({
   Name = "Invisible (F) must disable anticheat",
   Callback = function()
local Global = getgenv and getgenv()
local First = true
local Restart = true
local SoundService = game:GetService("SoundService")
local StoredCF
local SafeZone
if Global.SafeZone ~= nil then
	if type(Global.SafeZone) ~= "userdata" then return error("CFrame must be a userdata (CFrame.new(X, X, X)") end
	SafeZone = Global.SafeZone
else
	SafeZone = CFrame.new(0,-300,0)       
end

local ScriptStart = true
local Reset = false
local DeleteOnDeath = {}
local Activate
local Noclip
if Global.Key == nil then
	Activate = "F"
else
	Activate = tostring(Global.Key)     
end

if Global.Noclip == nil then
	Noclip = false
else
	Noclip = Global.Noclip        
end

if type(Noclip) ~= "boolean" then return error("Noclip value isn't a boolean") end

function notify(Message)
	game:GetService("StarterGui"):SetCore("SendNotification", { 
		Title = "FE Invisible";
		Text = Message;
		Icon = "rbxthumb://type=Asset&id=5107182114&w=150&h=150"})
	local sound = Instance.new("Sound")
	sound.SoundId = "rbxassetid://7046168694"
	SoundService:PlayLocalSound(sound)
end

if Global.Running then
	return notify("Script is already running")
else
	Global.Running = true
end

local IsInvisible = false
local WasInvisible = false
local Died = false
local LP = game:GetService("Players").LocalPlayer
local UserInputService = game:GetService("UserInputService")
repeat wait() until LP.Character
repeat wait() until LP.Character:FindFirstChild("Humanoid")
local RealChar = LP.Character or LP.CharacterAdded:Wait()
RealChar.Archivable = true
local FakeChar = RealChar:Clone()
FakeChar:WaitForChild("Humanoid").DisplayDistanceType = Enum.HumanoidDisplayDistanceType.None
FakeChar.Parent = game:GetService("Workspace")

for _, child in pairs(FakeChar:GetDescendants()) do
	if child:IsA("BasePart") and child.CanCollide == true then
		child.CanCollide = false
	end
end

FakeChar:SetPrimaryPartCFrame(SafeZone * CFrame.new(0, 5, 0))

local Part
Part = Instance.new("Part", workspace)
Part.Anchored = true
Part.Size = Vector3.new(200, 1, 200)
Part.CFrame = SafeZone
Part.CanCollide = true


for i, v in pairs(FakeChar:GetDescendants()) do
	if v:IsA("BasePart") and v.Name ~= "HumanoidRootPart" then
		v.Transparency = 0.7
	end
end

for i, v in pairs(RealChar:GetChildren()) do
	if v:IsA("LocalScript") then
		local clone = v:Clone()
		clone.Disabled = true
		clone.Parent = FakeChar
	end
end

function StopScript()
	if ScriptStart == false then return end
	if Died == false then
		if Restart == true then
			notify("The character used died!\nStopping...")
		else
			notify("Script successfuly ended !")
		end
		Part:Destroy()
		if IsInvisible and RealChar:FindFirstChild("HumanoidRootPart") then
			Visible() 
			WasInvisible = true
		end
		
		if IsInvisible == false and LP.Character:WaitForChild("Humanoid").Health == 0 then
			WasInvisible = true
		end
		if not RealChar:FindFirstChild("Humanoid") then
			Reset = true
			print("a")
		end
		
		game:GetService("Workspace").CurrentCamera.CameraSubject = RealChar:WaitForChild("Humanoid")

		if FakeChar then
			FakeChar:Destroy()
		end

		if WasInvisible then
			local char = LP.Character
			if char:FindFirstChildOfClass("Humanoid") then char:FindFirstChildOfClass("Humanoid"):ChangeState(15) end
			char:ClearAllChildren()
			local newChar = Instance.new("Model")
			newChar.Parent = workspace
			LP.Character = newChar
			wait()
			LP.Character = char
			newChar:Destroy()
			for _,v in pairs(DeleteOnDeath) do
				v:Destroy()
			end
			
		else
			for _,v in pairs(DeleteOnDeath) do
				v.ResetOnSpawn = true
			end
		end
		Global.Running = false
		ScriptStart = false
		if Restart == true then
		loadstring(game:HttpGet('https://raw.githubusercontent.com/Error-Cezar/Roblox-Scripts/main/FE-Invisible.lua'))()
		end
		
			LP.CharacterAdded:Connect(function()
				if Reset == false then return end
			loadstring(game:HttpGet('https://raw.githubusercontent.com/Error-Cezar/Roblox-Scripts/main/FE-Invisible.lua'))()
		end)
		
	end
end

RealChar:WaitForChild("Humanoid").Died:Connect(function()
	StopScript()
end)


FakeChar:WaitForChild("Humanoid").Died:Connect(function()
	StopScript()
end)

function Invisible()
	StoredCF = RealChar:GetPrimaryPartCFrame()
	
if First == true then
		First = false
		for _,v in pairs(LP:WaitForChild("PlayerGui"):GetChildren()) do 
		if v:IsA("ScreenGui") then
			if v.ResetOnSpawn == true then
				v.ResetOnSpawn = false
				table.insert(DeleteOnDeath, v)
			end
		end
	end
	end
	
	if Noclip == true then
	for _, child in pairs(FakeChar:GetDescendants()) do
		if child:IsA("BasePart") and child.CanCollide == true then
			child.CanCollide = false
		end
		end
	end
	FakeChar:SetPrimaryPartCFrame(StoredCF)
	FakeChar:WaitForChild("HumanoidRootPart").Anchored = false
	LP.Character = FakeChar
	game:GetService("Workspace").CurrentCamera.CameraSubject = FakeChar:WaitForChild("Humanoid")
		for _, child in pairs(RealChar:GetDescendants()) do
			if child:IsA("BasePart") and child.CanCollide == true then
				child.CanCollide = false
			end
		end

	RealChar:SetPrimaryPartCFrame(SafeZone * CFrame.new(0, 5, 0))
	--	RealChar:WaitForChild("HumanoidRootPart").Anchored = true
	RealChar:WaitForChild("Humanoid"):UnequipTools()

	for i, v in pairs(FakeChar:GetChildren()) do
		if v:IsA("LocalScript") then
			v.Disabled = false
		end
	end
end

function Visible()
	StoredCF = FakeChar:GetPrimaryPartCFrame()
	for _, child in pairs(RealChar:GetDescendants()) do
		if child:IsA("BasePart") and child.CanCollide == true then
			child.CanCollide = true
		end
	end
	RealChar:WaitForChild("HumanoidRootPart").Anchored = false
	RealChar:SetPrimaryPartCFrame(StoredCF)
	LP.Character = RealChar
	FakeChar:WaitForChild("Humanoid"):UnequipTools()
	game:GetService("Workspace").CurrentCamera.CameraSubject = RealChar:WaitForChild("Humanoid")
	for _, child in pairs(FakeChar:GetDescendants()) do
		if child:IsA("BasePart") and child.CanCollide == true then
			child.CanCollide = false
		end
	end
	FakeChar:SetPrimaryPartCFrame(SafeZone * CFrame.new(0, 5, 0))
		FakeChar:WaitForChild("HumanoidRootPart").Anchored = true
	for i, v in pairs(FakeChar:GetChildren()) do
		if v:IsA("LocalScript") then
			v.Disabled = true
		end
	end
end


UserInputService.InputBegan:Connect(function(input, gameProcessed)
	if ScriptStart == false then return end
	if gameProcessed then return end
	if input.KeyCode.Name:lower() ~= Activate:lower() then return end
	if IsInvisible == false then
		Invisible()
		IsInvisible = true
	else
		Visible()
		IsInvisible = false
	end
end)
end,
})

local Button = Player:CreateButton({
   Name = "Rejoin",
   Callback = function()
  -- rejoin		
local TeleportService = game:GetService("TeleportService")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
 
local Rejoin = coroutine.create(function()
    local Success, ErrorMessage = pcall(function()
        TeleportService:Teleport(game.PlaceId, LocalPlayer)
    end)
 
    if ErrorMessage and not Success then
        warn(ErrorMessage)
    end
end)
 
coroutine.resume(Rejoin)
   end,
})

local button = Player:CreateButton({
   Name = "Bypass Anticheat (dont if beast)",
   Callback = function()
local character = game.Players.LocalPlayer.Character
    local torso = character:FindFirstChild("Torso") or character:FindFirstChild("UpperTorso")
    local root = character:FindFirstChild("HumanoidRootPart")
    local head = character:FindFirstChild("Head")
    character.Parent = nil
    root.Parent = nil 
    wait(0.5)
    local fake = torso:Clone()
    fake.Parent = character
    torso.Name = "HumanoidRootPart"
    torso.Transparency = 1
    getgenv().Torsoo = torso
    character.Parent = workspace
end,
})

local Label = Home:CreateLabel("This was made by NoobHubV1")
local Label = Home:CreateLabel("https://github.com/NoobHubV1")
local Label = Home:CreateLabel("https://www.youtube.com/@PhoBo2014")
local Label = Home:CreateLabel("notnoobhubv1#5706")
