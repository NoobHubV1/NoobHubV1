local Library = loadstring(Game:HttpGetAsync(("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wizard")))()
local plr = game.Players.LocalPlayer

local ChangeTeam = function(Team)
        if Team == game.Teams.Inmates then
                workspace.Remote.TeamEvent:FireServer("Bright orange")
        elseif Team == game.Teams.Guards then
                workspace.Remote.TeamEvent:FireServer("Bright blue")
        elseif Team == game.Teams.Neutral then
                workspace.Remote.TeamEvent:FireServer("Medium stone grey")
        elseif Team == game.Teams.Criminals then
                LCS = game.Workspace["Criminals Spawn"].SpawnLocation
        LCS.CanCollide = false
        LCS.Size = Vector3.new(51.05, 24.12, 54.76)
        LCS.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
        LCS.Transparency = 1
        wait(0.5)
        LCS.CFrame = CFrame.new(-920.510803, 92.2271957, 2138.27002, 0, 0, -1, 0, 1, 0, 1, 0, 0)
        LCS.Size = Vector3.new(6, 0.2, 6)
        LCS.Transparency = 0
        end
end

local function Respawn()
        ChangeTeam(plr.Team)
end

local Window = Library:NewWindow("NoobHubV1 Hub")

local PrisonLife = Window:NewSection("Main")

PrisonLife:CreateDropdown("Team", {"Inmate","Guard","Neutral","Criminal"}, 1, function(Value)if Team == "Criminal" then
                                                                                                     ChangeTeam(game.Teams.Criminals)
                                                                                                     wait(1)
                                                                                                     Respawn()
                                                                                             Team = Value
                                                                                             end
end)

PrisonLife:CreateButton("Change Team", function()ChangeTeam(Team)
end)

PrisonLife:CreateButton("Respawn", function()Respawn()
end)
