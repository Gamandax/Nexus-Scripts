local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Players = game:GetService("Players")
local player = Players.LocalPlayer
local Camera = workspace.CurrentCamera
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

repeat task.wait() until game:IsLoaded() and player.Character

local speedEnabled, speedValue = false, 16
local jumpEnabled, jumpValue = false, 50
local noclipEnabled, infiniteJumpEnabled = false, false
local noclipConnection, infiniteJumpConnection
local aimbotEnabled, autoAimEnabled, locked = false, false, false
local espEnabled = false
local espObjects = {}
local autoWinEnabled, autoWinPlatform, autoWinConnection = false, nil, nil
local walkDirection, walkRadius, walkSpeed = 1, 20, 2

local Window = Rayfield:CreateWindow({
    Name = "Nexus Hub",
    Icon = 108632720139222,
    LoadingTitle = "Loading Hub...",
    LoadingSubtitle = "Wait Hub is Loading...",
    ConfigurationSaving = {
        Enabled = true,
        FolderName = "Nexus_Hub",
        FileName = "Shrink"
    },
    KeySystem = false,
})

local MainTab = Window:CreateTab("Main")
local PlayerTab = Window:CreateTab("Player")
local VisualsTab = Window:CreateTab("Visuals")
local AdminTab = Window:CreateTab("Admin")

local function notify(title, message, duration)
    Rayfield:Notify({
        Title = title,
        Content = message,
        Duration = duration or 3,
        Image = "megaphone",
    })
end

local function setNoclip(state)
    if not player.Character then return end
    if state then
        noclipConnection = RunService.Stepped:Connect(function()
            pcall(function()
                for _, part in pairs(player.Character:GetDescendants()) do
                    if part:IsA("BasePart") then
                        part.CanCollide = false
                    end
                end
            end)
        end)
    else
        if noclipConnection then
            noclipConnection:Disconnect()
        end
    end
end

local function setInfiniteJump(state)
    if state then
        infiniteJumpConnection = UserInputService.JumpRequest:Connect(function()
            pcall(function()
                local humanoid = player.Character:FindFirstChildOfClass("Humanoid")
                if humanoid then
                    humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
                end
            end)
        end)
    else
        if infiniteJumpConnection then
            infiniteJumpConnection:Disconnect()
        end
    end
end

local function updateCharacterStats()
    if not player.Character then return end
    local humanoid = player.Character:FindFirstChildOfClass("Humanoid")
    if humanoid then
        if speedEnabled then
            humanoid.WalkSpeed = speedValue
        else
            humanoid.WalkSpeed = 16
        end
        
        if jumpEnabled then
            if humanoid:FindFirstChild("JumpHeight") then
                humanoid.JumpHeight = jumpValue
            else
                humanoid.JumpPower = jumpValue
            end
        else
            if humanoid:FindFirstChild("JumpHeight") then
                humanoid.JumpHeight = 7.2
            else
                humanoid.JumpPower = 50
            end
        end
    end
end

local function createESP(target)
    if espObjects[target] then return end
    
    local highlight = Instance.new("Highlight")
    highlight.Name = "ESP"
    highlight.OutlineColor = Color3.new(0, 1, 0)
    highlight.FillColor = Color3.new(0, 0, 0)
    highlight.FillTransparency = 1
    highlight.Parent = target.Character
    espObjects[target] = highlight
    
    target.CharacterAdded:Connect(function(character)
        highlight.Parent = character
    end)
end

local function removeESP(target)
    if espObjects[target] then
        espObjects[target]:Destroy()
        espObjects[target] = nil
    end
end

local function updateESP()
    for _, target in pairs(Players:GetPlayers()) do
        if target ~= player then
            if espEnabled and target.Character then
                createESP(target)
            else
                removeESP(target)
            end
        end
    end
end

local function cleanupAutoWin()
    if autoWinConnection then
        autoWinConnection:Disconnect()
        autoWinConnection = nil
    end
    if autoWinPlatform then
        autoWinPlatform:Destroy()
        autoWinPlatform = nil
    end
end

local function setupAutoWin()
    cleanupAutoWin()
    
    autoWinPlatform = Instance.new("Part")
    autoWinPlatform.Name = "AutoWin"
    autoWinPlatform.Size = Vector3.new(1000, 1, 1000)
    autoWinPlatform.Anchored = true
    autoWinPlatform.CanCollide = true
    autoWinPlatform.Transparency = 0.3
    autoWinPlatform.Color = Color3.fromRGB(0, 255, 0)
    autoWinPlatform.Position = Vector3.new(0, -200, 0)
    autoWinPlatform.Parent = workspace
    
    if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
        player.Character.HumanoidRootPart.CFrame = CFrame.new(autoWinPlatform.Position + Vector3.new(0, 10, 0))
    end
