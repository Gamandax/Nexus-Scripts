-- Script hereðŸŽ€

local G2GUI = loadstring(game:HttpGet("https://pastefy.app/J741xvzK/raw"))()

local window = G2GUI:CreateWindow("Aux hub", 300, "Black")

local infStrengthEnabled = false
local infMoneyEnabled = false

window:Toggle("Get Inf Strength!", false, function(state)
    infStrengthEnabled = state
    print("Infinite Strength is now: " .. tostring(state))
    
    if state then
        -- Start the loop when toggle is enabled
        spawn(function()
            while infStrengthEnabled do
                local args = {
                    9999999999999989889888988889999756799655578996544689654456799899999999999999898898889888899997567996555789965446896544567998999999999999998988988898888999975679965557899654468965445679989999999999999989889888988889999756799655578996544689654456799899999999999999898898889888899997567996555789965446896544567998999999999999998988988898888999975679965557899654468965445679989999999999999989889888988889999756799655578996544689654456799899999999999999898898889888899997567996555789965446896544567998999999999999998988988898888999975679965557899654468965445679989999999999999989889888988889999756799655578996544689654456799899999999999999898898889888899997567996555789965446896544567998
                }
                game:GetService("ReplicatedStorage"):WaitForChild("Event"):WaitForChild("Train"):FireServer(unpack(args))
                wait(0.1)
            end
        end)
    end
end)

window:Toggle("Get Inf Money!", false, function(state)
    infMoneyEnabled = state
    print("Infinite Money is now: " .. tostring(state))
    
    if state then
        
        spawn(function()
            while infMoneyEnabled do
                local args = {
                    9999999999999754555679987
                }
                game:GetService("ReplicatedStorage"):WaitForChild("Event"):WaitForChild("WinGain"):FireServer(unpack(args))
                wait(0.1)
            end
        end)
    end
end)

window:Button("Buy Best Power & Equip", function()
    local buyArgs = {
        "Gust",
        450000000000000
    }
    game:GetService("ReplicatedStorage"):WaitForChild("Event"):WaitForChild("BuyPower"):FireServer(unpack(buyArgs))
    
    wait(0.5)
    
    local equipArgs = {
        "Gust",
        game:GetService("Players").LocalPlayer.Character
    }
    game:GetService("ReplicatedStorage"):WaitForChild("Event"):WaitForChild("EquipEffect"):FireServer(unpack(equipArgs))
    
    print("Bought and equipped Gust power!")
end)

print("O")
print("P")
