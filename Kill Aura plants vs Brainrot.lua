local RS = game:GetService("ReplicatedStorage")
local Players = game:GetService("Players")
local UIS = game:GetService("UserInputService")
local Player = Players.LocalPlayer
local Event = RS.Remotes.AttacksServer.WeaponAttack

local Char = Player.Character or Player.CharacterAdded:Wait()
local HRP = Char:WaitForChild("HumanoidRootPart")

Player.CharacterAdded:Connect(function(c)
    Char = c
    HRP = c:WaitForChild("HumanoidRootPart")
end)

local Range = 20
local Cooldown = 0.05
local autoAttack = true

UIS.InputBegan:Connect(function(input, gpe)
    if gpe then return end
    if input.KeyCode == Enum.KeyCode.T then
        autoAttack = not autoAttack
        game.StarterGui:SetCore("SendNotification", {
            Title = "Auto Attack",
            Text = autoAttack and "On" or "Off",
            Duration = 2
        })
    end
end)

task.spawn(function()
    while task.wait(Cooldown) do
        if autoAttack and HRP then
            local targets = {}
            for _, mob in ipairs(workspace.ScriptedMap.Brainrots:GetChildren()) do
                local pp = mob.PrimaryPart or mob:FindFirstChild("HumanoidRootPart")
                if pp and (pp.Position - HRP.Position).Magnitude <= Range then
                    table.insert(targets, mob.Name)
                end
            end
            if #targets > 0 then
                Event:FireServer(targets)
            end
        end
    end
end)
