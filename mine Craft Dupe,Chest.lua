local gameremotest = game:GetService("ReplicatedStorage").GameRemotes
local moveitems = gameremotes:FindFirstChild("MoveItem") or gameremotes:FindFirstChild("MoveItems")
local sortitems = gameremotes:FindFirstChild("SortItem") or gameremotes:FindFirstChild("SortItems")
local usetables = false

-- Clean up old UI instances
for i,v in pairs(game.CoreGui:GetChildren()) do
    if v.Name == "UiLib" then
        v:Destroy()
    end
end

-- Create main ScreenGui
local UiLib = Instance.new("ScreenGui")
UiLib.Name = "UiLib"
UiLib.Parent = game.CoreGui
UiLib.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

-- Get next window position for multiple windows
local function getNextWindowPos()
    local biggest = 0
    local ok = nil
    for i, v in pairs(UiLib:GetChildren()) do
        if v.Position.X.Offset > biggest then
            biggest = v.Position.X.Offset
            ok = v
        end
    end
    if biggest == 0 then
        biggest = biggest + 15
    else
        biggest = biggest + ok.Size.X.Offset + 10
    end
    return biggest
end

-- Main Library object
local Library = {}

function Library:Window(title)
    local Top = Instance.new("Frame")
    local UICorner = Instance.new("UICorner")
    local Container = Instance.new("Frame")
    local UIListLayout_2 = Instance.new("UIListLayout")
    local Line = Instance.new("Frame")
    local Title = Instance.new("TextLabel")
    local Minimize = Instance.new("ImageButton")
    
    Top.Name = "Top"
    Top.Parent = UiLib
    Top.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    Top.BorderSizePixel = 0
    Top.Position = UDim2.new(0, getNextWindowPos(), 0.01, 0)
    Top.Size = UDim2.new(0, 204, 0, 28)
    Top.Active = true
    Top.Draggable = true
    
    UICorner.CornerRadius = UDim.new(0, 4)
    UICorner.Parent = Top
    
    Container.Name = "Container"
    Container.Parent = Top
    Container.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Container.BackgroundTransparency = 1.0
    Container.ClipsDescendants = true
    Container.Position = UDim2.new(0, 0, 1, 0)
    Container.Size = UDim2.new(0, 204, 0, 762)
    
    UIListLayout_2.Parent = Container
    UIListLayout_2.HorizontalAlignment = Enum.HorizontalAlignment.Center
    UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
    
    Line.Name = "Line"
    Line.Parent = Top
    Line.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    Line.BorderSizePixel = 0
    Line.Position = UDim2.new(0, 0, 0.892857134, 0)
    Line.Size = UDim2.new(0, 204, 0, 3)
    
    Title.Name = "Title"
    Title.Parent = Top
    Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Title.BackgroundTransparency = 1.0
    Title.Position = UDim2.new(0.0245098043, 0, 0.142857149, 0)
    Title.Size = UDim2.new(0, 174, 0, 20)
    Title.Font = Enum.Font.GothamSemibold
    Title.Text = title
    Title.TextColor3 = Color3.fromRGB(255, 255, 255)
    Title.TextScaled = true
    Title.TextSize = 14.0
    Title.TextWrapped = true
    Title.TextXAlignment = Enum.TextXAlignment.Left
    
    Minimize.Name = "Minimize"
    Minimize.Parent = Top
    Minimize.BackgroundTransparency = 1.0
    Minimize.Position = UDim2.new(0.857451003, 0, 0, 0)
    Minimize.Rotation = 90.0
    Minimize.Size = UDim2.new(0, 25, 0, 25)
    Minimize.ZIndex = 2
    Minimize.Image = "rbxassetid://3926305904"
    Minimize.ImageColor3 = Color3.fromRGB(0, 255, 102)
    Minimize.ImageRectOffset = Vector2.new(764, 244)
    Minimize.ImageRectSize = Vector2.new(36, 36)
    
    -- Minimize button functionality
    local function UZVNGAL_fake_script()
        local script = Instance.new('Script', Minimize)
        
        script.Parent.MouseButton1Click:Connect(function()
            if script.Parent.Parent.Container.Size == UDim2.new(0, 204, 0, 762) then 
                game:GetService("TweenService"):Create(script.Parent, TweenInfo.new(0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Rotation = 180}):Play()
                game:GetService("TweenService"):Create(script.Parent, TweenInfo.new(0.25), {ImageColor3 = Color3.fromRGB(255, 0, 68)}):Play()
                script.Parent.Parent.Container:TweenSize(UDim2.new(0, 204, 0, 0), "InOut", "Sine", 0.25, true)
                wait(0.25)
                script.Parent.Parent.Line.Visible = false
            else
                game:GetService("TweenService"):Create(script.Parent, TweenInfo.new(0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Rotation = 90}):Play()
                game:GetService("TweenService"):Create(script.Parent, TweenInfo.new(0.25), {ImageColor3 = Color3.fromRGB(0, 255, 102)}):Play()
                script.Parent.Parent.Container:TweenSize(UDim2.new(0, 204, 0, 762), "InOut", "Sine", 0.2, true)
                script.Parent.Parent.Line.Visible = true
            end
        end)
    end
    coroutine.wrap(UZVNGAL_fake_script)()
    
    local Lib = {}
    
    function Lib:Button(name, callback)
        local ButtonContainer = Instance.new("Frame")
        local Button = Instance.new("TextButton")
        local ButtonAni = Instance.new("Frame")
        local UICorner_2 = Instance.new("UICorner")
        local UIListLayout = Instance.new("UIListLayout")
        local ButtonName = Instance.new("TextLabel")
        
        ButtonContainer.Name = "ButtonContainer"
        ButtonContainer.Parent = Container
        ButtonContainer.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
        ButtonContainer.BorderSizePixel = 0
        ButtonContainer.Size = UDim2.new(0, 204, 0, 28)
        
        Button.Name = "Button"
        Button.Parent = ButtonContainer
        Button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Button.BackgroundTransparency = 1.0
        Button.Size = UDim2.new(0, 204, 0, 28)
        Button.Font = Enum.Font.SourceSans
        Button.Text = ""
        Button.TextColor3 = Color3.fromRGB(0, 0, 0)
        Button.TextSize = 14.0
        Button.MouseButton1Click:Connect(function()
            callback()
        end)
        
        ButtonAni.Name = "ButtonAni"
        ButtonAni.Parent = Button
        ButtonAni.BackgroundColor3 = Color3.fromRGB(0, 255, 102)
        ButtonAni.Position = UDim2.new(0.0245098043, 0, 0.0714285746, 0)
        
        UICorner_2.CornerRadius = UDim.new(0, 4)
        UICorner_2.Parent = ButtonAni
        
        UIListLayout.Parent = Button
        UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
        UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
        UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center
        
        ButtonName.Name = "ButtonName"
        ButtonName.Parent = ButtonContainer
        ButtonName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        ButtonName.BackgroundTransparency = 1.0
        ButtonName.Position = UDim2.new(0.0245098043, 0, 0.142857149, 0)
        ButtonName.Size = UDim2.new(0, 194, 0, 20)
        ButtonName.ZIndex = 3
        ButtonName.Font = Enum.Font.GothamSemibold
        ButtonName.Text = name
        ButtonName.TextColor3 = Color3.fromRGB(255, 255, 255)
        ButtonName.TextScaled = true
        ButtonName.TextSize = 14.0
        ButtonName.TextWrapped = true
        
        local function ZNVYM_fake_script()
            local script = Instance.new('Script', Button)
            
            script.Parent.MouseButton1Click:Connect(function()
                script.Parent.ButtonAni:TweenSize(UDim2.new(0, 194, 0, 24), 'InOut', "Sine", 0.3, true)
                wait(0.45)
                script.Parent.ButtonAni:TweenSize(UDim2.new(0, 0, 0, 0), "InOut", "Sine", 0.3, true)
            end)
        end
        coroutine.wrap(ZNVYM_fake_script)()
    end
    
    function Lib:Toggle(name, callback)
        local ToggleContainer = Instance.new("Frame")
        local ToggleName = Instance.new("TextLabel")
        local Toggle = Instance.new("TextButton")
        local UICorner_3 = Instance.new("UICorner")
        local Off = Instance.new("ImageLabel")
        local On = Instance.new("ImageLabel")
        
        ToggleContainer.Name = "ToggleContainer"
        ToggleContainer.Parent = Container
        ToggleContainer.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
        ToggleContainer.BorderSizePixel = 0
        ToggleContainer.Size = UDim2.new(0, 204, 0, 30)
        
        ToggleName.Name = "ToggleName"
        ToggleName.Parent = ToggleContainer
        ToggleName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        ToggleName.BackgroundTransparency = 1.0
        ToggleName.Position = UDim2.new(0.0245098043, 0, 0.142857105, 0)
        ToggleName.Size = UDim2.new(0, 169, 0, 20)
        ToggleName.Font = Enum.Font.GothamSemibold
        ToggleName.Text = name
        ToggleName.TextColor3 = Color3.fromRGB(255, 255, 255)
        ToggleName.TextScaled = true
        ToggleName.TextSize = 14.0
        ToggleName.TextWrapped = true
        ToggleName.TextXAlignment = Enum.TextXAlignment.Left
        
        Toggle.Name = "Toggle"
        Toggle.Parent = ToggleContainer
        Toggle.BackgroundColor3 = Color3.fromRGB(39, 39, 39)
        Toggle.BorderColor3 = Color3.fromRGB(27, 42, 53)
        Toggle.Position = UDim2.new(0.852941215, 0, 0.06627, 0)
        Toggle.Size = UDim2.new(0, 25, 0, 23)
        Toggle.AutoButtonColor = false
        Toggle.Font = Enum.Font.SourceSans
        Toggle.Text = ""
        Toggle.TextColor3 = Color3.fromRGB(0, 0, 0)
        Toggle.TextSize = 14.0
        local Toggled = false
        Toggle.MouseButton1Click:Connect(function()
            if Toggled == false then
                Toggled = true
            else
                Toggled = false
            end
            callback(Toggled)
        end)
        
        UICorner_3.CornerRadius = UDim.new(0, 3)
        UICorner_3.Parent = Toggle
        
        Off.Name = "Off"
        Off.Parent = Toggle
        Off.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Off.BackgroundTransparency = 1.0
        Off.Size = UDim2.new(0, 25, 0, 25)
        Off.Image = "rbxassetid://3926305904"
        Off.ImageColor3 = Color3.fromRGB(255, 0, 68)
        Off.ImageRectOffset = Vector2.new(924, 724)
        Off.ImageRectSize = Vector2.new(36, 36)
        
        On.Name = "On"
        On.Parent = Toggle
        On.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        On.BackgroundTransparency = 1.0
        On.Size = UDim2.new(0, 25, 0, 25)
        On.Visible = false
        On.Image = "rbxassetid://3926305904"
        On.ImageColor3 = Color3.fromRGB(0, 255, 102)
        On.ImageRectOffset = Vector2.new(312, 4)
        On.ImageRectSize = Vector2.new(24, 24)
        
        local function XLBZDX_fake_script()
            local script = Instance.new('Script', Toggle)
            
            script.Parent.MouseButton1Click:Connect(function()
                if script.Parent.Off.Rotation == 0 then
                    script.Parent.On.Rotation = 0
                    game:GetService("TweenService"):Create(script.Parent.Off, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Rotation = 360}):Play()
                    wait(0.3)
                    script.Parent.Off.Visible = false
                    script.Parent.On.Visible = true
                else
                    script.Parent.Off.Rotation = 0
                    game:GetService("TweenService"):Create(script.Parent.On, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Rotation = -360}):Play()
                    wait(0.3)
                    script.Parent.On.Visible = false
                    script.Parent.Off.Visible = true
                end
            end)
        end
        coroutine.wrap(XLBZDX_fake_script)()
    end
    
    return Lib
