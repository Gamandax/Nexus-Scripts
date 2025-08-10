repeat task.wait() until game:IsLoaded()

local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local LocalPlayer = Players.LocalPlayer
local RunService = game:GetService("RunService")
local TeleportService = game:GetService("TeleportService")
local VirtualUser = game:GetService("VirtualUser")
local Workspace = game:GetService("Workspace")
local InsertService = game:GetService("InsertService")
local StarterGui = game:GetService("StarterGui")

local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
    Name = "Saturn Hub (.gg/6UaRDjBY42)",
    LoadingTitle = "Evade (Summer Event) :)",
    LoadingSubtitle = "by Saturn Hub Team",
    ShowText = "Saturn Hub",
    Icon = 110406257395326,
    ConfigurationSaving = {
        Enabled = true,
        FolderName = "SaturnHub",
        FileName = "EvadeConfig"
    },
    Discord = {
        Enabled = true,
        Invite = "6UaRDjBY42",
        RememberJoins = true
    },
   KeySystem = false, 
   KeySettings = {
      Title = "Saturn Keysystem",
      Subtitle = "Sorry I need more member :)",
      Note = "Get from discord server : discord.gg/6UaRDjBY42", 
      FileName = "SaturnKey", 
      SaveKey = false, 
      GrabKeyFromSite = false, 
      Key = {"Saturn-0001-111"} 
   }
})

local ValueSpeed = 16
local ActiveCFrameSpeedBoost = false
local cframeSpeedConnection = nil
local ActiveAutoWin = false
local ActiveAutoFarmMoney = false
local AutoFarmSummerEvent = false
local afk = true
local selectedMapNumber = 1
local autoVoteEnabled = false
local voteConnection = nil
local headlessEnabled = false
local korbloxEnabled = false
local loadedKorbloxAccessory = nil
local loopFakeBundleConnection = nil
local loopFakeBundleEnabled = false

local ActiveEspPlayers = false
local ActiveEspBots = false
local ActiveEspSummerEvent = false
local ActiveDistanceEsp = false
local playerAddedConnection = nil
local playerRemovingConnections = {}
local botLoopConnection = nil
local summerEventLoopConnection = nil

local originalBrightness = game.Lighting.Brightness
local originalOutdoorAmbient = game.Lighting.OutdoorAmbient
local originalAmbient = game.Lighting.Ambient
local originalGlobalShadows = game.Lighting.GlobalShadows
local originalFogEnd = game.Lighting.FogEnd
local originalFogStart = game.Lighting.FogStart
local originalColorCorrectionEnabled = game.Lighting.ColorCorrection.Enabled
local originalSaturation = game.Lighting.ColorCorrection.Saturation
local originalContrast = game.Lighting.ColorCorrection.Contrast

local autoReviveEnabled = false
local lastCheckTime = 0
local checkInterval = 5

local MainTab = Window:CreateTab("Main")
local PlayerTab = Window:CreateTab("Player")
local VoteTab = Window:CreateTab("Vote")
local EspTab = Window:CreateTab("ESP")
local ReviveTab = Window:CreateTab("Revive")
-- local FakeTab = Window:CreateTab("Fake")
local MiscTab = Window:CreateTab("Misc")

local function fireVoteServer(selectedMapNumber)
    local eventsFolder = ReplicatedStorage:WaitForChild("Events", 10)
    if eventsFolder then
        local playerFolder = eventsFolder:WaitForChild("Player", 10)
        if playerFolder then
            local voteEvent = playerFolder:WaitForChild("Vote", 10)
            if voteEvent and typeof(voteEvent) == "Instance" and voteEvent:IsA("RemoteEvent") then
                local args = {[1] = selectedMapNumber}
                voteEvent:FireServer(unpack(args))
            end
        end
    end
end

local function applyFullBrightness()
    game.Lighting.Brightness = 2
    game.Lighting.OutdoorAmbient = Color3.fromRGB(255, 255, 255)
    game.Lighting.Ambient = Color3.fromRGB(255, 255, 255)
    game.Lighting.GlobalShadows = false
end

local function removeFullBrightness()
    game.Lighting.Brightness = originalBrightness
    game.Lighting.OutdoorAmbient = originalOutdoorAmbient
    game.Lighting.Ambient = originalAmbient
    game.Lighting.GlobalShadows = originalGlobalShadows
end

