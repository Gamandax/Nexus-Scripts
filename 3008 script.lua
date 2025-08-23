-- 🌀 УНИВЕРСАЛЬНОЕ МЕНЮ С КЛЮЧ-СИСТЕМОЙ
local BUTTON_IMAGE_ID = "rbxassetid://107781958606208"

-- 🔑 Ключи (можно добавить несколько)
local VALID_KEYS = {
    "3008RR",
}

-- 🔗 Ссылка на получение ключа
local GET_KEY_LINK = "https://discord.gg/sEHz2Ex7"

local player = game.Players.LocalPlayer
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Parent = player:WaitForChild("PlayerGui")
ScreenGui.ResetOnSpawn = false

-- Окно ввода ключа
local KeyFrame = Instance.new("Frame")
KeyFrame.Parent = ScreenGui
KeyFrame.Size = UDim2.new(0, 300, 0, 200)
KeyFrame.Position = UDim2.new(0.5, -150, 0.5, -100)
KeyFrame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
Instance.new("UICorner", KeyFrame).CornerRadius = UDim.new(0, 12)

local KeyLabel = Instance.new("TextLabel", KeyFrame)
KeyLabel.Size = UDim2.new(1, 0, 0, 40)
KeyLabel.BackgroundTransparency = 1
KeyLabel.Text = "Введите ключ:"
KeyLabel.Font = Enum.Font.GothamBold
KeyLabel.TextSize = 18
KeyLabel.TextColor3 = Color3.fromRGB(255,255,255)

local KeyBox = Instance.new("TextBox", KeyFrame)
KeyBox.Size = UDim2.new(0.8, 0, 0, 35)
KeyBox.Position = UDim2.new(0.1, 0, 0.35, 0)
KeyBox.PlaceholderText = "Ваш ключ..."
KeyBox.Text = ""
KeyBox.Font = Enum.Font.Gotham
KeyBox.TextSize = 16
KeyBox.BackgroundColor3 = Color3.fromRGB(35,35,35)
KeyBox.TextColor3 = Color3.fromRGB(255,255,255)
Instance.new("UICorner", KeyBox).CornerRadius = UDim.new(0,8)

local SubmitBtn = Instance.new("TextButton", KeyFrame)
SubmitBtn.Size = UDim2.new(0.6, 0, 0, 35)
SubmitBtn.Position = UDim2.new(0.2, 0, 0.65, 0)
SubmitBtn.Text = "Подтвердить"
SubmitBtn.Font = Enum.Font.GothamBold
SubmitBtn.TextSize = 16
SubmitBtn.BackgroundColor3 = Color3.fromRGB(0,170,255)
SubmitBtn.TextColor3 = Color3.fromRGB(255,255,255)
Instance.new("UICorner", SubmitBtn).CornerRadius = UDim.new(0,8)

local GetKeyBtn = Instance.new("TextButton", KeyFrame)
GetKeyBtn.Size = UDim2.new(0.6, 0, 0, 35)
GetKeyBtn.Position = UDim2.new(0.2, 0, 0.82, 0)
GetKeyBtn.Text = "Get Key"
GetKeyBtn.Font = Enum.Font.GothamBold
GetKeyBtn.TextSize = 16
GetKeyBtn.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
GetKeyBtn.TextColor3 = Color3.fromRGB(0,0,0)
Instance.new("UICorner", GetKeyBtn).CornerRadius = UDim.new(0,8)

-- Главное меню
local MainFrame = Instance.new("Frame")
MainFrame.Parent = ScreenGui
MainFrame.Size = UDim2.new(0, 500, 0, 350)
MainFrame.Position = UDim2.new(0.5, -250, 0.5, -175)
MainFrame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
MainFrame.Visible = false
Instance.new("UICorner", MainFrame).CornerRadius = UDim.new(0, 15)

-- Шапка меню
local HeaderLabel = Instance.new("TextLabel", MainFrame)
HeaderLabel.Size = UDim2.new(1, 0, 0, 40)
HeaderLabel.Position = UDim2.new(0, 10, 0, 10)
HeaderLabel.BackgroundTransparency = 1
HeaderLabel.TextColor3 = Color3.fromRGB(255,255,255)
HeaderLabel.Font = Enum.Font.GothamBold
HeaderLabel.TextSize = 16
HeaderLabel.Text = "BY ROBANIK | 3008 (IKEA)"