end

-- Notification System
if _G.dEAcG3fvBqVoPzVnAFk == nil then
    _G.dEAcG3fvBqVoPzVnAFk = ""
end

function notify(text, overwrite, response)
    local clickfunction = response or function() return end
    local override = overwrite or false
    if text == _G.dEAcG3fvBqVoPzVnAFk and override == false then return end
    
    spawn(function()
        for i,v in pairs(game.CoreGui:GetChildren()) do
            spawn(function()
                if v.Name == "MNotify" then
                    pcall(function()
                        v.ImageButton.ZIndex = 58
                        v.ImageButton.TextLabel.ZIndex = 59
                        v.ImageButton:TweenPosition(UDim2.new(0.01, 0, 1, 0), "Out", "Quint", .7, true)
                        game:GetService("TweenService"):Create(v.ImageButton.TextLabel, TweenInfo.new(0.8, Enum.EasingStyle.Quint, Enum.EasingDirection.Out, 0, false, 0), {TextTransparency = 1})
                        wait(1)
                        v:Destroy()
                    end)
                end
            end)
        end
        
        _G.dEAcG3fvBqVoPzVnAFk = text
        local clickfunction = response or function() return end
        
        local function CreateInstance(cls, props)
            local inst = Instance.new(cls)
            for i,v in pairs(props) do
                inst[i] = v
            end
            return inst
        end
        
        local MNotify = CreateInstance('ScreenGui', {DisplayOrder=0, Enabled=true, ResetOnSpawn=true, Name='MNotify', Parent=game.CoreGui})
        local ImageButton = CreateInstance('ImageButton', {
            Image='rbxassetid://10518086612',
            ImageColor3=Color3.new(0.129412, 0.129412, 0.129412),
            ImageRectOffset=Vector2.new(0, 0),
            ImageRectSize=Vector2.new(0, 0),
            ImageTransparency=0,
            ScaleType=Enum.ScaleType.Slice,
            SliceCenter=Rect.new(20, 20, 20, 20),
            AutoButtonColor=true,
            Modal=false,
            Selected=false,
            Style=Enum.ButtonStyle.Custom,
            Active=true,
            AnchorPoint=Vector2.new(0, 0),
            BackgroundColor3=Color3.new(1, 1, 1),
            BackgroundTransparency=1,
            BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),
            BorderSizePixel=1,
            ClipsDescendants=false,
            Draggable=false,
            Position=UDim2.new(0.00978, 0, 1, 0),
            Rotation=0,
            Selectable=true,
            Size=UDim2.new(0, 234, 0, 40),
            SizeConstraint=Enum.SizeConstraint.RelativeXY,
            Visible=true,
            ZIndex=60,
            Name='ImageButton',
            Parent = MNotify
        })
        
        local TextLabel = CreateInstance('TextLabel', {
            Font=Enum.Font.SourceSansLight,
            FontSize=Enum.FontSize.Size24,
            Text=text,
            TextColor3=Color3.new(0.807843, 0.807843, 0.807843),
            TextScaled=false,
            TextSize=24,
            TextStrokeColor3=Color3.new(0, 0, 0),
            TextStrokeTransparency=1,
            TextTransparency=0,
            TextWrapped=false,
            TextXAlignment=Enum.TextXAlignment.Center,
            TextYAlignment=Enum.TextYAlignment.Center,
            Active=false,
            AnchorPoint=Vector2.new(0, 0),
            BackgroundColor3=Color3.new(1, 1, 1),
            BackgroundTransparency=1,
            BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),
            BorderSizePixel=1,
            ClipsDescendants=false,
            Draggable=false,
            Position=UDim2.new(0.132478639, 0, 0, 0),
            Rotation=0,
            Selectable=false,
            Size=UDim2.new(0, 174, 0, 40),
            SizeConstraint=Enum.SizeConstraint.RelativeXY,
            Visible=true,
            ZIndex=61,
            Name='TextLabel',
            Parent = ImageButton
        })
        
        local UIListLayout = CreateInstance('UIListLayout', {
            Padding = UDim.new(0, 0),
            FillDirection = Enum.FillDirection.Vertical,
            HorizontalAlignment = Enum.HorizontalAlignment.Center,
            SortOrder = Enum.SortOrder.Name,
            VerticalAlignment = Enum.VerticalAlignment.Top,
            Name = 'UIListLayout',
            Parent = ImageButton
        })
        
        local value = 1
        if string.len(text) <= 49 then
            ImageButton.Size = UDim2.new(0, game:GetService("TextService"):GetTextSize(text, 24, Enum.Font.SourceSansLight, Vector2.new(500, 900)).X + 57, 0, 40)
        elseif string.len(text) > 49 then
            value = math.ceil(string.len(string.sub(text, 49))/9)
            ImageButton.Size = UDim2.new(0, game:GetService("TextService"):GetTextSize(text, 24, Enum.Font.SourceSansLight, Vector2.new(500 + value * 100, 900)).X + 57, 0, 40)
        end
        
        ImageButton:TweenPosition(UDim2.new(0.01, 0, 1, -60), "Out", "Quint", .7, true)
        
        spawn(function()
            wait(6.7)
            pcall(function()
                ImageButton.ZIndex = 58
                TextLabel.ZIndex = 59
                ImageButton:TweenPosition(UDim2.new(0.01, 0, 1, 0), "Out", "Quint", .7, true)
                _G.dEAcG3fvBqVoPzVnAFk = ""
                wait(1)
                MNotify:Destroy()
            end)
        end)
        
        ImageButton.MouseButton1Up:Connect(function()
            if response == nil then return end
            spawn(function()
                pcall(function()
                    ImageButton.ZIndex = 58
                    TextLabel.ZIndex = 59
                    ImageButton:TweenPosition(UDim2.new(0.01, 0, 1, 0), "Out", "Quint", .7, true)
                    _G.dEAcG3fvBqVoPzVnAFk = ""
                    wait(1)
                    MNotify:Destroy()
                end)
            end)
            clickfunction()
        end)
    end)