local function applySuperFullBrightness()
    game.Lighting.Brightness = 15
    game.Lighting.OutdoorAmbient = Color3.fromRGB(255, 255, 255)
    game.Lighting.Ambient = Color3.fromRGB(255, 255, 255)
    game.Lighting.GlobalShadows = false
end

local function applyNoFog()
    game.Lighting.FogEnd = 1000000
    game.Lighting.FogStart = 999999
end

local function removeNoFog()
    game.Lighting.FogEnd = originalFogEnd
    game.Lighting.FogStart = originalFogStart
end

local function applyVibrant()
    game.Lighting.ColorCorrection.Enabled = true
    game.Lighting.ColorCorrection.Saturation = 0.8
    game.Lighting.ColorCorrection.Contrast = 0.4
end

local function removeVibrant()
    game.Lighting.ColorCorrection.Enabled = originalColorCorrectionEnabled
    game.Lighting.ColorCorrection.Saturation = originalSaturation
    game.Lighting.ColorCorrection.Contrast = originalContrast
end

local function getLocalPlayerCharacter()
    local player = Players.LocalPlayer
    if player then
        return player.Character or player.CharacterAdded:Wait()
    end
    return nil
end

local function applyHeadless()
    local character = getLocalPlayerCharacter()
    if character then
        local head = character:FindFirstChild("Head")
        if head then
            head.Transparency = 1
            local face = head:FindFirstChildOfClass("Decal")
            if face then
                face.Transparency = 1
            end
        end
    end
end

local function removeHeadless()
    local character = getLocalPlayerCharacter()
    if character then
        local head = character:FindFirstChild("Head")
        if head then
            head.Transparency = 0
            local face = head:FindFirstChildOfClass("Decal")
            if face then
                face.Transparency = 0
            end
        end
    end
end

local function applyKorbloxRightLeg()
    local character = getLocalPlayerCharacter()
    if character and character:FindFirstChildOfClass("Humanoid") then
        local humanoid = character:FindFirstChildOfClass("Humanoid")
        if loadedKorbloxAccessory and loadedKorbloxAccessory.Parent == character then
            return
        end
        
        local success, asset = pcall(function()
            return InsertService:LoadAsset(139607718)
        end)

        if success and asset then
            local accessory = asset:FindFirstChildOfClass("Accessory")
            if accessory then
                for _, child in ipairs(character:GetChildren()) do
                    if child:IsA("Accessory") and child.Name == "Right Leg" then
                        child:Destroy()
                    end
                end
                humanoid:AddAccessory(accessory)
                loadedKorbloxAccessory = accessory
            end
        end
    end
end

local function removeKorbloxRightLeg()
    local character = getLocalPlayerCharacter()
    if character then
        if loadedKorbloxAccessory and loadedKorbloxAccessory.Parent == character then
            loadedKorbloxAccessory:Destroy()
            loadedKorbloxAccessory = nil
        end
    end
end

local function removeAllHats()
    local character = getLocalPlayerCharacter()
    if character then
        for _, child in ipairs(character:GetChildren()) do
            if child:IsA("Accessory") then
                child:Destroy()
            end
        end
    end
end

local function CreateEsp(Char, Color, Text, ParentPart, YOffset)
    if not Char or not ParentPart or not ParentPart:IsA("BasePart") then return end
    if Char:FindFirstChild("ESP_Highlight") and ParentPart:FindFirstChild("ESP") then return end

    local highlight = Instance.new("Highlight")
    highlight.Name = "ESP_Highlight"
    highlight.Adornee = Char
    highlight.FillColor = Color
    highlight.FillTransparency = 0.5
    highlight.OutlineColor = Color
    highlight.OutlineTransparency = 0
    highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
    highlight.Enabled = true
    highlight.Parent = Char

    local billboard = Instance.new("BillboardGui")
    billboard.Name = "ESP"
    billboard.Size = UDim2.new(0, 100, 0, 50)
    billboard.AlwaysOnTop = true
    billboard.StudsOffset = Vector3.new(0, YOffset, 0)
    billboard.Adornee = ParentPart
    billboard.Enabled = true
    billboard.Parent = ParentPart

    local label = Instance.new("TextLabel")
    label.Size = UDim2.new(1, 0, 1, 0)
    label.BackgroundTransparency = 1
    label.Text = tostring(Text) or ""
    label.TextColor3 = Color
    label.TextScaled = true
    label.Font = Enum.Font.SourceSansBold
    label.Parent = billboard

    spawn(function()
        local Camera = Workspace.CurrentCamera
        while highlight.Parent and billboard.Parent and ParentPart.Parent and Camera do
            local cameraPosition = Camera.CFrame.Position
            local distance = (cameraPosition - ParentPart.Position).Magnitude
            local safeText = tostring(Text) or ""
            if ActiveDistanceEsp then
                label.Text = safeText .. " " .. tostring(math.floor(distance + 0.5)) .. "m"
            else
                label.Text = safeText
            end
            task.wait(0.1)
        end
        if highlight then highlight:Destroy() end
        if billboard then billboard:Destroy() end
    end)
