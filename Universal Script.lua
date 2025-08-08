local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local UIS = game:GetService("UserInputService")
local player = Players.LocalPlayer
local gui = player:WaitForChild("PlayerGui")

if gui:FindFirstChild("SuperCustomMenu") then
	gui.SuperCustomMenu:Destroy()
end

local screenGui = Instance.new("ScreenGui", gui)
screenGui.Name = "SuperCustomMenu"
screenGui.ResetOnSpawn = false

local LANG = {
	["Русский"] = {
		["OpenMenu"] = "📂 Open Menu",
		["Close"] = "❌ Закрыть",
		["Brightness"] = "Яркость",
		["Fog"] = "Туман",
		["GodMode"] = "Режим Бога",
		["UIColor"] = "Цвет интерфейса",
		["Username"] = "Имя пользователя",
		["Theme"] = "Тема интерфейса",
		["Language"] = "Язык / Language",
		["AutoClose"] = "Автозакрытие меню",
		["MenuKey"] = "Клавиша меню"
	},
	["English"] = {
		["OpenMenu"] = "📂 Open Menu",
		["Close"] = "❌ Close",
		["Brightness"] = "Brightness",
		["Fog"] = "Fog",
		["GodMode"] = "God Mode",
		["UIColor"] = "UI Color",
		["Username"] = "Username",
		["Theme"] = "UI Theme",
		["Language"] = "Language",
		["AutoClose"] = "Auto-close menu",
		["MenuKey"] = "Menu Key"
	}
}
local language = player:GetAttribute("language") or "Русский"
local function L(key)
	return LANG[language] and LANG[language][key] or key
end

local THEMES = {
	Cyberpunk = {
		Background = Color3.fromRGB(20, 20, 30),
		Accent = Color3.fromRGB(0, 255, 200),
		Text = Color3.fromRGB(200, 200, 255)
	},
	Retrowave = {
		Background = Color3.fromRGB(35, 0, 50),
		Accent = Color3.fromRGB(255, 105, 180),
		Text = Color3.fromRGB(255, 255, 255)
	},
	Minimalistic = {
		Background = Color3.fromRGB(240, 240, 240),
		Accent = Color3.fromRGB(0, 120, 255),
		Text = Color3.fromRGB(30, 30, 30)
	},
	HackUI = {
		Background = Color3.fromRGB(5, 5, 5),
		Accent = Color3.fromRGB(0, 255, 0),
		Text = Color3.fromRGB(0, 255, 0)
	}
}
local currentTheme = player:GetAttribute("theme_ui") or "Cyberpunk"

local function ApplyTheme(root)
	local theme = THEMES[currentTheme]
	if not theme then return end
	local function style(obj)
		if obj:IsA("TextLabel") or obj:IsA("TextButton") or obj:IsA("TextBox") then
			obj.TextColor3 = theme.Text
		end
		if obj:IsA("Frame") or obj:IsA("TextButton") or obj:IsA("TextBox") then
			if obj.Name == "Accent" or obj:FindFirstChild("Accent") then
				obj.BackgroundColor3 = theme.Accent
			elseif obj.Name == "Background" or obj == root then
				obj.BackgroundColor3 = theme.Background
			end
		end
		for _, child in ipairs(obj:GetChildren()) do
			style(child)
		end
	end
	style(root)
end

local function MakeDraggable(frame)
	local dragging = false
	local dragStart, startPos

	frame.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			dragging = true
			dragStart = input.Position
			startPos = frame.Position
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragging = false
				end
			end)
		end
	end)

	UIS.InputChanged:Connect(function(input)
		if dragging and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
			local delta = input.Position - dragStart
			frame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
		end
	end)
end

local function AnimateOpen(frame)
	frame.Size = UDim2.new(0, 0, 0, 0)
	frame.Position = UDim2.new(0.5, 0, 0.5, 0)
	TweenService:Create(frame, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
		Size = UDim2.new(0, 500, 0, 350),
		Position = UDim2.new(0.5, -250, 0.5, -175)
	}):Play()
end

local main = Instance.new("Frame", screenGui)
main.Name = "Main"
main.Size = UDim2.new(0, 500, 0, 350)
main.Position = UDim2.new(0.5, -250, 0.5, -175)
main.AnchorPoint = Vector2.new(0.5, 0.5)
main.BackgroundColor3 = Color3.fromRGB(25, 25, 35)
main.BorderSizePixel = 0
main.ClipsDescendants = true

local mainCorner = Instance.new("UICorner", main)
mainCorner.CornerRadius = UDim.new(0, 12)

local glow = Instance.new("UIGradient", main)
glow.Rotation = 45
glow.Color = ColorSequence.new{
	ColorSequenceKeypoint.new(0, Color3.fromRGB(0, 150, 255)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(80, 0, 255))
}
TweenService:Create(glow, TweenInfo.new(3, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut, -1, true), {
	Rotation = 135
}):Play()

MakeDraggable(main)
AnimateOpen(main)

local tabButtons = Instance.new("Frame", main)
tabButtons.Size = UDim2.new(0, 120, 1, 0)
tabButtons.BackgroundTransparency = 1

local tabLayout = Instance.new("UIListLayout", tabButtons)
tabLayout.Padding = UDim.new(0, 6)
tabLayout.SortOrder = Enum.SortOrder.LayoutOrder

local pages = Instance.new("Frame", main)
pages.Position = UDim2.new(0, 130, 0, 10)
pages.Size = UDim2.new(1, -140, 1, -20)
pages.BackgroundTransparency = 1

