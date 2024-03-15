-- Place Check
if game.PlaceId ~= 1318971886 then

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
		Name = "Break In",
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
		Default = "Chips",
	        Options = {"Chips", "BloxyCola", "ExpiredBloxyCola", "Pizza2", "Key", "Apple", "Cookie", "Plank", "LinkedSword", "Bat", "TeddyBloxpin", "Cure", "MedKit"},
                Callback = function(Item)
                        SelectedItem = Item
		end
	})
        Tab:AddButton({
		Name = "Get Item",
		Callback = function()
			game.ReplicatedStorage.RemoteEvents.GiveTool:FireServer(SelectedItem)
		end
	})
        local Section = Tab:AddSection({
		Name = "Custom Heal Yourself"
	})
        Tab:AddTextbox({
		Name = "Custom Heal",
		Default = "Amount",
		TextDisappear = false,
		Callback = function(Amount)
			CustomHealYourself = Amount
		end	  
	})
        local Section = Tab:AddSection({
		Name = "Heal Yourself"
	})
        Tab:AddButton({
		Name = "Heal Yourself",
		Callback = function()
			for i = 1, CustomHealYourself do
                                game.ReplicatedStorage.RemoteEvents.GiveTool:FireServer("Apple")
                                game.ReplicatedStorage.RemoteEvents.Energy:FireServer(15, "Apple")
                        end
		end
	})
        Tab:AddToggle({
                Name = "Loop Heal Yourself",
                Callback = function(Value)
                        getgenv().HealLoop = Value
                        while HealLoop do
                                for i = 1, CustomHealYourself do
                                        game.ReplicatedStorage.RemoteEvents.GiveTool:FireServer("Apple")
                                game.ReplicatedStorage.RemoteEvents.Energy:FireServer(15, "Apple")
                                end
                                task.wait(WaitTimeLoopHealYourself)
                        end
                end
        })
        local Section = Tab:AddSection({
		Name = "Wait Time Loop Heal Yourself"
	})
        Tab:AddTextbox({
		Name = "Wait Time",
		Default = "Amount",
		TextDisappear = false,
		Callback = function(Amount)
			WaitTimeLoopHealYourself = Amount
		end	  
	})
        local Tab = Window:MakeTab({
		Name = "Teleport",
		Icon = "rbxassetid://4483345998",
		PremiumOnly = false
	})
        local Section = Tab:AddSection({
		Name = "Teleport"
	})
        Tab:AddButton({
		Name = "Basement",
		Callback = function()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(71, -15, -163)
		end
	})
        Tab:AddButton({
		Name = "House",
		Callback = function()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-36, 3, -200)
		end
	})
        Tab:AddButton({
		Name = "Attic",
		Callback = function()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-16, 35, -220)
		end
	})
        Tab:AddButton({
		Name = "Store",
		Callback = function()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-422, 3, -121)
		end
	})
        Tab:AddButton({
		Name = "Sewer",
		Callback = function()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(129, 3, -125)
		end
	})
        Tab:AddButton({
		Name = "Boss Room",
		Callback = function()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-39, -287, -1480)
		end
	})
        local Tab = Window:MakeTab({
		Name = "Humanoid",
		Icon = "rbxassetid://4483345998",
		PremiumOnly = false
	})
        local Section = Tab:AddSection({
		Name = "Settings"
	})
        Tab:AddTextbox({
		Name = "Walk Speed",
		Default = "Amount",
		TextDisappear = false,
		Callback = function(Amount)
			WalkSpeed = Amount
		end	  
	})
        Tab:AddTextbox({
		Name = "Jump Power",
		Default = "Amount",
		TextDisappear = false,
		Callback = function(Amount)
			JumpPower = Amount
		end	  
	})
        local Section = Tab:AddSection({
		Name = "Humanoid"
	})
        Tab:AddButton({
		Name = "Set Walk Speed",
		Callback = function()
			game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = WalkSpeed
		end
	})
        Tab:AddButton({
		Name = "Set Jump Power",
		Callback = function()
			game.Players.LocalPlayer.Character.Humanoid.JumpPower = JumpPower
		end
	})
        Tab:AddToggle({
                Name = "Inf Jump",
                Callback = function(Value)
                        InfJump = Value
game:GetService("UserInputService").JumpRequest:connect(function()
	if InfJump then
		game.Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid'):ChangeState("Jumping")
 end
end)
                end
        })
        local Tab = Window:MakeTab({
		Name = "Role",
		Icon = "rbxassetid://4483345998",
		PremiumOnly = false
	})
        local Section = Tab:AddSection({
		Name = "Role"
	})
        Tab:AddDropdown({
		Name = "Item",
		Default = "Bat",
	        Options = {"Bat", "Gun", "SwatGun"},
                Callback = function(Role)
                        SelectedRole = Role
		end
	})
        Tab:AddButton({
		Name = "Get Role",
		Callback = function()
			game.ReplicatedStorage.RemoteEvents.OutsideRole:FireServer(SelectedRole)
		end
	})
        local Tab = Window:MakeTab({
		Name = "Combat",
		Icon = "rbxassetid://4483345998",
		PremiumOnly = false
	})
        local Section = Tab:AddSection({
		Name = "Kill BadGuys"
	})
        Tab:AddToggle({
                Name = "Kill Aura",
                Callback = function(Value)
                        getgenv().KillBadGuysLoop = Value
                        while KillBadGuysLoop do
                                for i, v in pairs(game.Workspace.BadGuys:GetChildren()) do
        game:GetService("ReplicatedStorage").RemoteEvents.HitBadguy:FireServer(v, 8)
    end
                                task.wait(WaitTimeKillAura)
                        end
                end
        })
        local Section = Tab:AddSection({
		Name = "Wait time Kill Aura"
	})
        Tab:AddTextbox({
		Name = "Wait Time",
		Default = "Amount",
		TextDisappear = false,
		Callback = function(Amount)
			WaitTimeKillAura = Amount
		end	  
	})
        local Tab = Window:MakeTab({
		Name = "Misc",
		Icon = "rbxassetid://4483345998",
		PremiumOnly = false
	})
        local Section = Tab:AddSection({
		Name = "Damange Amount"
	})
        Tab:AddTextbox({
		Name = "Damange Amount",
		Default = "Amount",
		TextDisappear = false,
		Callback = function(Amount)
			DamangeAmount = Amount
		end	  
	})
        Tab:AddButton({
                Name = "Damange Yourself",
                Callback = function()
                        game.ReplicatedStorage.RemoteEvents.Energy:FireServer(-DamangeAmount)
                end
        })
        local Section = Tab:AddSection({
		Name = "Slip"
	})
        Tab:AddButton({
                Name = "Slip",
                Callback = function()
                        game.ReplicatedStorage.RemoteEvents.IceSlip:FireServer()
                end
        })
        Tab:AddToggle({
                Name = "Auto Slip",
                Callback = function(Value)
                        getgenv().SlipLoop = Value
                        while SlipLoop do
                                game.ReplicatedStorage.RemoteEvents.IceSlip:FireServer()
                        end
                end
        })
        local Section = Tab:AddSection({
		Name = "Kill All Players"
	})
        Tab:AddButton({
                Name = "Kill All Players",
                Callback = function()
                        for i, v in pairs(game.Players:GetPlayers()) do
        if v ~= game.Players.LocalPlayer and v.Name ~= "Ashleegreninja" then
            game:GetService("ReplicatedStorage").RemoteEvents.ToxicDrown:FireServer(1, v)
        end
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
                Name = "Rec Hub",
                Callback = function()
                        loadstring(game:HttpGet("https://raw.githubusercontent.com/megamoeus/HHubmega/master/BreakIn", true))()
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