end

local function RemoveEsp(Char, ParentPart)
    if Char then
        local highlight = Char:FindFirstChild("ESP_Highlight")
        if highlight then highlight:Destroy() end
    end
    if ParentPart then
        local billboard = ParentPart:FindFirstChild("ESP")
        if billboard then billboard:Destroy() end
    end
end

local function handlePlayerEsp(player)
    if player ~= LocalPlayer and player.Character then
        local function createPlayerEspOnCharacter(character)
            if ActiveEspPlayers and character:FindFirstChild("Head") then
                CreateEsp(character, Color3.new(0.4, 0.8, 0.4), player.Name, character.Head, 1)
            end
        end

        createPlayerEspOnCharacter(player.Character)

        player.CharacterAdded:Connect(function(newCharacter)
            task.wait(0.1)
            createPlayerEspOnCharacter(newCharacter)
        end)

        player.CharacterRemoving:Connect(function(oldCharacter)
            if oldCharacter:FindFirstChild("Head") then
                RemoveEsp(oldCharacter, oldCharacter.Head)
            end
        end)
    end
end

MainTab:CreateToggle({
    Name = "Auto Farm Win",
    CurrentValue = false,
    Flag = "AutoWin",
    Callback = function(Value)
        ActiveAutoWin = Value
        if ActiveAutoWin then
            spawn(function()
                while ActiveAutoWin do
                    local character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
                    local rootPart = character:FindFirstChild("HumanoidRootPart")

                    if character and rootPart then
                        if character:GetAttribute("Downed") then
                            ReplicatedStorage.Events.Player.ChangePlayerMode:FireServer(true)
                            task.wait(0.5)
                        end

                        if not character:GetAttribute("Downed") then
                            local securityPart = Instance.new("Part")
                            securityPart.Name = "SecurityPartTemp"
                            securityPart.Size = Vector3.new(10, 1, 10)
                            securityPart.Position = Vector3.new(0, 500, 0)
                            securityPart.Anchored = true
                            securityPart.Transparency = 1
                            securityPart.CanCollide = true
                            securityPart.Parent = Workspace

                            rootPart.CFrame = securityPart.CFrame + Vector3.new(0, 3, 0)
                            task.wait(0.5)
                            securityPart:Destroy()
                        end
                    end
                    task.wait(0.1)
                end
            end)
        end
    end,
})

MainTab:CreateToggle({
    Name = "Auto Farm Money",
    CurrentValue = false,
    Flag = "AutoMoney",
    Callback = function(Value)
        ActiveAutoFarmMoney = Value
        if ActiveAutoFarmMoney then
            spawn(function()
                while ActiveAutoFarmMoney do
                    local character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
                    local rootPart = character and character:FindFirstChild("HumanoidRootPart")

                    if character and rootPart then
                        if character:GetAttribute("Downed") then
                            ReplicatedStorage.Events.Player.ChangePlayerMode:FireServer(true)
                            task.wait(0.5)
                        end

                        local downedPlayerFound = false
                        local playersInGame = Workspace:FindFirstChild("Game") and Workspace.Game:FindFirstChild("Players")
                        if playersInGame then
                            for _, v in pairs(playersInGame:GetChildren()) do
                                if v:IsA("Model") and v:FindFirstChildOfClass("Humanoid") and v:GetAttribute("Downed") then
                                    rootPart.CFrame = v.HumanoidRootPart.CFrame + Vector3.new(0, 3, 0)
                                    ReplicatedStorage.Events.Character.Interact:FireServer("Revive", true, v)
                                    task.wait(0.5)
                                    downedPlayerFound = true
                                    break
                                end
                            end
                        end

                        local securityPart = Instance.new("Part")
                        securityPart.Name = "SecurityPartTemp"
                        securityPart.Size = Vector3.new(10, 1, 10)
                        securityPart.Position = Vector3.new(0, 500, 0)
                        securityPart.Anchored = true
                        securityPart.Transparency = 1
                        securityPart.CanCollide = true
                        securityPart.Parent = Workspace
                        rootPart.CFrame = securityPart.CFrame + Vector3.new(0, 3, 0)
                    end
                    task.wait(1)
                end
            end)
        end
    end,
})