end

local function round(n)
    return math.floor(n + 0.5)
end

local gotone = false
local blocksinfo = require(game:GetService("ReplicatedStorage").AssetsMod.BlockInfo)
local ids = require(game:GetService("ReplicatedStorage").AssetsMod.IDs)

-- X-Ray color configuration
local u128 = {
    ["CoalOre"] = Color3.fromRGB(56, 59, 56),
    ["IronOre"] = Color3.fromRGB(110, 105, 105),
    ["SteelOre"] = Color3.fromRGB(110, 105, 105),
    ["RainbowiteOre"] = Color3.fromRGB(255, 0, 255),
    ["GoldOre"] = Color3.fromRGB(245, 242, 71),
    ["RubyOre"] = Color3.fromRGB(245, 71, 18),
    ["DiamondOre"] = Color3.fromRGB(35, 207, 219),
    ["SapphireOre"] = Color3.fromRGB(18, 18, 120),
    ["OverlordOre"] = Color3.fromRGB(18, 18, 120),
    ["Obsidian"] = Color3.fromRGB(0, 0, 0),
    ["PurpleFlower"] = Color3.fromRGB(255, 0, 255),
    ["DiamondLuckyBlock"] = Color3.fromRGB(51, 204, 51),
    ["GoldLuckyBlock"] = Color3.fromRGB(153, 102, 0),
}

