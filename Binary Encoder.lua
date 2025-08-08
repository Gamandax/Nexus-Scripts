local Players = game:GetService("Players")
local player = Players.LocalPlayer
local gui = Instance.new("ScreenGui")
local frame = Instance.new("Frame")
local title = Instance.new("TextLabel")
local textbox = Instance.new("TextBox")
local button = Instance.new("TextButton")
local copyButton = Instance.new("TextButton")
local outputBox = Instance.new("TextBox")
local outputLabel = Instance.new("TextLabel")
local statusLabel = Instance.new("TextLabel")

gui.Parent = player:FindFirstChild("PlayerGui")
frame.Parent = gui
frame.Size = UDim2.new(0, 450, 0, 400)
frame.Position = UDim2.new(0.5, -225, 0.5, -200)
frame.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
frame.Active = true
frame.Draggable = true

local frameCorner = Instance.new("UICorner")
frameCorner.CornerRadius = UDim.new(0, 8)
frameCorner.Parent = frame

title.Parent = frame
title.Size = UDim2.new(1, 0, 0, 35)
title.BackgroundColor3 = Color3.fromRGB(0, 140, 220)
title.Text = "c4l3bkidd's Enhanced Binary Obfuscator"
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.Font = Enum.Font.SourceSansBold
title.TextSize = 16

local titleCorner = Instance.new("UICorner")
titleCorner.CornerRadius = UDim.new(0, 8)
titleCorner.Parent = title

textbox.Parent = frame
textbox.Size = UDim2.new(1, -20, 0, 80)
textbox.Position = UDim2.new(0, 10, 0, 45)
textbox.BackgroundColor3 = Color3.fromRGB(0, 150, 240)
textbox.TextColor3 = Color3.fromRGB(255, 255, 255)
textbox.Text = "print('Hello World!')\nwait(1)\nprint('This should create a long binary output!')"
textbox.ClearTextOnFocus = false
textbox.Font = Enum.Font.Code
textbox.TextSize = 14
textbox.TextWrapped = true
textbox.MultiLine = true
textbox.TextXAlignment = Enum.TextXAlignment.Left
textbox.TextYAlignment = Enum.TextYAlignment.Top

local textboxCorner = Instance.new("UICorner")
textboxCorner.CornerRadius = UDim.new(0, 6)
textboxCorner.Parent = textbox

statusLabel.Parent = frame
statusLabel.Size = UDim2.new(1, -20, 0, 20)
statusLabel.Position = UDim2.new(0, 10, 0, 130)
statusLabel.BackgroundTransparency = 1
statusLabel.Text = "Ready to obfuscate..."
statusLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
statusLabel.Font = Enum.Font.SourceSans
statusLabel.TextSize = 12
statusLabel.TextXAlignment = Enum.TextXAlignment.Left

button.Parent = frame
button.Size = UDim2.new(0.45, -5, 0, 30)
button.Position = UDim2.new(0.05, 0, 0, 155)
button.BackgroundColor3 = Color3.fromRGB(0, 120, 200)
button.Text = "Obfuscate to Binary"
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.Font = Enum.Font.SourceSansBold
button.TextSize = 14

local buttonCorner = Instance.new("UICorner")
buttonCorner.CornerRadius = UDim.new(0, 6)
buttonCorner.Parent = button

copyButton.Parent = frame
copyButton.Size = UDim2.new(0.45, -5, 0, 30)
copyButton.Position = UDim2.new(0.52, 0, 0, 155)
copyButton.BackgroundColor3 = Color3.fromRGB(0, 200, 120)
copyButton.Text = "Copy Result"
copyButton.TextColor3 = Color3.fromRGB(255, 255, 255)
copyButton.Font = Enum.Font.SourceSansBold
copyButton.TextSize = 14

local copyCorner = Instance.new("UICorner")
copyCorner.CornerRadius = UDim.new(0, 6)
copyCorner.Parent = copyButton

outputLabel.Parent = frame
outputLabel.Size = UDim2.new(1, -20, 0, 20)
outputLabel.Position = UDim2.new(0, 10, 0, 195)
outputLabel.BackgroundTransparency = 1
outputLabel.Text = "Binary Output (will be very long):"
outputLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
outputLabel.Font = Enum.Font.SourceSansBold
outputLabel.TextSize = 14
outputLabel.TextXAlignment = Enum.TextXAlignment.Left

outputBox.Parent = frame
outputBox.Size = UDim2.new(1, -20, 0, 150)
outputBox.Position = UDim2.new(0, 10, 0, 220)
outputBox.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
outputBox.TextColor3 = Color3.fromRGB(0, 255, 0)
outputBox.Text = "Binary obfuscated code will appear here... (should be VERY long)"
outputBox.ClearTextOnFocus = false
outputBox.Font = Enum.Font.Code
outputBox.TextSize = 10
outputBox.TextWrapped = true
outputBox.MultiLine = true
outputBox.TextXAlignment = Enum.TextXAlignment.Left
outputBox.TextYAlignment = Enum.TextYAlignment.Top
outputBox.TextEditable = false