MainTab:CreateToggle({
    Name = "Auto Farm Summer Event",
    CurrentValue = false,
    Flag = "AutoSummer",
    Callback = function(Value)
        AutoFarmSummerEvent = Value
        if AutoFarmSummerEvent then
            spawn(function()
                while AutoFarmSummerEvent do
                    local tickets = Workspace:FindFirstChild("Game") and Workspace.Game:FindFirstChild("Effects") and Workspace.Game.Effects:FindFirstChild("Tickets")
                    if tickets then
                        local character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
                        local rootPart = character and character:FindFirstChild("HumanoidRootPart")

                        if character and rootPart then
                            if character:GetAttribute("Downed") then
                                ReplicatedStorage.Events.Player.ChangePlayerMode:FireServer(true)
                                task.wait(0.5)
                            end

                            for _, ticket in ipairs(tickets:GetChildren()) do
                                local ticketPart = ticket:FindFirstChild("HumanoidRootPart") or ticket.PrimaryPart
                                if ticketPart and rootPart then
                                    rootPart.CFrame = ticketPart.CFrame + Vector3.new(0, 2, 0)
                                    task.wait(0.2)
                                end
                            end

                            local securityPart = Instance.new("Part")
                            securityPart.Name = "SecurityPartTemp"
                            securityPart.Size = Vector3.new(10, 1, 10)
                            securityPart.Position = Vector3.new(0, 500, 0)
                            securityPart.Anchored = true
                            securityPart.Transparency = 1
                            securityPart.CanCollide = true
                            securityPart.Parent = Workspace
                            rootPart.CFrame = securityPart.CFrame + Vector3.new(0, 3, 0)
                        end
                    end
                    task.wait(1)
                end
            end)
        end
    end,
})

PlayerTab:CreateSlider({
    Name = "Speed Value",
    Range = {1, 1000},
    Increment = 1,
    Suffix = "Speed",
    CurrentValue = 16,
    Flag = "SpeedValue",
    Callback = function(Value)
        ValueSpeed = Value
        if ActiveCFrameSpeedBoost and LocalPlayer.Character and LocalPlayer.Character:FindFirstChildOfClass("Humanoid") then
            LocalPlayer.Character.Humanoid.WalkSpeed = ValueSpeed
        end
    end,
})

PlayerTab:CreateToggle({
    Name = "CFrame Speed Boost",
    CurrentValue = false,
    Flag = "CFrameSpeed",
    Callback = function(Value)
        ActiveCFrameSpeedBoost = Value
        if ActiveCFrameSpeedBoost then
            if cframeSpeedConnection then
                cframeSpeedConnection:Disconnect()
                cframeSpeedConnection = nil
            end

            cframeSpeedConnection = RunService.RenderStepped:Connect(function()
                local character = LocalPlayer.Character
                local humanoid = character and character:FindFirstChildOfClass("Humanoid")
                local hrp = character and character:FindFirstChild("HumanoidRootPart")

                if character and humanoid and hrp then
                    local moveDir = humanoid.MoveDirection
                    if moveDir.Magnitude > 0 then
                        hrp.CFrame = hrp.CFrame + moveDir * math.max(ValueSpeed, 1) * 0.080
                    end
                end
            end)
        else
            if cframeSpeedConnection then
                cframeSpeedConnection:Disconnect()
                cframeSpeedConnection = nil
            end
        end
    end,
})

VoteTab:CreateDropdown({
    Name = "Select Map",
    Options = {"Map 1", "Map 2", "Map 3", "Map 4"},
    CurrentOption = "Map 1",
    Flag = "MapSelection",
    Callback = function(Option)
        if Option == "Map 1" then
            selectedMapNumber = 1
        elseif Option == "Map 2" then
            selectedMapNumber = 2
        elseif Option == "Map 3" then
            selectedMapNumber = 3
        elseif Option == "Map 4" then
            selectedMapNumber = 4
        end
    end,
})

VoteTab:CreateButton({
    Name = "Vote Map",
    Callback = function()
        fireVoteServer(selectedMapNumber)
    end,
})