local pagesFolder = {}

local function createTab(tabName)
	local btn = Instance.new("TextButton", tabButtons)
	btn.Size = UDim2.new(1, -10, 0, 35)
	btn.Text = tabName
	btn.BackgroundColor3 = Color3.fromRGB(40, 40, 60)
	btn.TextColor3 = Color3.new(1,1,1)
	btn.Font = Enum.Font.Gotham
	btn.TextSize = 16

	local btnCorner = Instance.new("UICorner", btn)
	btnCorner.CornerRadius = UDim.new(0, 8)

	local scroll = Instance.new("ScrollingFrame", pages)
	scroll.Name = tabName
	scroll.Size = UDim2.new(1, 0, 1, 0)
	scroll.BackgroundTransparency = 1
	scroll.BorderSizePixel = 0
	scroll.CanvasSize = UDim2.new(0, 0, 0, 0)
	scroll.ScrollBarThickness = 6
	scroll.Visible = false
	scroll.AutomaticCanvasSize = Enum.AutomaticSize.Y
	scroll.ScrollingDirection = Enum.ScrollingDirection.Y
	scroll.VerticalScrollBarInset = Enum.ScrollBarInset.ScrollBar

	scroll.ScrollBarImageColor3 = Color3.fromRGB(100, 100, 200)
	scroll.ScrollBarImageTransparency = 0.2

	local layout = Instance.new("UIListLayout", scroll)
	layout.Padding = UDim.new(0, 10)
	layout.SortOrder = Enum.SortOrder.LayoutOrder

	local padding = Instance.new("UIPadding", scroll)
	padding.PaddingTop = UDim.new(0, 10)
	padding.PaddingBottom = UDim.new(0, 10)
	padding.PaddingLeft = UDim.new(0, 10)
	padding.PaddingRight = UDim.new(0, 10)

	btn.MouseButton1Click:Connect(function()
		for _, p in pairs(pagesFolder) do
			p.Visible = false
		end
		scroll.Visible = true
	end)

	pagesFolder[tabName] = scroll
	return scroll
end

local tabMain = createTab("Basic")
local tabGraphics = createTab("Graphic")
local tabExtra = createTab("Misc")
local tabTheme = createTab("Themes")

local function createCheckbox(parent, label, key, default, callback)
	local saved = player:GetAttribute(key)
	if saved == nil then saved = default end
	player:SetAttribute(key, saved)

	local frame = Instance.new("Frame", parent)
	frame.Size = UDim2.new(1, 0, 0, 30)
	frame.BackgroundTransparency = 1

	local box = Instance.new("TextButton", frame)
	box.Size = UDim2.new(0, 30, 0, 30)
	box.BackgroundColor3 = Color3.fromRGB(60, 60, 80)
	box.Text = saved and "✔" or ""
	box.TextColor3 = Color3.fromRGB(0, 255, 150)
	box.Font = Enum.Font.GothamBold
	box.TextSize = 18

	local corner = Instance.new("UICorner", box)
	corner.CornerRadius = UDim.new(0, 6)

	local txt = Instance.new("TextLabel", frame)
	txt.Position = UDim2.new(0, 40, 0, 0)
	txt.Size = UDim2.new(1, -40, 1, 0)
	txt.Text = label
	txt.TextColor3 = Color3.new(1,1,1)
	txt.BackgroundTransparency = 1
	txt.Font = Enum.Font.Gotham
	txt.TextXAlignment = Enum.TextXAlignment.Left
	txt.TextSize = 16

	box.MouseButton1Click:Connect(function()
		saved = not saved
		box.Text = saved and "✔" or ""
		player:SetAttribute(key, saved)
		if callback then callback(saved) end
	end)
end

local function createCheckbox(parent, label, key, default, callback)
	local saved = player:GetAttribute(key)
	if saved == nil then saved = default end

	local frame = Instance.new("Frame", parent)
	frame.Size = UDim2.new(1, 0, 0, 30)
	frame.BackgroundTransparency = 1

	local box = Instance.new("TextButton", frame)
	box.Size = UDim2.new(0, 30, 0, 30)
	box.BackgroundColor3 = Color3.fromRGB(60, 60, 80)
	box.Text = saved and "✔" or ""
	box.TextColor3 = Color3.fromRGB(0, 255, 150)
	box.Font = Enum.Font.GothamBold
	box.TextSize = 18

	local corner = Instance.new("UICorner", box)
	corner.CornerRadius = UDim.new(0, 6)

	local txt = Instance.new("TextLabel", frame)
	txt.Position = UDim2.new(0, 40, 0, 0)
	txt.Size = UDim2.new(1, -40, 1, 0)
	txt.Text = label
	txt.TextColor3 = Color3.new(1,1,1)
	txt.BackgroundTransparency = 1
	txt.Font = Enum.Font.Gotham
	txt.TextXAlignment = Enum.TextXAlignment.Left
	txt.TextSize = 16

	box.MouseButton1Click:Connect(function()
		saved = not saved
		box.Text = saved and "✔" or ""
		player:SetAttribute(key, saved)
		if callback then callback(saved) end
	end)
end