local hiddenore = "SapphireOre"
local hiddenoreid = 118
local toModify = {}
local theresdoor = false
local rng = math.random
math.randomseed(69420)

-- Auto-generate colors for unlisted ores
for i, v in pairs(blocksinfo) do
    if not u128[i] and string.find(i, "Ore") then
        u128[i] = Color3.fromRGB(rng(0, 255), rng(0, 255), rng(0, 255))
        if type(v) == "table" and v.id then
            toModify[v.id] = true 
        end
    end
    if u128[i] and type(v) == "table" and v.id then
        toModify[v.id] = true
        if i == hiddenore then
            hiddenoreid = v.id 
        end
    end
    if string.find(i, "Door") then
        theresdoor = true
    end
end

-- Clean up unused ore colors
for i, v in pairs(u128) do
    if not blocksinfo[i] then
        u128[i] = nil
    end
end

-- Try first method to modify hidden ores
local firstmethod = false
pcall(function()
    blocksinfo.build_module(ids)
    for i, xo in pairs(ids.ByID.Blocks) do
        if type(xo) == "table" and xo.Name and u128[xo.Name] then
            toModify[xo.id] = true
            if xo.Name == hiddenore then
                hiddenoreid = xo.id 
            end
            firstmethod = true
        end
    end
end)

