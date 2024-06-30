local Library = spawn(loadstring(Game:HttpGet('https://github.com/bloodball/-back-ups-for-libs/blob/main/wizard?raw=true')))

local Loop = function(State, Calling, Time)
        getgenv().Loop = State
        while Loop do
        Calling
        task.wait(Time)
        end
end

local Window = Library:NewWindow("NoobHubV1 Hub")

local Section = Window:NewSection("Main")

Section:CreateToggle("Auto Luck", function(Value)Loop(Value, game:GetService("ReplicatedStorage").Events.InventoryEvent:FireServer("Equip","Super Luck Potion","Usable"), 0.0000000000000000001)
end)