end

local function startCircularWalk()
    local angle = 0
    local center = autoWinPlatform.Position + Vector3.new(0, 10, 0)
    
    if autoWinConnection then
        autoWinConnection:Disconnect()
    end
    
    autoWinConnection = RunService.Heartbeat:Connect(function()
        pcall(function()
            if not autoWinEnabled or not autoWinPlatform or not autoWinPlatform.Parent then
                return
            end
            
            if not player.Character then
                return
            end
            
            local humanoid = player.Character:FindFirstChildOfClass("Humanoid")
            local rootPart = player.Character:FindFirstChild("HumanoidRootPart")
            
            if humanoid and rootPart then
                angle = angle + (walkSpeed * walkDirection * 0.05)
                local newPos = center + Vector3.new(
                    math.cos(angle) * walkRadius,
                    0,
                    math.sin(angle) * walkRadius
                )
                
                rootPart.CFrame = CFrame.new(newPos, center)
                humanoid:Move(Vector3.new(walkDirection, 0, 0))
            end
        end)
    end)
end

local function executeEndGame()
    task.spawn(function()
        local flingedCount = 0
        for _, target in pairs(Players:GetPlayers()) do
            if target ~= player and target.Character and target.Character:FindFirstChild("HumanoidRootPart") then
                flingedCount = flingedCount + 1
            end
        end
        
        local scriptContent = game:HttpGet("https://rawscripts.net/raw/Universal-Script-Fling-All-Script-20486")
        if scriptContent then
            local compiledScript = loadstring(scriptContent)
            if compiledScript then
                compiledScript()
                notify("EndGame", "Flinged " .. flingedCount .. " players")
            end
        end
    end)
end

MainTab:CreateSection("Main Functions")

MainTab:CreateButton({
    Name = "Copy Discord Invite",
    Callback = function()
        setclipboard("https://discord.gg/6UaRDjBY42")
        notify("Discord", "Invite copied to clipboard")
    end
})

MainTab:CreateButton({
    Name = "Teleport to Lobby",
    Callback = function()
        if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
            local lobby = workspace:FindFirstChild("Lobby")
            if lobby then
                local spawn = lobby:FindFirstChild("SpawnLocation") or lobby:FindFirstChild("Spawn")
                if spawn then
                    player.Character.HumanoidRootPart.CFrame = spawn.CFrame + Vector3.new(0, 5, 0)
                    notify("Teleport", "Teleported to Lobby")
                end
            end
        end
    end
})

MainTab:CreateButton({
    Name = "Teleport to Map",
    Callback = function()
        if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
            local map = workspace:FindFirstChild("Map")
            if map then
                local spawn = map:FindFirstChild("SpawnLocation") or map:FindFirstChild("Spawn")
                if spawn then
                    player.Character.HumanoidRootPart.CFrame = spawn.CFrame + Vector3.new(0, 5, 0)
                    notify("Teleport", "Teleported to Map")
                end
            end
        end
    end
})

MainTab:CreateButton({
    Name = "Shrink",
    Callback = function()
        local remote = ReplicatedStorage:FindFirstChild("dataRemoteEvent")
        if remote then
            remote:FireServer({{{"Shrink"}}, "\005"})
            notify("Shrink", "Size reduced")
        end
    end
})

MainTab:CreateButton({
    Name = "Grow",
    Callback = function()
        local remote = ReplicatedStorage:FindFirstChild("dataRemoteEvent")
        if remote then
            remote:FireServer({{{"Grow"}}, "\005"})
            notify("Grow", "Size increased")
        end
    end
})

PlayerTab:CreateSection("Movement")

PlayerTab:CreateToggle({
    Name = "Speed Boost",
    CurrentValue = false,
    Callback = function(state)
        speedEnabled = state
        updateCharacterStats()
    end
})

PlayerTab:CreateSlider({
    Name = "Speed Value",
    Range = {16, 1000},
    Increment = 1,
    CurrentValue = 16,
    Callback = function(value)
        speedValue = value
        if speedEnabled then
            updateCharacterStats()
        end
    end
})

PlayerTab:CreateToggle({
    Name = "Jump Boost",
    CurrentValue = false,
    Callback = function(state)
        jumpEnabled = state
        updateCharacterStats()
    end
})

PlayerTab:CreateSlider({
    Name = "Jump Value",
    Range = {16, 500},
    Increment = 1,
    CurrentValue = 50,
    Callback = function(value)
        jumpValue = value
        if jumpEnabled then
            updateCharacterStats()
        end
    end
})

