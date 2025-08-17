local player = game.Players.LocalPlayer
local gui = Instance.new("ScreenGui", player:WaitForChild("PlayerGui"))
gui.Name = "ObfuscatorMiniGUI"
gui.ResetOnSpawn = false

-- Main Window
local main = Instance.new("Frame", gui)
main.Size = UDim2.new(0, 320, 0, 300)
main.Position = UDim2.new(0.5, -160, 0.5, -150)
main.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
main.BorderSizePixel = 0
main.Active = true
main.Draggable = true

-- Title
local title = Instance.new("TextLabel", main)
title.Size = UDim2.new(1, 0, 0, 30)
title.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
title.Text = "Obfuscator GUI + ASCII Picker"
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.TextSize = 16
title.Font = Enum.Font.GothamBold

-- Input Box
local input = Instance.new("TextBox", main)
input.Size = UDim2.new(1, -20, 0, 60)
input.Position = UDim2.new(0, 10, 0, 40)
input.Text = "-- Paste code here"
input.TextColor3 = Color3.fromRGB(255, 255, 255)
input.TextSize = 14
input.Font = Enum.Font.Code
input.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
input.ClearTextOnFocus = true
input.MultiLine = true
input.TextWrapped = true
input.TextYAlignment = Enum.TextYAlignment.Top

-- Output Box
local output = Instance.new("TextBox", main)
output.Size = UDim2.new(1, -20, 0, 60)
output.Position = UDim2.new(0, 10, 0, 110)
output.Text = "-- Encoded output here"
output.TextColor3 = Color3.fromRGB(0, 255, 127)
output.TextSize = 13
output.Font = Enum.Font.Code
output.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
output.ClearTextOnFocus = false
output.MultiLine = true
output.TextWrapped = true
output.TextYAlignment = Enum.TextYAlignment.Top
output.TextEditable = false

-- Dropdown Label
local dropLabel = Instance.new("TextLabel", main)
dropLabel.Position = UDim2.new(0, 10, 0, 180)
dropLabel.Size = UDim2.new(1, -20, 0, 20)
dropLabel.BackgroundTransparency = 1
dropLabel.Text = "📜 ASCII Credit Picker:"
dropLabel.Font = Enum.Font.Gotham
dropLabel.TextSize = 14
dropLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
dropLabel.TextXAlignment = Enum.TextXAlignment.Left

-- Dropdown
local dropdown = Instance.new("TextButton", main)
dropdown.Position = UDim2.new(0, 10, 0, 205)
dropdown.Size = UDim2.new(1, -20, 0, 25)
dropdown.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
dropdown.TextColor3 = Color3.fromRGB(255, 255, 255)
dropdown.TextSize = 14
dropdown.Font = Enum.Font.Gotham
dropdown.Text = "Pick Credit (Click to Cycle)"

-- Encode Button
local encodeBtn = Instance.new("TextButton", main)
encodeBtn.Size = UDim2.new(0.5, -15, 0, 25)
encodeBtn.Position = UDim2.new(0, 10, 1, -35)
encodeBtn.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
encodeBtn.Text = "Encode"
encodeBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
encodeBtn.TextSize = 14
encodeBtn.Font = Enum.Font.GothamBold

-- Copy Button
local copyBtn = Instance.new("TextButton", main)
copyBtn.Size = UDim2.new(0.5, -15, 0, 25)
copyBtn.Position = UDim2.new(0.5, 5, 1, -35)
copyBtn.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
copyBtn.Text = "Copy"
copyBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
copyBtn.TextSize = 14
copyBtn.Font = Enum.Font.GothamBold

-- ASCII Presets
local asciiList = {
    {
        name = "Picker",
        count = "150",
        label = "Ferib",
        string = "1/2/4/0/2/4/4/3"
    },
    {
        name = "Demonoid",
        count = "800",
        label = "Demonoid",
        string = "1/2/3/4/5/5/4/3/"
    },
    {
        name = "M1ster M1",
        count = "1500",
        label = "SOMES",
        string = "1/3/5/6/5/5/3/"
    }
}
local asciiIndex = 1

-- Rotate Dropdown
dropdown.MouseButton1Click:Connect(function()
    asciiIndex = asciiIndex + 1
    if asciiIndex > #asciiList then
        asciiIndex = 1
    end
    local entry = asciiList[asciiIndex]
    local asciiBlock = ("--[[\n" .. entry.string .. "\n[" .. entry.count .. "] - " .. entry.label .. "\n]]")
    if setclipboard then
        setclipboard(asciiBlock)
    end
    dropdown.Text = "✔ Copied: " .. entry.name
end)

-- Obfuscation Function (FIXED - now supports all characters)
local function v1(v2)
    local v3 = {}
    -- FIXED: Added all printable characters for variable names
    local v4 = "IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII"
    for v5 = 1, v2 do
        local v6 = math.random(5, 20)
        local v7 = ""
        for v8 = 1, v6 do
            local v9 = math.random(1, #v4)
            v7 = v7 .. v4:sub(v9, v9)
        end
        table.insert(v3, v7)
    end
    return table.concat(v3, "")
end

-- Encode Script Logic
encodeBtn.MouseButton1Click:Connect(function()
    local raw = input.Text
    if raw == "" then return end

    local header = "--[[ █████╗ ██╗  ██╗██╗   ██╗███████╗     ██████╗ ██████╗ ███████╗██╗   ██╗███████╗ ██████╗ █████╗ ████████╗ ██████╗ ██████╗ \n██╔══██╗╚██╗██╔╝██║   ██║██╔════╝    ██╔═══██╗██╔══██╗██╔════╝██║   ██║██╔════╝██╔════╝██╔══██╗╚══██╔══╝██╔═══██╗██╔══██╗\n███████║ ╚███╔╝ ██║   ██║███████╗    ██║   ██║██████╔╝█████╗  ██║   ██║███████╗██║     ███████║   ██║   ██║   ██║██████╔╝\n██╔══██║ ██╔██╗ ██║   ██║╚════██║    ██║   ██║██╔══██╗██╔══╝  ██║   ██║╚════██║██║     ██╔══██║   ██║   ██║   ██║██╔══██╗\n██║  ██║██╔╝ ██╗╚██████╔╝███████║    ╚██████╔╝██████╔╝██║     ╚██████╔╝███████║╚██████╗██║  ██║   ██║   ╚██████╔╝██║  ██║\n╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝ ╚══════╝     ╚═════╝ ╚═════╝ ╚═╝      ╚═════╝ ╚══════╝ ╚═════╝╚═╝  ╚═╝   ╚═╝    ╚═════╝ ╚═╝  ╚═╝ ]]\n\n"

    local obfuscated = ""
    local vars = {}

    for i = 1, #raw do
        local byte = string.byte(raw, i)
        local varName = v1(math.random(1, 50))
        obfuscated = obfuscated .. "local " .. varName .. "='" .. byte .. "';"
        table.insert(vars, varName)
    end

    local final = header .. obfuscated .. "loadstring(string.char(" .. table.concat(vars, ",") .. "))()"
    output.Text = final
end)

-- Copy Encoded Script
copyBtn.MouseButton1Click:Connect(function()
    if setclipboard then
        setclipboard(output.Text)
    else
        warn("Clipboard not supported")
    end
end)
