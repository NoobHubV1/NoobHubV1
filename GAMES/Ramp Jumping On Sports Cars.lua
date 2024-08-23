local StarterGui = game:GetService("StarterGui")
local showNotification = true

function Notify(tl, t, d) 
if showNotification == true then
StarterGui:SetCore("SendNotification", {
	Title = tl;
	Text = t;
	Duration = d;
	Icon = "http://www.roblox.com/asset/?id=8388262491";
})
end
end

if game.CoreGui:FindFirstChild("destruct") then
game.CoreGui.destruct:Destroy()
end

local BlurFX = Instance.new("BlurEffect")
BlurFX.Size = 0
BlurFX.Name = "Blur"
BlurFX.Parent = workspace.CurrentCamera

local function blurefct(siz)
local TweenService = game:GetService("TweenService")
local goal = {}
goal.Size = siz

local tweenInfo = TweenInfo.new(2)
local tween = TweenService:Create(BlurFX, tweenInfo, goal)

tween:Play()
end

local remote = "nil"
local found = false
local enable = false
local sent = false
local LocalPlayer = game:GetService("Players").LocalPlayer
local char = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()

local checkIn = {"Workspace", "ReplicatedStorage", "StarterGui", "CoreGui"}
local names = {"Delete", "Deletar", "Remove", "Destroy", "Clean", "Clear","Bullet", "Bala", "Shoot", "Shot", "Fire", "Segway", "Handless", "Sword", "Attack"}
if char then
blurefct(20)
Notify("Vulnerability Checker", "Looking up for remotes, may take a while.", 3)
for _, service in pairs(checkIn) do
for i,v in pairs(game:GetService(service):GetDescendants()) do
for _, str in pairs(names) do
if string.match(v.Name, str) and v:IsA("RemoteEvent") then
print("Checking " .. v.Name .. " from " .. service .. " service")
local success, error = pcall(function()
game:GetService("ReplicatedStorage")[v.Name]:FireServer(LocalPlayer.Character.Head)
found = true
end)
if success then
remote = game:GetService("ReplicatedStorage")[v.Name]
end 
wait(0.5)
if not LocalPlayer.Character:FindFirstChild("Head") then
enable = true
sent = true
end
end
end
end
end
end

if sent == false then
Notify("Vulnerability Checker", "This game is not vulnerable/supported.", 5)
blurefct(0)
end

function work(arg1)
remote:FireServer(arg1)
end

function GetPlayer(String)
   local Found = {}
   local strl = String:lower()
   if strl == "all" then
       for i,v in pairs(game.Players:GetPlayers()) do
           table.insert(Found,v.Name)
       end
   elseif strl == "others" then
       for i,v in pairs(game.Players:GetPlayers()) do
           if v.Name ~= game.Players.LocalPlayer.Name then
               table.insert(Found,v.Name)
           end
       end  
