local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
    Name = "Nexus Hub (.gg/6UaRDjBBY42)",
    LoadingTitle = "Forsaken",
    LoadingSubtitle = "by Nesus",
    Icon = 108632720139222,
    ConfigurationSaving = {
        Enabled = true,
        FolderName = "NexusHub",
        FileName = "Forsaken_Free"
    },
    Discord = {
        Enabled = true,
        Invite = "6UaRDjBBY42",
        RememberJoins = true
    },
   KeySystem = false, 
   KeySettings = {
      Title = "Nexus key system",
      Subtitle = "Sorry I need more member :)",
      Note = "Get from discord server : discord.gg/6UaRDjBBY42", 
      FileName = "NexusKey", 
      SaveKey = false, 
      GrabKeyFromSite = false, 
      Key = {"Saturn-0001-111"} 
   }
})

_G.AutoGeneral = false
_G.InfStamina = false
_G.SetSpeed = false
_G.SpeedWalk = 16
_G.EspGeneral = false
_G.EspPlayer = false
_G.EspHighlight = true
_G.EspName = true
_G.EspDistance = true
_G.EspHealth = true
_G.ColorGeneral = Color3.fromRGB(135, 206, 235)
_G.ColorKiller = Color3.fromRGB(255, 105, 105)
_G.ColorSurvivor = Color3.fromRGB(144, 238, 144)
_G.EspTextSize = 14
_G.ShowKillers = true
_G.ShowSurvivors = true

local function Notification(title, content, duration)
    Rayfield:Notify({
        Title = title,
        Content = content,
        Duration = duration or 3,
        Image = 108632720139222
    })
end

local MainTab = Window:CreateTab("Main")
local EspTab = Window:CreateTab("Visual")
local SettingsTab = Window:CreateTab("Settings")

local MainSection = MainTab:CreateSection("Core Functions")

local AutoGeneralToggle = MainTab:CreateToggle({
   Name = "Auto General",
   CurrentValue = false,
   Flag = "AutoGeneral",
   Callback = function(Value)
       _G.AutoGeneral = Value
       if Value then
           spawn(function()
               while _G.AutoGeneral do
                   if workspace.Map.Ingame:FindFirstChild("Map") then
                       for _, generator in pairs(workspace.Map.Ingame.Map:GetChildren()) do
                           if generator.Name == "Generator" and generator:FindFirstChild("Remotes") and generator.Remotes:FindFirstChild("RE") then
                               generator.Remotes.RE:FireServer()
                           end
                       end
                   end
                   wait(3.5)
               end
           end)
       end
   end
})

local InfStaminaToggle = MainTab:CreateToggle({
   Name = "Infinite Stamina",
   CurrentValue = false,
   Flag = "InfStamina",
   Callback = function(Value)
       _G.InfStamina = Value
       if Value then
           spawn(function()
               while _G.InfStamina do
                   local success, staminaModule = pcall(function()
                       return require(game.ReplicatedStorage:WaitForChild("Systems"):WaitForChild("Character"):WaitForChild("Game"):WaitForChild("Sprinting"))
                   end)
                   if success and staminaModule then
                       staminaModule.MaxStamina = 696969
                       staminaModule.Stamina = 696969
                       if staminaModule.__staminaChangedEvent then
                           staminaModule.__staminaChangedEvent:Fire(staminaModule.Stamina)
                       end
                   end
                   wait(0.1)
               end
           end)
       end
   end
})

local SpeedSlider = MainTab:CreateSlider({
   Name = "Walk Speed",
   Range = {16, 99},
   Increment = 1,
   Suffix = "Speed",
   CurrentValue = 16,
   Flag = "WalkSpeed",
   Callback = function(Value)
       _G.SpeedWalk = Value
   end
})

local SetSpeedToggle = MainTab:CreateToggle({
   Name = "Enable Speed",
   CurrentValue = false,
   Flag = "SetSpeed",
   Callback = function(Value)
       _G.SetSpeed = Value
       if Value then
           spawn(function()
               while _G.SetSpeed do
                   local player = game.Players.LocalPlayer
                   if player.Character and player.Character:FindFirstChild("Humanoid") then
                       player.Character.Humanoid.WalkSpeed = _G.SpeedWalk
                       player.Character.Humanoid:SetAttribute("BaseSpeed", _G.SpeedWalk)
                   end
                   wait(0.1)
               end
           end)
       end
   end
})

local function CleanupESP(parent, espType)
    for _, child in pairs(parent:GetChildren()) do
        if child.Name:find("ESP_") or child.Name:find("Esp_") then
            child:Destroy()
        end
    end
end