local function createSlider(parent, label, key, min, max, default, callback)
	local saved = player:GetAttribute(key) or default
	player:SetAttribute(key, saved)

	local frame = Instance.new("Frame", parent)
	frame.Size = UDim2.new(1, 0, 0, 50)
	frame.BackgroundTransparency = 1

	local lbl = Instance.new("TextLabel", frame)
	lbl.Size = UDim2.new(1, 0, 0, 20)
	lbl.Text = label .. ": " .. saved
	lbl.Font = Enum.Font.Gotham
	lbl.TextColor3 = Color3.new(1,1,1)
	lbl.TextSize = 14
	lbl.BackgroundTransparency = 1

	local bar = Instance.new("Frame", frame)
	bar.Position = UDim2.new(0, 0, 0, 30)
	bar.Size = UDim2.new(1, 0, 0, 10)
	bar.BackgroundColor3 = Color3.fromRGB(50, 50, 70)

	local barCorner = Instance.new("UICorner", bar)
	barCorner.CornerRadius = UDim.new(0, 4)

	local fill = Instance.new("Frame", bar)
	fill.BackgroundColor3 = Color3.fromRGB(0, 200, 255)
	fill.Size = UDim2.new((saved - min)/(max - min), 0, 1, 0)
	fill.ZIndex = 2
	fill.Name = "Fill"
	fill.BorderSizePixel = 0
	fill.BackgroundTransparency = 0

	local knob = Instance.new("Frame", bar)
	knob.Size = UDim2.new(0, 12, 1, 4)
	knob.Position = UDim2.new(fill.Size.X.Scale, -6, 0, -2)
	knob.BackgroundColor3 = Color3.fromRGB(255, 255, 255)

	local knobCorner = Instance.new("UICorner", knob)
	knobCorner.CornerRadius = UDim.new(1, 0)

	local function updateSliderFromInput(x)
		local relX = x - bar.AbsolutePosition.X
		local ratio = math.clamp(relX / bar.AbsoluteSize.X, 0, 1)
		local value = math.floor(min + (max - min) * ratio + 0.5)

		fill.Size = UDim2.new(ratio, 0, 1, 0)
		knob.Position = UDim2.new(ratio, -6, 0, -2)
		lbl.Text = label .. ": " .. value
		player:SetAttribute(key, value)
		if callback then callback(value) end
	end

	local dragging = false

	bar.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = true
			updateSliderFromInput(input.Position.X)
		end
	end)

	UIS.InputChanged:Connect(function(input)
		if dragging and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
			updateSliderFromInput(input.Position.X)
		end
	end)

	UIS.InputEnded:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = false
		end
	end)
end

local function createDropdown(parent, label, key, options, default, callback)
	local selected = player:GetAttribute(key) or default
	player:SetAttribute(key, selected)

	local frame = Instance.new("Frame", parent)
	frame.Size = UDim2.new(1, 0, 0, 35)
	frame.BackgroundTransparency = 1

	local button = Instance.new("TextButton", frame)
	button.Size = UDim2.new(1, 0, 1, 0)
	button.Text = label .. ": " .. selected
	button.BackgroundColor3 = Color3.fromRGB(60, 60, 80)
	button.TextColor3 = Color3.new(1,1,1)
	button.Font = Enum.Font.Gotham
	button.TextSize = 16

	local corner = Instance.new("UICorner", button)
	corner.CornerRadius = UDim.new(0, 8)

	local dropdownOpen = false

	button.MouseButton1Click:Connect(function()
		if dropdownOpen then return end
		dropdownOpen = true

		for _, opt in ipairs(options) do
			local optBtn = Instance.new("TextButton", parent)
			optBtn.Size = UDim2.new(1, 0, 0, 30)
			optBtn.Text = opt
			optBtn.BackgroundColor3 = Color3.fromRGB(40, 40, 60)
			optBtn.TextColor3 = Color3.new(1,1,1)
			optBtn.Font = Enum.Font.Gotham
			optBtn.TextSize = 14

			local optCorner = Instance.new("UICorner", optBtn)
			optCorner.CornerRadius = UDim.new(0, 6)

			optBtn.MouseButton1Click:Connect(function()
				selected = opt
				player:SetAttribute(key, selected)
				button.Text = label .. ": " .. selected
				if callback then callback(selected) end
				dropdownOpen = false
				for _, child in ipairs(parent:GetChildren()) do
					if child:IsA("TextButton") and child ~= button then
						child:Destroy()
					end
				end
			end)
		end
	end)
end

local function createInput(parent, label, key, placeholder, callback)
	local saved = player:GetAttribute(key) or ""

	local frame = Instance.new("Frame", parent)
	frame.Size = UDim2.new(1, 0, 0, 40)
	frame.BackgroundTransparency = 1

	local labelTxt = Instance.new("TextLabel", frame)
	labelTxt.Position = UDim2.new(0, 0, 0, 0)
	labelTxt.Size = UDim2.new(1, 0, 0, 15)
	labelTxt.Text = label
	labelTxt.TextColor3 = Color3.new(1,1,1)
	labelTxt.BackgroundTransparency = 1
	labelTxt.Font = Enum.Font.Gotham
	labelTxt.TextSize = 14

	local input = Instance.new("TextBox", frame)
	input.Position = UDim2.new(0, 0, 0, 18)
	input.Size = UDim2.new(1, 0, 0, 22)
	input.PlaceholderText = placeholder
	input.Text = saved
	input.Font = Enum.Font.Gotham
	input.TextSize = 14
	input.TextColor3 = Color3.new(1,1,1)
	input.BackgroundColor3 = Color3.fromRGB(50, 50, 70)

	local corner = Instance.new("UICorner", input)
	corner.CornerRadius = UDim.new(0, 6)

	input.FocusLost:Connect(function()
		player:SetAttribute(key, input.Text)
		if callback then callback(input.Text) end
	end)
end

