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
frame.Size = UDim2.new(0, 500, 0, 450)
frame.Position = UDim2.new(0.5, -250, 0.5, -225)
frame.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
frame.Active = true
frame.Draggable = true

local frameCorner = Instance.new("UICorner")
frameCorner.CornerRadius = UDim.new(0, 8)
frameCorner.Parent = frame

title.Parent = frame
title.Size = UDim2.new(1, 0, 0, 35)
title.BackgroundColor3 = Color3.fromRGB(0, 140, 220)
title.Text = "1 Sandwich Obf"
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.Font = Enum.Font.SourceSansBold
title.TextSize = 14

local titleCorner = Instance.new("UICorner")
titleCorner.CornerRadius = UDim.new(0, 8)
titleCorner.Parent = title

textbox.Parent = frame
textbox.Size = UDim2.new(1, -20, 0, 100)
textbox.Position = UDim2.new(0, 10, 0, 45)
textbox.BackgroundColor3 = Color3.fromRGB(0, 150, 240)
textbox.TextColor3 = Color3.fromRGB(255, 255, 255)
textbox.Text = "print('Hello World!')\nwait(1)\nprint('This will be sandwiched between 4k junk variables!')"
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
statusLabel.Position = UDim2.new(0, 10, 0, 150)
statusLabel.BackgroundTransparency = 1
statusLabel.Text = "Ready to create sandwich obfuscation..."
statusLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
statusLabel.Font = Enum.Font.SourceSans
statusLabel.TextSize = 12
statusLabel.TextXAlignment = Enum.TextXAlignment.Left

button.Parent = frame
button.Size = UDim2.new(0.45, -5, 0, 30)
button.Position = UDim2.new(0.05, 0, 0, 175)
button.BackgroundColor3 = Color3.fromRGB(0, 120, 200)
button.Text = "Create Sandwich Obfuscation"
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.Font = Enum.Font.SourceSansBold
button.TextSize = 13

local buttonCorner = Instance.new("UICorner")
buttonCorner.CornerRadius = UDim.new(0, 6)
buttonCorner.Parent = button

copyButton.Parent = frame
copyButton.Size = UDim2.new(0.45, -5, 0, 30)
copyButton.Position = UDim2.new(0.52, 0, 0, 175)
copyButton.BackgroundColor3 = Color3.fromRGB(0, 200, 120)
copyButton.Text = "Copy Sandwich"
copyButton.TextColor3 = Color3.fromRGB(255, 255, 255)
copyButton.Font = Enum.Font.SourceSansBold
copyButton.TextSize = 13

local copyCorner = Instance.new("UICorner")
copyCorner.CornerRadius = UDim.new(0, 6)
copyCorner.Parent = copyButton

outputLabel.Parent = frame
outputLabel.Size = UDim2.new(1, -20, 0, 20)
outputLabel.Position = UDim2.new(0, 10, 0, 215)
outputLabel.BackgroundTransparency = 1
outputLabel.Text = "Sandwich Output (2k Junk + Binary + 2k Junk):"
outputLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
outputLabel.Font = Enum.Font.SourceSansBold
outputLabel.TextSize = 14
outputLabel.TextXAlignment = Enum.TextXAlignment.Left

outputBox.Parent = frame
outputBox.Size = UDim2.new(1, -20, 0, 180)
outputBox.Position = UDim2.new(0, 10, 0, 240)
outputBox.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
outputBox.TextColor3 = Color3.fromRGB(0, 255, 0)
outputBox.Text = "Sandwich obfuscated code will appear here... (will be EXTREMELY long due to 4k+ junk variables)"
outputBox.ClearTextOnFocus = false
outputBox.Font = Enum.Font.Code
outputBox.TextSize = 9
outputBox.TextWrapped = true
outputBox.MultiLine = true
outputBox.TextXAlignment = Enum.TextXAlignment.Left
outputBox.TextYAlignment = Enum.TextYAlignment.Top
outputBox.TextEditable = false

local outputCorner = Instance.new("UICorner")
outputCorner.CornerRadius = UDim.new(0, 6)
outputCorner.Parent = outputBox

