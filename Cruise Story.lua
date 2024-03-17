game:GetService("StarterGui"):SetCore("SendNotification",{
                Title = "NoobHubV1 Hub";
                Text = "Script Loaded!";
                Duration = 3.5;
            })
local Library = loadstring(Game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wizard"))()

local PhantomForcesWindow = Library:NewWindow("NoobHubV1 Hub")

local CruiseStory = PhantomForcesWindow:NewSection("Item")

CruiseStory:CreateButton("Ice Cream", function()local A_1 = "Icecream"
local A_2 = "Cash"
local A_3 = 20
local GetItem = game.ReplicatedStorage.Remotes.buyItemEvent
GetItem:FireServer(A_1, A_2, A_3)
end)

CruiseStory:CreateButton("Sand Wich", function()local A_1 = "Sandwich"
local A_2 = "Cash"
local A_3 = 15
local GetItem = game.ReplicatedStorage.Remotes.buyItemEvent
GetItem:FireServer(A_1, A_2, A_3)
end)

CruiseStory:CreateButton("Pizza", function()local A_1 = "Pizza"
local A_2 = "Cash"
local A_3 = 25
local GetItem = game.ReplicatedStorage.Remotes.buyItemEvent
GetItem:FireServer(A_1, A_2, A_3)
end)

local CruiseStory = PhantomForcesWindow:NewSection("Inf Money")

CruiseStory:CreateTextbox("Inf Money Amount", function(Amount)InfMoneyAmount = Amount
end)

CruiseStory:CreateButton("Get Money", function()local A_1 = InfMoneyAmount
local GetMoney = game.ReplicatedStorage.Remotes.giveCashEvent
GetMoney:FireServer(A_1)
end)

local CruiseStory = PhantomForcesWindow:NewSection("God Mode")

CruiseStory:CreateButton("Heal Yourself", function()game.ReplicatedStorage.Remotes.healPlayerEvent:FireServer(math.huge)
end)

CruiseStory:CreateButton("Heal All", function()for i, v in pairs(game.Players:GetPlayers()) do
                if v.Name ~= game:GetService("Players").LocalPlayer then
                    game.ReplicatedStorage.Remotes.healPlayerEvent:FireServer(math.huge)
                end
            end
end)

CruiseStory:CreateToggle("God Mode Yourself", function(Value)_G.Heal = Value
while _G.Heal do
wait()
game.ReplicatedStorage.Remotes.healPlayerEvent:FireServer(math.huge)
wait()
end
end)

CruiseStory:CreateToggle("God Mode All", function(Value)_G.HealAll = Value
while _G.HealAll do
wait()
for i, v in pairs(game.Players:GetPlayers()) do
                if v.Name ~= game:GetService("Players").LocalPlayer then
                    game.ReplicatedStorage.Remotes.healPlayerEvent:FireServer(math.huge)
                end
            end
wait()
end
end)

local CruiseStory = PhantomForcesWindow:NewSection("Player")

CruiseStory:CreateTextbox("Walk Speed", function(Amount)game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Amount
end)

CruiseStory:CreateTextbox("Jump Power", function(Amount)game.Players.LocalPlayer.Character.Humanoid.JumpPower = Amount
end)
