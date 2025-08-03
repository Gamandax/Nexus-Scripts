loadstring(game:HttpGet("https://raw.githubusercontent.com/HEnVELINC/G2GUI/refs/heads/main/G2B%20MDL"))()
local G2GUI = loadstring(game:HttpGet("https://raw.githubusercontent.com/HEnVELINC/G2GUI/refs/heads/main/G2L%20LOADER"))()

-- Create window
local ageWindow = G2GUI:CreateWindow("Age per 1 click!")

local instantAgeEnabled = false
local clickLoop = nil

ageWindow:Toggle("Instant Age!", false, function(state)
    instantAgeEnabled = state
    
    if state then
        -- you can change it guys 
        clickLoop = game:GetService("RunService").Heartbeat:Connect(function()
            if instantAgeEnabled then
                pcall(function()
                    game:GetService("ReplicatedStorage"):WaitForChild("MouseClicked"):FireServer()
                end)
                wait(0.1)
            end
        end)
    else
        -- Stop clicking loop
        if clickLoop then
            clickLoop:Disconnect()
            clickLoop = nil
        end
    end
end)

-- Print :)))
print("You so handsome")
