
local player = game.Players.LocalPlayer
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local ApplyEmmiter = ReplicatedStorage:WaitForChild("Remotes"):WaitForChild("ApplyEmmiter")
local CoreGui = cloneref(game:GetService("CoreGui"))

local gui = Instance.new("ScreenGui")
gui.Name = "DarkParticleGui"
gui.ResetOnSpawn = false
gui.Parent = CoreGui

local frame = Instance.new("Frame", gui)
frame.Size = UDim2.new(0.5, 0, 0.6, 0)
frame.Position = UDim2.new(0.25, 0, 0.2, 0)
frame.BackgroundColor3 = Color3.fromRGB(30, 30, 35)
frame.BackgroundTransparency = 0.05
frame.BorderSizePixel = 0
frame.Active = true
frame.Draggable = true
frame.ClipsDescendants = true

local frameCorner = Instance.new("UICorner", frame)
frameCorner.CornerRadius = UDim.new(0, 12)

local gradient = Instance.new("UIGradient", frame)
gradient.Rotation = 90
gradient.Color = ColorSequence.new{
    ColorSequenceKeypoint.new(0, Color3.fromRGB(25, 25, 30)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(40, 40, 45))
}

local titleBar = Instance.new("Frame", frame)
titleBar.Size = UDim2.new(1, 0, 0, 30)
titleBar.Position = UDim2.new(0, 0, 0, 0)
titleBar.BackgroundColor3 = Color3.fromRGB(20, 20, 25)
titleBar.BorderSizePixel = 0

local titleBarCorner = Instance.new("UICorner", titleBar)
titleBarCorner.CornerRadius = UDim.new(0, 12)

local title = Instance.new("TextLabel", titleBar)
title.Size = UDim2.new(1, -40, 1, 0)
title.Position = UDim2.new(0, 10, 0, 0)
title.BackgroundTransparency = 1
title.Text = "✨ FE Particle Giver ✨"
title.TextColor3 = Color3.fromRGB(220, 220, 220)
title.Font = Enum.Font.GothamBold
title.TextSize = 16
title.TextXAlignment = Enum.TextXAlignment.Left

local closeButton = Instance.new("TextButton", titleBar)
closeButton.Size = UDim2.new(0, 30, 1, 0)
closeButton.Position = UDim2.new(1, -30, 0, 0)
closeButton.BackgroundTransparency = 1
closeButton.Text = "X"
closeButton.TextColor3 = Color3.fromRGB(220, 220, 220)
closeButton.Font = Enum.Font.GothamBold
closeButton.TextSize = 16

closeButton.MouseEnter:Connect(function()
    closeButton.TextColor3 = Color3.fromRGB(255, 80, 80)
end)

closeButton.MouseLeave:Connect(function()
    closeButton.TextColor3 = Color3.fromRGB(220, 220, 220)
end)

closeButton.MouseButton1Click:Connect(function()
    gui:Destroy()
end)

local searchBox = Instance.new("TextBox", frame)
searchBox.Size = UDim2.new(1, -20, 0, 35)
searchBox.Position = UDim2.new(0, 10, 0, 35)
searchBox.BackgroundColor3 = Color3.fromRGB(40, 40, 45)
searchBox.TextColor3 = Color3.fromRGB(220, 220, 220)
searchBox.PlaceholderText = "Search particles..."
searchBox.PlaceholderColor3 = Color3.fromRGB(140, 140, 150)
searchBox.Font = Enum.Font.Gotham
searchBox.Text = ""
searchBox.TextSize = 14
searchBox.ClearTextOnFocus = false

local searchBoxCorner = Instance.new("UICorner", searchBox)
searchBoxCorner.CornerRadius = UDim.new(0, 8)

local searchBoxPadding = Instance.new("UIPadding", searchBox)
searchBoxPadding.PaddingLeft = UDim.new(0, 10)