local function createKeybind(parent, label, keyAttr)
	local savedKey = player:GetAttribute(keyAttr) or "None"

	local frame = Instance.new("Frame", parent)
	frame.Size = UDim2.new(1, 0, 0, 35)
	frame.BackgroundTransparency = 1

	local labelText = Instance.new("TextLabel", frame)
	labelText.Size = UDim2.new(0.6, 0, 1, 0)
	labelText.Text = label .. ":"
	labelText.Font = Enum.Font.Gotham
	labelText.TextSize = 14
	labelText.TextColor3 = Color3.new(1,1,1)
	labelText.BackgroundTransparency = 1
	labelText.TextXAlignment = Enum.TextXAlignment.Left

	local keyBtn = Instance.new("TextButton", frame)
	keyBtn.Size = UDim2.new(0.3, 0, 0, 30)
	keyBtn.Position = UDim2.new(0.65, 0, 0, 2)
	keyBtn.Text = savedKey
	keyBtn.Font = Enum.Font.Gotham
	keyBtn.TextSize = 14
	keyBtn.TextColor3 = Color3.new(1,1,1)
	keyBtn.BackgroundColor3 = Color3.fromRGB(60, 60, 80)
	Instance.new("UICorner", keyBtn).CornerRadius = UDim.new(0, 6)

	local awaitingKey = false

	keyBtn.MouseButton1Click:Connect(function()
		keyBtn.Text = "..."
		awaitingKey = true
	end)

	UIS.InputBegan:Connect(function(input)
		if awaitingKey and input.UserInputType == Enum.UserInputType.Keyboard then
			local keyName = input.KeyCode.Name
			keyBtn.Text = keyName
			player:SetAttribute(keyAttr, keyName)
			awaitingKey = false
		end
	end)
end

