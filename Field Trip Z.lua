-- Place Check
if game.PlaceId ~= 1701332290 then

	local OrionLib = loadstring(Game:HttpGet('https://raw.githubusercontent.com/NoobHubV1/NoobHubV1/main/OrionLib.lua'))()
	local ReplicatedStorage = game:GetService("ReplicatedStorage")
	local NetworkEvents = ReplicatedStorage:WaitForChild("NetworkEvents")
	local Players = game:GetService("Players")
	local LocalPlayer = Players.LocalPlayer

        -- Functions
	local function GiveItem(Item)
		NetworkEvents.RemoteFunction:InvokeServer("PICKUP_ITEM", tostring(Item:gsub(" ", "")))
	end
	local function HealYourself()
		NetworkEvents.RemoteFunction:InvokeServer("HEAL_PLAYER", LocalPlayer, math.huge)
	end
	local function HealAllPlayers()
		for i, v in pairs(game.Players:GetPlayers()) do
                if v.Name ~= LocalPlayer then
                    NetworkEvents.RemoteFunction:InvokeServer("HEAL_PLAYER", v, math.huge)
                end
		end
	end
	local function KillZombies()
		for i, v in pairs(game:GetService("Workspace").NPC:GetChildren()) do
                NetworkEvents.RemoteFunction:InvokeServer(
                    "DO_DAMAGE",
                    v.Humanoid,
                    math.huge
                )
		end
	end
        local function Notify(name, content, image, time)
		OrionLib:MakeNotification({
			Name = name,
			Content = content,
			Image = image,
			Time = time
		})
	end
	Notify("Check Id", "Check Id Game", "rbxassetid://4483345998", 5)

	        wait(5)

	Notify("Check Id Complete", "Loading Script", "rbxassetid://4483345998", 2)

	        wait(2)

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
	Tab:AddDropdown({
		Name = "Item",
		Default = "Bandage",
	        Options = {"Bandage", "MedKit", "Donut"},
                Callback = function(Value)
                        SelectedItem = Value
		end
	})
        Tab:AddButton({
		Name = "Get Item",
		Callback = function()
			GiveItem(SelectedItem)
		end
	})
        local Section = Tab:AddSection({
		Name = "Heal Yourself"
	})
        Tab:AddButton({
		Name = "Heal Yourself",
		Callback = function()
			HealYourself()
		end
	})
        Tab:AddToggle({
                Name = "Loop Heal Yourself",
                Callback = function(State)
                        getgenv().HealLoop = State
                        while HealLoop do
                                HealYourself()
                        end
                end
        })
        local Section = Tab:AddSection({
                Name = "Heal All"
        })
        Tab:AddButton({
                Name = "Heal All",
                Callback = function()
                        HealAllPlayers()
               end
         })
         Tab:AddToggle({
                Name = "Loop Heal All",
                Callback = function(State)
                        getgenv().HealAllLoop = State
                        while HealAllLoop do
                                HealAllPlayers()
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
                Callback = function(State)
                        getgenv().KillZombiesLoop = State
                        while KillZombiesLoop do
                                KillZombies()
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
        Tab:AddToggle({
                Name = "Inf Jump",
                Callback = function(State)
                        InfJump = State
game:GetService("UserInputService").JumpRequest:connect(function()
	if InfJump then
		game.Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid'):ChangeState("Jumping")
 end
end)
                end
        })
        Tab:AddButton({
                Name = "Fly",
                Callback = function()
                        loadstring(Game:HttpGet('https://raw.githubusercontent.com/NoobHubV1/NoobHubV1/main/Fly.lua'))()
                end
         })
         Tab:AddButton({
                Name = "Noclip",
                Callback = function()
                        loadstring(Game:HttpGet('https://raw.githubusercontent.com/NoobHubV1/NoobHubV1/main/Noclip.lua'))()
                end
         })
         Tab:AddButton({
                Name = "Shift Lock",
                Callback = function()
                        loadstring(Game:HttpGet('https://raw.githubusercontent.com/NoobHubV1/NoobHubV1/main/Shift%20Lock.lua'))()
                end
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
