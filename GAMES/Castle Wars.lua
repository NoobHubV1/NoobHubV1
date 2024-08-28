if not game.workspace:FindFirstChild("PFA") then local part = Instance.new("Part") part.Name = "PFA" part.Parent = game.workspace part.CFrame = CFrame.new(122.89970397949219, 194.6350555419922, 84.76129150390625) part.Size = Vector3.new(5, 0, 5) part.Anchored = 1 part.Reflectance = 1 end

local Library = loadstring(Game:HttpGetAsync(("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wizard")))()
local plr = game.Players.LocalPlayer

local function getChar()
        return plr.Character
end

local function getPos()
        return getChar().HumanoidRootPart.CFrame
end

local function TPCFrame(Arg2)
        getChar().HumanoidRootPart.CFrame = Arg2
end

local function getFlag(Color)
        local old = getPos()
        if Color == "Blue" then
        TPCFrame(CFrame.new(125.64448547363281, 69.0615463256836, -152.87889099121094))
        task.wait()
        TPCFrame(old)
        elseif Color == "Red" then
        TPCFrame(CFrame.new(125.98065948486328, 69.06210327148438, 315.33819580078125))
        task.wait()
        TPCFrame(old)
        end
end

local function Win()
        local old = getPos()
        if plr.Team == game.Teams["Blue Castle"] then
        getFlag("Red")
        task.wait()
        getFlag("Blue")
        elseif plr.Team == game.Teams["Red Castle"] then
        getFlag("Blue")
        task.wait()
        getFlag("Red")
        end
end

function C() spawn(function() while getgenv().autowin do Win()
task.wait(0.3)
end
end)
end

local Window = Library:NewWindow("NoobHubV1 Hub")

local Section = Window:NewSection("Main")

Section:CreateButton("Get BlueFlag", function()getFlag("Blue")
end)

Section:CreateButton("Get RedFlag", function()getFlag("Red")
end)

Section:CreateButton("Goto BlueWars", function()TPCFrame(CFrame.new(124.52102661132812, 66.05382537841797, -106.81519317626953))
end)

Section:CreateButton("Goto RedWars", function()TPCFrame(CFrame.new(126.34031677246094, 66.05290985107422, 272.75421142578125))
end)

Section:CreateButton("Hider", function()TPCFrame(CFrame.new(123.0065689086914, 197.6600341796875, 84.78121185302734))
end)

local Section = Window:NewSection("Others")

Section:CreateButton("Win", function()Win()
end)

Section:CreateToggle("Auto Win", function(Value)getgenv().autowin = Value C()
end)
