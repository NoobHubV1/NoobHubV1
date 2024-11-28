getgenv().god = true
while getgenv().god and task.wait() do
    for _,ball in next, workspace.Balls:GetChildren() do
        if ball then
            if game:GetService("Players").LocalPlayer.Character and game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(ball.Position, game.Players.LocalPlayer.Character.HumanoidRootPart.Position)
                workspace.CurrentCamera.CFrame = CFrame.new(workspace.CurrentCamera.CFrame.p, ball.Position)
                if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Highlight") then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(ball.Position)
                    game:GetService("VirtualInputManager"):SendKeyEvent(true,"F",false,game)
                end
            end
        end
    end
end
wait(.5)
local function get_plr()
  return game.Players.LocalPlayer
end

local function get_plrChar()
  local plrChar = get_plr().Character
  if plrChar then
    return plrChar
  end
end

local function get_plrRP()
  local plrRP = get_plrChar():FindFirstChild("HumanoidRootPart")
  if plrRP then
    return plrRP
  end
end

local function playerJump()
  pcall(function()
    game.Players.LocalPlayer.Character.Humanoid.Jump = true
  end)
end

local function get_PlayersNumber()
  local Alive = workspace:WaitForChild("Alive", 20):GetChildren()
  local PlayersNumber = 0
  for _,v in pairs(Alive) do
    if v and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 50 then
      PlayersNumber = PlayersNumber + 1
    end
  end
  return PlayersNumber
end

local function get_ProxyPlayer()
  local Players = workspace:WaitForChild("Alive"):GetChildren()
  local Distance = math.huge
  local plr = game.Players.LocalPlayer
  local plrRP = plr.Character:FindFirstChild("HumanoidRootPart")
  local Player = nil
  
  for _,plr1 in pairs(Players) do
    if plr1.Name ~= plr.Name and plrRP and plr1:FindFirstChild("HumanoidRootPart") and plr1:FindFirstChild("Humanoid") and plr1.Humanoid.Health > 50 then
      local magnitude = (plr1.HumanoidRootPart.Position - plrRP.Position).Magnitude
      if magnitude <= Distance then
        Distance = magnitude
        Player = plr1
      end
    end
  end
  return Player
end

local function Click_Button()
  task.spawn(function()
    local plr = game.Players.LocalPlayer
    local plrFind = workspace.Alive:FindFirstChild(plr.Name)
    if plrFind then
      local plrs = 0
      for _,v in pairs(workspace:WaitForChild("Alive", 10):GetChildren()) do
        plrs = plrs + 1
      end
      if plrs > 1 then
        game:GetService("VirtualInputManager"):SendKeyEvent(true,"F",false,game) task.wait()
      end
    end
  end)
end

task.spawn(function()
  while task.wait() do
    if getgenv().SpamClickA then
      Click_Button()
    end
  end
end)

local function DetectSpam()
  local Balls = workspace:WaitForChild("Balls", 30)
  
  local OldPos = Vector3.new()
  local OldTick1 = tick()
  
  local OldBall = Balls
  local TargetPlayer = ""
  local SpamNum = 0
  local BallSpeed = 0
  local BallDistance = 0
  
  task.spawn(function()
    local OldTick = tick()
    local OldPos = Vector3.new()
    while getgenv().DetectSpam do task.wait()
      local plrRP = get_plrRP()
      local Ball = Balls:FindFirstChildOfClass("Part")
      if plrRP and Ball then
        BallDistance = (plrRP.Position - Ball.Position).Magnitude
        BallSpeed = (OldPos - Ball.Position).Magnitude
        if tick() - OldTick >= 1/60 then
          OldTick = tick()
          OldPos = Ball.Position
        end
      end
    end
  end)
  
  while getgenv().DetectSpam do task.wait()
    local Ball = Balls:FindFirstChildOfClass("Part")
    local plrRP = get_plrRP()
    local ProxyPlayer = get_ProxyPlayer()
    
    if not Ball then
      getgenv().SpamClickA = false
    end
  
    if Ball and Ball:GetAttribute("realBall") and OldBall ~= Ball then
    
      Ball.Changed:Connect(function()task.wait()
        local Ball = Balls:FindFirstChildOfClass("Part")
        
        if Ball then
          TargetPlayer = Ball:GetAttribute("target")
          
          if ProxyPlayer and TargetPlayer == ProxyPlayer.Name or get_plr() and TargetPlayer == get_plr().Name then
            SpamNum = SpamNum + 1
          else
            SpamNum = 0
          end
          
          local args = ProxyPlayer and ProxyPlayer:FindFirstChild("HumanoidRootPart")
          local HL1 = ProxyPlayer and ProxyPlayer:FindFirstChild("Highlight")
          local HL2 = get_plrChar() and get_plrChar():FindFirstChild("Highlight")
          
          if plrRP and HL1 and args or plrRP and HL2 and args then
            local DistancePlayer = (ProxyPlayer.HumanoidRootPart.Position - plrRP.Position).Magnitude
            local DistanceBall = (Ball.Position - plrRP.Position).Magnitude
            
            if get_PlayersNumber() < 3 then
              if DistancePlayer <= 30 and DistanceBall <= 35 and SpamNum >= 2 then
                getgenv().SpamClickA = true
              else
                getgenv().SpamClickA = false
              end
            else
              if DistancePlayer <= 30 and DistanceBall <= 35 and SpamNum >= 3 then
                getgenv().SpamClickA = true
              else
                getgenv().SpamClickA = false
              end
            end
          else
            getgenv().SpamClickA = false
          end
        end
      end)
      OldBall = Ball
    end
  end
end

getgenv().DetectSpam = true
DetectSpam()