local searchIcon = Instance.new("ImageLabel", searchBox)
searchIcon.Size = UDim2.new(0, 20, 0, 20)
searchIcon.Position = UDim2.new(1, -30, 0.5, -10)
searchIcon.BackgroundTransparency = 1
searchIcon.Image = "rbxassetid://3926305904"
searchIcon.ImageRectOffset = Vector2.new(964, 324)
searchIcon.ImageRectSize = Vector2.new(36, 36)
searchIcon.ImageColor3 = Color3.fromRGB(140, 140, 150)

local scroll = Instance.new("ScrollingFrame", frame)
scroll.Position = UDim2.new(0, 10, 0, 80)
scroll.Size = UDim2.new(1, -20, 1, -90)
scroll.CanvasSize = UDim2.new(0, 0, 0, 0)
scroll.AutomaticCanvasSize = Enum.AutomaticSize.Y
scroll.ScrollingDirection = Enum.ScrollingDirection.Y
scroll.BackgroundTransparency = 1
scroll.BorderSizePixel = 0
scroll.ScrollBarThickness = 8
scroll.ScrollBarImageColor3 = Color3.fromRGB(100, 100, 110)

local grid = Instance.new("UIGridLayout", scroll)
grid.CellSize = UDim2.new(0, 90, 0, 90)
grid.CellPadding = UDim2.new(0, 10, 0, 10)
grid.SortOrder = Enum.SortOrder.LayoutOrder

local allButtons = {}
local currentParticle = nil

local function checkForParticle()
    if player.Character then
        local upperTorso = player.Character:FindFirstChild("UpperTorso")
        if upperTorso then
            return upperTorso:FindFirstChild("EEmmiter")
        end
    end
    return nil
end

local function makeButton(displayName, assetId, serverName)
    local btn = Instance.new("ImageButton")
    btn.Name = displayName
    btn.Size = UDim2.new(0, 90, 0, 90)
    btn.BackgroundColor3 = Color3.fromRGB(45, 45, 50)
    btn.Image = assetId
    btn.AutoButtonColor = true



    local btnCorner = Instance.new("UICorner", btn)
    btnCorner.CornerRadius = UDim.new(0, 10)

    local uiStroke = Instance.new("UIStroke", btn)
    uiStroke.Color = Color3.fromRGB(80, 80, 90)
    uiStroke.Thickness = 2
    
    local label = Instance.new("TextLabel", btn)
    label.Size = UDim2.new(1, 0, 0, 20)
    label.Position = UDim2.new(0, 0, 1, -20)
    label.BackgroundColor3 = Color3.fromRGB(30, 30, 35)
    label.BackgroundTransparency = 0.5
    label.Text = displayName
    label.TextColor3 = Color3.fromRGB(220, 220, 220)
    label.Font = Enum.Font.Gotham
    label.TextSize = 12
    label.TextXAlignment = Enum.TextXAlignment.Center

    local labelCorner = Instance.new("UICorner", label)
    labelCorner.CornerRadius = UDim.new(0, 10)
    
    btn.MouseEnter:Connect(function()
        uiStroke.Color = Color3.fromRGB(100, 150, 255)
        uiStroke.Thickness = 3
        btn.BackgroundColor3 = Color3.fromRGB(55, 55, 60)
    end)

    btn.MouseLeave:Connect(function()
        uiStroke.Color = Color3.fromRGB(80, 80, 90)
        uiStroke.Thickness = 2
        btn.BackgroundColor3 = Color3.fromRGB(45, 45, 50)
    end)
    
    btn.MouseButton1Click:Connect(function()
    local cleanId = assetId:gsub("rbxassetid://", "")
            ApplyEmmiter:InvokeServer(cleanId, serverName)
            currentParticle = serverName
    end)

    btn.Parent = scroll
    table.insert(allButtons, {button = btn, name = displayName, serverName = serverName})
end