local function CreateHighlight(target, color)
    if target:FindFirstChild("ESP_Highlight") then
        target.ESP_Highlight.FillColor = color
        target.ESP_Highlight.OutlineColor = color
        return
    end
    
    local highlight = Instance.new("Highlight")
    highlight.Name = "ESP_Highlight"
    highlight.FillColor = color
    highlight.OutlineColor = color
    highlight.FillTransparency = 0.6
    highlight.OutlineTransparency = 0.2
    highlight.Adornee = target
    highlight.Parent = target
end

local function CreateBillboard(target, text, color)
    if target:FindFirstChild("ESP_Billboard") then
        target.ESP_Billboard.TextLabel.Text = text
        target.ESP_Billboard.TextLabel.TextColor3 = color
        return
    end
    
    local billboard = Instance.new("BillboardGui")
    billboard.Name = "ESP_Billboard"
    billboard.Adornee = target
    billboard.Size = UDim2.new(0, 100, 0, 50)
    billboard.AlwaysOnTop = true
    billboard.StudsOffset = Vector3.new(0, 3, 0)
    billboard.Parent = target
    
    local textLabel = Instance.new("TextLabel")
    textLabel.Name = "TextLabel"
    textLabel.BackgroundTransparency = 1
    textLabel.Font = Enum.Font.Code
    textLabel.Size = UDim2.new(1, 0, 1, 0)
    textLabel.TextSize = _G.EspTextSize
    textLabel.TextColor3 = color
    textLabel.TextStrokeTransparency = 0.5
    textLabel.TextStrokeColor3 = Color3.new(0, 0, 0)
    textLabel.Text = text
    textLabel.Parent = billboard
end

local EspSection = EspTab:CreateSection("ESP Options")

local GeneralEspToggle = EspTab:CreateToggle({
   Name = "Generator ESP",
   CurrentValue = false,
   Flag = "GeneralESP",
   Callback = function(Value)
       _G.EspGeneral = Value
       if not Value then
           if workspace.Map.Ingame:FindFirstChild("Map") then
               for _, generator in pairs(workspace.Map.Ingame.Map:GetChildren()) do
                   if generator.Name == "Generator" then
                       CleanupESP(generator, "general")
                   end
               end
           end
       else
           spawn(function()
               while _G.EspGeneral do
                   if workspace.Map.Ingame:FindFirstChild("Map") then
                       for _, generator in pairs(workspace.Map.Ingame.Map:GetChildren()) do
                           if generator.Name == "Generator" and generator:FindFirstChild("Progress") then
                               local progress = generator.Progress.Value
                               local color = progress == 100 and Color3.fromRGB(144, 238, 144) or _G.ColorGeneral
                               
                               if _G.EspHighlight then
                                   CreateHighlight(generator, color)
                               end
                               
                               local text = ""
                               if _G.EspName then
                                   text = text .. "Generator (" .. progress .. "%)"
                               end
                               if _G.EspDistance then
                                   local distance = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - generator.Position).Magnitude
                                   text = text .. "\nDistance: " .. math.floor(distance)
                               end
                               
                               if text ~= "" then
                                   CreateBillboard(generator, text, color)
                               end
                           end
                       end
                   end
                   wait(0.5)
               end
           end)
       end
   end
})

local PlayerEspToggle = EspTab:CreateToggle({
   Name = "Player ESP",
   CurrentValue = false,
   Flag = "PlayerESP",
   Callback = function(Value)
       _G.EspPlayer = Value
       if not Value then
           for _, playerType in pairs(game.Workspace.Players:GetChildren()) do
               if playerType.Name == "Killers" or playerType.Name == "Survivors" then
                   for _, player in pairs(playerType:GetChildren()) do
                       CleanupESP(player, "player")
                   end
               end
           end
       else
           spawn(function()
               while _G.EspPlayer do
                   for _, playerType in pairs(game.Workspace.Players:GetChildren()) do
                       if playerType.Name == "Killers" and _G.ShowKillers then
                           for _, player in pairs(playerType:GetChildren()) do
                               if player:FindFirstChild("HumanoidRootPart") and player:FindFirstChild("Humanoid") and player:FindFirstChild("Head") then
                                   if _G.EspHighlight then
                                       CreateHighlight(player, _G.ColorKiller)
                                   end
                                   
                                   local text = ""
                                   if _G.EspName then
                                       text = text .. player.Name
                                   end
                                   if _G.EspDistance then
                                       local distance = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - player.HumanoidRootPart.Position).Magnitude
                                       text = text .. "\nDistance: " .. math.floor(distance)
                                   end
                                   if _G.EspHealth then
                                       text = text .. "\nHealth: " .. math.floor(player.Humanoid.Health)
                                   end
                                   
                                   if text ~= "" then
                                       CreateBillboard(player.Head, text, _G.ColorKiller)
                                   end
                               end
                           end
                       elseif playerType.Name == "Survivors" and _G.ShowSurvivors then
                           for _, player in pairs(playerType:GetChildren()) do
                               if player:FindFirstChild("HumanoidRootPart") and player:FindFirstChild("Humanoid") and player:FindFirstChild("Head") then
                                   if _G.EspHighlight then
                                       CreateHighlight(player, _G.ColorSurvivor)
                                   end
                                   
                                   local text = ""
                                   if _G.EspName then
                                       text = text .. player.Name
                                   end
                                   if _G.EspDistance then
                                       local distance = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - player.HumanoidRootPart.Position).Magnitude
                                       text = text .. "\nDistance: " .. math.floor(distance)
                                   end
                                   if _G.EspHealth then
                                       text = text .. "\nHealth: " .. math.floor(player.Humanoid.Health)
                                   end
                                   
                                   if text ~= "" then
                                       CreateBillboard(player.Head, text, _G.ColorSurvivor)
                                   end
                               end
                           end
                       end
                   end
                   wait(0.5)
               end
           end)
       end
   end
})

