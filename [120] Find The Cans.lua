loadstring(game:HttpGet("https://raw.githubusercontent.com/HEnVELINC/G2GUI/refs/heads/main/G2B%20MDL"))()
local G2GUI = loadstring(game:HttpGet("https://raw.githubusercontent.com/HEnVELINC/G2GUI/refs/heads/main/G2L%20LOADER"))()

local window = G2GUI:CreateWindow("[100] Find the Cans!")

local running = false
local noclipConn = nil

local function enableNoclip()
    noclipConn = game:GetService("RunService").Stepped:Connect(function()
        local char = game.Players.LocalPlayer.Character
        if char then
            for _, v in pairs(char:GetDescendants()) do
                if v:IsA("BasePart") and v.CanCollide == true then
                    v.CanCollide = false
                end
            end
        end
    end)
end

local function disableNoclip()
    if noclipConn then
        noclipConn:Disconnect()
        noclipConn = nil
    end
end

local function tp(pos)
    local char = game.Players.LocalPlayer.Character
    if char and char:FindFirstChild("HumanoidRootPart") then
        char:MoveTo(pos.Position + Vector3.new(0, 3, 0))
    end
end

window:Toggle("Out Find Cans!", false, function(state)
    running = state
    if running then
        enableNoclip()
        while running do
            local cansFolder = workspace:FindFirstChild("Cans") or workspace:FindFirstChild("CanLocations") or workspace:FindFirstChild("Collectibles")
            if cansFolder then
                for _, can in pairs(cansFolder:GetDescendants()) do
                    if not running then break end
                    if can:IsA("BasePart") or can:IsA("Model") then
                        local player = game.Players.LocalPlayer
                        local alreadyFound = false

                      
                        if player:FindFirstChild("PlayerScripts") and player.PlayerScripts:FindFirstChild("FoundCans") then
                            if player.PlayerScripts.FoundCans:FindFirstChild(can.Name) then
                                alreadyFound = true
                            end
                        end

                        if not alreadyFound then
                            local target = can:IsA("Model") and can:FindFirstChildWhichIsA("BasePart") or can
                            if target then
                                tp(target)
                                wait(0.8)
                            end
                        end
                    end
                end
            end
            wait(3)
        end
        disableNoclip()
    else
        disableNoclip()
    end
end)



      
