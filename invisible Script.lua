local Player = game:GetService("Players").LocalPlayer
local Character = Player.Character or Player.CharacterAdded:Wait()
Character.Archivable = true
local FakeCharacter = Character:Clone()
local Part = Instance.new("Part", workspace)
Part.Anchored = true
Part.Size = Vector3.new(200, 1, 200)
Part.CFrame = CFrame.new(0, -500, 0)
Part.CanCollide = true

FakeCharacter.Parent = workspace
FakeCharacter.HumanoidRootPart.CFrame = Part.CFrame * CFrame.new(0, 5, 0)
for _, v in pairs(Character:GetChildren()) do
    if v:IsA("LocalScript") then
        local clone = v:Clone()
        clone.Disabled = true
        clone.Parent = FakeCharacter
    end
end
for _, v in pairs(FakeCharacter:GetDescendants()) do
    if v:IsA("BasePart") then
        v.Transparency = 0.9
    end
end

local IsInvisible = false
local PseudoAnchor = FakeCharacter.HumanoidRootPart

game:GetService("RunService").RenderStepped:Connect(function()
    if PseudoAnchor then
        PseudoAnchor.CFrame = Part.CFrame * CFrame.new(0, 5, 0)
    end
    if IsInvisible then
        FakeCharacter.Humanoid:ChangeState(11)
    end
end)

local function ToggleInvisibility()
    local Cam = workspace.CurrentCamera
    Cam.CameraType = "Scriptable"
    local cf = Character.HumanoidRootPart.CFrame
    Character.HumanoidRootPart.CFrame = FakeCharacter.HumanoidRootPart.CFrame
    FakeCharacter.HumanoidRootPart.CFrame = cf

    if not IsInvisible then
        Character.Humanoid:UnequipTools()
        Player.Character = FakeCharacter
        Cam.CameraSubject = FakeCharacter.Humanoid
        for _, v in pairs(FakeCharacter:GetChildren()) do
            if v:IsA("LocalScript") then v.Disabled = false end
        end
        PseudoAnchor = Character.HumanoidRootPart
    else
        FakeCharacter.Humanoid:UnequipTools()
        Player.Character = Character
        Cam.CameraSubject = Character.Humanoid
        for _, v in pairs(FakeCharacter:GetChildren()) do
            if v:IsA("LocalScript") then v.Disabled = true end
        end
        PseudoAnchor = FakeCharacter.HumanoidRootPart
    end

    IsInvisible = not IsInvisible
    Cam.CameraType = "Custom"
end

local Gui = Instance.new("ScreenGui", game.CoreGui)
Gui.Name = "NexusMiniGui"
Gui.ResetOnSpawn = false

local ToggleBtn = Instance.new("TextButton", Gui)
ToggleBtn.Size = UDim2.new(0, 40, 0, 40)
ToggleBtn.Position = UDim2.new(0, 10, 0.4, 0)
ToggleBtn.Text = "☰"
ToggleBtn.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
ToggleBtn.TextColor3 = Color3.new(1, 1, 1)
ToggleBtn.BorderSizePixel = 0
ToggleBtn.AutoButtonColor = true
ToggleBtn.Active = true
ToggleBtn.Draggable = true

local Frame = Instance.new("Frame", Gui)
Frame.Size = UDim2.new(0, 150, 0, 100)
Frame.Position = UDim2.new(0, 60, 0.4, 0)
Frame.BackgroundColor3 = Color3.new(0.05, 0.05, 0.05)
Frame.BorderColor3 = Color3.new(1,1,1)
Frame.Visible = false
Frame.Active = true
Frame.Draggable = true

local Title = Instance.new("TextLabel", Frame)
Title.Size = UDim2.new(1, 0, 0, 25)
Title.Position = UDim2.new(0, 0, 0, 0)
Title.Text = "Nexus Scripts"
Title.BackgroundColor3 = Color3.new(0, 0, 0)
Title.TextColor3 = Color3.new(1, 1, 1)
Title.Font = Enum.Font.GothamSemibold
Title.TextScaled = true

local ToggleInvisBtn = Instance.new("TextButton", Frame)
ToggleInvisBtn.Size = UDim2.new(1, -10, 0, 30)
ToggleInvisBtn.Position = UDim2.new(0, 5, 0, 35)
ToggleInvisBtn.Text = "✅ Invisible"
ToggleInvisBtn.BackgroundColor3 = Color3.new(0.15, 0.15, 0.15)
ToggleInvisBtn.TextColor3 = Color3.new(1, 1, 1)
ToggleInvisBtn.Font = Enum.Font.Gotham
ToggleInvisBtn.TextScaled = true

local CloseBtn = Instance.new("TextButton", Frame)
CloseBtn.Size = UDim2.new(0.3, 0, 0, 25)
CloseBtn.Position = UDim2.new(0.35, 0, 1, -30)
CloseBtn.Text = "X"
CloseBtn.BackgroundColor3 = Color3.new(0.2, 0, 0)
CloseBtn.TextColor3 = Color3.new(1, 1, 1)
CloseBtn.Font = Enum.Font.GothamBold
CloseBtn.TextScaled = true

ToggleBtn.MouseButton1Click:Connect(function()
    Frame.Visible = not Frame.Visible
end)

ToggleInvisBtn.MouseButton1Click:Connect(function()
    ToggleInvisibility()
    ToggleInvisBtn.Text = IsInvisible and "❎ Visible" or "✅ Invisible"
end)

CloseBtn.MouseButton1Click:Connect(function()
    Gui:Destroy()
end)
