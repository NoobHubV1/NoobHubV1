local Library = loadstring(Game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wizard"))()
local OrionLib = loadstring(Game:HttpGet('https://raw.githubusercontent.com/NoobHubV1/NoobHubV1/main/OrionLib.lua'))()

local function Notify(Name, Content, Image, Time)OrionLib:MakeNotification({
                                                         Name = Name,
                                                         Content = Content,
                                                         Image = Image,
                                                         Time = Time
                                                 })
end
Notify("NoobHubV1 Hub", "Loading Script.", "rbxassetid://4483345998", 3)

                                                 wait(3)

Notify("NoobHubV1 Hub", "Loading Script..", "rbxassetid://4483345998", 3)

                                                 wait(3)

Notify("NoobHubV1 Hub", "Loading Script...", "rbxassetid://4483345998", 3)

                                                 wait(3)

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

CruiseStory:CreateButton("Cola", function()local A_1 = "Bloxycola"
local A_2 = "Cash"
local A_3 = 10
local GetItem = game.ReplicatedStorage.Remotes.buyItemEvent
GetItem:FireServer(A_1, A_2, A_3)
end)

CruiseStory:CreateButton("Pizza", function()local A_1 = "Pizza"
local A_2 = "Cash"
local A_3 = 25
local GetItem = game.ReplicatedStorage.Remotes.buyItemEvent
GetItem:FireServer(A_1, A_2, A_3)
end)

local CruiseStory = PhantomForcesWindow:NewSection("Money")

CruiseStory:CreateTextbox("Get Money Amount", function(Amount)GetMoneyAmount = Amount
end)

CruiseStory:CreateButton("Get Money", function()local A_1 = GetMoneyAmount
local GetMoney = game.ReplicatedStorage.Remotes.giveCashEvent
GetMoney:FireServer(A_1)
end)

local CruiseStory = PhantomForcesWindow:NewSection("God Mode")

CruiseStory:CreateButton("Heal Yourself", function()game.ReplicatedStorage.Remotes.healPlayerEvent:FireServer(math.huge)
end)

CruiseStory:CreateToggle("God Mode Yourself", function(Value)_G.Heal = Value
while _G.Heal do
wait()
game.ReplicatedStorage.Remotes.healPlayerEvent:FireServer(math.huge)
wait()
end
end)

local CruiseStory = PhantomForcesWindow:NewSection("Player")

CruiseStory:CreateTextbox("Walk Speed", function(Amount)game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Amount
end)

CruiseStory:CreateTextbox("Jump Power", function(Amount)game.Players.LocalPlayer.Character.Humanoid.JumpPower = Amount
end)

Notify("NoobHubV1 Hub", "Loaded Script!", "rbxassetid://4483345998", 5)
