local Library = loadstring(Game:HttpGet('https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wizard'))()

local function Parry()
        game:GetService("ReplicatedStorage").RemoteEvent:FireServer({["name"] = "defense",["origin"] = "balltargets"},{})
end

local SpamParry = function(State)
        getgenv().SpamParry = State
        while SpamParry do
        for i = 1, 5 do
        Parry()
        end
        task.wait()
        end
end

local Window = Library:NewWindow("NoobHubV1 Hub")

local GunBall = Window:NewSection("Main")

GunBall:CreateToggle("Spam Parry No Cooldown", function(Value)SpamParry(Value)
end)
