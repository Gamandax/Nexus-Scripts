local GuiLibrary = loadstring(game:HttpGet("https://pastefy.app/hutEwnSt/raw"))()

local myGui = GuiLibrary.new("Aux • Hub", UDim2.new(0.1, 190, 0, 190))

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local GiveOutReward = ReplicatedStorage.Remotes.Roulette.GiveOutReward
local LayerChanged = ReplicatedStorage.Events.LayerChanged
local Rebirth = ReplicatedStorage.Events.Rebirth
local Bubble = ReplicatedStorage.Remotes.Bubble

local rewardValue = 5000
local isAutoBubble = false

myGui:addTextBox("Set Money (for infinity set 9e925)", function(Value)
    rewardValue = tonumber(Value) or rewardValue
    print("Money set to:", rewardValue)
end)

myGui:addButton("Get Money", function()
    GiveOutReward:FireServer({value = rewardValue, type = "Money", chance = 0.45})
    print("Requested money:", rewardValue)
end)

myGui:addButton("Inf Wins", function()
    LayerChanged:FireServer("Layer6")
    print("Inf Wins triggered")
end)

myGui:addButton("Auto Rebirth", function()
    Rebirth:FireServer()
    print("Auto Rebirth triggered")
end)

myGui:addToggle("Auto Bubble", function(state)
    isAutoBubble = state
    if isAutoBubble then
        
        if not myGui.AutoBubbleCoroutine then
            myGui.AutoBubbleCoroutine = coroutine.wrap(function()
                while isAutoBubble do
                    Bubble:FireServer()
                    wait(0.1)
                end
            end)
            myGui.AutoBubbleCoroutine()
        end
        print("Auto Bubble started")
    else
        myGui.AutoBubbleCoroutine = nil
        print("Auto Bubble stopped")
    end
end, false)

print("Aux • Hub loaded ! Enjoy !")
