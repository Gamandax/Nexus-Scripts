-- Here Script 🎀
local player = game.Players.LocalPlayer
local uis = game:GetService("UserInputService")
local rs = game:GetService("RunService")

local screenGui = Instance.new("ScreenGui")
screenGui.ResetOnSpawn = false  
screenGui.Parent = player:WaitForChild("PlayerGui")

local mainFrame = Instance.new("Frame")
mainFrame.Size = UDim2.new(0, 200, 0, 180)
mainFrame.Position = UDim2.new(0.4, 0, 0.3, 0)
mainFrame.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
mainFrame.BorderSizePixel = 0
mainFrame.Active = true
mainFrame.Draggable = true
mainFrame.Parent = screenGui

local mainCorner = Instance.new("UICorner")
mainCorner.CornerRadius = UDim.new(0, 8)
mainCorner.Parent = mainFrame

local titleLabel = Instance.new("TextLabel")
titleLabel.Size = UDim2.new(1, 0, 0, 30)
titleLabel.Position = UDim2.new(0, 0, 0, 0)
titleLabel.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
titleLabel.BorderSizePixel = 0
titleLabel.Text = "Aux hub"
titleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
titleLabel.Font = Enum.Font.GothamBold
titleLabel.TextSize = 14
titleLabel.Parent = mainFrame

local titleCorner = Instance.new("UICorner")
titleCorner.CornerRadius = UDim.new(0, 8)
titleCorner.Parent = titleLabel

local contentFrame = Instance.new("Frame")
contentFrame.Size = UDim2.new(1, 0, 1, -30)
contentFrame.Position = UDim2.new(0, 0, 0, 30)
contentFrame.BackgroundTransparency = 15
contentFrame.Parent = mainFrame

local layout = Instance.new("UIListLayout", contentFrame)
layout.Padding = UDim.new(0, 5)

local padding = Instance.new("UIPadding")
padding.PaddingTop = UDim.new(0, 5)
padding.PaddingBottom = UDim.new(0, 5)
padding.PaddingLeft = UDim.new(0, 5)
padding.PaddingRight = UDim.new(0, 5)
padding.Parent = contentFrame

local function makeButton(text, callback, color)
    color = color or Color3.fromRGB(70, 70, 70)
    
    local btn = Instance.new("TextButton")
    btn.Size = UDim2.new(1, 0, 0, 30)
    btn.Text = text
    btn.BackgroundColor3 = color
    btn.TextColor3 = Color3.fromRGB(255, 255, 255)
    btn.BorderSizePixel = 0
    btn.Font = Enum.Font.Gotham
    btn.TextSize = 12
    btn.Parent = contentFrame
    
    local corner = Instance.new("UICorner")
    corner.CornerRadius = UDim.new(0, 6)
    corner.Parent = btn
   
    local originalColor = color
    local hoverColor = Color3.new(color.R * 1.15, color.G * 1.15, color.B * 1.15)
    
    btn.MouseEnter:Connect(function()
        btn.BackgroundColor3 = hoverColor
    end)
    
    btn.MouseLeave:Connect(function()
        btn.BackgroundColor3 = originalColor
    end)
    
    btn.MouseButton1Click:Connect(callback)
end

local function makeToggle(text, callback, color)
    color = color or Color3.fromRGB(70, 70, 70)
    
    local btn = Instance.new("TextButton")
    btn.Size = UDim2.new(1, 0, 0, 30)
    btn.Text = text
    btn.BackgroundColor3 = color
    btn.TextColor3 = Color3.fromRGB(255, 255, 255)
    btn.BorderSizePixel = 0
    btn.Font = Enum.Font.Gotham
    btn.TextSize = 12
    btn.Parent = contentFrame
    
    local corner = Instance.new("UICorner")
    corner.CornerRadius = UDim.new(0, 6)
    corner.Parent = btn
   
    local toggleIndicator = Instance.new("Frame")
    toggleIndicator.Size = UDim2.new(0, 40, 0, 16)
    toggleIndicator.Position = UDim2.new(1, -45, 0.5, -8)
    toggleIndicator.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
    toggleIndicator.BorderSizePixel = 0
    toggleIndicator.Parent = btn
    
    local indicatorCorner = Instance.new("UICorner")
    indicatorCorner.CornerRadius = UDim.new(0, 8)
    indicatorCorner.Parent = toggleIndicator
    
    local toggleCircle = Instance.new("Frame")
    toggleCircle.Size = UDim2.new(0, 12, 0, 12)
    toggleCircle.Position = UDim2.new(0, 2, 0, 2)
    toggleCircle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    toggleCircle.BorderSizePixel = 0
    toggleCircle.Parent = toggleIndicator
    
    local circleCorner = Instance.new("UICorner")
    circleCorner.CornerRadius = UDim.new(0, 6)
    circleCorner.Parent = toggleCircle
    
    local toggled = false
    local offColor = color
    local onColor = Color3.fromRGB(60, 150, 60)
    
    btn.MouseButton1Click:Connect(function()
        toggled = not toggled
        
        if toggled then
            
            btn.BackgroundColor3 = onColor
            toggleIndicator.BackgroundColor3 = Color3.fromRGB(40, 200, 40)
            toggleCircle.Position = UDim2.new(0, 26, 0, 2)
        else
            
            btn.BackgroundColor3 = offColor
            toggleIndicator.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
            toggleCircle.Position = UDim2.new(0, 2, 0, 2)
        end
        
        callback(toggled)
    end)
end

-- Some delay when toggle off guy's sry I can't fix it I'm so sleepy : >
local function infiniteStrength()
    local args = { 99999999999999999999999999999999999999999999999999999999 }
    game:GetService("ReplicatedStorage"):WaitForChild("Event"):WaitForChild("Train"):FireServer(unpack(args))
end

local function infiniteWins()
    local args = { 99999999999999999999999999999999999999999999999999999999 }
    game:GetService("ReplicatedStorage"):WaitForChild("Event"):WaitForChild("WinGain"):FireServer(unpack(args))
end

local function buyBestAndEquip()
    
    local buyArgs = { "Gust", 0 }
    game:GetService("ReplicatedStorage"):WaitForChild("Event"):WaitForChild("BuyPower"):FireServer(unpack(buyArgs))
   
    task.wait(0.1)
    
    local equipArgs = { "Gust", player.Character }
    game:GetService("ReplicatedStorage"):WaitForChild("Event"):WaitForChild("EquipEffect"):FireServer(unpack(equipArgs))
end

makeToggle("Infinite Strength", function(state)
    while state do
        infiniteStrength()
        task.wait(0.50)
    end
end, Color3.fromRGB(80, 80, 80))

makeToggle("Infinite Wins", function(state)
    while state do
        infiniteWins()
        task.wait(0.50)
    end
end, Color3.fromRGB(80, 80, 80))

makeButton("Buy & Equip Best Gust!", buyBestAndEquip, Color3.fromRGB(90, 90, 90))

print("O")
print("P!")
print("!SCRIPT!")