VoteTab:CreateToggle({
    Name = "Auto Vote",
    CurrentValue = false,
    Flag = "AutoVote",
    Callback = function(Value)
        autoVoteEnabled = Value
        if autoVoteEnabled then
            if not voteConnection then
                voteConnection = RunService.Heartbeat:Connect(function()
                    fireVoteServer(selectedMapNumber)
                end)
            end
        else
            if voteConnection then
                voteConnection:Disconnect()
                voteConnection = nil
            end
        end
    end,
})

EspTab:CreateToggle({
    Name = "Players ESP",
    CurrentValue = false,
    Flag = "PlayersESP",
    Callback = function(Value)
        ActiveEspPlayers = Value
        if ActiveEspPlayers then
            for _, plr in pairs(Players:GetPlayers()) do
                handlePlayerEsp(plr)
            end

            playerAddedConnection = Players.PlayerAdded:Connect(function(newPlayer)
                handlePlayerEsp(newPlayer)
            end)
        else
            if playerAddedConnection then
                playerAddedConnection:Disconnect()
                playerAddedConnection = nil
            end
            
            for _, plr in pairs(Players:GetPlayers()) do
                if plr.Character and plr.Character:FindFirstChild("Head") then
                    RemoveEsp(plr.Character, plr.Character.Head)
                end
            end
        end
    end,
})

EspTab:CreateToggle({
    Name = "NextBots ESP",
    CurrentValue = false,
    Flag = "BotsESP",
    Callback = function(Value)
        ActiveEspBots = Value
        if ActiveEspBots then
            botLoopConnection = RunService.Heartbeat:Connect(function()
                local botsFolder = Workspace:FindFirstChild("Game") and Workspace.Game:FindFirstChild("Players")
                if botsFolder then
                    for _, bot in pairs(botsFolder:GetChildren()) do
                        if bot:IsA("Model") and bot:FindFirstChild("Hitbox") then
                            bot.Hitbox.Transparency = 0.5
                            CreateEsp(bot, Color3.new(0.8, 0.2, 0.2), bot.Name, bot.Hitbox, -2)
                        end
                    end
                end
            end)
        else
            if botLoopConnection then
                botLoopConnection:Disconnect()
                botLoopConnection = nil
            end
            local botsFolder = Workspace:FindFirstChild("Game") and Workspace.Game:FindFirstChild("Players")
            if botsFolder then
                for _, bot in pairs(botsFolder:GetChildren()) do
                    if bot:IsA("Model") and bot:FindFirstChild("Hitbox") then
                        bot.Hitbox.Transparency = 1
                        RemoveEsp(bot, bot.Hitbox)
                    end
                end
            end
        end
    end,
})

EspTab:CreateToggle({
    Name = "Summer Event ESP",
    CurrentValue = false,
    Flag = "SummerESP",
    Callback = function(Value)
        ActiveEspSummerEvent = Value
        if ActiveEspSummerEvent then
            summerEventLoopConnection = RunService.Heartbeat:Connect(function()
                local ticketsFolder = Workspace:FindFirstChild("Game") and Workspace.Game:FindFirstChild("Effects") and Workspace.Game.Effects:FindFirstChild("Tickets")
                if ticketsFolder then
                    for _, ticket in pairs(ticketsFolder:GetChildren()) do
                        if ticket and ticket.PrimaryPart and ticket.Name == "Visual" then
                            CreateEsp(ticket, Color3.new(0.9, 0.9, 0.3), "Ticket", ticket.PrimaryPart, -2)
                        end
                    end
                end
            end)
        else
            if summerEventLoopConnection then
                summerEventLoopConnection:Disconnect()
                summerEventLoopConnection = nil
            end
            local ticketsFolder = Workspace:FindFirstChild("Game") and Workspace.Game:FindFirstChild("Effects") and Workspace.Game.Effects:FindFirstChild("Tickets")
            if ticketsFolder then
                for _, ticket in pairs(ticketsFolder:GetChildren()) do
                    if ticket and ticket.PrimaryPart then
                        RemoveEsp(ticket, ticket.PrimaryPart)
                    end
                end
            end
        end
    end,
})

EspTab:CreateToggle({
    Name = "Distance ESP",
    CurrentValue = false,
    Flag = "DistanceESP",
    Callback = function(Value)
        ActiveDistanceEsp = Value
    end,
})