local function createColorPicker(parent, label, key, defaultColor, callback)
	local saved = player:GetAttribute(key) or defaultColor
	player:SetAttribute(key, saved)

	local frame = Instance.new("Frame", parent)
	frame.Size = UDim2.new(1, 0, 0, 35)
	frame.BackgroundTransparency = 1

	local labelTxt = Instance.new("TextLabel", frame)
	labelTxt.Size = UDim2.new(0.6, 0, 1, 0)
	labelTxt.Text = label
	labelTxt.TextColor3 = Color3.new(1,1,1)
	labelTxt.Font = Enum.Font.Gotham
	labelTxt.TextSize = 14
	labelTxt.BackgroundTransparency = 1
	labelTxt.TextXAlignment = Enum.TextXAlignment.Left

	local colorBtn = Instance.new("TextButton", frame)
	colorBtn.Size = UDim2.new(0, 40, 0, 30)
	colorBtn.Position = UDim2.new(1, -50, 0, 2)
	colorBtn.BackgroundColor3 = saved
	colorBtn.Text = ""
	colorBtn.AutoButtonColor = false

	local corner = Instance.new("UICorner", colorBtn)
	corner.CornerRadius = UDim.new(1, 0)

	colorBtn.MouseButton1Click:Connect(function()
		-- Простейший color cycle
		local colors = {
			Color3.fromRGB(255, 0, 0),
			Color3.fromRGB(0, 255, 0),
			Color3.fromRGB(0, 128, 255),
			Color3.fromRGB(255, 255, 0),
			Color3.fromRGB(255, 255, 255),
		}
		local current = colorBtn.BackgroundColor3
		local idx = table.find(colors, current) or 1
		local next = colors[(idx % #colors) + 1]
		colorBtn.BackgroundColor3 = next
		player:SetAttribute(key, next)
		if callback then callback(next) end
	end)
end

local function createAdvancedColorPicker(parent, label, key, defaultColor, callback)
	local color = player:GetAttribute(key) or defaultColor
	player:SetAttribute(key, color)

	local frame = Instance.new("Frame", parent)
	frame.Size = UDim2.new(1, 0, 0, 35)
	frame.BackgroundTransparency = 1

	local title = Instance.new("TextLabel", frame)
	title.Size = UDim2.new(0.6, 0, 1, 0)
	title.Text = label
	title.TextColor3 = Color3.new(1,1,1)
	title.BackgroundTransparency = 1
	title.Font = Enum.Font.Gotham
	title.TextSize = 14
	title.TextXAlignment = Enum.TextXAlignment.Left

	local colorBtn = Instance.new("TextButton", frame)
	colorBtn.Size = UDim2.new(0, 40, 0, 30)
	colorBtn.Position = UDim2.new(1, -50, 0, 2)
	colorBtn.BackgroundColor3 = color
	colorBtn.Text = ""
	colorBtn.AutoButtonColor = false

	local corner = Instance.new("UICorner", colorBtn)
	corner.CornerRadius = UDim.new(1, 0)

	local palette

	colorBtn.MouseButton1Click:Connect(function()
		if palette and palette.Parent then
			palette:Destroy()
			return
		end

		palette = Instance.new("Frame", frame)
		palette.Position = UDim2.new(0, 0, 1, 5)
		palette.Size = UDim2.new(1, 0, 0, 100)
		palette.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
		palette.ZIndex = 10

		local paletteCorner = Instance.new("UICorner", palette)
		paletteCorner.CornerRadius = UDim.new(0, 8)

		local r = Instance.new("TextBox", palette)
		r.Size = UDim2.new(1/3, -4, 0, 30)
		r.Position = UDim2.new(0, 2, 0, 4)
		r.Text = "R: " .. math.floor(color.R * 255)
		r.BackgroundColor3 = Color3.fromRGB(255, 50, 50)
		r.TextColor3 = Color3.new(1,1,1)
		r.Font = Enum.Font.Gotham
		r.TextSize = 14

		local g = Instance.new("TextBox", palette)
		g.Size = UDim2.new(1/3, -4, 0, 30)
		g.Position = UDim2.new(1/3, 2, 0, 4)
		g.Text = "G: " .. math.floor(color.G * 255)
		g.BackgroundColor3 = Color3.fromRGB(50, 255, 50)
		g.TextColor3 = Color3.new(0,0,0)
		g.Font = Enum.Font.Gotham
		g.TextSize = 14

		local b = Instance.new("TextBox", palette)
		b.Size = UDim2.new(1/3, -4, 0, 30)
		b.Position = UDim2.new(2/3, 2, 0, 4)
		b.Text = "B: " .. math.floor(color.B * 255)
		b.BackgroundColor3 = Color3.fromRGB(50, 50, 255)
		b.TextColor3 = Color3.new(1,1,1)
		b.Font = Enum.Font.Gotham
		b.TextSize = 14

		local applyBtn = Instance.new("TextButton", palette)
		applyBtn.Size = UDim2.new(1, -4, 0, 30)
		applyBtn.Position = UDim2.new(0, 2, 0, 40)
		applyBtn.Text = "✅ Применить"
		applyBtn.BackgroundColor3 = Color3.fromRGB(100, 200, 100)
		applyBtn.Font = Enum.Font.GothamBold
		applyBtn.TextSize = 16
		applyBtn.TextColor3 = Color3.new(0,0,0)

		local function parse(txt)
			local num = tonumber(string.match(txt, "%d+"))
			return math.clamp(num or 0, 0, 255)
		end

		applyBtn.MouseButton1Click:Connect(function()
			local nr, ng, nb = parse(r.Text), parse(g.Text), parse(b.Text)
			local newColor = Color3.fromRGB(nr, ng, nb)
			color = newColor
			colorBtn.BackgroundColor3 = newColor
			player:SetAttribute(key, newColor)
			if callback then callback(newColor) end
			palette:Destroy()
		end)
	end)
end

local TweenService = game:GetService("TweenService")

function createTabHeader(tab, titleText)
	local header = Instance.new("TextLabel")
	header.Size = UDim2.new(1, -20, 0, 40)
	header.Position = UDim2.new(0, 10, 0, -50)
	header.BackgroundTransparency = 1
	header.Font = Enum.Font.GothamBold
	header.TextSize = 22
	header.Text = titleText
	header.TextXAlignment = Enum.TextXAlignment.Left
	header.TextTransparency = 1
	header.TextColor3 = Color3.fromRGB(255, 255, 255) -- фиксированный белый цвет
	header.Parent = tab

	local stroke = Instance.new("UIStroke", header)
	stroke.Thickness = 1.5
	stroke.Transparency = 1
	stroke.Color = Color3.fromRGB(0, 255, 100) -- можно подставить любой цвет обводки

	-- Анимация появления
	local function animateIn()
		TweenService:Create(header, TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
			Position = UDim2.new(0, 10, 0, 0),
			TextTransparency = 0
		}):Play()

		TweenService:Create(stroke, TweenInfo.new(0.4), {Transparency = 0}):Play()
	end

	-- Анимация исчезновения
	local function animateOut()
		TweenService:Create(header, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {
			Position = UDim2.new(0, 10, 0, -50),
			TextTransparency = 1
		}):Play()

		TweenService:Create(stroke, TweenInfo.new(0.3), {Transparency = 1}):Play()
	end

	-- Сразу показываем при загрузке вкладки
	animateIn()

	return {
		show = animateIn,
		hide = animateOut
	}
end

local TweenService = game:GetService("TweenService")

function createToggle(tab, labelText, attributeName, defaultValue, callback)
	local container = Instance.new("Frame")
	container.Size = UDim2.new(1, 0, 0, 40)
	container.BackgroundTransparency = 1
	container.Parent = tab

	local label = Instance.new("TextLabel", container)
	label.Text = labelText
	label.Font = Enum.Font.Gotham
	label.TextColor3 = Color3.new(1, 1, 1)
	label.TextSize = 14
	label.TextXAlignment = Enum.TextXAlignment.Left
	label.Size = UDim2.new(0.7, 0, 1, 0)
	label.BackgroundTransparency = 1

	-- Сам toggle фон
	local bg = Instance.new("Frame", container)
	bg.Size = UDim2.new(0, 50, 0, 24)
	bg.Position = UDim2.new(1, -60, 0.5, -12)
	bg.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
	bg.BorderSizePixel = 0
	Instance.new("UICorner", bg).CornerRadius = UDim.new(1, 0)

	-- Свечение
	local glow = Instance.new("UIStroke", bg)
	glow.Thickness = 1.5
	glow.Color = Color3.fromRGB(0, 255, 100)
	glow.Transparency = 1

	-- Ползунок
	local knob = Instance.new("Frame", bg)
	knob.Size = UDim2.new(0, 20, 0, 20)
	knob.Position = UDim2.new(0, 2, 0.5, -10)
	knob.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	knob.BorderSizePixel = 0
	Instance.new("UICorner", knob).CornerRadius = UDim.new(1, 0)

	local knobShadow = Instance.new("UIStroke", knob)
	knobShadow.Thickness = 1
	knobShadow.Color = Color3.fromRGB(180, 180, 180)

	player:SetAttribute(attributeName, defaultValue or false)

	local function updateState(state)
		if state then
			TweenService:Create(bg, TweenInfo.new(0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
				BackgroundColor3 = Color3.fromRGB(0, 255, 100)
			}):Play()
			TweenService:Create(knob, TweenInfo.new(0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
				Position = UDim2.new(1, -22, 0.5, -10)
			}):Play()
			TweenService:Create(glow, TweenInfo.new(0.25), {Transparency = 0}):Play()
		else
			TweenService:Create(bg, TweenInfo.new(0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
				BackgroundColor3 = Color3.fromRGB(60, 60, 60)
			}):Play()
			TweenService:Create(knob, TweenInfo.new(0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
				Position = UDim2.new(0, 2, 0.5, -10)
			}):Play()
			TweenService:Create(glow, TweenInfo.new(0.25), {Transparency = 1}):Play()
		end
	end

	bg.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			local newState = not player:GetAttribute(attributeName)
			player:SetAttribute(attributeName, newState)
			if callback then callback(newState) end
		end
	end)

	player:GetAttributeChangedSignal(attributeName):Connect(function()
		updateState(player:GetAttribute(attributeName))
	end)

	updateState(defaultValue or false)