-- Вкладки
local TabScroll = Instance.new("ScrollingFrame")
TabScroll.Parent = MainFrame
TabScroll.Size = UDim2.new(1, -20, 0, 40)
TabScroll.Position = UDim2.new(0, 10, 0, 60)
TabScroll.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
TabScroll.ScrollBarThickness = 6
TabScroll.CanvasSize = UDim2.new(0,0,0,0)
TabScroll.ScrollBarImageColor3 = Color3.fromRGB(0,170,255)
TabScroll.BorderSizePixel = 0
Instance.new("UICorner", TabScroll).CornerRadius = UDim.new(0, 10)

local UIListLayout = Instance.new("UIListLayout")
UIListLayout.FillDirection = Enum.FillDirection.Horizontal
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0, 10)
UIListLayout.Parent = TabScroll

local ContentFrame = Instance.new("Frame")
ContentFrame.Parent = MainFrame
ContentFrame.Size = UDim2.new(1, -20, 1, -110)
ContentFrame.Position = UDim2.new(0, 10, 0, 110)
ContentFrame.BackgroundTransparency = 1

-- Хранилища
local Pages = {}
local CurrentPage = nil

-- 📌 Функция добавления вкладки
local function AddTab(name)
    local btn = Instance.new("TextButton")
    btn.Size = UDim2.new(0, 120, 1, 0)
    btn.Text = name
    btn.Font = Enum.Font.GothamBold
    btn.TextSize = 18
    btn.TextColor3 = Color3.fromRGB(255,255,255)
    btn.BackgroundTransparency = 1
    btn.Parent = TabScroll

    wait()
    TabScroll.CanvasSize = UDim2.new(0, UIListLayout.AbsoluteContentSize.X + 10, 0, 0)

    local page = Instance.new("ScrollingFrame", ContentFrame)
    page.Size = UDim2.new(1,0,1,0)
    page.CanvasSize = UDim2.new(0,0,0,0)
    page.ScrollBarThickness = 6
    page.Visible = false
    page.BackgroundTransparency = 1
    Pages[name] = page

    btn.MouseButton1Click:Connect(function()
        if CurrentPage then CurrentPage.Visible = false end
        page.Visible = true
        CurrentPage = page
    end)

    if not CurrentPage then
        page.Visible = true
        CurrentPage = page
    end
end

