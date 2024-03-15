-- Place Check
if game.PlaceId ~= 1701332290 then

	local OrionLib = loadstring(Game:HttpGet('https://raw.githubusercontent.com/NoobHubV1/NoobHubV1/main/OrionLib.lua'))()
        local function Notify(name, content, image, time)
		OrionLib:MakeNotification({
			Name = name,
			Content = content,
			Image = image,
			Time = time
		})
	end
	local Window = OrionLib:MakeWindow({
		Name = "Legends Of Speed",
		HidePremium = false,
		SaveConfig = true,
		ConfigFolder = "OrionTest",
		IntroText = "Loading..."
	})
	local Tab = Window:MakeTab({
		Name = "Main",
		Icon = "rbxassetid://4483345998",
		PremiumOnly = false
	})
        local Section = Tab:AddSection({
		Name = "Auto Farm"
	})
        Tab:AddToggle({
		Name = "Auto Orb",
		Callback = function(Value)
			getgenv().OrbLoop = Value
                        while OrbLoop do
                                for i = 1, 10 do
                                        game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City")
                                        game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb", "Blue Orb", "City")
                                        game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb", "Orange Orb", "City")
                                end
                                task.wait()
                        end
		end
	})
        Tab:AddToggle({
		Name = "Auto Gem",
		Callback = function(Value)
			getgenv().GemLoop = Value
                        while GemLoop do
                                for i = 1, 10 do
                                        game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Gem", "City")
                                end
                                task.wait()
                        end
		end
	})
        Tab:AddToggle({
                Name = "Auto Hoop",
                Callback = function(Value)
                        getgenv().HoopLoop = Value
                        while HoopLoop do
                                for i = 1, 10 do
                                        
                                end
                                task.wait()
                        end
                end
        })
        local Tab = Window:MakeTab({
		Name = "Teleports",
		Icon = "rbxassetid://4483345998",
		PremiumOnly = false
	})
        Tab:AddButton({
                Name = "Highway Legends",
                Callback = function()
                        local plr = game.Players.LocalPlayer
            local char = plr.Character
            char.HumanoidRootPart.CFrame = CFrame.new(3682.60254, 71.5308151, 5592.50879, -0.0193620101, 3.62180188e-08, -0.999812543, 4.99353519e-08, 1, 3.52577771e-08, 0.999812543, -4.92433294e-08, -0.0193620101)
                end
        })
        Tab:AddButton({
                Name = "Snow City",
                Callback = function()
                        local plr = game.Players.LocalPlayer
            local char = plr.Character
            char.HumanoidRootPart.CFrame = CFrame.new(-866.386841, 4.00088787, 2165.70654, -0.499959469, -9.93534854e-08, -0.866048813, -4.44803661e-08, 1, -8.90424445e-08, 0.866048813, -5.99544503e-09, -0.499959469)
                end
        })
        Tab:AddButton({
                Name = "Magma City",
                Callback = function()
                        local plr = game.Players.LocalPlayer
            local char = plr.Character
            char.HumanoidRootPart.CFrame = CFrame.new(1616.82739, 4.05089617, 4330.65283, 7.86637156e-06, -4.15036254e-08, -1, -6.3789912e-08, 1, -4.15041264e-08, 1, 6.37902389e-08, 7.86637156e-06)
                end
        })
        Tab:AddButton({
                Name = "City",
                Callback = function()
                        local plr = game.Players.LocalPlayer
            local char = plr.Character
            char.HumanoidRootPart.CFrame = CFrame.new(-537.767456, 3.95088959, 386.226837, 1, 0, 0, 0, 1, 0, 0, 0, 1)
                end
        })
        local Tab = Window:MakeTab({
		Name = "Pets",
		Icon = "rbxassetid://4483345998",
		PremiumOnly = false
	})
        Tab:AddDropdown({
		Name = "Select Egg",
		Default = "Yellow Crystal",
	        Options = {"Yellow Crystal", "Blue Crystal", "Red Crystal", "Lightning Crystal", "Inferno Crystal", "Lava Crystal", "Snow Crystal", "Electro Legends Crystal", "Space Crystal", "Alien Crystal", "Electro Crystal", "Desert Crystal"},
                Callback = function(Egg)
                        SelectedEgg = Egg
		end
	})
        Tab:AddToggle({
                Name = "Auto Egg",
                Callback = function(Value)
                        getgenv().EggLoop = Value
                        while EggLoop do
                                game.ReplicatedStorage.rEvents.openCrystalRemote:InvokeServer("openCrystal", SelectedEgg)
                        end
                end
        })
        Tab:AddToggle({
                Name = "Bug Pet",
                Callback = function(Value)
                        getgenv().BugPetLoop = Value
                        while BugPetLoop do
                                for i = 1, 10 do
                                        game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City")
                                end
                                task.wait()
                        end
                end
        })
        local Tab = Window:MakeTab({
		Name = "Misc",
		Icon = "rbxassetid://4483345998",
		PremiumOnly = false
	})
        Tab:AddToggle({
                Name = "Auto Rebirth",
                Callback = function(Value)
                        getgenv().RebirthLoop = Value
                        while RebirthLoop do
                                game.ReplicatedStorage.rEvents.rebirthEvent:FireServer("rebirthRequest")
                                task.wait()
                        end
                end
        })
        local Tab = Window:MakeTab({
		Name = "Others",
		Icon = "rbxassetid://4483345998",
		PremiumOnly = false
	})
        local Section = Tab:AddSection({
		Name = "Others Section"
	})
        Tab:AddButton({
                Name = "Keyboard",
                Callback = function()
                        loadstring(game:HttpGet("https://raw.githubusercontent.com/advxzivhsjjdhxhsidifvsh/mobkeyboard/main/main.txt", true))()
                end
         })
         local Tab = Window:MakeTab({
		Name = "Destroy Script",
		Icon = "rbxassetid://4483345998",
		PremiumOnly = false
	 })
         Tab:AddButton({
                Name = "Destroy",
                Callback = function()
                        OrionLib:Destroy()
                end
         })

         Notify('Loaded!', "Script Successfully Loaded!\nJoin Our Discord At (https://discord.gg/NoobHubV1) For Support Script, You Execute Script NoobHubV1 Loader", 'rbxassetid://4483345998', 15)
	OrionLib:Init()
end
