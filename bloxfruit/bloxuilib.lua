local teleportPart = script.Parent
local destination = workspace.TeleportDestination  -- Nome da parte de destino

teleportPart.Touched:Connect(function(hit)
    if hit.Parent:FindFirstChild("Humanoid") then
        local player = hit.Parent
        player:SetPrimaryPartCFrame(destination.CFrame)
    end
end)
 


_G.increasespeed = true

local speedBoost = 50  -- Aumento de velocidade
local normalSpeed = 16  -- Velocidade normal
local part = script.Parent

part.Touched:Connect(function(hit)
    if hit.Parent:FindFirstChild("Humanoid") then
        local humanoid = hit.Parent:FindFirstChild("Humanoid")
        humanoid.WalkSpeed = speedBoost  -- Aumenta a velocidade
        wait(5)  -- Duração do boost
        humanoid.WalkSpeed = normalSpeed  -- Retorna à velocidade normal
    end
end)