-- Try second method if first fails
if not firstmethod then
    for eyedee, v in pairs(ids) do
        if type(v) == "table" then
            for _e, _v in pairs(v) do
                if type(_v) == "table" and _e ~= "Items" and _e ~= "LegacyBlocks" then
                    for __e, __v in pairs(_v) do
                        if u128[__v] then
                            toModify[eyedee] = true
                        end 
                    end
                else
                    if u128[_v] then
                        toModify[eyedee] = true
                    end 
                end
            end
        else
            if u128[v] then
                toModify[eyedee] = true
            end
        end
    end
end

-- Modify hidden ore table using GC
get_gc_objects = get_gc_objects or getgc
local everything_ng = get_gc_objects(true)

suc, err = pcall(function()
    task.wait(1)
    for i,v in next, everything_ng do
        if type(v) == "table" and rawget(v, hiddenoreid) ~= nil and rawget(v, hiddenoreid) ~= false then
            suc, err = pcall(function()
                setreadonly(v, false)
                for _i, _v in pairs(toModify) do
                    rawset(v, _i, true) 
                end
            end)
            gotone = true
            if not suc then
                warn(err) 
            end
        end
    end
end)

task.wait(1)
if not gotone then
    notify("❌Couldn't edit Hidden Ores table. X-Ray might not show ores like Sapphire❌")