local outputCorner = Instance.new("UICorner")
outputCorner.CornerRadius = UDim.new(0, 6)
outputCorner.Parent = outputBox

local function stringToBinary(text)
    local binary = {}
    print("Converting text of length:", #text) -- Debug
    
    for i = 1, #text do
        local byte = string.byte(text, i)
        local binaryStr = ""
        
        -- Convert byte to 8-bit binary
        for j = 7, 0, -1 do
            local bit = math.floor(byte / (2^j)) % 2
            binaryStr = binaryStr .. tostring(bit)
        end
        
        table.insert(binary, "'" .. binaryStr .. "'")
    end
    
    print("Created", #binary, "binary strings") -- Debug
    return binary
end

local function obfuscateScriptToBinary(scriptText)
    print("Input script length:", #scriptText) -- Debug
    
    local binaryArray = stringToBinary(scriptText)
    print("Binary array length:", #binaryArray) -- Debug

    local binaryString = table.concat(binaryArray, ",")
    
    local obfuscatedCode = string.format([[local BinaryData = {%s}
local function BinaryToString(binaryArray)
local result = ""
for _, binary in ipairs(binaryArray) do
local byte = 0
for i = 1, 8 do
local bit = tonumber(string.sub(binary, i, i))
if bit then
byte = byte + bit * (2^(8-i))
end
end
result = result .. string.char(byte)
end
return result
end
local DecodedScript = BinaryToString(BinaryData)
loadstring(DecodedScript)()]], 
        binaryString
    )
    
    print("Final obfuscated length:", #obfuscatedCode) -- Debug
    return obfuscatedCode
end

local function obfuscateScriptToBinaryCompact(scriptText)
    local binaryArray = stringToBinary(scriptText)
    
    local binaryString = table.concat(binaryArray, ",")
    
    local obfuscatedCode = string.format([[local b={%s}local s=""for _,x in ipairs(b)do local n=0 for i=1,8 do local t=tonumber(x:sub(i,i))if t then n=n+t*(2^(8-i))end end s=s..string.char(n)end loadstring(s)()]], 
        binaryString
    )
    
    return obfuscatedCode
end

button.MouseButton1Click:Connect(function()
    if textbox.Text == "" or textbox.Text == "Enter script here" then
        outputBox.Text = "Error: Please enter a script to obfuscate!"
        statusLabel.Text = "Error: No input provided"
        return
    end
    
    statusLabel.Text = "Obfuscating... please wait"
    button.Text = "Processing..."
    
    -- dont delete this it helps Avoid lagging 
    spawn(function()
        
        local obfuscated = obfuscateScriptToBinaryCompact(textbox.Text) -- Ultra compact one-liner
        
        outputBox.Text = obfuscated
        
        statusLabel.Text = string.format("✓ Obfuscated! Input: %d chars → Output: %d chars", 
            #textbox.Text, #obfuscated)
        
        button.Text = "Obfuscated!"
        button.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
        
        wait(1.5)
        button.Text = "Obfuscate to Binary"
        button.BackgroundColor3 = Color3.fromRGB(0, 120, 200)
    end)
end)

copyButton.MouseButton1Click:Connect(function()
    if outputBox.Text == "Binary obfuscated code will appear here... (should be VERY long)" or 
       outputBox.Text:match("^Error:") then
        copyButton.Text = "Nothing to copy!"
        copyButton.BackgroundColor3 = Color3.fromRGB(255, 100, 100)
        wait(1)
        copyButton.Text = "Copy Result"
        copyButton.BackgroundColor3 = Color3.fromRGB(0, 200, 120)
        return
    end
  
    if setclipboard then
        setclipboard(outputBox.Text)
        copyButton.Text = "Copied to Clipboard!"
        copyButton.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
        statusLabel.Text = "✓ " .. #outputBox.Text .. " characters copied to clipboard"
    else
      
        outputBox:CaptureFocus()
        copyButton.Text = "Text Selected (Ctrl+C)"
        copyButton.BackgroundColor3 = Color3.fromRGB(255, 150, 0)
        statusLabel.Text = "⚠ No clipboard support - text selected for manual copy"
    end
    
    wait(2)
    copyButton.Text = "Copy Result"
    copyButton.BackgroundColor3 = Color3.fromRGB(0, 200, 120)
end)

local testInput = "Hello World!"
local testBinary = stringToBinary(testInput)
print("Test conversion:")
print("Input:", testInput, "(length:", #testInput, ")")
print("Binary count:", #testBinary)
print("First few binary:", testBinary[1], testBinary[2], testBinary[3])

print("Enhanced Binary Obfuscator loaded!")
print("- Improved binary conversion")
print("- Better error handling") 
print("- Length tracking")
print("- Debug output in console")
statusLabel.Text = "Obfuscate your script with Simple Obfuscator!"
