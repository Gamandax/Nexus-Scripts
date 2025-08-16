local PokeLibrary = loadstring(game:HttpGet("https://raw.githubusercontent.com/Gamandax/UI-S-Liblary-/refs/heads/main/Poke%20Liblary.lua"))()

local MyUI = PokeLibrary:Create()

local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Player = Players.LocalPlayer

local autoSheckles = false

MyUI:AddButton(MyUI.LeftPanel, "Note: Private Server Only", function()
  
end)

local seeds = {"Candy Blossom", "Bone Blossom", "Beanstalk", "Ember lily", "Sugar Apple"}
MyUI:AddDropdown(MyUI.LeftPanel, "Seed Spawner", seeds, 1, function(selected, index)
    ReplicatedStorage:WaitForChild("Panel_Remotes"):WaitForChild("GiveSeedsOwner"):FireServer(selected)
    print("Spawned seed:", selected)
end)

local pets = {
    "Tarantula Hawk", "Moth", "Butterfly", "Firefly", "Disco Bee",
    "Red Dragon", "Brown Mouse", "Red Giant Ant", "Red Fox", "Blood Kiwi",
    "Chicken Zombie", "Giant Ant", "Raccoon", "Dragonfly", "Night Owl"
}
MyUI:AddDropdown(MyUI.LeftPanel, "Pet Spawner", pets, 1, function(selected, index)
    ReplicatedStorage:WaitForChild("GivePetRE"):FireServer(selected, 1)
    print("Spawned pet:", selected)
end)

MyUI:AddButton(MyUI.LeftPanel, "Candy Blossom", function()
    ReplicatedStorage:WaitForChild("Panel_Remotes"):WaitForChild("GiveSeedsOwner"):FireServer("Candy Blossom")
end)

MyUI:AddButton(MyUI.LeftPanel, "Bone Blossom", function()
    ReplicatedStorage:WaitForChild("Panel_Remotes"):WaitForChild("GiveSeedsOwner"):FireServer("Bone Blossom")
end)

MyUI:AddButton(MyUI.RightPanel, "Clear Inventory", function()
    ReplicatedStorage:WaitForChild("ClearInventoryEvent"):FireServer()
    print("Inventory cleared!")
end)

MyUI:AddButton(MyUI.RightPanel, "Reset Garden", function()
    ReplicatedStorage:WaitForChild("ResetGardenEvent"):FireServer()
    print("Garden reset!")
end)

MyUI:AddButton(MyUI.RightPanel, "Collect All", function()
    ReplicatedStorage:WaitForChild("GameEvents"):WaitForChild("CollectAllFree_RE"):FireServer()
    print("Collected all!")
end)

MyUI:AddButton(MyUI.RightPanel, "Give Sheckles (100m)", function()
    ReplicatedStorage:WaitForChild("GiveShecklesEvent"):FireServer()
    print("Gave 100m Sheckles!")
end)

MyUI:AddToggle(MyUI.RightPanel, "Auto Sheckles (FAST)", false, function(state)
    autoSheckles = state
    if state then
        print("Auto Sheckles: ON")
    else
        print("Auto Sheckles: OFF")
    end
end)

spawn(function()
    while true do
        if autoSheckles then
            ReplicatedStorage:WaitForChild("GiveShecklesEvent"):FireServer()
        end
        wait(0.01) -- Super fast rate
    end
end)

MyUI:AddButton(MyUI.LeftPanel, "All Seeds x1", function()
    for _, seed in pairs(seeds) do
        ReplicatedStorage:WaitForChild("Panel_Remotes"):WaitForChild("GiveSeedsOwner"):FireServer(seed)
        wait(0.1)
    end
    print("Spawned all seeds!")
end)

MyUI:AddButton(MyUI.LeftPanel, "All Pets x1", function()
    for _, pet in pairs(pets) do
        ReplicatedStorage:WaitForChild("GivePetRE"):FireServer(pet, 1)
        wait(0.1)
    end
    print("Spawned all pets!")
end)

MyUI:AddToggle(MyUI.RightPanel, "Auto Collect", false, function(state)
    _G.AutoCollect = state
    if state then
        spawn(function()
            while _G.AutoCollect do
                pcall(function()
                    ReplicatedStorage:WaitForChild("GameEvents"):WaitForChild("CollectAllFree_RE"):FireServer()
                end)
                wait(5) -- Collect every 5 seconds
            end
        end)
        print("Auto Collect: ON")
    else
        print("Auto Collect: OFF")
    end
end)

MyUI:AddTextBox(MyUI.LeftPanel, "Seed Amount", "1", function(text)
    local amount = tonumber(text) or 1
    _G.SeedAmount = amount
    print("Seed amount set to:", amount)
end)

MyUI:AddTextBox(MyUI.RightPanel, "Pet Amount", "1", function(text)
    local amount = tonumber(text) or 1
    _G.PetAmount = amount
    print("Pet amount set to:", amount)
end)

MyUI:AddButton(MyUI.LeftPanel, "Spawn Selected Seed (x Amount)", function()
    local amount = _G.SeedAmount or 1
    local selectedSeed = seeds[1] -- Default to first seed, you can make this dynamic
    
    for i = 1, amount do
        ReplicatedStorage:WaitForChild("Panel_Remotes"):WaitForChild("GiveSeedsOwner"):FireServer(selectedSeed)
        wait(0.05)
    end
    print("Spawned", selectedSeed, "x" .. amount)
end)

local quickActions = {
    "Collect + Clear + Reset",
    "Spawn All Seeds x5", 
    "Spawn All Pets x5",
    "Emergency Reset"
}

MyUI:AddDropdown(MyUI.RightPanel, "Quick Actions", quickActions, 1, function(selected, index)
    if selected == "Collect + Clear + Reset" then
        ReplicatedStorage:WaitForChild("GameEvents"):WaitForChild("CollectAllFree_RE"):FireServer()
        wait(1)
        ReplicatedStorage:WaitForChild("ClearInventoryEvent"):FireServer()
        wait(1)
        ReplicatedStorage:WaitForChild("ResetGardenEvent"):FireServer()
        print("Full reset completed!")
        
    elseif selected == "Spawn All Seeds x5" then
        for i = 1, 5 do
            for _, seed in pairs(seeds) do
                ReplicatedStorage:WaitForChild("Panel_Remotes"):WaitForChild("GiveSeedsOwner"):FireServer(seed)
                wait(0.05)
            end
        end
        print("Spawned all seeds x5!")
        
    elseif selected == "Spawn All Pets x5" then
        for i = 1, 5 do
            for _, pet in pairs(pets) do
                ReplicatedStorage:WaitForChild("GivePetRE"):FireServer(pet, 1)
                wait(0.05)
            end
        end
        print("Spawned all pets x5!")
        
    elseif selected == "Emergency Reset" then
        autoSheckles = false
        _G.AutoCollect = false
        print("All auto functions stopped!")
    end
end)
