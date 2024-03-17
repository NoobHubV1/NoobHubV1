game:GetService("StarterGui"):SetCore("SendNotification",{
                Title = "NoobHubV1 Hub";
                Text = "Script Loaded!";
                Duration = 3.5;
            })
local Library = loadstring(Game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wizard"))()

local PhantomForcesWindow = Library:NewWindow("NoobHubV1 Hub")

local MagnetSimulator = PhantomForcesWindow:NewSection("Main")

MagnetSimulator:CreateToggle("Auto Coin", function(Value)_G.AutoCoin = Value
while _G.AutoCoin do
wait()
game:GetService("ReplicatedStorage").Events.MagnetEvents.requestGrab:FireServer("6080000000", game:GetService("ReplicatedStorage").Tools["Lucky Long Tri-Magnet"])
wait()
end
end)

MagnetSimulator:CreateToggle("Auto Clover", function(Value)_G.AutoClover = Value
while _G.AutoClover do
wait()
game:GetService("ReplicatedStorage").Events.MagnetEvents.requestGrab:FireServer("Clover1", game:GetService("ReplicatedStorage").Tools["Lucky Long Tri-Magnet"])
wait()
end
end)

MagnetSimulator:CreateToggle("Auto Rebirth", function(Value)_G.AutoRebirth = Value
while _G.AutoRebirth do
wait()
game:GetService("ReplicatedStorage").RebirthEvents.requestRebirth:InvokeServer(RebirthAmount)
wait()
end
end)

MagnetSimulator:CreateDropdown("Rebirth Amount", {"1","5","25","50","100","250","500","1000","2500","5000","10000","25000","50000","75000","100000","125000","200000"}, 2, function(Amount)RebirthAmount = Amount
end)

MagnetSimulator:CreateToggle("Auto Sell", function(Value)_G.AutoSell = Value
while _G.AutoSell do
wait()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(133.744507, 14.6463766, -52.6264954) + Vector3.new(1, 1, 0)
wait()
end
end)

MagnetSimulator:CreateToggle("Auto Sell X2 Coin", function(Value)_G.AutoSellX2Coin = Value
while _G.AutoSellX2Coin do
wait()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-419.514709, 5.21380043, -849.897949) + Vector3.new(1, 1, 0)
wait()
end
end)

MagnetSimulator:CreateButton("Disabled Notifications", function()game.Players.LocalPlayer.PlayerGui.GameHUD.FullBackpack:Destroy()
end)

local MagnetSimulator = PhantomForcesWindow:NewSection("Player")

MagnetSimulator:CreateTextbox("Walk Speed", function(Amount)game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Amount
end)

MagnetSimulator:CreateTextbox("Jump Power", function(Amount)game.Players.LocalPlayer.Character.Humanoid.JumpPower = Amount
end)
