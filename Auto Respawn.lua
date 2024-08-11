-- Made by iTsSaalty 
 
 -- Instances:
 setclipboard("https://www.youtube.com/c/iTsSaalty?sub_confirmation=1")

local ScreenGui = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local re2 = Instance.new("TextButton")
local re1 = Instance.new("TextButton")

--Properties:

ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.ResetOnSpawn = false

Main.Name = "Main"
Main.Parent = ScreenGui
Main.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
Main.BorderColor3 = Color3.fromRGB(255, 0, 0)
Main.BorderSizePixel = 2
Main.Position = UDim2.new(0.00485906005, 0, 0.609179854, 0)
Main.Size = UDim2.new(0.17087847, 0, 0.381620556, 0)

re2.Name = "re2"
re2.Parent = Main
re2.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
re2.Position = UDim2.new(0.0705073774, 0, 0.271171719, 0)
re2.Size = UDim2.new(0.858350694, 0, 0.453797489, 0)
re2.Visible = false
re2.Font = Enum.Font.Arcade
re2.Text = "Auto Respawn : On"
re2.TextColor3 = Color3.fromRGB(255, 255, 255)
re2.TextScaled = true
re2.TextSize = 14.000
re2.TextStrokeTransparency = 0.000
re2.TextWrapped = true

re1.Name = "re1"
re1.Parent = Main
re1.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
re1.Position = UDim2.new(0.0705073774, 0, 0.271171719, 0)
re1.Size = UDim2.new(0.858350694, 0, 0.453797489, 0)
re1.Font = Enum.Font.Arcade
re1.Text = "Auto Respawn"
re1.TextColor3 = Color3.fromRGB(255, 255, 255)
re1.TextScaled = true
re1.TextSize = 14.000
re1.TextStrokeTransparency = 0.000
re1.TextWrapped = true

-- Scripts:

local function MKANE_fake_script() -- re2.LocalScript 
	local script = Instance.new('LocalScript', re2)

	script.Parent.MouseButton1Click:Connect(function()
		script.Parent.Visible = false
		script.Parent.Parent.re1.Visible = true
		_G.Loop = false
	
		while _G.Loop == true do
			wait()
			if game.Players.LocalPlayer.Character.Humanoid.Health <= 15 then
			local plr = game.Players.LocalPlayer
                        local location = plr.Character.HumanoidRootPart.Position
                        if plr.Team == game.Teams.Criminals then
                        workspace.Remote.TeamEvent:FireServer("Bright blue") task.wait(0.4)
LCS = game.Workspace["Criminals Spawn"].SpawnLocation
    LCS.CanCollide = false
    LCS.Size = Vector3.new(51.05, 24.12, 54.76)
    LCS.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
    LCS.Transparency = 1
    task.wait()
    LCS.CFrame = CFrame.new(-920.510803, 92.2271957, 2138.27002, 0, 0, -1, 0, 1, 0, 1, 0, 0)
    LCS.Size = Vector3.new(6, 0.2, 6)
    LCS.Transparency = 0
                        task.wait(0.75)
                        plr.Character.HumanoidRootPart.CFrame = CFrame.new(location)
                        elseif plr.Team == game.Teams.Guards then
                        workspace.Remote.TeamEvent:FireServer("Bright blue")
                        task.wait(0.75)
                        plr.Character.HumanoidRootPart.CFrame = CFrame.new(location)
                        elseif plr.Team == game.Teams.Inmates then
                        workspace.Remote.TeamEvent:FireServer("Bright orange")
                        task.wait(0.75)
                        plr.Character.HumanoidRootPart.CFrame = CFrame.new(location)
                        end
			end
		end
	end)
end
coroutine.wrap(MKANE_fake_script)()
local function ARECQSO_fake_script() -- re1.LocalScript 
	local script = Instance.new('LocalScript', re1)

	script.Parent.MouseButton1Click:Connect(function()
		script.Parent.Text = "Auto Respawn : Off"
		script.Parent.Visible = false
		script.Parent.Parent.re2.Visible = true
		_G.Loop = true
	
		while _G.Loop == true do
			wait()
			if game.Players.LocalPlayer.Character.Humanoid.Health <= 15 then
                        local plr = game.Players.LocalPlayer
                        local location = plr.Character.HumanoidRootPart.Position
                        if plr.Team == game.Teams.Criminals then
                        workspace.Remote.TeamEvent:FireServer("Bright blue") task.wait(0.4)
LCS = game.Workspace["Criminals Spawn"].SpawnLocation
    LCS.CanCollide = false
    LCS.Size = Vector3.new(51.05, 24.12, 54.76)
    LCS.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
    LCS.Transparency = 1
    task.wait()
    LCS.CFrame = CFrame.new(-920.510803, 92.2271957, 2138.27002, 0, 0, -1, 0, 1, 0, 1, 0, 0)
    LCS.Size = Vector3.new(6, 0.2, 6)
    LCS.Transparency = 0
                        task.wait(0.75)
                        plr.Character.HumanoidRootPart.CFrame = CFrame.new(location)
                        elseif plr.Team == game.Teams.Guards then
                        workspace.Remote.TeamEvent:FireServer("Bright blue")
                        task.wait(0.75)
                        plr.Character.HumanoidRootPart.CFrame = CFrame.new(location)
                        elseif plr.Team == game.Teams.Inmates then
                        workspace.Remote.TeamEvent:FireServer("Bright orange")
                        task.wait(0.75)
                        plr.Character.HumanoidRootPart.CFrame = CFrame.new(location)
                        end
			end
		end
	end)
end
coroutine.wrap(ARECQSO_fake_script)()
local function VYXMZ_fake_script() -- Main.drag 
	local script = Instance.new('LocalScript', Main)

	local UserInputService = game:GetService("UserInputService")
	
	local gui = script.Parent
	
	local dragging
	local dragInput
	local dragStart
	local startPos
	
	local function update(input)
		local delta = input.Position - dragStart
		gui.Position = gui:TweenPosition(UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y), 'Out', 'Linear', 0.09, true); -- drag speed
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
end
coroutine.wrap(VYXMZ_fake_script)()