local EspCustomSection = EspTab:CreateSection("ESP Customization")

local ShowKillersToggle = EspTab:CreateToggle({
   Name = "Show Killers",
   CurrentValue = true,
   Flag = "ShowKillers",
   Callback = function(Value)
       _G.ShowKillers = Value
   end
})

local ShowSurvivorsToggle = EspTab:CreateToggle({
   Name = "Show Survivors",
   CurrentValue = true,
   Flag = "ShowSurvivors",
   Callback = function(Value)
       _G.ShowSurvivors = Value
   end
})

local HighlightToggle = EspTab:CreateToggle({
   Name = "ESP Highlights",
   CurrentValue = true,
   Flag = "EspHighlight",
   Callback = function(Value)
       _G.EspHighlight = Value
   end
})

local NameToggle = EspTab:CreateToggle({
   Name = "Show Names",
   CurrentValue = true,
   Flag = "EspName",
   Callback = function(Value)
       _G.EspName = Value
   end
})

local DistanceToggle = EspTab:CreateToggle({
   Name = "Show Distance",
   CurrentValue = true,
   Flag = "EspDistance",
   Callback = function(Value)
       _G.EspDistance = Value
   end
})

local HealthToggle = EspTab:CreateToggle({
   Name = "Show Health",
   CurrentValue = true,
   Flag = "EspHealth",
   Callback = function(Value)
       _G.EspHealth = Value
   end
})

local TextSizeSlider = EspTab:CreateSlider({
   Name = "Text Size",
   Range = {8, 24},
   Increment = 1,
   Suffix = "px",
   CurrentValue = 14,
   Flag = "EspTextSize",
   Callback = function(Value)
       _G.EspTextSize = Value
   end
})

local GeneralColorPicker = EspTab:CreateColorPicker({
   Name = "Generator Color",
   Color = Color3.fromRGB(135, 206, 235),
   Flag = "GeneralColor",
   Callback = function(Value)
       _G.ColorGeneral = Value
   end
})

local KillerColorPicker = EspTab:CreateColorPicker({
   Name = "Killer Color",
   Color = Color3.fromRGB(255, 105, 105),
   Flag = "KillerColor",
   Callback = function(Value)
       _G.ColorKiller = Value
   end
})

local SurvivorColorPicker = EspTab:CreateColorPicker({
   Name = "Survivor Color",
   Color = Color3.fromRGB(144, 238, 144),
   Flag = "SurvivorColor",
   Callback = function(Value)
       _G.ColorSurvivor = Value
   end
})

local SettingsSection = SettingsTab:CreateSection("Information")

local InfoLabel = SettingsTab:CreateLabel("Saturn Hub - Forsaken")
local CreditLabel = SettingsTab:CreateLabel("Created by JScripter")
local CountryLabel = SettingsTab:CreateLabel("Country: " .. game:GetService("LocalizationService"):GetCountryRegionForPlayerAsync(game.Players.LocalPlayer))
local ExecutorLabel = SettingsTab:CreateLabel("Executor: " .. identifyexecutor())

local JobIdButton = SettingsTab:CreateButton({
   Name = "Copy Job ID",
   Callback = function()
       if setclipboard then
           setclipboard(tostring(game.JobId))
           Notification("Success", "Job ID copied to clipboard!")
       else
           Notification("Job ID", tostring(game.JobId))
       end
   end
})

Rayfield:Notify({
    Title = "Nexus hub",
    Content = "Script loaded successfully!",
    Duration = 5,
    Image = 108632720139222
})

Rayfield:LoadConfiguration()
