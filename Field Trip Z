-- Place Check
if game.PlaceId ~= 13864667823 then

	local OrionLib = loadstring(Game:HttpGet('https://raw.githubusercontent.com/NoobHubV1/NoobHubV1/main/OrionLib'))()
        local function Notify(name, content, image, time)
		OrionLib:MakeNotification({
			Name = name,
			Content = content,
			Image = image,
			Time = time
		})
	end
	local Window = OrionLib:MakeWindow({
		Name = "Field Trip Z",
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
		Name = "Get Item"
	})
	Tab:AddButton({
		Name = "Get Bandage",
		Callback = function()
			game.ReplicatedStorage.NetworkEvents.RemoteFunction:InvokeServer("PICKUP_ITEM", "Bandage")
		end
	})
	Tab:AddButton({
		Name = "Get Med Kit",
		Callback = function()
			game.ReplicatedStorage.NetworkEvents.RemoteFunction:InvokeServer("PICKUP_ITEM", "MedKit")
		end
	})
        Tab:AddButton({
		Name = "Get Donut",
		Callback = function()
			game.ReplicatedStorage.NetworkEvents.RemoteFunction:InvokeServer("PICKUP_ITEM", "Donut")
		end
	})
        local Section = Tab:AddSection({
		Name = "Heal Yourself"
	})
        Tab:AddButton({
		Name = "Heal Yourself",
		Callback = function()
			game.ReplicatedStorage.NetworkEvents.RemoteFunction:InvokeServer("HEAL_PLAYER", game.Players.LocalPlayer, math.huge)
		end
	})
        Tab:AddToggle({
                Name = "Loop Heal Yourself",
                Callback = function(Value)
                        getgenv().HealLoop = Value
                        while HealLoop do
                                game.ReplicatedStorage.NetworkEvents.RemoteFunction:InvokeServer("HEAL_PLAYER", game.Players.LocalPlayer, math.huge)
                        end
                end
        })
        local Section = Tab:AddSection({
                Name = "Heal All"
        })
        Tab:AddButton({
                Name = "Heal All",
                Callback = function()
                        for i, v in pairs(game.Players:GetPlayers()) do
                if v.Name ~= game:GetService("Players").LocalPlayer then
                    game:GetService("ReplicatedStorage").NetworkEvents.RemoteFunction:InvokeServer(
                        "HEAL_PLAYER",
                        v,
                        9e9
                    )
                end
            end
               end
         })
         Tab:AddToggle({
                Name = "Loop Heal All",
                Callback = function(Value)
                        getgenv().HealAllLoop = Value
                        while HealAllLoop do
                                for i, v in pairs(game.Players:GetPlayers()) do
                if v.Name ~= game:GetService("Players").LocalPlayer then
                    game:GetService("ReplicatedStorage").NetworkEvents.RemoteFunction:InvokeServer(
                        "HEAL_PLAYER",
                        v,
                        9e9
                    )
                end
            end
                        end
                end
        })
        local Tab = Window:MakeTab({
		Name = "Combat",
		Icon = "rbxassetid://4483345998",
		PremiumOnly = false
	})
        local Section = Tab:AddSection({
		Name = "Kill Zombies"
	})
        Tab:AddToggle({
                Name = "Kill Aura",
                Callback = function(Value)
                        getgenv().KillZombiesLoop = Value
                        while KillZombiesLoop do
                                for i, v in pairs(game:GetService("Workspace").NPC:GetChildren()) do
                game:GetService("ReplicatedStorage").NetworkEvents.RemoteFunction:InvokeServer(
                    "DO_DAMAGE",
                    v.Humanoid,
                    math.huge
                )
            end
                        end
                end
        })

        Notify('Loaded!', "Script Successfully Loaded!\nJoin Our Discord At (https://discord.gg/NoobHubV1) For Support, Questions And Updates!\nThe Script Is Open Source So Feel Free To Look At The Code!", 'rbxassetid://4483345998', 15)
	OrionLib:Init()
end
