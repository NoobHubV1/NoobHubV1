local Library = spawn(loadstring(Game:HttpGet('https://github.com/bloodball/-back-ups-for-libs/blob/main/wizard?raw=true')))

local Window = Library:NewWindow("NoobHubV1 Hub")

local Section = Window:NewSection("Main")

Section:CreateToggle("Auto Luck", function(Value)getgenv().Loop = Value
while Loop do
game:GetService("ReplicatedStorage").Events.InventoryEvent:FireServer("Equip","Super Luck Potion","Usable")
task.wait()
end
end)