end

local mainHeader = createTabHeader(tabMain, "⚙ Basic functions")
local graphicsHeader = createTabHeader(tabGraphics, "🎨 Graphics")
local extraHeader = createTabHeader(tabExtra, "✨ Additionally")
local themeHeader = createTabHeader(tabTheme, "🎭 Interface themes")

-- Вкладка "Основное"
createToggle(tabMain, "🏃 Fast Run", "fastRun", false, function(state)
	if state then
		local hum = player.Character:FindFirstChildOfClass("Humanoid")
		if hum then hum.WalkSpeed = 50 end
	else
		local hum = player.Character:FindFirstChildOfClass("Humanoid")
		if hum then hum.WalkSpeed = 16 end
	end
end)

createCheckbox(tabMain, "🦘 Super Jump", "super_jump", false)
player:GetAttributeChangedSignal("super_jump"):Connect(function()
	local h = player.Character and player.Character:FindFirstChild("Humanoid")
	if h then
		h.JumpPower = player:GetAttribute("super_jump") and 100 or 50
	end
end)

createCheckbox(tabMain, "🌒 Night Vision", "night_vision", false)
player:GetAttributeChangedSignal("night_vision"):Connect(function()
	local lighting = game:GetService("Lighting")
	if player:GetAttribute("night_vision") then
		local fx = Instance.new("ColorCorrectionEffect", lighting)
		fx.Name = "NightVision"
		fx.TintColor = Color3.fromRGB(150, 255, 150)
	else
		local fx = lighting:FindFirstChild("NightVision")
		if fx then fx:Destroy() end
	end
end)

createCheckbox(tabMain, "🧼 No Animations", "no_animations", false)
player:GetAttributeChangedSignal("no_animations"):Connect(function()
	local char = player.Character or player.CharacterAdded:Wait()
	local animate = char:FindFirstChild("Animate")
	if animate then
		animate.Disabled = player:GetAttribute("no_animations")
	end
end)

createCheckbox(tabMain, "📦 Noclip", "noclip", false)
game:GetService("RunService").Heartbeat:Connect(function()
	if player:GetAttribute("noclip") then
		local char = player.Character
		if char then
			for _, p in pairs(char:GetDescendants()) do
				if p:IsA("BasePart") then
					p.CanCollide = false
				end
			end
		end
	end
end)

createCheckbox(tabMain, "🕶️ AntiFlash", "anti_flash", false)
player:GetAttributeChangedSignal("anti_flash"):Connect(function()
	for _, v in pairs(game:GetService("Lighting"):GetChildren()) do
		if v:IsA("BlurEffect") or v:IsA("ColorCorrectionEffect") then
			v.Enabled = not player:GetAttribute("anti_flash")
		end
	end
end)

createSlider(tabGraphics, "Brightness", "gfx_brightness", 0, 10, 2)
player:GetAttributeChangedSignal("gfx_brightness"):Connect(function()
	game:GetService("Lighting").Brightness = player:GetAttribute("gfx_brightness")
end)

createSlider(tabGraphics, "Saturation", "gfx_saturation", 0, 2, 1)
local lighting = game:GetService("Lighting")
local colorFx = lighting:FindFirstChild("ColorFX") or Instance.new("ColorCorrectionEffect", lighting)
colorFx.Name = "ColorFX"

player:GetAttributeChangedSignal("gfx_saturation"):Connect(function()
	colorFx.Saturation = player:GetAttribute("gfx_saturation")
end)

createSlider(tabGraphics, "Field of view (FOV)", "gfx_fov", 50, 120, 70)
player:GetAttributeChangedSignal("gfx_fov"):Connect(function()
	workspace.CurrentCamera.FieldOfView = player:GetAttribute("gfx_fov")
end)

createSlider(tabGraphics, "Blur", "gfx_blur", 0, 25, 0)
local blurFx = lighting:FindFirstChild("CustomBlur") or Instance.new("BlurEffect", lighting)
blurFx.Name = "CustomBlur"

player:GetAttributeChangedSignal("gfx_blur"):Connect(function()
	blurFx.Size = player:GetAttribute("gfx_blur")
end)

