-- == Script Is Here == --
local SimpleUI = loadstring(game:HttpGet("https://raw.githubusercontent.com/darkMaster549/Aux-Hub-Script-/refs/heads/main/Simple.lua"))()
local window = SimpleUI:CreateWindow("     Aux Hub")
window:AddLabel({
    text = "Welcome to Aux Hub"
})
window:AddToggle({
    text = "Out Farm Fast!",
    flag = "Out Farm Fast!",
    state = false,
    callback = function(state)
        if state then
            getgenv().FastEatLoop = true
            task.spawn(function()
                while getgenv().FastEatLoop do
                    -- Change 5 whatever you want Guy's make it more fast
                    for i = 1, 5 do                        game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("Eat"):FireServer()
                    end
                    task.wait(0.1)
                end
            end)
            task.spawn(function()
                while getgenv().FastEatLoop do
                    local player = game.Players.LocalPlayer
                    if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
                        player.Character.HumanoidRootPart.CFrame = CFrame.new(-13,639,1200) -- this is best pos 
                    end
                    task.wait(0.1)
                end
            end)
        else
            getgenv().FastEatLoop = false
        end
    end
})
SimpleUI:Init()

print("O")
print("P")
print("Script out farm!")