else
    notify("✔Edited Hidden Ores table. X-Ray is fully functional!✔")
end

-- Game remotes
local brba = game:GetService("ReplicatedStorage").GameRemotes.BreakBlock
local pla = game:GetService("ReplicatedStorage").GameRemotes.PlaceBlock

local serverhop = false
pcall(function()
    serverhop = loadstring(game:HttpGet("https://raw.githubusercontent.com/LeoKholYt/roblox/main/lk_serverhop.lua"))()
end)

local FireServer = Instance.new("RemoteEvent").FireServer
local InvokeServer = Instance.new("RemoteFunction").InvokeServer

local gost = "👻👻👻👻👻👻👻👻👻👻👻👻👻👻👻👻👻👻👻👻👻👻👻👻👻👻👻👻👻👻👻👻👻👻👻👻👻👻👻👻👻👻👻👻👻👻👻👻👻👻👻👻👻👻👻👻👻👻👻👻👻👻👻👻👻👻👻👻👻👻👻👻👻👻👻👻👻👻👻👻👻👻👻👻👻👻👻👻👻👻👻👻👻👻👻👻👻👻👻👻"

-- Create windows
local w = Library:Window("😎Main Scripts😎")
local misc = Library:Window("🔧Settings and Misc.🔧")
local set = Library:Window("🃃X-Ray BlackList🃃")

local x = workspace:FindFirstChild("Blocks")
local offon = false
local blacklist = {}

for impr, _ in pairs(u128) do
    blacklist[impr] = false
end

-- Create X-Ray highlight
function creat(colo, part)
    local a = Instance.new("BillboardGui")
    local b = Instance.new("Frame")
    a.Name = "bulb"
    a.Parent = part
    a.Active = true
    a.AlwaysOnTop = true
    a.Size = UDim2.new(1, 0, 1, 0)
    b.Name = "b"
    b.Parent = a
    b.BackgroundColor3 = colo
    b.BorderColor3 = Color3.fromRGB(31, 31, 31)
    b.BorderSizePixel = 4
    b.Position = UDim2.new(0.1001, 0, 0.1001, 0)
    b.Size = UDim2.new(0.8012, 0, 0.8012, 0)
end

