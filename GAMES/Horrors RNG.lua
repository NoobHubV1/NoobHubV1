local Library = loadstring(Game:HttpGetAsync(("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wizard")))()

local LuckAmount = function(Amount)
        for i = 1, Amount do game:GetService("ReplicatedStorage").Events.InventoryEvent:FireServer("Equip","Super Luck Potion","Usable") end
end

local Window = Library:NewWindow("NoobHubV1 Hub")

local Section = Window:NewSection("Main")

Section:CreateTextbox("Time Loop", function(Value)TimeLoop = Value
end)

Section:CreateToggle("Auto Luck", function(State)getgenv().Loop = State
while Loop do
game:GetService("ReplicatedStorage").Events.InventoryEvent:FireServer("Equip","Super Luck Potion","Usable")
task.wait(TimeLoop)
end
end)

Section:CreateTextbox("Luck Amount", function(Value)LuckAmount = Value
end)

Section:CreateButton("Get Luck", function()LuckAmount(LuckAmount)
end)
