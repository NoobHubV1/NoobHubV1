-- Place Check
if game.PlaceId ~= 1318971886 then

	local OrionLib = loadstring(Game:HttpGet('https://raw.githubusercontent.com/NoobHubV1/NoobHubV1/main/OrionLib.lua'))()
        local RemoteEvents = game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents")
        local SelectedItem = "Cure"
        local Damange = 10
        local ScriptLoaded = false
        local LocalPlayer = game:GetService("Players").LocalPlayer

        -- Tables
        local ItemsTable = {
                "Chips",
                "Bloxy Cola",
                "Expired Bloxy Cola",
                "Pizza 2",
                "Key",
                "Apple",
                "Cookie",
                "Med Kit",
                "Cure",
                "Bat",
                "Linked Sword",
                "Teddy Bloxpin",
                "Plank"
        }
        local RolesTable = {
                "Bat",
                "Gun",
                "Swat Gun"
        }
        local ItemsHealAllPlayersTable = {
                "Med Kit",
                "Cure"
        }

        -- Functions
        local function UnequipAllTools()
                for i, v in pairs(LocalPlayer.Character:GetChildren()) do
			if v:IsA("Tool") then
				v.Parent = LocalPlayer.Backpack
			end
		end
        end
        local function EquipAllTools()
                for i, v in pairs(LocalPlayer.Backpack:GetChildren()) do
			if v:IsA("Tool") then
				v.Parent = LocalPlayer.Character
			end
		end
        end
        local function RemoveAllTools()
                UnequipAllTools()
                task.wait(.1)
                for i, v in pairs(LocalPlayer.Backpack:GetChildren()) do
			if v:IsA("Tool") then
				v:Destroy()
			end
		end
        end
        local function GiveItem(Item)
                RemoteEvents:WaitForChild("GiveTool"):FireServer(tostring(Item:gsub(" ", "")))
        end
        local function TakeDamange(Amount)
                RemoteEvents:WaitForChild("Energy"):FireServer(-Amount)
        end
        local function HealYourself()
                GiveItem("Apple")
                RemoteEvents.Energy:FireServer(15, "Apple")
        end
        local function HealAllPlayers()
                UnequipAllTools()
                task.wait(1)
                GiveItem(SelectedItemAllPlayers)
                task.wait(1)
                LocalPlayer.Backpack:WaitForChild(tostring(SelectedItemAllPlayers:gsub(" ", ""))).Parent = LocalPlayer.Character
                task.wait(1)
                for i,v in pairs(game:GetService("Players"):GetPlayers()) do
	
	        RemoteEvents.CurePlayer:FireServer(v)
	        RemoteEvents.HealPlayer:FireServer(v)
	    
	    end
                task.wait(1)
                LocalPlayer.Character:WaitForChild(tostring(SelectedItemAllPlayers:gsub(" ", ""))).Parent = LocalPlayer.Backpack
                task.wait(1)
                LocalPlayer.Backpack:WaitForChild(tostring(SelectedItemAllPlayers:gsub(" ", ""))):Destroy()
        end
        local function KillEnemies()
                for i, v in pairs(game.Workspace.BadGuys:GetChildren()) do
        RemoteEvents.HitBadguy:FireServer(v, 500)
    end
        end
        local function KillAllPlayers()
                for i, v in pairs(game.Players:GetPlayers()) do
        if v ~= LocalPlayer and v.Name ~= "Ashleegreninja" then
            RemoteEvents.ToxicDrown:FireServer(1, v)
        end
    end
        end
        local function GetRole(Role)
                RemoteEvents.OutsideRole:FireServer(tostring(Role:gsub(" ", "")))
        end
        local function BefriendCat()
                RemoteEvents:WaitForChild("Cattery"):FireServer()
        end
        local function IceSlip()
                RemoteEvents:WaitForChild("IceSlip"):FireServer()
        end
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
	        Options = ItemsTable,
                Callback = function(Item)
                        SelectedItem = Item
		end
	})
        Tab:AddButton({
		Name = "Get Item",
		Callback = function()
			GiveItem(SelectedItem)
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
                                HealYourself()
                        end
		end
	})
        Tab:AddToggle({
                Name = "Loop Heal Yourself",
                Callback = function(Value)
                        getgenv().HealLoop = Value
                        while HealLoop do
                                for i = 1, CustomHealYourself do
                                        HealYourself()
                                end
                                task.wait(WaitTimeLoopHealYourself)
                        end
                end
        })
        local Section = Tab:AddSection({
		Name = "Heal All Players Settings"
	})
        Tab:AddDropdown({
		Name = "Item Heal All Players",
		Default = "Med Kit",
	        Options = ItemsHealAllPlayersTable,
                Callback = function(Item)
                        SelectedItemAllPlayers = Item
		end
	})
        local Section = Tab:AddSection({
		Name = "Heal All Players"
	})
        Tab:AddButton({
                Name = "Heal All Players",
                Callback = function()
                        HealAllPlayers()
                end
        })
        Tab:AddToggle({
                Name = "Loop Heal All Players",
                Callback = function(Value)
                        getgenv().HealAllLoop = Value
                        while HealAllLoop do
                                HealAllPlayers()
                                task.wait(1)
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
	                LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(71, -15, -163)
		end
	})
        Tab:AddButton({
		Name = "House",
		Callback = function()
	                LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-36, 3, -200)
		end
	})
        Tab:AddButton({
		Name = "Attic",
		Callback = function()
			LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-16, 35, -220)
		end
	})
        Tab:AddButton({
		Name = "Store",
		Callback = function()
			LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-422, 3, -121)
		end
	})
        Tab:AddButton({
		Name = "Sewer",
		Callback = function()
			LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(129, 3, -125)
		end
	})
        Tab:AddButton({
		Name = "Boss Room",
		Callback = function()
			LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-39, -287, -1480)
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
		Name = "Role",
		Default = "Bat",
	        Options = RolesTable,
                Callback = function(Role)
                        SelectedRole = Role
		end
	})
        Tab:AddButton({
		Name = "Get Role",
		Callback = function()
			GetRole(SelectedRole)
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
                                KillEnemies()
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
                        TakeDamange(DamangeAmount)
                end
        })
        local Section = Tab:AddSection({
		Name = "Slip"
	})
        Tab:AddButton({
                Name = "Slip",
                Callback = function()
                        IceSlip()
                end
        })
        Tab:AddToggle({
                Name = "Auto Slip",
                Callback = function(Value)
                        getgenv().SlipLoop = Value
                        while SlipLoop do
                                IceSlip()
                        end
                end
        })
        local Section = Tab:AddSection({
		Name = "Kill All Players"
	})
        Tab:AddButton({
                Name = "Kill All Players",
                Callback = function()
                        KillAllPlayers()
                end
        })
        local Section = Tab:AddSection({
		Name = "Befriend Cat"
	})
        Tab:AddButton({
                Name = "Befriend Cat",
                Callback = function()
                        BefriendCat()
                end
        })
        local Section = Tab:AddSection({
		Name = "Tools"
	})
        Tab:AddButton({
                Name = "Unequip All Tools",
                Callback = function()
                        UnequipAllTools()
                end
        })
        Tab:AddButton({
                Name = "Equip All Tools",
                Callback = function()
                        EquipAllTools()
                end
        })
        Tab:AddButton({
                Name = "Remove All Tools",
                Callback = function()
                        RemoveAllTools()
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
         ScriptLoaded = true
	 OrionLib:Init()
end