local function generateMassiveJunk(startNum, count, prefix)
    local junk = "-- " .. prefix .. " JUNK LAYER (" .. count .. " variables) - GOOD LUCK SKIDDERS!\n"
    
    local roastComments = {
        "-- Bro really thought he could bypass this in 5 minutes LMAOOO",
        "-- Kid downloaded 50 different deobfuscators and none worked",
        "-- Imagine being 16 and your biggest flex is running someone else's script",
        "-- This dude still using free executors in 2025 get a job bro",
        "-- POV you have no coding skills so you skid everything",
        "-- Mans really said I can crack any obfuscator then gave up after 2 minutes",
        "-- Little timmy wants free robux but cant even code hello world",
        "-- Kid thinks synapse x makes him a real exploiter but cant write lua",
        "-- Bro really said ez bypass then spent 3 hours on the first function",
        "-- This boy playing alone Minecraft thats so sad skidders :))))"
    }
    
    for i = startNum, startNum + count - 1 do
        -- Generate random junk variable names
        local randomNums = {}
        for j = 1, math.random(5, 15) do
            table.insert(randomNums, math.random(0, 9))
        end
        local junkName = prefix .. "_" .. table.concat(randomNums, "_") .. "_" .. i
        
        local junkPatterns = {
            "[%d][%d][%d][%d][%d]",
            "runtime_check[%s%d][%d][%d]PSU_failed",
            "L0dstr|ng_[%d%d]-[do]ret9rn[%s]enc0df[%d]",
            "Z1p_[%d]_byt3_[%s]_go]_en3[%d]",
            "50c0-f737-f812-c23f[%d-%d]runtime",
            "SKID_DETECTED_[%d][%d][%d]_ABORT",
            "deobfuscator_failed_[%s%d][%d]_crying",
            "when_working_deobfuscator_[%d%d%d]_failed"
        }
        
        local randomPattern = junkPatterns[math.random(#junkPatterns)]
        local junkValue = randomPattern:gsub("%%d", function() return tostring(math.random(0, 9)) end)
        junkValue = junkValue:gsub("%%s", function() 
            local chars = {"x", "z", "v", "b", "n", "m", "q", "w", "r", "t"}
            return chars[math.random(#chars)]
        end)
        
        junk = junk .. "local " .. junkName .. "=\"" .. junkValue .. "\"; "
    
        if i % 75 == 0 then
            local funcName = "JunkFunc_" .. prefix .. "_" .. i
            local funcReturn = junkPatterns[math.random(#junkPatterns)]
            funcReturn = funcReturn:gsub("%%d", function() return tostring(math.random(0, 9)) end)
            funcReturn = funcReturn:gsub("%%s", function() return "x" end)
            junk = junk .. "function " .. funcName .. "() return \"" .. funcReturn .. "\" end; "
        end
        
        if i % 100 == 0 then
            junk = junk .. roastComments[math.random(#roastComments)] .. "\n"
        end
      
        if i % 8 == 0 then
            junk = junk .. "\n"
        end
    end
    
    return junk .. "\n"
end

local function stringToBinary(text)
    local binary = {}
    for i = 1, #text do
        local byte = string.byte(text, i)
        local binaryStr = ""
        for j = 7, 0, -1 do
            local bit = math.floor(byte / (2^j)) % 2
            binaryStr = binaryStr .. tostring(bit)
        end
        table.insert(binary, "'" .. binaryStr .. "'")
    end
    return binary
end

local function createSandwichObfuscation(scriptText)
    print("Creating sandwich obfuscation...")
    
    local topJunk = generateMassiveJunk(1, 2000, "TOP")
     
    local bottomJunk = generateMassiveJunk(2001, 2000, "BOTTOM")
    
    local binaryArray = stringToBinary(scriptText)
    local binaryString = table.concat(binaryArray, ",")
    
    local middleCode = string.format([[

local RealPayload_Binary_Data_Hidden_Among_Junk = {%s}
local function DecodeAndExecute_The_Real_Script_From_Binary()
    local decoded = ""
    for _, binaryStr in ipairs(RealPayload_Binary_Data_Hidden_Among_Junk) do
        local byte = 0
        for i = 1, 8 do
            local bit = tonumber(binaryStr:sub(i,i))
            if bit then byte = byte + bit * (2^(8-i)) end
        end
        decoded = decoded .. string.char(byte)
    end
    return decoded
end

loadstring(DecodeAndExecute_The_Real_Script_From_Binary())()

]], binaryString)
  
    local sandwich = topJunk .. middleCode .. bottomJunk
    
    print("Sandwich created with structure:")
    print("- Top junk: ~" .. #topJunk .. " characters")
    print("- Middle payload: ~" .. #middleCode .. " characters") 
    print("- Bottom junk: ~" .. #bottomJunk .. " characters")
    print("- Total size: ~" .. #sandwich .. " characters")
    
    return sandwich
end

button.MouseButton1Click:Connect(function()
    if textbox.Text == "" or textbox.Text:match("^Enter script") then
        outputBox.Text = "Error: Please enter a script to obfuscate!"
        statusLabel.Text = "Error: No input provided"
        return
    end
    
    statusLabel.Text = "Creating sandwich obfuscation... (generating 4k+ junk variables)"
    button.Text = "Processing..."
    button.BackgroundColor3 = Color3.fromRGB(255, 165, 0)
    
    spawn(function()
        local sandwich = createSandwichObfuscation(textbox.Text)
        
        outputBox.Text = sandwich
        
        statusLabel.Text = string.format("✓ Sandwich Created! Input: %d chars → Output: %d chars (4000+ junk variables)", 
            #textbox.Text, #sandwich)
        
        button.Text = "Sandwich Complete!"
        button.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
        
        wait(2)
        button.Text = "Create Sandwich Obfuscation"
        button.BackgroundColor3 = Color3.fromRGB(0, 120, 200)
    end)
end)

copyButton.MouseButton1Click:Connect(function()
    if outputBox.Text:match("^Sandwich obfuscated code will appear") or 
       outputBox.Text:match("^Error:") then
        copyButton.Text = "Nothing to copy!"
        copyButton.BackgroundColor3 = Color3.fromRGB(255, 100, 100)
        wait(1.5)
        copyButton.Text = "Copy Sandwich"
        copyButton.BackgroundColor3 = Color3.fromRGB(0, 200, 120)
        return
    end
  
    if setclipboard then
        setclipboard(outputBox.Text)
        copyButton.Text = "Copied!"
        copyButton.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
        statusLabel.Text = "✓ Sandwich obfuscated code copied! (" .. #outputBox.Text .. " characters)"
    else
        outputBox:CaptureFocus()
        copyButton.Text = "Selected (Ctrl+C)"
        copyButton.BackgroundColor3 = Color3.fromRGB(255, 150, 0)
        statusLabel.Text = "⚠ Text selected - use Ctrl+C to copy"
    end
    
    wait(2)
    copyButton.Text = "Copy Sandwich"
    copyButton.BackgroundColor3 = Color3.fromRGB(0, 200, 120)
end)
