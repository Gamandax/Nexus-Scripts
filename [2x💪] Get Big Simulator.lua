-- Here Script ðŸŽ€ 
local player = game.Players.LocalPlayer
local gui = Instance.new("ScreenGui")
gui.Parent = player:WaitForChild("PlayerGui")
gui.ResetOnSpawn = false

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 150, 0, 100)
frame.Position = UDim2.new(0.5, -75, 0.5, -50)
frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
frame.BorderSizePixel = 0
frame.Active = true
frame.Draggable = true
frame.Parent = gui

local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, 0, 0, 25)
title.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
title.Text = "Aux Hub"
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.Font = Enum.Font.GothamBold
title.TextSize = 14
title.Parent = frame

local label = Instance.new("TextLabel")
label.Size = UDim2.new(1, -10, 0, 20)
label.Position = UDim2.new(0, 5, 0, 30)
label.BackgroundTransparency = 1
label.Text = "Put you want Strength!"
label.TextColor3 = Color3.fromRGB(255, 255, 255)
label.Font = Enum.Font.Gotham
label.TextSize = 12
label.Parent = frame

local textbox = Instance.new("TextBox")
textbox.Size = UDim2.new(1, -10, 0, 20)
textbox.Position = UDim2.new(0, 5, 0, 50)
textbox.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
textbox.Text = ""
textbox.TextColor3 = Color3.fromRGB(255, 255, 255)
textbox.Font = Enum.Font.Gotham
textbox.TextSize = 12
textbox.PlaceholderText = "Enter Strength"
textbox.Parent = frame

local button = Instance.new("TextButton")
button.Size = UDim2.new(1, -10, 0, 20)
button.Position = UDim2.new(0, 5, 0, 75)
button.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
button.Text = "Send!"
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.Font = Enum.Font.GothamBold
button.TextSize = 12
button.Parent = frame

button.MouseButton1Click:Connect(function()
	local strengthValue = tonumber(textbox.Text)
	if strengthValue then
		game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("UpdateStrength"):FireServer(strengthValue)
	end
end)

print("O")
print("P")