createCheckbox(tabGraphics, "🎬 Cinema Mode", "gfx_cinema", false)
player:GetAttributeChangedSignal("gfx_cinema"):Connect(function()
	local enabled = player:GetAttribute("gfx_cinema")
	game:GetService("StarterGui"):SetCoreGuiEnabled(Enum.CoreGuiType.All, not enabled)
	
	local cc = lighting:FindFirstChild("Cinema") or Instance.new("ColorCorrectionEffect", lighting)
	cc.Name = "Cinema"
	cc.Contrast = enabled and 0.3 or 0
	cc.Brightness = enabled and -0.2 or 0
	cc.TintColor = enabled and Color3.fromRGB(40,40,40) or Color3.fromRGB(255,255,255)
end)

createCheckbox(tabGraphics, "⚫ B/W mode", "gfx_bw", false)
local bw = lighting:FindFirstChild("BWEffect") or Instance.new("ColorCorrectionEffect", lighting)
bw.Name = "BWEffect"

player:GetAttributeChangedSignal("gfx_bw"):Connect(function()
	bw.Saturation = player:GetAttribute("gfx_bw") and -1 or 0
end)

createCheckbox(tabGraphics, "📼 VHS filter", "gfx_vhs", false)
player:GetAttributeChangedSignal("gfx_vhs"):Connect(function()
	local blur = lighting:FindFirstChild("VHS") or Instance.new("BlurEffect", lighting)
	blur.Name = "VHS"
	blur.Size = player:GetAttribute("gfx_vhs") and 6 or 0
end)

createCheckbox(tabGraphics, "🧊 Limit FPS", "gfx_fps_limit", false)
local RunService = game:GetService("RunService")

RunService.Heartbeat:Connect(function(dt)
	if player:GetAttribute("gfx_fps_limit") then
		task.wait(1/144) -- 144 FPS
	end
end)

createCheckbox(tabGraphics, "🖼️ Low Textures", "gfx_low_res", false)
player:GetAttributeChangedSignal("gfx_low_res"):Connect(function()
	local enabled = player:GetAttribute("gfx_low_res")
	for _, part in pairs(workspace:GetDescendants()) do
		if part:IsA("Decal") or part:IsA("Texture") then
			part.Transparency = enabled and 1 or 0
		end
	end
end)

-- Вкладка "Разное"
createInput(tabExtra, "📝 Nickname", "extra_nickname", "Your Nick...")
player:GetAttributeChangedSignal("extra_nickname"):Connect(function()
	local name = player:GetAttribute("extra_nickname")
	local head = player.Character and player.Character:FindFirstChild("Head")
	if not head then return end

	local tag = head:FindFirstChild("NicknameTag") or Instance.new("BillboardGui", head)
	tag.Name = "NicknameTag"
	tag.Size = UDim2.new(0, 200, 0, 50)
	tag.AlwaysOnTop = true
	tag.StudsOffset = Vector3.new(0, 2.5, 0)

	local text = tag:FindFirstChild("TextLabel") or Instance.new("TextLabel", tag)
	text.Size = UDim2.new(1, 0, 1, 0)
	text.BackgroundTransparency = 1
	text.TextColor3 = Color3.new(1,1,1)
	text.Font = Enum.Font.GothamBold
	text.TextScaled = true
	text.Text = name
end)

createColorPicker(tabExtra, "🎨 Body Color", "extra_body_color", Color3.fromRGB(255, 255, 255))
player:GetAttributeChangedSignal("extra_body_color"):Connect(function()
	local color = player:GetAttribute("extra_body_color")
	if typeof(color) ~= "Color3" then return end
	local char = player.Character or player.CharacterAdded:Wait()
	for _, part in pairs(char:GetDescendants()) do
		if part:IsA("BasePart") and part.Name ~= "HumanoidRootPart" then
			part.Color = color
		end
	end
end)

createColorPicker(tabExtra, "🧩 Ui Color", "extra_ui_color", Color3.fromRGB(0, 150, 255))
player:GetAttributeChangedSignal("extra_ui_color"):Connect(function()
	local color = player:GetAttribute("extra_ui_color")
	if typeof(color) ~= "Color3" then return end
	for _, obj in pairs(player.PlayerGui.SuperCustomMenu:GetDescendants()) do
		if obj:IsA("TextButton") or obj:IsA("Frame") then
			if obj.Name == "Accent" then
				obj.BackgroundColor3 = color
			end
		end
	end
end)

createCheckbox(tabExtra, "📍 Show Coordinates", "extra_show_coords", false)
local coordLabel = Instance.new("TextLabel", screenGui)
coordLabel.Position = UDim2.new(0, 10, 0, 10)
coordLabel.Size = UDim2.new(0, 200, 0, 25)
coordLabel.BackgroundTransparency = 1
coordLabel.TextColor3 = Color3.new(1, 1, 1)
coordLabel.Font = Enum.Font.Code
coordLabel.TextSize = 14
coordLabel.Visible = false

game:GetService("RunService").RenderStepped:Connect(function()
	if player:GetAttribute("extra_show_coords") then
		local hrp = player.Character and player.Character:FindFirstChild("HumanoidRootPart")
		if hrp then
			local pos = hrp.Position
			coordLabel.Text = string.format("X: %d Y: %d Z: %d", pos.X, pos.Y, pos.Z)
			coordLabel.Visible = true
		end
	else
		coordLabel.Visible = false
	end
end)

createCheckbox(tabExtra, "📌 Allow Drag Menu", "extra_allow_drag", true)
player:GetAttributeChangedSignal("extra_allow_drag"):Connect(function()
	if player:GetAttribute("extra_allow_drag") then
		MakeDraggable(main)
	end
end)