elseif strl == "me" then
       for i,v in pairs(game.Players:GetPlayers()) do
           if v.Name == game.Players.LocalPlayer.Name then
               table.insert(Found,v.Name)
           end
       end  
   else
       for i,v in pairs(game.Players:GetPlayers()) do
           if v.Name:lower():sub(1, #String) == String:lower() or v.DisplayName:lower():sub(1, #String) == String:lower() then
               table.insert(Found,v.Name)
           end
       end    
   end
   return Found    
end
if enable == true then
blurefct(0)
Notify("Destructed Hex", "Made by Luq and Luca", 10)
local destruct = Instance.new("ScreenGui")
local main = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local line = Instance.new("Frame")
local ImageLabel = Instance.new("ImageLabel")
local scripts = Instance.new("ScrollingFrame")
local UIGridLayout = Instance.new("UIGridLayout")
local kill = Instance.new("TextButton")
local loopkill = Instance.new("TextButton")
local unloopkill = Instance.new("TextButton")
local kick = Instance.new("TextButton")
local ban = Instance.new("TextButton")
local unban = Instance.new("TextButton")
local goto = Instance.new("TextButton")
local view = Instance.new("TextButton")
local unview = Instance.new("TextButton")
local btools = Instance.new("TextButton")
local nuke = Instance.new("TextButton")
local naked = Instance.new("TextButton")
local faceless = Instance.new("TextButton")
local nolimbs = Instance.new("TextButton")
local hatless = Instance.new("TextButton")
local sink = Instance.new("TextButton")
local rtools = Instance.new("TextButton")
local stools = Instance.new("TextButton")
local slock = Instance.new("TextButton")
local player = Instance.new("TextBox")
local ranims = Instance.new("TextButton")
local ragdoll = Instance.new("TextButton")
local shutdown = Instance.new("TextButton")
local punish = Instance.new("TextButton")
local rchassis = Instance.new("TextButton")

--Properties:

destruct.Name = "destruct"
destruct.Parent = game.CoreGui
destruct.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

main.Name = "main"
main.Parent = destruct
main.BackgroundColor3 = Color3.fromRGB(76, 76, 76)
main.BackgroundTransparency = 0.3
main.BorderSizePixel = 0
main.Position = UDim2.new(0.268847764, 0, 0.372854918, 0)
main.Size = UDim2.new(0, 325, 0, 239)
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
TextLabel.Text = "Destructed_Hex"
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
ImageLabel.Image = "http://www.roblox.com/asset/?id=8388262491"
ImageLabel.ScaleType = Enum.ScaleType.Fit

scripts.Name = "scripts"
scripts.Parent = main
scripts.Active = true
scripts.BackgroundColor3 = Color3.fromRGB(63, 63, 63)
scripts.BackgroundTransparency = 1
scripts.BorderSizePixel = 0
scripts.Position = UDim2.new(0, 0, 0.134782612, 0)
scripts.Size = UDim2.new(0, 325, 0, 173)
scripts.CanvasSize = UDim2.new(0, 0, 1.150, 0)

UIGridLayout.Parent = scripts
UIGridLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIGridLayout.CellSize = UDim2.new(0, 100, 0, 30)

kill.Name = "kill"
kill.Parent = scripts
kill.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
kill.BorderSizePixel = 0
kill.Size = UDim2.new(0, 200, 0, 50)
kill.Font = Enum.Font.Roboto
kill.Text = "Kill"
kill.TextColor3 = Color3.fromRGB(255, 255, 255)
kill.TextSize = 14.000

loopkill.Name = "loopkill"
loopkill.Parent = scripts
loopkill.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
loopkill.BorderSizePixel = 0
loopkill.Size = UDim2.new(0, 200, 0, 50)
loopkill.Font = Enum.Font.Roboto
loopkill.Text = "Loopkill"
loopkill.TextColor3 = Color3.fromRGB(255, 255, 255)
loopkill.TextSize = 14.000

unloopkill.Name = "unloopkill"
unloopkill.Parent = scripts
unloopkill.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
unloopkill.BorderSizePixel = 0
unloopkill.Size = UDim2.new(0, 200, 0, 50)
unloopkill.Font = Enum.Font.Roboto
unloopkill.Text = "Unloopkill"
unloopkill.TextColor3 = Color3.fromRGB(255, 255, 255)
unloopkill.TextSize = 14.000

kick.Name = "kick"
kick.Parent = scripts
kick.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
kick.BorderSizePixel = 0
kick.Size = UDim2.new(0, 200, 0, 50)
kick.Font = Enum.Font.Roboto
kick.Text = "Kick"
kick.TextColor3 = Color3.fromRGB(255, 255, 255)
kick.TextSize = 14.000

ban.Name = "ban"
ban.Parent = scripts
ban.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
ban.BorderSizePixel = 0
ban.Size = UDim2.new(0, 200, 0, 50)
ban.Font = Enum.Font.Roboto
ban.Text = "Ban"
ban.TextColor3 = Color3.fromRGB(255, 255, 255)
ban.TextSize = 14.000

unban.Name = "unban"
unban.Parent = scripts
unban.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
unban.BorderSizePixel = 0
unban.Size = UDim2.new(0, 200, 0, 50)
unban.Font = Enum.Font.Roboto
unban.Text = "UnBan"
unban.TextColor3 = Color3.fromRGB(255, 255, 255)
unban.TextSize = 14.000

goto.Name = "goto"
goto.Parent = scripts
goto.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
goto.BorderSizePixel = 0
goto.Size = UDim2.new(0, 200, 0, 50)
goto.Font = Enum.Font.Roboto
goto.Text = "Goto"
goto.TextColor3 = Color3.fromRGB(255, 255, 255)
goto.TextSize = 14.000

view.Name = "view"
view.Parent = scripts
view.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
view.BorderSizePixel = 0
view.Size = UDim2.new(0, 200, 0, 50)
view.Font = Enum.Font.Roboto
view.Text = "View"
view.TextColor3 = Color3.fromRGB(255, 255, 255)
view.TextSize = 14.000

unview.Name = "unview"
unview.Parent = scripts
unview.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
unview.BorderSizePixel = 0
unview.Size = UDim2.new(0, 200, 0, 50)
unview.Font = Enum.Font.Roboto
unview.Text = "UnView"
unview.TextColor3 = Color3.fromRGB(255, 255, 255)
unview.TextSize = 14.000

btools.Name = "btools"
btools.Parent = scripts
btools.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
btools.BorderSizePixel = 0
btools.Size = UDim2.new(0, 200, 0, 50)
btools.Font = Enum.Font.Roboto
btools.Text = "BTools"
btools.TextColor3 = Color3.fromRGB(255, 255, 255)
btools.TextSize = 14.000

nuke.Name = "nuke"
nuke.Parent = scripts
nuke.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
nuke.BorderSizePixel = 0
nuke.Size = UDim2.new(0, 200, 0, 50)
nuke.Font = Enum.Font.Roboto
nuke.Text = "Nuke"
nuke.TextColor3 = Color3.fromRGB(255, 255, 255)
nuke.TextSize = 14.000

naked.Name = "naked"
naked.Parent = scripts
naked.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
naked.BorderSizePixel = 0
naked.Size = UDim2.new(0, 200, 0, 50)
naked.Font = Enum.Font.Roboto
naked.Text = "Naked"
naked.TextColor3 = Color3.fromRGB(255, 255, 255)
naked.TextSize = 14.000

faceless.Name = "faceless"
faceless.Parent = scripts
faceless.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
faceless.BorderSizePixel = 0
faceless.Size = UDim2.new(0, 200, 0, 50)
faceless.Font = Enum.Font.Roboto
faceless.Text = "Faceless"
faceless.TextColor3 = Color3.fromRGB(255, 255, 255)
faceless.TextSize = 14.000

nolimbs.Name = "nolimbs"
nolimbs.Parent = scripts
nolimbs.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
nolimbs.BorderSizePixel = 0
nolimbs.Size = UDim2.new(0, 200, 0, 50)
nolimbs.Font = Enum.Font.Roboto
nolimbs.Text = "NoLimbs"
nolimbs.TextColor3 = Color3.fromRGB(255, 255, 255)
nolimbs.TextSize = 14.000

hatless.Name = "hatless"
hatless.Parent = scripts
hatless.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
hatless.BorderSizePixel = 0
hatless.Size = UDim2.new(0, 200, 0, 50)
hatless.Font = Enum.Font.Roboto
hatless.Text = "Hatless"
hatless.TextColor3 = Color3.fromRGB(255, 255, 255)
hatless.TextSize = 14.000

sink.Name = "sink"
sink.Parent = scripts
sink.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
sink.BorderSizePixel = 0
sink.Size = UDim2.new(0, 200, 0, 50)
sink.Font = Enum.Font.Roboto
sink.Text = "Sink"
sink.TextColor3 = Color3.fromRGB(255, 255, 255)
sink.TextSize = 14.000

rtools.Name = "rtools"
rtools.Parent = scripts
rtools.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
rtools.BorderSizePixel = 0
rtools.Size = UDim2.new(0, 200, 0, 50)
rtools.Font = Enum.Font.Roboto
rtools.Text = "Rtools"
rtools.TextColor3 = Color3.fromRGB(255, 255, 255)
rtools.TextSize = 14.000

stools.Name = "stools"
stools.Parent = scripts
stools.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
stools.BorderSizePixel = 0
stools.Size = UDim2.new(0, 200, 0, 50)
stools.Font = Enum.Font.Roboto
stools.Text = "Stools"
stools.TextColor3 = Color3.fromRGB(255, 255, 255)
stools.TextSize = 14.000

slock.Name = "slock"
slock.Parent = scripts
slock.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
slock.BorderSizePixel = 0
slock.Size = UDim2.new(0, 200, 0, 50)
slock.Font = Enum.Font.Roboto
slock.Text = "Slock"
slock.TextColor3 = Color3.fromRGB(255, 255, 255)
slock.TextSize = 14.000

player.Name = "player"
player.Parent = main
player.BackgroundColor3 = Color3.fromRGB(85, 85, 85)
player.BorderSizePixel = 0
player.Position = UDim2.new(0.0246153846, 0, 0.870292902, 0)
player.Size = UDim2.new(0, 310, 0, 23)
player.ClearTextOnFocus = false
player.Font = Enum.Font.SourceSans
player.PlaceholderColor3 = Color3.fromRGB(152, 152, 152)
player.PlaceholderText = "PLAYER"
player.Text = ""
player.TextColor3 = Color3.fromRGB(255, 255, 255)
player.TextSize = 14.000

ragdoll.Name = "ragdoll"
ragdoll.Parent = scripts
ragdoll.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
ragdoll.BorderSizePixel = 0
ragdoll.Position = UDim2.new(0, 0, 0.898455501, 0)
ragdoll.Size = UDim2.new(0, 100, 0, 24)
ragdoll.Font = Enum.Font.SourceSans
ragdoll.Text = "Ragdoll"
ragdoll.TextColor3 = Color3.fromRGB(255, 255, 255)
ragdoll.TextSize = 14.000

ranims.Name = "ranims"
ranims.Parent = scripts
ranims.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
ranims.BorderSizePixel = 0
ranims.Position = UDim2.new(0, 0, 0.898455501, 0)
ranims.Size = UDim2.new(0, 100, 0, 24)
ranims.Font = Enum.Font.SourceSans
ranims.Text = "Ranim"
ranims.TextColor3 = Color3.fromRGB(255, 255, 255)
ranims.TextSize = 14.000

shutdown.Name = "shutdown"
shutdown.Parent = scripts
shutdown.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
shutdown.BorderSizePixel = 0
shutdown.Size = UDim2.new(0, 200, 0, 50)
shutdown.Font = Enum.Font.Roboto
shutdown.Text = "Shutdown"
shutdown.TextColor3 = Color3.fromRGB(255, 255, 255)
shutdown.TextSize = 14.000

punish.Name = "punish"
punish.Parent = scripts
punish.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
punish.BorderSizePixel = 0
punish.Size = UDim2.new(0, 200, 0, 50)
punish.Font = Enum.Font.Roboto
punish.Text = "Punish"
punish.TextColor3 = Color3.fromRGB(255, 255, 255)
punish.TextSize = 14.000

rchassis.Name = "rchassis"
rchassis.Parent = scripts
rchassis.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
rchassis.BorderSizePixel = 0
rchassis.Size = UDim2.new(0, 200, 0, 50)
rchassis.Font = Enum.Font.Roboto
rchassis.Text = "Rchassis"
rchassis.TextColor3 = Color3.fromRGB(255, 255, 255)
rchassis.TextSize = 14.000

local bannedPlayers = {}
local serverlock = false
local sdown = false
local cam = workspace.CurrentCamera

function GetBannedPlayer(target)
local Found = {}
for _, str in pairs(bannedPlayers) do
if str:find(target) then
table.insert(Found, str)
break
end
end
return Found
end

game:GetService("Players").PlayerAdded:Connect(function(plr)
for i,v in pairs(bannedPlayers) do
if plr.Name == v then
Notify("Banned User", plr.Name .. " Tried to join the game", 5)
work(plr)
end
end
if serverlock == true then
Notify("Join Attempt", plr.Name .. " Tried to join the game but the server is locked", 5)
work(plr)
end
if sdown == true then
work(plr)
end
end)

btools.MouseButton1Click:Connect(function()
local Tool = Instance.new("Tool",game.Players.LocalPlayer.Backpack)
local Equipped = false

Tool.RequiresHandle = false
Tool.Name = "Destroy Tool"
local Field = Instance.new("SelectionBox",game.Workspace)
local Mouse = game.Players.LocalPlayer:GetMouse()
Field.LineThickness = 0.1
Tool.TextureId = "http://www.roblox.com/asset/?id=12223874"
Tool.Equipped:Connect(function()
Equipped = true

while Equipped == true do
if Mouse.Target ~= nil then
Field.Adornee = Mouse.Target
Mouse.Icon = "rbxasset://textures/HammerCursor.png"
else
Field.Adornee = nil
Mouse.Icon = ""
end
wait()
end
end)


Tool.Unequipped:Connect(function()
Equipped = false
Field.Adornee = nil
Mouse.Icon = ""
end)

Tool.Activated:Connect(function()
if Mouse.Target ~= nil then
print(Mouse.Target)
remote:FireServer(Mouse.Target, {Value = Mouse.Target})
local ex = Instance.new'Explosion'
ex.BlastRadius = 0
ex.Position = Mouse.Target.Position
ex.Parent = workspace

local AttemptTarget = Mouse.Target
while AttemptTarget ~= nil do
AttemptTarget.Velocity = Vector3.new(0,-1000000000000000,0)
AttemptTarget.CanCollide = false
wait()
end
end
end)
end)

kill.MouseButton1Click:Connect(function()
for i,v in pairs(GetPlayer(player.Text)) do
            spawn(function()
            if game:GetService("Players")[v].Character.Humanoid.RigType == Enum.HumanoidRigType.R6 then
            work(game:GetService("Players")[v].Character.Torso.Neck)
            else
            work(game:GetService("Players")[v].Character.Head.Neck)
            end
end)
end
end)

loopkill.MouseButton1Click:Connect(function()
getgenv().Loop = true
while Loop do
for i,v in pairs(GetPlayer(player.Text)) do
            spawn(function()
            if game:GetService("Players")[v].Character.Humanoid.RigType == Enum.HumanoidRigType.R6 then
            work(game:GetService("Players")[v].Character.Torso.Neck)
            else
            work(game:GetService("Players")[v].Character.Head.Neck)
            end
end)
task.wait()
end
end
end)

unloopkill.MouseButton1Click:Connect(function()
getgenv().Loop = false
while Loop do
for i,v in pairs(GetPlayer(player.Text)) do
            spawn(function()
            if game:GetService("Players")[v].Character.Humanoid.RigType == Enum.HumanoidRigType.R6 then
            work(game:GetService("Players")[v].Character.Torso.Neck)
            else
            work(game:GetService("Players")[v].Character.Head.Neck)
            end
end)
task.wait()
end
end
end)

naked.MouseButton1Click:Connect(function()
for i,v in pairs(GetPlayer(player.Text)) do
if game:GetService("Players")[v].Character:FindFirstChildOfClass("Shirt") then
spawn(function()
work(game:GetService("Players")[v].Character:FindFirstChildOfClass("Shirt"))
end)
end
if game:GetService("Players")[v].Character:FindFirstChildOfClass("Pants") then
spawn(function()
work(game:GetService("Players")[v].Character:FindFirstChildOfClass("Pants"))
end)
end
if game:GetService("Players")[v].Character:FindFirstChild("Shirt Graphic") then
spawn(function()
work(game:GetService("Players")[v].Character:FindFirstChild("Shirt Graphic"))
end)
end
end
end)

ranims.MouseButton1Click:Connect(function()
for i,v in pairs(GetPlayer(player.Text)) do
if game:GetService("Players")[v].Character:FindFirstChild("Humanoid") then
work(game:GetService("Players")[v].Character.Humanoid:FindFirstChild("Animator"))
end
end
end)

nolimbs.MouseButton1Click:Connect(function()
for i,v in pairs(GetPlayer(player.Text)) do
spawn(function()
if game:GetService("Players")[v].Character.Humanoid.RigType == Enum.HumanoidRigType.R6 then
names = {"Left Arm", "Right Arm", "Left Leg", "Right Leg"}
for _, str in pairs(names) do
work(game:GetService("Players")[v].Character[str])
end
else
names = {"LeftUpperArm", "RightUpperArm", "LeftUpperLeg", "RightUpperLeg"}
for _, str in pairs(names) do
work(game:GetService("Players")[v].Character[str])
end
end
end)
end
end)

kick.MouseButton1Click:Connect(function()
for i,v in pairs(GetPlayer(player.Text)) do
spawn(function()
work(game:GetService("Players")[v])
end)
end
end)

nuke.MouseButton1Click:Connect(function()
for i,c in pairs(game.Workspace:GetChildren()) do
    all = c
        work(all)
end
end)

ban.MouseButton1Click:Connect(function()
for i,v in pairs(GetPlayer(player.Text)) do
spawn(function()
if not table.find(bannedPlayers, v.Name) then
plr = game:GetService("Players")[v]
table.insert(bannedPlayers, plr.Name)
Notify("Banned", plr.Name .. " Will not be able to join the server", 5)
work(plr)
end
end)
end
end)

unban.MouseButton1Click:Connect(function()
for i,v in pairs(GetBannedPlayer(player.Text)) do
spawn(function()
table.remove(bannedPlayers, table.find(bannedPlayers, v))
Notify("UnBanned", v .." Is now able to join the server", 5)
end)
end
end)

goto.MouseButton1Click:Connect(function()
for i,v in pairs(GetPlayer(player.Text)) do
LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Players")[v].Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, -5)
end
end)

sink.MouseButton1Click:Connect(function()
for i,v in pairs(GetPlayer(player.Text)) do
spawn(function()
destr = game:GetService("Players")[v].Character["HumanoidRootPart"]
work(destr)
end)
end
end)

faceless.MouseButton1Click:Connect(function()
for i,v in pairs(GetPlayer(player.Text)) do
spawn(function()
destructwashere = game:GetService("Players")[v].Character.Head.face
work(destructwashere)
end)
end
end)

hatless.MouseButton1Click:Connect(function()
for i, v in pairs(GetPlayer(player.Text)) do
for i, h in pairs(game:GetService("Players")[v].Character:GetChildren()) do
if h:IsA("Accessory") then
work(h)
end
end
end
end)

ragdoll.MouseButton1Click:Connect(function()
for i,v in pairs(GetPlayer(player.Text)) do
spawn(function()
e = game:GetService("Players")[v].Character:FindFirstChild("Humanoid")
work(e)
end)
end
end)

local toggle = false

slock.MouseButton1Click:Connect(function()
if toggle == false then
slock.Text = "UnSlock"
Notify("Server Locked", "Nobody can join the server", 5)
serverlock = true
toggle = true
elseif toggle == true then
slock.Text = "Slock"
Notify("Server Unlocked", "Anyone can join the server", 5)
serverlock = false
toggle = false
end
end)

view.MouseButton1Click:Connect(function()
for i, v in pairs(GetPlayer(player.Text)) do
if game:GetService("Players")[v].Character:FindFirstChild("Humanoid") then
cam.CameraSubject = game:GetService("Players")[v].Character.Humanoid
end
end
end)

unview.MouseButton1Click:Connect(function()
if LocalPlayer.Character:FindFirstChild("Humanoid") then
cam.CameraSubject = LocalPlayer.Character.Humanoid
end
end)

shutdown.MouseButton1Click:Connect(function()
sdown = true
Notify("Shutdown", "Shutdowning server..", 5)
for i, v in pairs(game:GetService("Players"):GetPlayers()) do
spawn(function()
if v.Name ~= LocalPlayer.Name then
work(v)
repeat wait() until not game:GetService("Players"):FindFirstChild(v)
work(LocalPlayer)
end
end)
end
end)

rtools.MouseButton1Click:Connect(function()
for i,v in pairs(GetPlayer(player.Text)) do
spawn(function()
backpack = game:GetService("Players")[v]["Backpack"] or game:GetService("Players")[v]:WaitForChild("Backpack")
for i,t in pairs(backpack:GetChildren()) do
if t:IsA("BackpackItem") and t:FindFirstChild("Handle") then
work(t)
end
end
end)
end
end)

stools.MouseButton1Click:Connect(function()
for i,v in pairs(GetPlayer(player.Text)) do
spawn(function()
work(game:GetService("Players")[v].Character:FindFirstChildOfClass("Humanoid"))
repeat wait() until game:GetService("Players")[v].Character:FindFirstChildOfClass("Humanoid").Parent == nil
for i,v in pairs(game:GetService("Players")[v].Character:GetChildren()) do
if v:IsA("BackpackItem") and v:FindFirstChild("Handle") then
LocalPlayer.Character:WaitForChild("Humanoid"):EquipTool(v)
end
end
end)
end
end)

punish.MouseButton1Click:Connect(function()
for i,v in pairs(GetPlayer(player.Text)) do
            spawn(function()
            work(game:GetService("Players")[v].Character)
end)
end
end)

rchassis.MouseButton1Click:Connect(function()
for i, v in pairs(game:GetService("Workspace"):GetDescendants()) do
if string.match(v.Name, "Chassis") then
work(v)
end
end
end)
end

-- GUI, Scripts/Commands by Luca and luq.