local particleData = {
    {display = "Free White", server = "0002FreeWhite", asset = "rbxassetid://18635845425"},
    {display = "Free Yellow", server = "0003FreeYellow", asset = "rbxassetid://18635841291"},
    {display = "Free Orange", server = "0004FreeOrange", asset = "rbxassetid://18635859639"},
    {display = "Free Green", server = "0005FreeGreen", asset = "rbxassetid://18635848788"},
    {display = "Free Blue", server = "0006FreeBlue", asset = "rbxassetid://18635847163"},
    {display = "Free Purple", server = "0007FreePurple", asset = "rbxassetid://18635843697"},
    {display = "Free Pink", server = "0008FreePink", asset = "rbxassetid://18635852477"},
    {display = "Free Red", server = "0009FreeRed", asset = "rbxassetid://18635837646"},
    {display = "Hearts Yellow", server = "001HeartsYellow", asset = "rbxassetid://18635672195"},
    {display = "Hearts Green", server = "002HeartsGreen", asset = "rbxassetid://18635727693"},
    {display = "Hearts Blue", server = "003HeartsBlue", asset = "rbxassetid://18635732186"},
    {display = "Hearts Purple", server = "004HeartsPurple", asset = "rbxassetid://18635723426"},
    {display = "Hearts Pink", server = "005HeartsPink", asset = "rbxassetid://18635726250"},
    {display = "Hearts Red", server = "006HeartsRed", asset = "rbxassetid://18635729673"},
    {display = "Dots Orange", server = "010DotsOrange", asset = "rbxassetid://18637252424"},
    {display = "Dots Yellow", server = "011DotsYellow", asset = "rbxassetid://18637263004"},
    {display = "Dots White", server = "012DotsWhite", asset = "rbxassetid://18637254199"},
    {display = "Dots Green", server = "013DotsGreen", asset = "rbxassetid://18637265264"},
    {display = "Dots Blue", server = "014DotsBlue", asset = "rbxassetid://18637256859"},
    {display = "Dots Purple", server = "015DotsPurple", asset = "rbxassetid://18637261058"},
    {display = "Dots Pink", server = "016DotsPink", asset = "rbxassetid://18637259328"},
    {display = "Dots Red", server = "017DotsRed", asset = "rbxassetid://18637267290"},
    {display = "Twinkle White", server = "020TwinkleWhite", asset = "rbxassetid://18637115654"},
    {display = "Twinkle Yellow", server = "021TwinkleYellow", asset = "rbxassetid://18637118923"},
    {display = "Twinkle Green", server = "022TwinkleGreen", asset = "rbxassetid://18637151114"},
    {display = "Twinkle Purple", server = "023TwinklePurple", asset = "rbxassetid://18637153880"},
    {display = "Twinkle Pink", server = "024TwinklePink", asset = "rbxassetid://18637157071"},
    {display = "Twinkle Red", server = "025TwinkleRed", asset = "rbxassetid://18637155247"},
    {display = "Fire White", server = "030FireWhite", asset = "rbxassetid://18637074370"},
    {display = "Fire Orange", server = "031FireOrange", asset = "rbxassetid://18637025451"},
    {display = "Fire Green", server = "032FireGreen", asset = "rbxassetid://18637078598"},
    {display = "Fire Blue", server = "033FireBlue", asset = "rbxassetid://18637076370"},
    {display = "Fire Purple", server = "034FirePurple", asset = "rbxassetid://18637070174"},
    {display = "Fire Black", server = "035FireBlack", asset = "rbxassetid://18637072603"},
    {display = "Small Hearts Yellow", server = "040SmallHeartsYellow", asset = "rbxassetid://18637339451"},
    {display = "Small Hearts Green", server = "041SmallHeartsGreen", asset = "rbxassetid://18637337576"},
    {display = "Small Hearts Blue", server = "042SmallHeartsBlue", asset = "rbxassetid://18637345162"},
    {display = "Small Hearts Purple", server = "043SmallHeartsPurple", asset = "rbxassetid://18637335865"},
    {display = "Small Hearts Pink", server = "044SmallHeartsPink", asset = "rbxassetid://18637343416"},
    {display = "Small Hearts Red", server = "045SmallHeartsRed", asset = "rbxassetid://18637341847"},
    {display = "Sparks White", server = "050SparksWhite", asset = "rbxassetid://18637383085"},
    {display = "Sparks Green", server = "051SparksGreen", asset = "rbxassetid://18637385236"},
    {display = "Sparks Blue", server = "052SparksBlue", asset = "rbxassetid://18637386856"},
    {display = "Sparks Purple", server = "053SparksPurple", asset = "rbxassetid://18637442447"},
    {display = "Sparks Pink", server = "054SparksPink", asset = "rbxassetid://18637445897"},
    {display = "Sparks Red", server = "055SparksRed", asset = "rbxassetid://18637447550"},
    {display = "Bubble White", server = "060BubbleWhite", asset = "rbxassetid://18637495023"},
    {display = "Bubble Green", server = "061BubbleGreen", asset = "rbxassetid://18637493072"},
    {display = "Bubble Blue", server = "062BubbleBlue", asset = "rbxassetid://18637499282"},
    {display = "Bubble Purple", server = "063BubblePurple", asset = "rbxassetid://18637497343"},
    {display = "Bubble Red", server = "064BubbleRed", asset = "rbxassetid://18637500927"},
    {display = "Music White", server = "070MusicWhite", asset = "rbxassetid://18637675173"},
    {display = "Music Green", server = "071MusicGreen", asset = "rbxassetid://18637677789"},
    {display = "Music Blue", server = "072MusicBlue", asset = "rbxassetid://18637680960"},
    {display = "Music Purple", server = "073MusicPurple", asset = "rbxassetid://18637679384"},
    {display = "Music Red", server = "074MusicRed", asset = "rbxassetid://18637672698"},
    {display = "Smoke White", server = "080SmokeWhite", asset = "rbxassetid://18637791748"},
    {display = "Smoke Yellow", server = "081SmokeYellow", asset = "rbxassetid://18637800482"},
    {display = "Smoke Orange", server = "082SmokeOrange", asset = "rbxassetid://18637793920"},
    {display = "Smoke Green", server = "083SmokeGreen", asset = "rbxassetid://18637789299"},
    {display = "Smoke Blue", server = "084SmokeBlue", asset = "rbxassetid://18637803021"},
    {display = "Smoke Purple", server = "085SmokePurple", asset = "rbxassetid://18637813360"},
    {display = "Smoke Red", server = "086SmokeRed", asset = "rbxassetid://18637796598"},
    {display = "Smoke Black", server = "087SmokeBlack", asset = "rbxassetid://18637798529"},
    {display = "Star White", server = "090StarWhite", asset = "rbxassetid://18637942956"},
    {display = "Star Orange", server = "091StarOrange", asset = "rbxassetid://18637946172"},
    {display = "Star Green", server = "092StarGreen", asset = "rbxassetid://18637934500"},
    {display = "Star Blue", server = "093StarBlue", asset = "rbxassetid://18637940338"},
    {display = "Star Purple", server = "094StarPurple", asset = "rbxassetid://18637944796"},
    {display = "Star Pink", server = "095StarPink", asset = "rbxassetid://18637947820"},
    {display = "Star Red", server = "096StarRed", asset = "rbxassetid://18637949457"},
}

for _, data in ipairs(particleData) do
    makeButton(data.display, data.asset, data.server)
    task.wait(0.01)
end

searchBox:GetPropertyChangedSignal("Text"):Connect(function()
    local searchText = searchBox.Text:lower()
    
    for _, btnData in ipairs(allButtons) do
        if searchText == "" or btnData.name:lower():find(searchText, 1, true) then
            btnData.button.Visible = true
        else
            btnData.button.Visible = false
        end
    end
end)

local uis = game:GetService("UserInputService")
uis.InputBegan:Connect(function(input, gameProcessed)
    if gameProcessed then return end
    if input.KeyCode == Enum.KeyCode.RightShift then
        frame.Visible = not frame.Visible
    end
end)