-- X-Ray Toggle
w:Toggle("X-Ray", function(v)
    offon = v
    if not v then
        for _, _b in pairs(x:GetChildren()) do
            for _, d in pairs(_b:GetChildren()) do
                if u128[d.Name] and d:FindFirstChild("bulb") then
                    pcall(function()
                        d:FindFirstChild("bulb"):Destroy()
                    end)
                end
            end
        end 
    end
    
    if v then
        if not funchaha then
            funchaha = x.DescendantAdded:Connect(
                function(e)
                    if e:IsA("BasePart") and u128[e.Name] and blacklist[e.Name] == false and offon == true then
                        creat(u128[e.Name], e)
                    end
                end
            )
        end
        
        for _, _X in pairs(x:GetChildren()) do
            for _, d in pairs(_X:GetChildren()) do
                if u128[d.Name] and not d:FindFirstChild("bulb") and blacklist[d.Name] == false then
                    creat(u128[d.Name], d)
                end
            end
        end
    end
end)

local offon2 = false
local xraytable = {}

-- Convert string to number
function conv(txt)
    local str = ""
    string.gsub(txt, "%d+", function(e)
        str = str .. e
    end)
    return str
end

w:Button("🤑🤑👻Dupes👻🤑🤑", function()
end)

w:Button("Dupe Selected Item", function()
    local b = game:GetService("Players").LocalPlayer.PlayerGui.HUDGui.Inventory.Slots["Slot-1"].SlotNA.Count
    
    if b.Text == "0" then
        notify("❗Select/click on the item in your inventory first❗ [PATCHED IN NEWER VERSIONS OF MINERSCAVE]")
        return
    end
    
    if b.Text == "64" then
        notify("❗Reached the item limit❗ [PATCHED IN NEWER VERSIONS OF MINERSCAVE]")
        return
    end
    
    if b.Text == "1" then
        te = nil
        for HAHA, HAHAHA in pairs(b.Parent.Parent.Parent:GetChildren()) do
            if HAHAHA.Name ~= "Slot-1" and HAHAHA:FindFirstChild("Slot") and b.Parent.Display:GetChildren()[1] and HAHAHA.Slot.Display:GetChildren()[1] then
                if b.Parent.Display:GetChildren()[1].Name ~= "SlotB" and b.Parent.Display:GetChildren()[1].Name == HAHAHA.Slot.Display:GetChildren()[1].Name then
                    te = HAHAHA.Name
                    break
                elseif b.Parent.Display:GetChildren()[1].Name == "SlotB" and HAHAHA.Slot.Display:GetChildren()[1]:GetChildren()[1] and b.Parent.Display:GetChildren()[1]:GetChildren()[1].Name == HAHAHA.Slot.Display:GetChildren()[1]:GetChildren()[1].Name then
                    te = HAHAHA.Name
                    break
                end
            end
        end
        
        if not te then
            notify("❗Not Enough Items! Get atleast 2 of these❗ [PATCHED IN NEWER VERSIONS OF MINERSCAVE]")
            return
        else
            local howmuch = 64 - tonumber(b.Text)
            local suc, err = pcall(function()
                if usetables then
                    moveitems:InvokeServer({ [1] = -1, [2] = conv(te), [3] = true, [4] = -howmuch})
                else
                    moveitems:InvokeServer(-1, conv(te), true, -howmuch)
                end
            end)
            
            if not suc then
                notify("❌Something went wrong.. Maybe try Enabling Remote Tables Method❌")
                return 
            end
            
            notify("❗WARNING❗ : PATCHED IN NEWER VERSIONS OF MINERSCAVE❗")
        end
    end
    
    if not te then
        local howmuch = 64 - tonumber(b.Text)
        local suc, err = pcall(function()
            if usetables then
                moveitems:InvokeServer({[1] = -1, [2] = 82, [3] = true, [4] = -howmuch})
            else
                moveitems:InvokeServer(-1, 82, true, -howmuch)
            end
        end)
        
        if not suc then
            notify("❌Something went wrong.. Maybe try Enabling Remote Tables Method❌")
            return 
        end
        
        notify("❗WARNING❗ : PATCHED IN NEWER VERSIONS OF MINERSCAVE❗")
    end
end)

-- Settings
misc:Toggle("Use Remote Tables Method", function(v)
    usetables = v
end)

-- X-Ray Blacklist toggles
for oregg, _ in pairs(u128) do
    set:Toggle(oregg, function(v)
        blacklist[oregg] = v
    end)
end

notify("👻Script Loaded!👻")