ReviveTab:CreateButton({
    Name = "Revive Yourself",
    Callback = function()
        local player = LocalPlayer
        local character = player.Character
        if character and character:GetAttribute("Downed") then
            ReplicatedStorage.Events.Player.ChangePlayerMode:FireServer(true)
        end
    end,
})

ReviveTab:CreateToggle({
    Name = "Auto Revive Yourself",
    CurrentValue = false,
    Flag = "AutoRevive",
    Callback = function(Value)
        autoReviveEnabled = Value
    end,
})

FakeTab:CreateToggle({
    Name = "Headless",
    CurrentValue = false,
    Flag = "Headless",
    Callback = function(Value)
        headlessEnabled = Value
        if headlessEnabled then
            applyHeadless()
        else
            removeHeadless()
        end
    end,
})

FakeTab:CreateToggle({
    Name = "Korblox Right Leg",
    CurrentValue = false,
    Flag = "Korblox",
    Callback = function(Value)
        korbloxEnabled = Value
        if korbloxEnabled then
            applyKorbloxRightLeg()
        else
            removeKorbloxRightLeg()
        end
    end,
})

FakeTab:CreateToggle({
    Name = "Loop Fake Bundle",
    CurrentValue = false,
    Flag = "LoopFake",
    Callback = function(Value)
        loopFakeBundleEnabled = Value
        if loopFakeBundleEnabled then
            if not loopFakeBundleConnection then
                loopFakeBundleConnection = RunService.Heartbeat:Connect(function()
                    if korbloxEnabled then
                        applyKorbloxRightLeg()
                    end
                    if headlessEnabled then
                        applyHeadless()
                    end
                end)
            end
        else
            if loopFakeBundleConnection then
                loopFakeBundleConnection:Disconnect()
                loopFakeBundleConnection = nil
            end
        end
    end,
})

FakeTab:CreateButton({
    Name = "Remove All Hats",
    Callback = function()
        removeAllHats()
    end,
})

MiscTab:CreateToggle({
    Name = "Anti-AFK",
    CurrentValue = true,
    Flag = "AntiAFK",
    Callback = function(Value)
        afk = Value
        if Value then
            task.spawn(function()
                while afk do
                    if not LocalPlayer then return end
                    VirtualUser:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
                    VirtualUser:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
                    task.wait(60)
                end
            end)
        end
    end
})

MiscTab:CreateToggle({
    Name = "Full Brightness",
    CurrentValue = false,
    Flag = "FullBright",
    Callback = function(Value)
        if Value then
            applyFullBrightness()
        else
            removeFullBrightness()
        end
    end,
})

MiscTab:CreateToggle({
    Name = "Super Full Brightness",
    CurrentValue = false,
    Flag = "SuperFullBright",
    Callback = function(Value)
        if Value then
            applySuperFullBrightness()
        else
            removeFullBrightness()
        end
    end,
})

MiscTab:CreateToggle({
    Name = "No Fog",
    CurrentValue = false,
    Flag = "NoFog",
    Callback = function(Value)
        if Value then
            applyNoFog()
        else
            removeNoFog()
        end
    end,
})

MiscTab:CreateToggle({
    Name = "Vibrant Colors",
    CurrentValue = false,
    Flag = "Vibrant",
    Callback = function(Value)
        if Value then
            applyVibrant()
        else
            removeVibrant()
        end
    end,
})

MiscTab:CreateToggle({
    Name = "FPS Boost",
    CurrentValue = false,
    Flag = "FPSBoost",
    Callback = function(Value)
        if Value then
            for _, v in pairs(game:GetDescendants()) do
                if v:IsA("BasePart") then
                    v.Material = Enum.Material.SmoothPlastic
                    v.Reflectance = 0
                elseif v:IsA("Decal") then
                    v.Transparency = 1
                end
            end
            settings().Rendering.QualityLevel = Enum.QualityLevel.Level01
        end
    end,
})

RunService.Heartbeat:Connect(function()
    if autoReviveEnabled then
        if tick() - lastCheckTime >= checkInterval then
            lastCheckTime = tick()
            local player = LocalPlayer
            local character = player.Character
            if character and character:GetAttribute("Downed") then
                ReplicatedStorage.Events.Player.ChangePlayerMode:FireServer(true)
            end
        end
    end
end)

Players.LocalPlayer.CharacterAdded:Connect(function(character)
    if headlessEnabled then
        task.wait(0.1)
        applyHeadless()
    end
    if korbloxEnabled then
        task.wait(0.1)
        applyKorbloxRightLeg()
    end
end)