-- 📌 Функция добавления кнопки
local function AddButton(tabName, text, callback)
    local page = Pages[tabName]
    if not page then return warn("Вкладка "..tabName.." не найдена!") end

    local btn = Instance.new("TextButton", page)
    btn.Size = UDim2.new(0, 200, 0, 40)
    btn.Position = UDim2.new(0, 20, 0, (#page:GetChildren()-1)*50)
    btn.Text = text
    btn.Font = Enum.Font.GothamBold
    btn.TextSize = 18
    btn.BackgroundColor3 = Color3.fromRGB(0,170,255)
    btn.TextColor3 = Color3.fromRGB(255,255,255)
    Instance.new("UICorner", btn).CornerRadius = UDim.new(0, 10)

    page.CanvasSize = UDim2.new(0,0,0,(#page:GetChildren()-1)*50+60)

    btn.MouseButton1Click:Connect(callback)
end

-- Кнопка открытия меню (после ввода ключа)
local OpenButton = Instance.new("ImageButton")
OpenButton.Parent = ScreenGui
OpenButton.Size = UDim2.new(0, 60, 0, 60)
OpenButton.Position = UDim2.new(0, 20, 0.5, -30)
OpenButton.BackgroundTransparency = 1
OpenButton.Image = BUTTON_IMAGE_ID
OpenButton.ScaleType = Enum.ScaleType.Fit
OpenButton.Visible = false
Instance.new("UICorner", OpenButton).CornerRadius = UDim.new(1, 0)

local menuOpen = false
OpenButton.MouseButton1Click:Connect(function()
    menuOpen = not menuOpen
    MainFrame.Visible = menuOpen
end)

-- Проверка ключа
SubmitBtn.MouseButton1Click:Connect(function()
    local input = KeyBox.Text
    for _, key in ipairs(VALID_KEYS) do
        if input == key then
            KeyFrame.Visible = false
            OpenButton.Visible = true
            return
        end
    end
    KeyLabel.Text = "❌ Неверный ключ!"
    KeyLabel.TextColor3 = Color3.fromRGB(255,100,100)
end)

-- 📌 Кнопка Get Key (копирует ссылку)
GetKeyBtn.MouseButton1Click:Connect(function()
    setclipboard(GET_KEY_LINK) -- ⚡ копирует ссылку
    KeyLabel.Text = "✔️ Ссылка скопирована!"
    KeyLabel.TextColor3 = Color3.fromRGB(100,255,100)
end)

-- 📌 Пример
AddTab("Home")
AddTab("Player")
AddTab("Esp")
AddTab("Spawn Item")
AddTab("Credit")

------------------------------------------------

AddButton("Home", "Hello World, LOL", function()
end)

------------------------------------------------

AddButton("Player", "WalkSpeed 50", function()
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")

humanoid.WalkSpeed = 50
end)

AddButton("Player", "WalkSpeed 16", function()
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")

humanoid.WalkSpeed = 16
end)

------------------------------------------------

AddButton("Esp", "Esp Employee", function()
local Workspace = game:GetService("Workspace")
local EmployeesFolder = Workspace.GameObjects.Physical.Employees

-- Проходим по всем сотрудникам в папке
for _, employee in pairs(EmployeesFolder:GetChildren()) do
    -- Проверяем, есть ли HumanoidRootPart или UpperTorso
    local rootPart = employee:FindFirstChild("HumanoidRootPart") 
                    or employee:FindFirstChild("UpperTorso") 
                    or employee:FindFirstChild("Head")

    if rootPart then
        -- Добавляем Highlight (подсветка)
        if not employee:FindFirstChild("EmployeeHighlight") then
            local highlight = Instance.new("Highlight")
            highlight.Name = "EmployeeHighlight"
            highlight.FillColor = Color3.fromRGB(255,0,0) -- цвет подсветки
            highlight.OutlineColor = Color3.fromRGB(255,255,255)
            highlight.Parent = employee
        end

        -- Добавляем BillboardGui с текстом
        if not rootPart:FindFirstChild("EmployeeESP") then
            local billboard = Instance.new("BillboardGui")
            billboard.Name = "EmployeeESP"
            billboard.Size = UDim2.new(0,100,0,50)
            billboard.StudsOffset = Vector3.new(0,3,0)
            billboard.AlwaysOnTop = true
            billboard.Parent = rootPart

            local label = Instance.new("TextLabel")
            label.Size = UDim2.new(1,0,1,0)
            label.BackgroundTransparency = 1
            label.Text = "employee"
            label.TextColor3 = Color3.fromRGB(255,0,0)
            label.TextScaled = true
            label.Font = Enum.Font.SourceSansBold
            label.Parent = billboard
        end
    end
end
end)

AddButton("Esp", "Esp Player", function()
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local Camera = workspace.CurrentCamera
local LocalPlayer = Players.LocalPlayer

local BoxColor = Color3.fromRGB(0, 255, 0)

-- Создание Drawing объекта
local function createDrawing(type, props)
    local obj = Drawing.new(type)
    for i, v in pairs(props) do
        obj[i] = v
    end
    return obj
end

-- ESP для игрока
local function createESP(player)
    local box = createDrawing("Square", {
        Thickness = 1.5,
        Color = BoxColor,
        Filled = false,
        Visible = false
    })

    local tracer = createDrawing("Line", {
        Thickness = 1.5,
        Color = BoxColor,
        Visible = false
    })

    local nameText = createDrawing("Text", {
        Size = 14,
        Center = true,
        Outline = true,
        Color = Color3.fromRGB(0, 255, 0),
        Visible = false
    })

    local hpText = createDrawing("Text", {
        Size = 13,
        Center = true,
        Outline = true,
        Color = Color3.fromRGB(255, 0, 0),
        Visible = false
    })

    RunService.RenderStepped:Connect(function()
        if player ~= LocalPlayer and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
            local root = player.Character.HumanoidRootPart
            local humanoid = player.Character:FindFirstChildOfClass("Humanoid")
            if humanoid and humanoid.Health > 0 then
                -- Позиции головы и ног
                local head = player.Character:FindFirstChild("Head")
                if head then
                    local headPos, headVisible = Camera:WorldToViewportPoint(head.Position + Vector3.new(0, 0.5, 0))
                    local legPos, legVisible = Camera:WorldToViewportPoint(root.Position - Vector3.new(0, 3, 0))

                    if headVisible or legVisible then
                        local boxHeight = math.abs(headPos.Y - legPos.Y)
                        local boxWidth = boxHeight / 2
                        local boxX = headPos.X - boxWidth / 2
                        local boxY = headPos.Y

                        -- Бокс
                        box.Visible = true
                        box.Size = Vector2.new(boxWidth, boxHeight)
                        box.Position = Vector2.new(boxX, boxY)
                        box.Color = BoxColor

                        -- Ник
                        nameText.Visible = true
                        nameText.Text = player.Name
                        nameText.Position = Vector2.new(headPos.X, headPos.Y - 15)

                        -- HP
                        hpText.Visible = true
                        hpText.Text = string.format("HP: %d", math.floor(humanoid.Health))
                        hpText.Position = Vector2.new(headPos.X, legPos.Y + 5)

                        -- Линия (tracer)
                        tracer.Visible = true
                        tracer.From = Vector2.new(Camera.ViewportSize.X/2, Camera.ViewportSize.Y) -- низ экрана
                        tracer.To = Vector2.new(root.Position.X, root.Position.Y)
                        tracer.To = Vector2.new((headPos.X + (headPos.X + boxWidth)) / 2, legPos.Y) -- центр бокса
                        tracer.Color = BoxColor
                    else
                        box.Visible = false
                        tracer.Visible = false
                        nameText.Visible = false
                        hpText.Visible = false
                    end
                end
            else
                box.Visible = false
                tracer.Visible = false
                nameText.Visible = false
                hpText.Visible = false
            end
        else
            box.Visible = false
            tracer.Visible = false
            nameText.Visible = false
            hpText.Visible = false
        end
    end)
end

-- Подключаем ESP ко всем игрокам
for _, plr in pairs(Players:GetPlayers()) do
    if plr ~= LocalPlayer then
        createESP(plr)
    end
end

Players.PlayerAdded:Connect(function(plr)
    if plr ~= LocalPlayer then
        createESP(plr)
    end
end)
end)

------------------------------------------------

AddButton("Spawn Item", "Apple", function()
-- Получаем игрока (например, локального игрока)
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local rootPart = character:WaitForChild("HumanoidRootPart")

-- Получаем объект яблока
local apple = game:GetService("Workspace").GameObjects.Physical.Items.Apple.Apple

-- Задаем позицию рядом с игроком (например, на 5 единиц вперед)
local offset = Vector3.new(5, 0, 0)
apple.Position = rootPart.Position + offset
end)

AddButton("Spawn Item", "MedKit", function()
-- Получаем игрока
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local rootPart = character:WaitForChild("HumanoidRootPart")

-- Получаем объект аптечки
local medkit = game:GetService("Workspace").GameObjects.Physical.Items.Medkit.Medkit

-- Задаем позицию рядом с игроком (например, на 5 единиц вперед)
local offset = Vector3.new(5, 0, 0)
medkit.Position = rootPart.Position + offset
end)

AddButton("Spawn Item", "Chips", function()
-- Получаем игрока
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local rootPart = character:WaitForChild("HumanoidRootPart")

-- Получаем объект чипсов
local chips = game:GetService("Workspace").GameObjects.Physical.Items.Chips.Root

-- Задаем позицию рядом с игроком (например, на 5 единиц вперед)
local offset = Vector3.new(5, 0, 0)
chips.Position = rootPart.Position + offset
end)

AddButton("Spawn Item", "Beans", function()
-- Получаем игрока
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local rootPart = character:WaitForChild("HumanoidRootPart")

-- Получаем объект бобов
local beans = game:GetService("Workspace").GameObjects.Physical.Items.Beans.Handle

-- Задаем позицию рядом с игроком (например, на 5 единиц вперед)
local offset = Vector3.new(5, 0, 0)
beans.Position = rootPart.Position + offset
end)

------------------------------------------------

AddButton("Credit", "CREDIT:", function()
end)

AddButton("Credit", "ROBANIK", function()
end)
