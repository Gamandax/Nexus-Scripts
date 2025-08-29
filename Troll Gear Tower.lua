loadstring(game:HttpGet("https://pastefy.app/WAjjo6Om/raw"))()

task.wait(6)

local Library = loadstring(game:HttpGet("https://pastefy.app/H35ZlB5l/raw"))()

local MainWindow = Library:CreateWindow("Aux hub")

local farming = false
local positions = {
    Vector3.new(-114.6, 396.4, 155.2),
    Vector3.new(-92.4, 59.9, -263.3),
    Vector3.new(-69.5, 44.0, -19.0),
    Vector3.new(-205.5, 44.0, 13.5)
}

MainWindow:Toggle("Auto Farm Cash", function(state)
    farming = state
    if farming then
        task.spawn(function()
            while farming do
                local char = game.Players.LocalPlayer.Character
                if char and char:FindFirstChild("HumanoidRootPart") then
                    for _, pos in ipairs(positions) do
                        if not farming then break end
                        char:MoveTo(pos)
                        task.wait(0.5)
                    end
                end
                task.wait()
            end
        end)
    end
end)

local RS = game:GetService("ReplicatedStorage")
local Players = game:GetService("Players")
local TaseRemote = RS:WaitForChild("TasePlayer")
local FreezeRemote = RS:WaitForChild("FreezePlayer")
local ShrinkRemote = RS:WaitForChild("ShrinkPlayer")

local function FreezeAll()
    for _, plr in ipairs(Players:GetPlayers()) do
        if plr ~= Players.LocalPlayer and plr.Character and plr.Character:FindFirstChild("HumanoidRootPart") then
            FreezeRemote:FireServer(plr.Character.HumanoidRootPart.Position)
        end
    end
end

local function TaserAll()
    for _, plr in ipairs(Players:GetPlayers()) do
        if plr ~= Players.LocalPlayer and plr.Character and plr.Character:FindFirstChild("HumanoidRootPart") then
            TaseRemote:FireServer(plr.Character.HumanoidRootPart.Position)
        end
    end
end

local function ShrinkAll()
    for _, plr in ipairs(Players:GetPlayers()) do
        if plr ~= Players.LocalPlayer then
            pcall(function()
                ShrinkRemote:FireServer(plr) -- 🔹 Correct: pass player, not position
            end)
        end
    end
end

MainWindow:Button("Freeze All", FreezeAll)
MainWindow:Button("Taser All", TaserAll)
MainWindow:Button("Shrink All", ShrinkAll)

local ItemsWindow = Library:CreateWindow("Free Gears")

local items = {
    "Banana Peel",
    "Speed Coil",
    "Gravity Coil",
    "Slap Hand",
    "Span",
    "Freeze Ray",
    "Shrink Ray", 
    "Taser",
    "Grapple Hook",
    "Explosives"
}

local buyEvent = RS:WaitForChild("BuyItemEvent")

for _, item in ipairs(items) do
    ItemsWindow:Button("Buy " .. item, function()
        buyEvent:FireServer(item, 0)
        print("Bought:", item)
    end)
end

local autoBuy = false
local buyDelay = 1

ItemsWindow:Toggle("Auto Buy All Items", function(state)
    autoBuy = state
    if autoBuy then
        task.spawn(function()
            while autoBuy do
                for _, item in ipairs(items) do
                    if not autoBuy then break end
                    buyEvent:FireServer(item, 0)
                    print("Auto bought:", item)
                    task.wait(buyDelay)
                end
            end
        end)
    end
end)

ItemsWindow:Slider("Buy Speed (sec)", 0.1, 3, false, function(val)
    buyDelay = val
    print("Buy speed set to:", buyDelay)
end)