PlayerTab:CreateToggle({
    Name = "Infinite Jump",
    CurrentValue = false,
    Callback = function(state)
        infiniteJumpEnabled = state
        setInfiniteJump(state)
    end
})

PlayerTab:CreateToggle({
    Name = "Noclip",
    CurrentValue = false,
    Callback = function(state)
        noclipEnabled = state
        setNoclip(state)
    end
})

PlayerTab:CreateSection("Gameplay")

PlayerTab:CreateToggle({
    Name = "AutoWin Farm",
    CurrentValue = false,
    Callback = function(state)
        autoWinEnabled = state
        if state then
            setupAutoWin()
            startCircularWalk()
        else
            cleanupAutoWin()
        end
    end
})

PlayerTab:CreateButton({
    Name = "Be Seeker",
    Callback = function()
        if player.Character then
            local humanoid = player.Character:FindFirstChildOfClass("Humanoid")
            if humanoid then
                humanoid.Health = 0
                notify("Seeker", "You are now the seeker")
            end
        end
    end
})

PlayerTab:CreateButton({
    Name = "EndGame (Seeker)",
    Callback = executeEndGame
})

PlayerTab:CreateButton({
    Name = "EndGame (Hider)",
    Callback = executeEndGame
})

PlayerTab:CreateButton({
    Name = "Invisible",
    Callback = function()
        loadstring(game:HttpGet('https://pastebin.com/raw/3Rnd9rHf'))()
        notify("Invisible", "Script executed")
    end
})

VisualsTab:CreateSection("ESP")

VisualsTab:CreateToggle({
    Name = "ESP",
    CurrentValue = false,
    Callback = function(state)
        espEnabled = state
        updateESP()
    end
})

VisualsTab:CreateToggle({
    Name = "Aimbot (Q to toggle)",
    CurrentValue = false,
    Callback = function(state)
        aimbotEnabled = state
    end
})

VisualsTab:CreateToggle({
    Name = "Auto Aim",
    CurrentValue = false,
    Callback = function(state)
        autoAimEnabled = state
    end
})

local adminScripts = {
    {name = "Infinite Yield", url = "https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"},
    {name = "Nameless Admin", url = "https://raw.githubusercontent.com/FilteringEnabled/NamelessAdmin/main/Source"},
    {name = "Reviz Admin", url = "https://pastebin.com/raw/Caniwq2N"}
}

for _, script in pairs(adminScripts) do
    AdminTab:CreateButton({
        Name = "Load " .. script.name,
        Callback = function()
            loadstring(game:HttpGet(script.url))()
            notify("Admin", script.name .. " loaded")
        end
    })
end

UserInputService.InputBegan:Connect(function(input)
    if input.KeyCode == Enum.KeyCode.Q and aimbotEnabled then
        locked = not locked
    end
end)

RunService.RenderStepped:Connect(function()
    if (aimbotEnabled and locked) or autoAimEnabled then
        local target = nil
        local shortestDistance = math.huge
        
        for _, player in pairs(Players:GetPlayers()) do
            if player ~= Players.LocalPlayer and player.Character and player.Character:FindFirstChild("Head") then
                local screenPos, onScreen = Camera:WorldToViewportPoint(player.Character.Head.Position)
                if onScreen then
                    local distance = (Vector2.new(screenPos.X, screenPos.Y) - Vector2.new(Camera.ViewportSize.X/2, Camera.ViewportSize.Y/2)).Magnitude
                    if distance < shortestDistance then
                        shortestDistance = distance
                        target = player
                    end
                end
            end
        end
        
        if target and target.Character and target.Character:FindFirstChild("Head") then
            Camera.CFrame = CFrame.new(Camera.CFrame.Position, target.Character.Head.Position)
        end
    end
end)

Players.PlayerAdded:Connect(function(newPlayer)
    newPlayer.CharacterAdded:Connect(function()
        if espEnabled then
            createESP(newPlayer)
        end
    end)
end)

Players.PlayerRemoving:Connect(function(leavingPlayer)
    removeESP(leavingPlayer)
end)

player.CharacterAdded:Connect(function(character)
    task.wait(1)
    updateCharacterStats()
    if noclipEnabled then setNoclip(true) end
    if infiniteJumpEnabled then setInfiniteJump(true) end
    if autoWinEnabled and autoWinPlatform then
        character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(autoWinPlatform.Position + Vector3.new(0, 10, 0))
        if autoWinConnection then
            startCircularWalk()
        end
    end
end)

notify("Nexus Hub Said :", "Successfully loaded")
updateESP()
