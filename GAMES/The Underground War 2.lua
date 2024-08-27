local Library = loadstring(Game:HttpGet('https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wizard'))()
local plr = game.Players.LocalPlayer

local function getChar()
        return plr.Character
end

local function getTeam()
        return plr.Team
end

local function getPos()
        return getChar().HumanoidRootPart.Position
end

local function TPCFrame(Arg2)
        getChar().HumanoidRootPart.CFrame = Arg2
end

local function getFlag(Color)
        local old = getPos()
        if Color == "Blue" then
        TPCFrame(CFrame.new(-5.026271343231201, 18.499998092651367, -159.77069091796875))
        task.wait()
        TPCFrame(CFrame.new(old))
        elseif Color == "Red" then
        TPCFrame(CFrame.new(-5.149240493774414, 18.499998092651367, 131.70556640625))
        task.wait()
        TPCFrame(CFrame.new(old))
        elseif Color == "Yellow" then
        TPCFrame(CFrame.new(-150.52061462402344, 18.499998092651367, -13.902813911437988))
        task.wait()
        TPCFrame(CFrame.new(old))
        elseif Color == "Green" then
        TPCFrame(CFrame.new(140.35914611816406, 18.499998092651367, -13.8086519241333))
        task.wait()
        TPCFrame(CFrame.new(old))
        end
end

local function Win()
        if getTeam() == game.Teams["Blue Team"] then
        getFlag("Red")
        task.wait()
        getFlag("Blue")
        task.wait(0.3)
        getFlag("Yellow")
        task.wait()
        getFlag("Blue")
        tas.wait(0.3)
        getFlag("Green")
        task.wait()
        getFlag("Blue")
        elseif getTeam() == game.Teams["Red Team"] then
        getFlag("Blue")
        task.wait()
        getFlag("Red")
        task.wait(0.3)
        getFlag("Yellow")
        task.wait()
        getFlag("Red")
        task.wait(0.3)
        getFlag("Green")
        task.wait()
        getFlag("Red")
        elseif getTeam() == game.Teams["Green Team"] then
        getFlag("Blue")
        task.wait()
        getFlag("Green")
        task.wait(0.3)
        getFlag("Yellow")
        task.wait()
        getFlag("Green")
        task.wait(0.3)
        getFlag("Red")
        task.wait()
        getFlag("Green")
        elseif getTeam() == game.Teams["Yellow Team"] then
        getFlag("Blue")
        task.wait()
        getFlag("Yellow")
        task.wait(0.3)
        getFlag("Green")
        task.wait()
        getFlag("Yellow")
        task.wait(0.3)
        getFlag("Red")
        task.wait()
        getFlag("Yellow")
        end
end

function U() spawn(function() while getgenv().autowin do Win()
task.wait(0.7)
end
end)
end

local Window = Library:NewWindow("NoobHubV1 Hub")

local Section = Window:NewSection("Main")

Section:CreateButton("Get BlueFlag", function()getFlag("Blue")
end)

Section:CreateButton("Get RedFlag", function()getFlag("Red")
end)

Section:CreateButton("Get GreenFlag", function()getFlag("Green")
end)

Section:CreateButton("Get YellowFlag", function()getFlag("Yellow")
end)

local Section = Window:NewSection("Others")

Section:CreateButton("Win", function()Win()
end)

Section:CreateToggle("Auto Win", function(Value)getgenv().autowin = Value U()
end)