-- Dev Mode (если admin == true)
if player.UserId == 123456 or player:GetAttribute("is_admin") then
	createCheckbox(tabExtra, "🧪 Dev Mode", "extra_dev", false)
end


-- Вкладка "🎨 Темы"
createDropdown(tabTheme, "🎨 Theme Style", "theme_style", {
	"Cyberpunk", "Retrowave", "Minimalistic", "HackUI"
}, "Cyberpunk")
player:GetAttributeChangedSignal("theme_style"):Connect(function()
	local theme = player:GetAttribute("theme_style")
	currentTheme = theme
	ApplyTheme(main)
end)

createColorPicker(tabTheme, "🔹 Accent Color", "theme_accent_color", Color3.fromRGB(0, 150, 255))
player:GetAttributeChangedSignal("theme_accent_color"):Connect(function()
	local c = player:GetAttribute("theme_accent_color")
	for _, obj in pairs(main:GetDescendants()) do
		if obj:IsA("TextButton") and obj.Name == "Accent" then
			obj.BackgroundColor3 = c
		end
	end
end)

createColorPicker(tabTheme, "🔲 Bg Color", "theme_bg_color", Color3.fromRGB(20, 20, 30))
player:GetAttributeChangedSignal("theme_bg_color"):Connect(function()
	main.BackgroundColor3 = player:GetAttribute("theme_bg_color")
end)

createCheckbox(tabTheme, "◼️ Rounded corners", "theme_rounded", true)
player:GetAttributeChangedSignal("theme_rounded"):Connect(function()
	local enabled = player:GetAttribute("theme_rounded")
	for _, obj in pairs(main:GetDescendants()) do
		if obj:IsA("Frame") or obj:IsA("TextButton") or obj:IsA("TextBox") then
			local corner = obj:FindFirstChildOfClass("UICorner")
			if enabled and not corner then
				Instance.new("UICorner", obj).CornerRadius = UDim.new(0, 6)
			elseif not enabled and corner then
				corner:Destroy()
			end
		end
	end
end)

createCheckbox(tabTheme, "🌀 Animations Ui", "theme_animations", true)
player:GetAttributeChangedSignal("theme_animations"):Connect(function()
	local enabled = player:GetAttribute("theme_animations")
	for _, obj in pairs(main:GetDescendants()) do
		if obj:IsA("TextButton") then
			obj.AutoButtonColor = enabled
		end
	end
end)

createSlider(tabTheme, "🔠 Text Size", "theme_textsize", 10, 24, 14)
player:GetAttributeChangedSignal("theme_textsize"):Connect(function()
	local size = player:GetAttribute("theme_textsize")
	for _, obj in pairs(main:GetDescendants()) do
		if obj:IsA("TextLabel") or obj:IsA("TextButton") or obj:IsA("TextBox") then
			obj.TextSize = size
		end
	end
end)

createDropdown(tabTheme, "🔤 Font", "theme_font", {
	"Gotham", "Roboto", "Code", "SciFi"
}, "Gotham")
local fontMap = {
	Gotham = Enum.Font.Gotham,
	Roboto = Enum.Font.Roboto,
	Code = Enum.Font.Code,
	SciFi = Enum.Font.SciFi
}

player:GetAttributeChangedSignal("theme_font"):Connect(function()
	local fontName = player:GetAttribute("theme_font")
	local selectedFont = fontMap[fontName] or Enum.Font.Gotham

	for _, obj in pairs(main:GetDescendants()) do
		if obj:IsA("TextLabel") or obj:IsA("TextButton") or obj:IsA("TextBox") then
			obj.Font = selectedFont
		end
	end
end)

ApplyTheme(main)

main.BackgroundColor3 = player:GetAttribute("theme_bg_color") or Color3.fromRGB(20, 20, 30)

local fnt = fontMap[player:GetAttribute("theme_font")] or Enum.Font.Gotham
local sz = player:GetAttribute("theme_textsize") or 14

for _, obj in pairs(main:GetDescendants()) do
	if obj:IsA("TextLabel") or obj:IsA("TextButton") or obj:IsA("TextBox") then
		obj.Font = fnt
		obj.TextSize = sz
	end
end

pagesFolder["Basic"].Visible = true

local closeBtn = Instance.new("TextButton", main)
closeBtn.Size = UDim2.new(0, 30, 0, 30)
closeBtn.Position = UDim2.new(1, -35, 0, 5)
closeBtn.Text = "X"
closeBtn.TextColor3 = Color3.new(1, 0.3, 0.3)
closeBtn.Font = Enum.Font.GothamBold
closeBtn.TextSize = 18
closeBtn.BackgroundColor3 = Color3.fromRGB(60, 30, 30)
Instance.new("UICorner", closeBtn).CornerRadius = UDim.new(1, 0)

local openBtn = Instance.new("TextButton", screenGui)
openBtn.Size = UDim2.new(0, 140, 0, 40)
openBtn.Position = UDim2.new(0, 20, 1, -60)
openBtn.Text = L("OpenMenu")
openBtn.TextColor3 = Color3.new(1,1,1)
openBtn.Font = Enum.Font.GothamBold
openBtn.TextSize = 16
openBtn.BackgroundColor3 = Color3.fromRGB(30, 60, 90)
Instance.new("UICorner", openBtn).CornerRadius = UDim.new(0, 8)
openBtn.Visible = false

closeBtn.MouseButton1Click:Connect(function()
	main.Visible = false
	openBtn.Visible = true
end)

openBtn.MouseButton1Click:Connect(function()
	main.Visible = true
	openBtn.Visible = false
end)
