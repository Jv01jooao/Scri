local Lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/7yhx/kwargs_Ui_Library/main/source.lua"))()

local player = game.Players.LocalPlayer
local missionFarm = true
local bossFarm = true
local bigBossFarm = true

local UI = Lib:Create{
   Theme = "Dark", -- or any other theme
   Size = UDim2.new(0, 555, 0, 400) -- default
}

local Main = UI:Tab{
   Name = "Main"
}

local Divider = Main:Divider{
   Name = "Main shit"
}

local QuitDivider = Main:Divider{
   Name = "Quit"
}

local missionFarm = Divider:Toggle{
   Name = "Farm Quest Green",
   Description = "Farm Quest Green",
   Callback = function(farmMission)
      function farmMission()
    while missionFarm do
        for _, mission in pairs(game:GetService("Workspace").Missions:GetChildren()) do
            if mission:FindFirstChild("Green") then
                mission.CFrame = player.Character.HumanoidRootPart.CFrame
                wait(1)
            end
        end
        wait(5)
    end
end
   end
}

local bossFarm = Divider:Toggle{
   Name = "Farm Boss",
   Description = "FarmBoss",
   Callback = function(farmBoss)
       function farmBoss()
    while bossFarm do
        for _, boss in pairs(game:GetService("Workspace").Bosses:GetChildren()) do
            if boss:FindFirstChild("Humanoid") then
                boss.Humanoid.Health = 0
                wait(1)
            end
        end
        wait(10)
    end
end
   end
}

local bigBossFarm = Divider:Toggle{
   Name = "Big Boss Farm",
   Description = "Big Boss Farm",
   Callback = function(farmBigBoss)
       function farmBigBoss()
    while bigBossFarm do
        for _, bigBoss in pairs(game:GetService("Workspace").BigBosses:GetChildren()) do
            if bigBoss:FindFirstChild("Humanoid") then
                bigBoss.Humanoid.Health = 0
                wait(1)
            end
        end
        wait(15)
    end
end
   end
}

local autcoltscrll = Divider:Toggle{
   Name = "autoCollectScroll",
   Description = "autoCollectScroll",
   Callback = function(autoCollectScroll)
       function autoCollectScroll()
    while true do
        for _, scroll in pairs(game:GetService("Workspace").Scrolls:GetChildren()) do
            if scroll:IsA("Part") then
                scroll.CFrame = player.Character.HumanoidRootPart.CFrame
                wait(0.5)
            end
        end
        wait(2)
    end
end
   end
}

--local KillAll = Divider:Toggle{
   --Name = "Kill all",
   --Description = "Kills all the players in the game!",
 --  Callback = function()
    --   print("All players killed.")
  -- end
}
