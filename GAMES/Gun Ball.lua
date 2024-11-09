local lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/NoobHubV1/RobloxScripts/main/Arceus%20X%20V3%20Lib.lua"))()
local States = {}
      States.AutoParry = false
      States.InfiniteRange = false
local ScriptDisabled = false

lib:SetTitle("Gun Ball")
lib:SetTitleColor(0, 0, 255)

function ParryAttempt()
	if States.InfiniteRange and not ScriptDisabled then
		local args = {
			[1] = {
				["success"] = false,
				["reason"] = "blocked"
			}
		}
		game:GetService("ReplicatedStorage").resources.assets.balls.communication.network_remote_event:FireServer(unpack(args))
		game:GetService("ReplicatedStorage").resources.assets.balls.communication.network_remote_event:FireServer(unpack(args))
	end
	game.ReplicatedStorage.RemoteEvent:FireServer({["name"] = "defense",["origin"] = "balltargets"},{})
end

function MoveTo(Cframe)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Cframe
end

function Notify(name, content, color, time)
	lib:MakeNotification({
		Name = name,
		Content = content,
		Color = color,
		Time = time
	})
end

lib:AddToggle("Auto Parry", function(v)
	States.AutoParry = v
	Notify("Success", 'Auto Parry has been changed to '..tostring(States.AutoParry), Color3.fromRGB(0, 255, 0), 3)
end)

lib:AddToggle("Infinite Range Parry", function(v)
	States.InfiniteRange = v
	Notify("Success", 'Infinite Range has been changed to '..tostring(States.InfiniteRange), Color3.fromRGB(0, 255, 0), 3)
end)

lib:AddButton("Parry", function()
	ParryAttempt()
end)

lib:AddButton("Unload", function()
	lib:Destroy()
	ScriptDisabled = true
	Notify("Unload", 'Script is unloaded', Color3.fromRGB(55, 155, 255), 5)
end)

spawn(function()
	while task.wait() do
		if States.AutoParry and not ScriptDisabled then
			task.spawn(ParryAttempt)
			task.spawn(ParryAttempt)
			task.spawn(ParryAttempt)
		end
	end
end)

lib:SetTheme("Default")
lib:SetIcon(game:GetService("Players"):GetUserThumbnailAsync(4798820665, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size420x420))
Notify("Loads", 'Loaded Script!', Color3.fromRGB(255, 0, 0), 10)
