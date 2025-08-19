-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local SideFrame = Instance.new("Frame")
local UICorner_2 = Instance.new("UICorner")
local Frame = Instance.new("Frame")
local Frame_2 = Instance.new("Frame")
local HomeButton = Instance.new("TextButton")
local UICorner_3 = Instance.new("UICorner")
local ScrollingFrameButton = Instance.new("TextButton")
local UICorner_4 = Instance.new("UICorner")
local ESPButton = Instance.new("TextButton")
local UICorner_5 = Instance.new("UICorner")
local TextLabel = Instance.new("TextLabel")
local TextLabel_2 = Instance.new("TextLabel")
local PlayerButton = Instance.new("TextButton")
local UICorner_6 = Instance.new("UICorner")
local ImageLabel = Instance.new("ImageLabel")
local ImageLabel_2 = Instance.new("ImageLabel")
local ImageLabel_3 = Instance.new("ImageLabel")
local GunModsButton = Instance.new("TextButton")
local UICorner_7 = Instance.new("UICorner")
local ImageLabel_4 = Instance.new("ImageLabel")
local ImageLabel_5 = Instance.new("ImageLabel")
local ScrollingFrame = Instance.new("ScrollingFrame")
local AimBotTEXT = Instance.new("TextLabel")
local TextLabel_3 = Instance.new("TextLabel")
local EnableAimbotButton = Instance.new("Frame")
local UICorner_8 = Instance.new("UICorner")
local EnableAimbotButton_2 = Instance.new("TextButton")
local UICorner_9 = Instance.new("UICorner")
local KeybindTEXT = Instance.new("TextLabel")
local TextLabel_4 = Instance.new("TextLabel")
local SelectKeybindButton = Instance.new("Frame")
local UICorner_10 = Instance.new("UICorner")
local SelectKeybindButton_2 = Instance.new("TextButton")
local UICorner_11 = Instance.new("UICorner")
local FOVSettingsTEXT = Instance.new("TextLabel")
local TextLabel_5 = Instance.new("TextLabel")
local SizeTEXT = Instance.new("TextLabel")
local FOVSlider = Instance.new("Frame")
local UICorner_12 = Instance.new("UICorner")
local Fill = Instance.new("Frame")
local UICorner_13 = Instance.new("UICorner")
local Knob = Instance.new("TextButton")
local TriggerBotTEXT = Instance.new("TextLabel")
local TextLabel_6 = Instance.new("TextLabel")
local EnableTriggerBotButton = Instance.new("Frame")
local UICorner_14 = Instance.new("UICorner")
local SelectKeybindButton_3 = Instance.new("TextButton")
local UICorner_15 = Instance.new("UICorner")
local HomeFrame = Instance.new("ScrollingFrame")
local TextLabel_7 = Instance.new("TextLabel")
local ImageLabel_6 = Instance.new("ImageLabel")
local TextLabel_8 = Instance.new("TextLabel")
local ESPFrame = Instance.new("ScrollingFrame")
local EnableChamsButton = Instance.new("Frame")
local UICorner_16 = Instance.new("UICorner")
local Button = Instance.new("TextButton")
local UICorner_17 = Instance.new("UICorner")
local ChamsTEXT = Instance.new("TextLabel")
local TextLabel_9 = Instance.new("TextLabel")
local EnableTracersButton = Instance.new("Frame")
local UICorner_18 = Instance.new("UICorner")
local Button_2 = Instance.new("TextButton")
local UICorner_19 = Instance.new("UICorner")
local EnableDistanceButton = Instance.new("Frame")
local UICorner_20 = Instance.new("UICorner")
local Button_3 = Instance.new("TextButton")
local UICorner_21 = Instance.new("UICorner")
local TracersTEXT = Instance.new("TextLabel")
local TextLabel_10 = Instance.new("TextLabel")
local DistanceTEXT = Instance.new("TextLabel")
local TextLabel_11 = Instance.new("TextLabel")
local EnableNameButton = Instance.new("Frame")
local UICorner_22 = Instance.new("UICorner")
local Button_4 = Instance.new("TextButton")
local UICorner_23 = Instance.new("UICorner")
local NameTEXT = Instance.new("TextLabel")
local TextLabel_12 = Instance.new("TextLabel")
local Showcase = Instance.new("Frame")
local UICorner_24 = Instance.new("UICorner")
local Chams = Instance.new("ImageLabel")
local NOOB = Instance.new("ImageLabel")
local DistanceTEXT_2 = Instance.new("TextLabel")
local NameTEXT_2 = Instance.new("TextLabel")
local Tracers = Instance.new("ImageLabel")
local UICorner_25 = Instance.new("UICorner")
local ImageButton = Instance.new("ImageButton")
local PlayerFrame = Instance.new("ScrollingFrame")
local EnableJUMPSButton = Instance.new("Frame")
local UICorner_26 = Instance.new("UICorner")
local Button_5 = Instance.new("TextButton")
local UICorner_27 = Instance.new("UICorner")
local infjumpsTEXT = Instance.new("TextLabel")
local TextLabel_13 = Instance.new("TextLabel")
local GunModsFrame = Instance.new("ScrollingFrame")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.ResetOnSpawn = false

MainFrame.Name = "MainFrame"
MainFrame.Parent = ScreenGui
MainFrame.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
MainFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
MainFrame.BorderSizePixel = 0
MainFrame.Position = UDim2.new(0.292021692, 0, 0.301801801, 0)
MainFrame.Size = UDim2.new(0, 537, 0, 280)
MainFrame.ZIndex = 1000000000

UICorner.CornerRadius = UDim.new(0, 12)
UICorner.Parent = MainFrame

SideFrame.Name = "SideFrame"
SideFrame.Parent = MainFrame
SideFrame.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
SideFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
SideFrame.BorderSizePixel = 0
SideFrame.Position = UDim2.new(-0.000343251711, 0, -0.00176958356, 1)
SideFrame.Size = UDim2.new(0, 205, 0, 280)

UICorner_2.CornerRadius = UDim.new(0, 12)
UICorner_2.Parent = SideFrame

Frame.Parent = SideFrame
Frame.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.965853631, -2, -0.00176958356, 0)
Frame.Size = UDim2.new(0, 9, 0, 280)

Frame_2.Parent = SideFrame
Frame_2.BackgroundColor3 = Color3.fromRGB(115, 0, 255)
Frame_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame_2.BorderSizePixel = 0
Frame_2.Position = UDim2.new(1.00975609, -2, -0.00176958356, 0)
Frame_2.Size = UDim2.new(0, 2, 0, 280)

HomeButton.Name = "HomeButton"
HomeButton.Parent = SideFrame
HomeButton.BackgroundColor3 = Color3.fromRGB(57, 57, 57)
HomeButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
HomeButton.BorderSizePixel = 0
HomeButton.Position = UDim2.new(0.0341463424, 0, 0.828571439, 3)
HomeButton.Size = UDim2.new(0, 191, 0, 41)
HomeButton.Font = Enum.Font.DenkOne
HomeButton.Text = "Home"
HomeButton.TextColor3 = Color3.fromRGB(255, 255, 255)
HomeButton.TextSize = 38.000
HomeButton.TextWrapped = true

UICorner_3.CornerRadius = UDim.new(0, 12)
UICorner_3.Parent = HomeButton

ScrollingFrameButton.Name = "ScrollingFrameButton"
ScrollingFrameButton.Parent = SideFrame
ScrollingFrameButton.BackgroundColor3 = Color3.fromRGB(57, 57, 57)
ScrollingFrameButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
ScrollingFrameButton.BorderSizePixel = 0
ScrollingFrameButton.Position = UDim2.new(0.0341463424, 0, 0.271428585, -30)
ScrollingFrameButton.Size = UDim2.new(0, 191, 0, 41)
ScrollingFrameButton.Font = Enum.Font.DenkOne
ScrollingFrameButton.Text = "AimBot"
ScrollingFrameButton.TextColor3 = Color3.fromRGB(255, 255, 255)
ScrollingFrameButton.TextSize = 38.000
ScrollingFrameButton.TextWrapped = true

UICorner_4.CornerRadius = UDim.new(0, 12)
UICorner_4.Parent = ScrollingFrameButton

ESPButton.Name = "ESPButton"
ESPButton.Parent = SideFrame
ESPButton.BackgroundColor3 = Color3.fromRGB(57, 57, 57)
ESPButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
ESPButton.BorderSizePixel = 0
ESPButton.Position = UDim2.new(0.0341463424, 0, 0.439285725, -33)
ESPButton.Size = UDim2.new(0, 191, 0, 41)
ESPButton.Font = Enum.Font.DenkOne
ESPButton.Text = "ESP"
ESPButton.TextColor3 = Color3.fromRGB(255, 255, 255)
ESPButton.TextSize = 38.000
ESPButton.TextWrapped = true

UICorner_5.CornerRadius = UDim.new(0, 12)
UICorner_5.Parent = ESPButton

TextLabel.Parent = SideFrame
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0, 1, 0, 0)
TextLabel.Size = UDim2.new(0, 200, 0, 50)
TextLabel.Font = Enum.Font.LuckiestGuy
TextLabel.Text = "D-DAY Hub"
TextLabel.TextColor3 = Color3.fromRGB(88, 27, 126)
TextLabel.TextSize = 41.000

TextLabel_2.Parent = SideFrame
TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.BackgroundTransparency = 1.000
TextLabel_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_2.BorderSizePixel = 0
TextLabel_2.Position = UDim2.new(0, 3, 0, 0)
TextLabel_2.Size = UDim2.new(0, 200, 0, 50)
TextLabel_2.Font = Enum.Font.LuckiestGuy
TextLabel_2.Text = "D-DAY Hub"
TextLabel_2.TextColor3 = Color3.fromRGB(120, 1, 255)
TextLabel_2.TextSize = 41.000

PlayerButton.Name = "PlayerButton"
PlayerButton.Parent = SideFrame
PlayerButton.BackgroundColor3 = Color3.fromRGB(57, 57, 57)
PlayerButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
PlayerButton.BorderSizePixel = 0
PlayerButton.Position = UDim2.new(0.0341463424, 0, 0.600000024, -34)
PlayerButton.Size = UDim2.new(0, 191, 0, 41)
PlayerButton.Font = Enum.Font.DenkOne
PlayerButton.Text = "Player"
PlayerButton.TextColor3 = Color3.fromRGB(255, 255, 255)
PlayerButton.TextSize = 38.000
PlayerButton.TextWrapped = true

UICorner_6.CornerRadius = UDim.new(0, 12)
UICorner_6.Parent = PlayerButton

ImageLabel.Parent = SideFrame
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.BackgroundTransparency = 1.000
ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel.BorderSizePixel = 0
ImageLabel.Position = UDim2.new(0.073170729, -2, 0.160714284, 0)
ImageLabel.Size = UDim2.new(0, 44, 0, 42)
ImageLabel.Image = "rbxassetid://16716965570"

ImageLabel_2.Parent = SideFrame
ImageLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel_2.BackgroundTransparency = 1.000
ImageLabel_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel_2.BorderSizePixel = 0
ImageLabel_2.Position = UDim2.new(0.0439024381, 4, 0.317857146, 0)
ImageLabel_2.Size = UDim2.new(0, 36, 0, 42)
ImageLabel_2.Image = "rbxassetid://13535793191"

ImageLabel_3.Parent = SideFrame
ImageLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel_3.BackgroundTransparency = 1.000
ImageLabel_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel_3.BorderSizePixel = 0
ImageLabel_3.Position = UDim2.new(-0.048780486, 6, 0.407142848, 12)
ImageLabel_3.Size = UDim2.new(0, 70, 0, 58)
ImageLabel_3.Image = "rbxassetid://124952801"

GunModsButton.Name = "GunModsButton"
GunModsButton.Parent = SideFrame
GunModsButton.BackgroundColor3 = Color3.fromRGB(57, 57, 57)
GunModsButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
GunModsButton.BorderSizePixel = 0
GunModsButton.Position = UDim2.new(0.0341463424, 0, 0.739285707, -29)
GunModsButton.Size = UDim2.new(0, 191, 0, 41)
GunModsButton.Font = Enum.Font.DenkOne
GunModsButton.Text = " Gun Mods"
GunModsButton.TextColor3 = Color3.fromRGB(255, 255, 255)
GunModsButton.TextSize = 34.000
GunModsButton.TextWrapped = true

UICorner_7.CornerRadius = UDim.new(0, 12)
UICorner_7.Parent = GunModsButton

ImageLabel_4.Parent = SideFrame
ImageLabel_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel_4.BackgroundTransparency = 1.000
ImageLabel_4.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel_4.BorderSizePixel = 0
ImageLabel_4.Position = UDim2.new(0.00487804879, 8, 0.614285707, 9)
ImageLabel_4.Size = UDim2.new(0, 40, 0, 35)
ImageLabel_4.Image = "rbxassetid://118879890501341"
ImageLabel_4.ImageColor3 = Color3.fromRGB(0, 0, 0)

ImageLabel_5.Parent = SideFrame
ImageLabel_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel_5.BackgroundTransparency = 1.000
ImageLabel_5.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel_5.BorderSizePixel = 0
ImageLabel_5.Position = UDim2.new(0.00487804879, 11, 0.810714304, 9)
ImageLabel_5.Size = UDim2.new(0, 38, 0, 38)
ImageLabel_5.Image = "rbxassetid://89503677938056"
ImageLabel_5.ImageColor3 = Color3.fromRGB(0, 0, 0)

ScrollingFrame.Parent = MainFrame
ScrollingFrame.Active = true
ScrollingFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ScrollingFrame.BackgroundTransparency = 1.000
ScrollingFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
ScrollingFrame.BorderSizePixel = 0
ScrollingFrame.Position = UDim2.new(0.383612663, 0, 0, 0)
ScrollingFrame.Size = UDim2.new(0, 331, 0, 279)
ScrollingFrame.Visible = false

AimBotTEXT.Name = "AimBotTEXT"
AimBotTEXT.Parent = ScrollingFrame
AimBotTEXT.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
AimBotTEXT.BackgroundTransparency = 1.000
AimBotTEXT.BorderColor3 = Color3.fromRGB(0, 0, 0)
AimBotTEXT.BorderSizePixel = 0
AimBotTEXT.Position = UDim2.new(0.0241691843, -2, 0, 0)
AimBotTEXT.Size = UDim2.new(0, 109, 0, 50)
AimBotTEXT.Font = Enum.Font.FredokaOne
AimBotTEXT.Text = "Aimbot"
AimBotTEXT.TextColor3 = Color3.fromRGB(88, 27, 126)
AimBotTEXT.TextScaled = true
AimBotTEXT.TextSize = 14.000
AimBotTEXT.TextWrapped = true

TextLabel_3.Parent = AimBotTEXT
TextLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_3.BackgroundTransparency = 1.000
TextLabel_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_3.BorderSizePixel = 0
TextLabel_3.Position = UDim2.new(0.0241691843, 1, 0, 0)
TextLabel_3.Size = UDim2.new(0, 109, 0, 50)
TextLabel_3.Font = Enum.Font.FredokaOne
TextLabel_3.Text = "Aimbot"
TextLabel_3.TextColor3 = Color3.fromRGB(120, 1, 255)
TextLabel_3.TextScaled = true
TextLabel_3.TextSize = 14.000
TextLabel_3.TextWrapped = true

EnableAimbotButton.Name = "EnableAimbotButton"
EnableAimbotButton.Parent = ScrollingFrame
EnableAimbotButton.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
EnableAimbotButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
EnableAimbotButton.BorderSizePixel = 0
EnableAimbotButton.Position = UDim2.new(0.023441188, 121, 0.0787169784, -35)
EnableAimbotButton.Size = UDim2.new(0, 35, 0, 35)

UICorner_8.CornerRadius = UDim.new(0, 4)
UICorner_8.Parent = EnableAimbotButton

EnableAimbotButton_2.Name = "EnableAimbotButton"
EnableAimbotButton_2.Parent = EnableAimbotButton
EnableAimbotButton_2.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
EnableAimbotButton_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
EnableAimbotButton_2.BorderSizePixel = 0
EnableAimbotButton_2.Position = UDim2.new(-0.0285714287, 2, -0.0285714287, 2)
EnableAimbotButton_2.Size = UDim2.new(0, 33, 0, 33)
EnableAimbotButton_2.Font = Enum.Font.SourceSans
EnableAimbotButton_2.Text = ""
EnableAimbotButton_2.TextColor3 = Color3.fromRGB(0, 0, 0)
EnableAimbotButton_2.TextSize = 14.000

UICorner_9.CornerRadius = UDim.new(0, 3)
UICorner_9.Parent = EnableAimbotButton_2

KeybindTEXT.Name = "KeybindTEXT"
KeybindTEXT.Parent = ScrollingFrame
KeybindTEXT.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
KeybindTEXT.BackgroundTransparency = 1.000
KeybindTEXT.BorderColor3 = Color3.fromRGB(0, 0, 0)
KeybindTEXT.BorderSizePixel = 0
KeybindTEXT.Position = UDim2.new(0.0241691843, -4, 0.124426402, -30)
KeybindTEXT.Size = UDim2.new(0, 120, 0, 58)
KeybindTEXT.Font = Enum.Font.FredokaOne
KeybindTEXT.Text = "Keybind"
KeybindTEXT.TextColor3 = Color3.fromRGB(88, 27, 126)
KeybindTEXT.TextSize = 35.000
KeybindTEXT.TextWrapped = true

TextLabel_4.Parent = KeybindTEXT
TextLabel_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_4.BackgroundTransparency = 1.000
TextLabel_4.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_4.BorderSizePixel = 0
TextLabel_4.Position = UDim2.new(0.0241694134, 0, -0.0135045545, 0)
TextLabel_4.Size = UDim2.new(0, 120, 0, 58)
TextLabel_4.Font = Enum.Font.FredokaOne
TextLabel_4.Text = "Keybind"
TextLabel_4.TextColor3 = Color3.fromRGB(120, 1, 255)
TextLabel_4.TextSize = 35.000
TextLabel_4.TextWrapped = true

SelectKeybindButton.Name = "SelectKeybindButton"
SelectKeybindButton.Parent = ScrollingFrame
SelectKeybindButton.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
SelectKeybindButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
SelectKeybindButton.BorderSizePixel = 0
SelectKeybindButton.Position = UDim2.new(0.023441188, 121, 0.0787169784, 7)
SelectKeybindButton.Size = UDim2.new(0, 35, 0, 35)

UICorner_10.CornerRadius = UDim.new(0, 4)
UICorner_10.Parent = SelectKeybindButton

SelectKeybindButton_2.Name = "SelectKeybindButton"
SelectKeybindButton_2.Parent = SelectKeybindButton
SelectKeybindButton_2.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
SelectKeybindButton_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
SelectKeybindButton_2.BorderSizePixel = 0
SelectKeybindButton_2.Position = UDim2.new(-0.0285714287, 2, -0.0285714287, 2)
SelectKeybindButton_2.Size = UDim2.new(0, 33, 0, 33)
SelectKeybindButton_2.Font = Enum.Font.SourceSans
SelectKeybindButton_2.Text = ""
SelectKeybindButton_2.TextColor3 = Color3.fromRGB(0, 0, 0)
SelectKeybindButton_2.TextSize = 14.000

UICorner_11.CornerRadius = UDim.new(0, 3)
UICorner_11.Parent = SelectKeybindButton_2

FOVSettingsTEXT.Name = "FOVSettingsTEXT"
FOVSettingsTEXT.Parent = ScrollingFrame
FOVSettingsTEXT.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
FOVSettingsTEXT.BackgroundTransparency = 1.000
FOVSettingsTEXT.BorderColor3 = Color3.fromRGB(0, 0, 0)
FOVSettingsTEXT.BorderSizePixel = 0
FOVSettingsTEXT.Position = UDim2.new(0.0211480372, -7, 0.252256125, -61)
FOVSettingsTEXT.Size = UDim2.new(0, 202, 0, 58)
FOVSettingsTEXT.Font = Enum.Font.FredokaOne
FOVSettingsTEXT.Text = "FOV Settings"
FOVSettingsTEXT.TextColor3 = Color3.fromRGB(88, 27, 126)
FOVSettingsTEXT.TextSize = 35.000
FOVSettingsTEXT.TextWrapped = true

TextLabel_5.Parent = FOVSettingsTEXT
TextLabel_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_5.BackgroundTransparency = 1.000
TextLabel_5.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_5.BorderSizePixel = 0
TextLabel_5.Position = UDim2.new(0.0211480372, -1, 0.252256125, -15)
TextLabel_5.Size = UDim2.new(0, 202, 0, 58)
TextLabel_5.Font = Enum.Font.FredokaOne
TextLabel_5.Text = "FOV Settings"
TextLabel_5.TextColor3 = Color3.fromRGB(120, 1, 255)
TextLabel_5.TextSize = 35.000
TextLabel_5.TextWrapped = true

SizeTEXT.Name = "SizeTEXT"
SizeTEXT.Parent = FOVSettingsTEXT
SizeTEXT.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SizeTEXT.BackgroundTransparency = 1.000
SizeTEXT.BorderColor3 = Color3.fromRGB(0, 0, 0)
SizeTEXT.BorderSizePixel = 0
SizeTEXT.Position = UDim2.new(-0.120083041, -5, 0.460274518, 2)
SizeTEXT.Size = UDim2.new(0, 109, 0, 44)
SizeTEXT.Font = Enum.Font.FredokaOne
SizeTEXT.Text = "Size"
SizeTEXT.TextColor3 = Color3.fromRGB(255, 255, 255)
SizeTEXT.TextSize = 20.000
SizeTEXT.TextWrapped = true

FOVSlider.Name = "FOVSlider"
FOVSlider.Parent = ScrollingFrame
FOVSlider.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
FOVSlider.BorderColor3 = Color3.fromRGB(0, 0, 0)
FOVSlider.BorderSizePixel = 0
FOVSlider.Position = UDim2.new(0.0472501926, -7, 0.280780792, -15)
FOVSlider.Size = UDim2.new(0, 220, 0, 14)

UICorner_12.CornerRadius = UDim.new(0, 5)
UICorner_12.Parent = FOVSlider

Fill.Name = "Fill"
Fill.Parent = FOVSlider
Fill.BackgroundColor3 = Color3.fromRGB(115, 0, 255)
Fill.BorderColor3 = Color3.fromRGB(0, 0, 0)
Fill.BorderSizePixel = 0
Fill.Position = UDim2.new(8.32297587e-07, 0, 0, 0)
Fill.Size = UDim2.new(0, 7, 0, 14)

UICorner_13.CornerRadius = UDim.new(0, 5)
UICorner_13.Parent = Fill

Knob.Name = "Knob"
Knob.Parent = Fill
Knob.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Knob.BackgroundTransparency = 1.000
Knob.BorderColor3 = Color3.fromRGB(0, 0, 0)
Knob.BorderSizePixel = 0
Knob.Position = UDim2.new(2.71428561, -27, -1.28571427, 2)
Knob.Size = UDim2.new(0, 52, 0, 44)
Knob.Font = Enum.Font.FredokaOne
Knob.Text = ""
Knob.TextColor3 = Color3.fromRGB(255, 255, 255)
Knob.TextSize = 35.000

TriggerBotTEXT.Name = "TriggerBotTEXT"
TriggerBotTEXT.Parent = ScrollingFrame
TriggerBotTEXT.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TriggerBotTEXT.BackgroundTransparency = 1.000
TriggerBotTEXT.BorderColor3 = Color3.fromRGB(0, 0, 0)
TriggerBotTEXT.BorderSizePixel = 0
TriggerBotTEXT.Position = UDim2.new(0.0211480372, -23, 0.252256125, 10)
TriggerBotTEXT.Size = UDim2.new(0, 202, 0, 58)
TriggerBotTEXT.Font = Enum.Font.FredokaOne
TriggerBotTEXT.Text = "TriggerBot"
TriggerBotTEXT.TextColor3 = Color3.fromRGB(88, 27, 126)
TriggerBotTEXT.TextSize = 38.000
TriggerBotTEXT.TextWrapped = true

TextLabel_6.Parent = TriggerBotTEXT
TextLabel_6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_6.BackgroundTransparency = 1.000
TextLabel_6.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_6.BorderSizePixel = 0
TextLabel_6.Position = UDim2.new(0.0657025352, -10, -1.31670928, 76)
TextLabel_6.Size = UDim2.new(0, 202, 0, 58)
TextLabel_6.ZIndex = 2
TextLabel_6.Font = Enum.Font.FredokaOne
TextLabel_6.Text = "TriggerBot"
TextLabel_6.TextColor3 = Color3.fromRGB(120, 1, 255)
TextLabel_6.TextSize = 38.000
TextLabel_6.TextWrapped = true

EnableTriggerBotButton.Name = "EnableTriggerBotButton"
EnableTriggerBotButton.Parent = ScrollingFrame
EnableTriggerBotButton.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
EnableTriggerBotButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
EnableTriggerBotButton.BorderSizePixel = 0
EnableTriggerBotButton.Position = UDim2.new(0.023441188, 169, 0.0787169784, 120)
EnableTriggerBotButton.Size = UDim2.new(0, 35, 0, 35)

UICorner_14.CornerRadius = UDim.new(0, 4)
UICorner_14.Parent = EnableTriggerBotButton

SelectKeybindButton_3.Name = "SelectKeybindButton"
SelectKeybindButton_3.Parent = EnableTriggerBotButton
SelectKeybindButton_3.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
SelectKeybindButton_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
SelectKeybindButton_3.BorderSizePixel = 0
SelectKeybindButton_3.Position = UDim2.new(-0.0285714287, 2, -0.0285714287, 2)
SelectKeybindButton_3.Size = UDim2.new(0, 33, 0, 33)
SelectKeybindButton_3.Font = Enum.Font.SourceSans
SelectKeybindButton_3.Text = ""
SelectKeybindButton_3.TextColor3 = Color3.fromRGB(0, 0, 0)
SelectKeybindButton_3.TextSize = 14.000

UICorner_15.CornerRadius = UDim.new(0, 3)
UICorner_15.Parent = SelectKeybindButton_3

HomeFrame.Name = "HomeFrame"
HomeFrame.Parent = MainFrame
HomeFrame.Active = true
HomeFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
HomeFrame.BackgroundTransparency = 1.000
HomeFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
HomeFrame.BorderSizePixel = 0
HomeFrame.Position = UDim2.new(0.383612663, 0, 0.00180184504, 0)
HomeFrame.Size = UDim2.new(0, 331, 0, 279)
HomeFrame.Visible = false

TextLabel_7.Parent = HomeFrame
TextLabel_7.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_7.BackgroundTransparency = 1.000
TextLabel_7.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_7.BorderSizePixel = 0
TextLabel_7.Position = UDim2.new(0.187311172, 0, -0.00332729099, 0)
TextLabel_7.Size = UDim2.new(0, 200, 0, 50)
TextLabel_7.Font = Enum.Font.Bangers
TextLabel_7.Text = "Made By D3IVI5420"
TextLabel_7.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_7.TextSize = 41.000

ImageLabel_6.Parent = HomeFrame
ImageLabel_6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel_6.BackgroundTransparency = 1.000
ImageLabel_6.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel_6.BorderSizePixel = 0
ImageLabel_6.Position = UDim2.new(0.120845921, 1, 0.167289704, 3)
ImageLabel_6.Size = UDim2.new(0, 173, 0, 184)
ImageLabel_6.Image = "rbxassetid://6274377111"

TextLabel_8.Parent = HomeFrame
TextLabel_8.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_8.BackgroundTransparency = 1.000
TextLabel_8.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_8.BorderSizePixel = 0
TextLabel_8.Position = UDim2.new(0.0422960743, 0, 0.0587937012, 0)
TextLabel_8.Size = UDim2.new(0, 200, 0, 50)
TextLabel_8.Font = Enum.Font.Bangers
TextLabel_8.Text = "Ty for trying out"
TextLabel_8.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_8.TextSize = 27.000

ESPFrame.Name = "ESPFrame"
ESPFrame.Parent = MainFrame
ESPFrame.Active = true
ESPFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ESPFrame.BackgroundTransparency = 1.000
ESPFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
ESPFrame.BorderSizePixel = 0
ESPFrame.Position = UDim2.new(0.383612663, 0, 0, 0)
ESPFrame.Size = UDim2.new(0, 331, 0, 280)
ESPFrame.Visible = false

EnableChamsButton.Name = "EnableChamsButton"
EnableChamsButton.Parent = ESPFrame
EnableChamsButton.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
EnableChamsButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
EnableChamsButton.BorderSizePixel = 0
EnableChamsButton.Position = UDim2.new(0.023441188, 117, 0.0787169784, -34)
EnableChamsButton.Size = UDim2.new(0, 35, 0, 35)

UICorner_16.CornerRadius = UDim.new(0, 4)
UICorner_16.Parent = EnableChamsButton

Button.Name = "Button"
Button.Parent = EnableChamsButton
Button.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
Button.BorderSizePixel = 0
Button.Position = UDim2.new(-0.0285714287, 2, -0.0285714287, 2)
Button.Size = UDim2.new(0, 33, 0, 33)
Button.Font = Enum.Font.SourceSans
Button.Text = ""
Button.TextColor3 = Color3.fromRGB(0, 0, 0)
Button.TextSize = 14.000

UICorner_17.CornerRadius = UDim.new(0, 3)
UICorner_17.Parent = Button

ChamsTEXT.Name = "ChamsTEXT"
ChamsTEXT.Parent = ESPFrame
ChamsTEXT.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ChamsTEXT.BackgroundTransparency = 1.000
ChamsTEXT.BorderColor3 = Color3.fromRGB(0, 0, 0)
ChamsTEXT.BorderSizePixel = 0
ChamsTEXT.Position = UDim2.new(0.0241691843, -7, 0, 0)
ChamsTEXT.Size = UDim2.new(0, 109, 0, 50)
ChamsTEXT.Font = Enum.Font.FredokaOne
ChamsTEXT.Text = "Chams"
ChamsTEXT.TextColor3 = Color3.fromRGB(88, 27, 126)
ChamsTEXT.TextScaled = true
ChamsTEXT.TextSize = 14.000
ChamsTEXT.TextWrapped = true

TextLabel_9.Parent = ChamsTEXT
TextLabel_9.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_9.BackgroundTransparency = 1.000
TextLabel_9.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_9.BorderSizePixel = 0
TextLabel_9.Position = UDim2.new(0.0241691843, 1, 0, 0)
TextLabel_9.Size = UDim2.new(0, 109, 0, 50)
TextLabel_9.ZIndex = 2
TextLabel_9.Font = Enum.Font.FredokaOne
TextLabel_9.Text = "Chams"
TextLabel_9.TextColor3 = Color3.fromRGB(120, 1, 255)
TextLabel_9.TextScaled = true
TextLabel_9.TextSize = 14.000
TextLabel_9.TextWrapped = true

EnableTracersButton.Name = "EnableTracersButton"
EnableTracersButton.Parent = ESPFrame
EnableTracersButton.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
EnableTracersButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
EnableTracersButton.BorderSizePixel = 0
EnableTracersButton.Position = UDim2.new(0.023441188, 117, 0.0787169784, 6)
EnableTracersButton.Size = UDim2.new(0, 35, 0, 35)

UICorner_18.CornerRadius = UDim.new(0, 4)
UICorner_18.Parent = EnableTracersButton

Button_2.Name = "Button"
Button_2.Parent = EnableTracersButton
Button_2.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
Button_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Button_2.BorderSizePixel = 0
Button_2.Position = UDim2.new(-0.0285714287, 2, -0.0285714287, 2)
Button_2.Size = UDim2.new(0, 33, 0, 33)
Button_2.Font = Enum.Font.SourceSans
Button_2.Text = ""
Button_2.TextColor3 = Color3.fromRGB(0, 0, 0)
Button_2.TextSize = 14.000

UICorner_19.CornerRadius = UDim.new(0, 3)
UICorner_19.Parent = Button_2

EnableDistanceButton.Name = "EnableDistanceButton"
EnableDistanceButton.Parent = ESPFrame
EnableDistanceButton.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
EnableDistanceButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
EnableDistanceButton.BorderSizePixel = 0
EnableDistanceButton.Position = UDim2.new(0.023441188, 117, 0.0787169784, 46)
EnableDistanceButton.Size = UDim2.new(0, 35, 0, 35)

UICorner_20.CornerRadius = UDim.new(0, 4)
UICorner_20.Parent = EnableDistanceButton

Button_3.Name = "Button"
Button_3.Parent = EnableDistanceButton
Button_3.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
Button_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
Button_3.BorderSizePixel = 0
Button_3.Position = UDim2.new(-0.0285714287, 2, -0.0285714287, 2)
Button_3.Size = UDim2.new(0, 33, 0, 33)
Button_3.Font = Enum.Font.SourceSans
Button_3.Text = ""
Button_3.TextColor3 = Color3.fromRGB(0, 0, 0)
Button_3.TextSize = 14.000

UICorner_21.CornerRadius = UDim.new(0, 3)
UICorner_21.Parent = Button_3

TracersTEXT.Name = "TracersTEXT"
TracersTEXT.Parent = ESPFrame
TracersTEXT.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TracersTEXT.BackgroundTransparency = 1.000
TracersTEXT.BorderColor3 = Color3.fromRGB(0, 0, 0)
TracersTEXT.BorderSizePixel = 0
TracersTEXT.Position = UDim2.new(0.0241691843, -5, 0, 39)
TracersTEXT.Size = UDim2.new(0, 109, 0, 50)
TracersTEXT.Font = Enum.Font.FredokaOne
TracersTEXT.Text = "Tracers"
TracersTEXT.TextColor3 = Color3.fromRGB(88, 27, 126)
TracersTEXT.TextScaled = true
TracersTEXT.TextSize = 14.000
TracersTEXT.TextWrapped = true

TextLabel_10.Parent = TracersTEXT
TextLabel_10.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_10.BackgroundTransparency = 1.000
TextLabel_10.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_10.BorderSizePixel = 0
TextLabel_10.Position = UDim2.new(0.0241691843, 1, 0, 0)
TextLabel_10.Size = UDim2.new(0, 109, 0, 50)
TextLabel_10.ZIndex = 2
TextLabel_10.Font = Enum.Font.FredokaOne
TextLabel_10.Text = "Tracers"
TextLabel_10.TextColor3 = Color3.fromRGB(120, 1, 255)
TextLabel_10.TextScaled = true
TextLabel_10.TextSize = 14.000
TextLabel_10.TextWrapped = true

DistanceTEXT.Name = "DistanceTEXT"
DistanceTEXT.Parent = ESPFrame
DistanceTEXT.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
DistanceTEXT.BackgroundTransparency = 1.000
DistanceTEXT.BorderColor3 = Color3.fromRGB(0, 0, 0)
DistanceTEXT.BorderSizePixel = 0
DistanceTEXT.Position = UDim2.new(0.0241691843, -2, 0, 79)
DistanceTEXT.Size = UDim2.new(0, 109, 0, 50)
DistanceTEXT.Font = Enum.Font.FredokaOne
DistanceTEXT.Text = "Distance"
DistanceTEXT.TextColor3 = Color3.fromRGB(88, 27, 126)
DistanceTEXT.TextScaled = true
DistanceTEXT.TextSize = 14.000
DistanceTEXT.TextWrapped = true

TextLabel_11.Parent = DistanceTEXT
TextLabel_11.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_11.BackgroundTransparency = 1.000
TextLabel_11.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_11.BorderSizePixel = 0
TextLabel_11.Position = UDim2.new(0.0241691843, 0, 0, 0)
TextLabel_11.Size = UDim2.new(0, 109, 0, 50)
TextLabel_11.ZIndex = 2
TextLabel_11.Font = Enum.Font.FredokaOne
TextLabel_11.Text = "Distance"
TextLabel_11.TextColor3 = Color3.fromRGB(120, 1, 255)
TextLabel_11.TextScaled = true
TextLabel_11.TextSize = 14.000
TextLabel_11.TextWrapped = true

EnableNameButton.Name = "EnableNameButton"
EnableNameButton.Parent = ESPFrame
EnableNameButton.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
EnableNameButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
EnableNameButton.BorderSizePixel = 0
EnableNameButton.Position = UDim2.new(0.023441188, 117, 0.0787169784, 86)
EnableNameButton.Size = UDim2.new(0, 35, 0, 35)

UICorner_22.CornerRadius = UDim.new(0, 4)
UICorner_22.Parent = EnableNameButton

Button_4.Name = "Button"
Button_4.Parent = EnableNameButton
Button_4.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
Button_4.BorderColor3 = Color3.fromRGB(0, 0, 0)
Button_4.BorderSizePixel = 0
Button_4.Position = UDim2.new(-0.0285714287, 2, -0.0285714287, 2)
Button_4.Size = UDim2.new(0, 33, 0, 33)
Button_4.Font = Enum.Font.SourceSans
Button_4.Text = ""
Button_4.TextColor3 = Color3.fromRGB(0, 0, 0)
Button_4.TextSize = 14.000

UICorner_23.CornerRadius = UDim.new(0, 3)
UICorner_23.Parent = Button_4

NameTEXT.Name = "NameTEXT"
NameTEXT.Parent = ESPFrame
NameTEXT.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NameTEXT.BackgroundTransparency = 1.000
NameTEXT.BorderColor3 = Color3.fromRGB(0, 0, 0)
NameTEXT.BorderSizePixel = 0
NameTEXT.Position = UDim2.new(0.0241691843, -11, 0, 121)
NameTEXT.Size = UDim2.new(0, 109, 0, 50)
NameTEXT.Font = Enum.Font.FredokaOne
NameTEXT.Text = "Name"
NameTEXT.TextColor3 = Color3.fromRGB(88, 27, 126)
NameTEXT.TextSize = 34.000
NameTEXT.TextWrapped = true

TextLabel_12.Parent = NameTEXT
TextLabel_12.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_12.BackgroundTransparency = 1.000
TextLabel_12.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_12.BorderSizePixel = 0
TextLabel_12.Position = UDim2.new(0.0241691843, -5, 0, 0)
TextLabel_12.Size = UDim2.new(0, 109, 0, 50)
TextLabel_12.ZIndex = 2
TextLabel_12.Font = Enum.Font.FredokaOne
TextLabel_12.Text = "Name"
TextLabel_12.TextColor3 = Color3.fromRGB(120, 1, 255)
TextLabel_12.TextSize = 34.000
TextLabel_12.TextWrapped = true

Showcase.Name = "Showcase"
Showcase.Parent = ESPFrame
Showcase.BackgroundColor3 = Color3.fromRGB(44, 44, 44)
Showcase.BorderColor3 = Color3.fromRGB(0, 0, 0)
Showcase.BorderSizePixel = 0
Showcase.Position = UDim2.new(0.504531741, 0, 0.010746547, 0)
Showcase.Size = UDim2.new(0, 147, 0, 176)

UICorner_24.CornerRadius = UDim.new(0, 12)
UICorner_24.Parent = Showcase

Chams.Name = "Chams"
Chams.Parent = Showcase
Chams.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Chams.BackgroundTransparency = 1.000
Chams.BorderColor3 = Color3.fromRGB(0, 0, 0)
Chams.BorderSizePixel = 0
Chams.Position = UDim2.new(-0.161333352, 6, -0.0625, 19)
Chams.Size = UDim2.new(0, 182, 0, 179)
Chams.Visible = false
Chams.Image = "rbxassetid://753015086"
Chams.ImageColor3 = Color3.fromRGB(255, 0, 0)

NOOB.Name = "NOOB"
NOOB.Parent = Showcase
NOOB.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NOOB.BackgroundTransparency = 1.000
NOOB.BorderColor3 = Color3.fromRGB(0, 0, 0)
NOOB.BorderSizePixel = 0
NOOB.Position = UDim2.new(-0.0933061466, 0, -0.0290584564, 15)
NOOB.Size = UDim2.new(0, 173, 0, 174)
NOOB.Image = "rbxassetid://753015086"

DistanceTEXT_2.Name = "DistanceTEXT"
DistanceTEXT_2.Parent = Showcase
DistanceTEXT_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
DistanceTEXT_2.BackgroundTransparency = 1.000
DistanceTEXT_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
DistanceTEXT_2.BorderSizePixel = 0
DistanceTEXT_2.Position = UDim2.new(-0.210884348, 7, 0.727272749, 1)
DistanceTEXT_2.Size = UDim2.new(0, 200, 0, 56)
DistanceTEXT_2.Visible = false
DistanceTEXT_2.ZIndex = 5
DistanceTEXT_2.Font = Enum.Font.SourceSans
DistanceTEXT_2.Text = "Distance : 0"
DistanceTEXT_2.TextColor3 = Color3.fromRGB(255, 0, 4)
DistanceTEXT_2.TextSize = 22.000

NameTEXT_2.Name = "NameTEXT"
NameTEXT_2.Parent = Showcase
NameTEXT_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NameTEXT_2.BackgroundTransparency = 1.000
NameTEXT_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
NameTEXT_2.BorderSizePixel = 0
NameTEXT_2.Position = UDim2.new(-0.210884348, 3, -0.142045453, 3)
NameTEXT_2.Size = UDim2.new(0, 200, 0, 56)
NameTEXT_2.Visible = false
NameTEXT_2.ZIndex = 5
NameTEXT_2.Font = Enum.Font.SourceSans
NameTEXT_2.Text = "Name"
NameTEXT_2.TextColor3 = Color3.fromRGB(255, 0, 4)
NameTEXT_2.TextSize = 18.000

Tracers.Name = "Tracers"
Tracers.Parent = Showcase
Tracers.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Tracers.BackgroundTransparency = 1.000
Tracers.BorderColor3 = Color3.fromRGB(0, 0, 0)
Tracers.BorderSizePixel = 0
Tracers.Position = UDim2.new(0.198281631, 0, 0.406814933, 0)
Tracers.Rotation = 57.000
Tracers.Size = UDim2.new(0, 13, 0, 69)
Tracers.Visible = false
Tracers.ZIndex = 2
Tracers.Image = "rbxassetid://4595131819"
Tracers.ImageColor3 = Color3.fromRGB(255, 0, 0)

UICorner_25.CornerRadius = UDim.new(0, 1000)
UICorner_25.Parent = Tracers

ImageButton.Parent = MainFrame
ImageButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageButton.BackgroundTransparency = 1.000
ImageButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageButton.BorderSizePixel = 0
ImageButton.Position = UDim2.new(0.0452830866, -22, 0.767857134, -1)
ImageButton.Size = UDim2.new(0, 27, 0, 27)
ImageButton.Image = "rbxassetid://5718466614"

PlayerFrame.Name = "PlayerFrame"
PlayerFrame.Parent = MainFrame
PlayerFrame.Active = true
PlayerFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
PlayerFrame.BackgroundTransparency = 1.000
PlayerFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
PlayerFrame.BorderSizePixel = 0
PlayerFrame.Position = UDim2.new(0.383612663, 0, 0.00180184504, 0)
PlayerFrame.Size = UDim2.new(0, 331, 0, 279)

EnableJUMPSButton.Name = "EnableJUMPSButton"
EnableJUMPSButton.Parent = PlayerFrame
EnableJUMPSButton.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
EnableJUMPSButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
EnableJUMPSButton.BorderSizePixel = 0
EnableJUMPSButton.Position = UDim2.new(0.023441188, 128, 0.0787169784, -34)
EnableJUMPSButton.Size = UDim2.new(0, 35, 0, 35)

UICorner_26.CornerRadius = UDim.new(0, 4)
UICorner_26.Parent = EnableJUMPSButton

Button_5.Name = "Button"
Button_5.Parent = EnableJUMPSButton
Button_5.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
Button_5.BorderColor3 = Color3.fromRGB(0, 0, 0)
Button_5.BorderSizePixel = 0
Button_5.Position = UDim2.new(-0.0285714287, 2, -0.0285714287, 2)
Button_5.Size = UDim2.new(0, 33, 0, 33)
Button_5.Font = Enum.Font.SourceSans
Button_5.Text = ""
Button_5.TextColor3 = Color3.fromRGB(0, 0, 0)
Button_5.TextSize = 14.000

UICorner_27.CornerRadius = UDim.new(0, 3)
UICorner_27.Parent = Button_5

infjumpsTEXT.Name = "infjumpsTEXT"
infjumpsTEXT.Parent = PlayerFrame
infjumpsTEXT.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
infjumpsTEXT.BackgroundTransparency = 1.000
infjumpsTEXT.BorderColor3 = Color3.fromRGB(0, 0, 0)
infjumpsTEXT.BorderSizePixel = 0
infjumpsTEXT.Position = UDim2.new(0.0241691843, -3, 0, 0)
infjumpsTEXT.Size = UDim2.new(0, 131, 0, 50)
infjumpsTEXT.Font = Enum.Font.FredokaOne
infjumpsTEXT.Text = "Inf. Jumps"
infjumpsTEXT.TextColor3 = Color3.fromRGB(88, 27, 126)
infjumpsTEXT.TextSize = 30.000
infjumpsTEXT.TextWrapped = true

TextLabel_13.Parent = infjumpsTEXT
TextLabel_13.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_13.BackgroundTransparency = 1.000
TextLabel_13.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_13.BorderSizePixel = 0
TextLabel_13.Position = UDim2.new(0.0259742141, -6, 0, 0)
TextLabel_13.Size = UDim2.new(0, 131, 0, 50)
TextLabel_13.ZIndex = 2
TextLabel_13.Font = Enum.Font.FredokaOne
TextLabel_13.Text = "Inf. Jumps"
TextLabel_13.TextColor3 = Color3.fromRGB(120, 1, 255)
TextLabel_13.TextSize = 30.000
TextLabel_13.TextWrapped = true

GunModsFrame.Name = "GunModsFrame"
GunModsFrame.Parent = MainFrame
GunModsFrame.Active = true
GunModsFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
GunModsFrame.BackgroundTransparency = 1.000
GunModsFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
GunModsFrame.BorderSizePixel = 0
GunModsFrame.Position = UDim2.new(0.383612663, 0, 0.00180184504, 0)
GunModsFrame.Size = UDim2.new(0, 331, 0, 279)
GunModsFrame.Visible = false

-- Scripts:

local function HWSXI_fake_script() -- Button.LocalScript 
	local script = Instance.new('LocalScript', Button)

	--// ESP Toggle Button Script
	local Players = game:GetService("Players")
	local LocalPlayer = Players.LocalPlayer
	local button = script.Parent
	
	-- Path to your Chams ImageLabel
	local ChamsImage = button.Parent.Parent.Showcase:FindFirstChild("Chams")
	
	local ESP_Enabled = false
	local connections = {}
	
	-- Function to apply highlight
	local function applyHighlight(character, isEnemy)
		if not character then return end
	
		-- remove old highlight
		local old = character:FindFirstChild("ESP_Highlight")
		if old then old:Destroy() end
	
		local highlight = Instance.new("Highlight")
		highlight.Name = "ESP_Highlight"
		highlight.FillColor = isEnemy and Color3.fromRGB(255, 0, 0) or Color3.fromRGB(0, 255, 0)
		highlight.OutlineColor = Color3.fromRGB(255, 255, 255)
		highlight.FillTransparency = 0.5
		highlight.OutlineTransparency = 0
		highlight.Adornee = character
		highlight.Parent = character
	end
	
	-- Function to update highlight for a player
	local function updateHighlight(player)
		if not ESP_Enabled then return end
		if not player.Character then return end
		local isEnemy = (player.Team ~= LocalPlayer.Team)
		applyHighlight(player.Character, isEnemy)
	end
	
	-- Handle player logic
	local function setupPlayer(player)
		if player == LocalPlayer then return end
	
		-- Character spawn
		table.insert(connections, player.CharacterAdded:Connect(function(char)
			char:WaitForChild("HumanoidRootPart")
			updateHighlight(player)
		end))
	
		-- Existing character
		if player.Character then
			updateHighlight(player)
		end
	
		-- Team change
		table.insert(connections, player:GetPropertyChangedSignal("Team"):Connect(function()
			updateHighlight(player)
		end))
	end
	
	-- Enable ESP
	local function enableESP()
		ESP_Enabled = true
		button.BackgroundColor3 = Color3.fromRGB(0, 171, 120)
		if ChamsImage then
			ChamsImage.Visible = true
		end
	
		-- Setup current players
		for _, plr in pairs(Players:GetPlayers()) do
			setupPlayer(plr)
		end
	
		-- Player joined
		table.insert(connections, Players.PlayerAdded:Connect(setupPlayer))
	
		-- Cleanup on leaving
		table.insert(connections, Players.PlayerRemoving:Connect(function(player)
			if player.Character and player.Character:FindFirstChild("ESP_Highlight") then
				player.Character.ESP_Highlight:Destroy()
			end
		end))
	end
	
	-- Disable ESP
	local function disableESP()
		ESP_Enabled = false
		button.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
		if ChamsImage then
			ChamsImage.Visible = false
		end
	
		-- Remove all highlights
		for _, plr in pairs(Players:GetPlayers()) do
			if plr.Character then
				local h = plr.Character:FindFirstChild("ESP_Highlight")
				if h then h:Destroy() end
			end
		end
	
		-- Disconnect events
		for _, conn in pairs(connections) do
			if conn.Connected then
				conn:Disconnect()
			end
		end
		table.clear(connections)
	end
	
	-- Toggle on button click
	button.MouseButton1Click:Connect(function()
		if ESP_Enabled then
			disableESP()
		else
			enableESP()
		end
	end)
	
	-- Start with ESP off
	disableESP()
	
end
coroutine.wrap(HWSXI_fake_script)()
local function DWIYVRC_fake_script() -- Button_2.LocalScript 
	local script = Instance.new('LocalScript', Button_2)

	--// Tracers Toggle Script
	local Players = game:GetService("Players")
	local LocalPlayer = Players.LocalPlayer
	local button = script.Parent
	local tracersImage = button.Parent.Parent.Showcase.Tracers -- your ImageLabel
	
	-- Settings
	local EnemyColor = Color3.fromRGB(255, 0, 0) -- red
	local TeamColor = Color3.fromRGB(0, 255, 0)  -- green
	local BeamTransparency = 0.6
	local BeamWidth = 0.15
	
	-- State
	local tracersEnabled = false
	local tracerLoop = nil
	
	-- Function to create a beam
	local function createBeam(fromChar, toChar, isEnemy)
		local fromHRP = fromChar:FindFirstChild("HumanoidRootPart")
		local toHRP = toChar:FindFirstChild("HumanoidRootPart")
		if not fromHRP or not toHRP then return end
	
		local fromAttachment = Instance.new("Attachment", fromHRP)
		local toAttachment = Instance.new("Attachment", toHRP)
	
		local beam = Instance.new("Beam")
		beam.Attachment0 = fromAttachment
		beam.Attachment1 = toAttachment
		beam.Color = ColorSequence.new(isEnemy and EnemyColor or TeamColor)
		beam.Transparency = NumberSequence.new(BeamTransparency)
		beam.Width0 = BeamWidth
		beam.Width1 = BeamWidth
		beam.FaceCamera = true
		beam.Parent = fromHRP
	
		toChar.AncestryChanged:Connect(function()
			if not toChar:IsDescendantOf(game) then
				beam:Destroy()
			end
		end)
	end
	
	-- Update beams
	local function updateBeams()
		local myChar = LocalPlayer.Character
		if not myChar then return end
		local hrp = myChar:FindFirstChild("HumanoidRootPart")
		if not hrp then return end
	
		-- Clear old beams
		for _, b in ipairs(hrp:GetChildren()) do
			if b:IsA("Beam") or b:IsA("Attachment") then
				b:Destroy()
			end
		end
	
		for _, plr in ipairs(Players:GetPlayers()) do
			if plr ~= LocalPlayer and plr.Character then
				local isEnemy = (plr.Team ~= LocalPlayer.Team)
				createBeam(myChar, plr.Character, isEnemy)
			end
		end
	end
	
	-- Toggle function
	local function toggleTracers()
		tracersEnabled = not tracersEnabled
	
		if tracersEnabled then
			button.BackgroundColor3 = Color3.fromRGB(0,171,120) -- ON
			tracersImage.Visible = true
	
			-- Start loop
			tracerLoop = task.spawn(function()
				while tracersEnabled do
					updateBeams()
					task.wait(2)
				end
			end)
		else
			button.BackgroundColor3 = Color3.fromRGB(80,80,80) -- OFF
			tracersImage.Visible = false
	
			-- Stop loop and clear beams
			if tracerLoop then
				task.cancel(tracerLoop)
				tracerLoop = nil
			end
	
			local myChar = LocalPlayer.Character
			if myChar and myChar:FindFirstChild("HumanoidRootPart") then
				for _, b in ipairs(myChar.HumanoidRootPart:GetChildren()) do
					if b:IsA("Beam") or b:IsA("Attachment") then
						b:Destroy()
					end
				end
			end
		end
	end
	
	-- Connect button
	button.MouseButton1Click:Connect(toggleTracers)
	
end
coroutine.wrap(DWIYVRC_fake_script)()
local function DQADVMR_fake_script() -- Button_3.LocalScript 
	local script = Instance.new('LocalScript', Button_3)

	local Players = game:GetService("Players")
	local LocalPlayer = Players.LocalPlayer
	local button = script.Parent
	local showcaseText = button.Parent.Parent.Showcase.DistanceTEXT
	
	local enabled = false
	local connections = {}
	local billboards = {}
	
	-- Function to create Billboard for one player
	local function createBillboard(player)
		if player == LocalPlayer then return end
		if not player.Character or not player.Character:FindFirstChild("Head") then return end
	
		local head = player.Character:WaitForChild("Head")
	
		-- Remove old
		if head:FindFirstChild("DistanceGui") then
			head.DistanceGui:Destroy()
		end
	
		local billboard = Instance.new("BillboardGui")
		billboard.Name = "DistanceGui"
		billboard.Size = UDim2.new(0, 60, 0, 15)
		billboard.StudsOffset = Vector3.new(0, -2, 0)
		billboard.AlwaysOnTop = true
		billboard.Parent = head
	
		local textLabel = Instance.new("TextLabel")
		textLabel.Size = UDim2.new(1, 0, 1, 0)
		textLabel.BackgroundTransparency = 1
		textLabel.TextScaled = true
		textLabel.TextStrokeTransparency = 0.5
		textLabel.Font = Enum.Font.SourceSansBold
		textLabel.TextTransparency = 0.2 -- slight transparency
		textLabel.Parent = billboard
	
		-- Update loop
		task.spawn(function()
			while player.Parent and billboard.Parent and enabled do
				if not player.Character or not player.Character:FindFirstChild("Head") then
					billboard:Destroy()
					break
				end
	
				if player.Character:FindFirstChild("HumanoidRootPart") and LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
					local distance = (player.Character.HumanoidRootPart.Position - LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
					textLabel.Text = string.format("%d", distance)
	
					if player.Team ~= LocalPlayer.Team then
						textLabel.TextColor3 = Color3.fromRGB(255, 0, 0) -- Enemy
					else
						textLabel.TextColor3 = Color3.fromRGB(0, 255, 0) -- Teammate
					end
				end
	
				task.wait(0.2)
			end
		end)
	
		billboards[player] = billboard
	end
	
	-- Enable ESP
	local function enableDistance()
		enabled = true
		showcaseText.Visible = true
		button.BackgroundColor3 = Color3.fromRGB(0,171,120)
	
		-- Setup all players
		for _, plr in pairs(Players:GetPlayers()) do
			if plr ~= LocalPlayer then
				createBillboard(plr)
				connections[plr] = plr.CharacterAdded:Connect(function()
					task.wait(1)
					if enabled then
						createBillboard(plr)
					end
				end)
			end
		end
	
		connections["_playerAdded"] = Players.PlayerAdded:Connect(function(plr)
			connections[plr] = plr.CharacterAdded:Connect(function()
				task.wait(1)
				if enabled then
					createBillboard(plr)
				end
			end)
		end)
	
		connections["_playerRemoving"] = Players.PlayerRemoving:Connect(function(plr)
			if billboards[plr] then
				billboards[plr]:Destroy()
				billboards[plr] = nil
			end
			if connections[plr] then
				connections[plr]:Disconnect()
				connections[plr] = nil
			end
		end)
	end
	
	-- Disable ESP
	local function disableDistance()
		enabled = false
		showcaseText.Visible = false
		button.BackgroundColor3 = Color3.fromRGB(80,80,80)
	
		-- Remove billboards
		for _, billboard in pairs(billboards) do
			if billboard and billboard.Parent then
				billboard:Destroy()
			end
		end
		billboards = {}
	
		-- Disconnect all
		for _, conn in pairs(connections) do
			if conn then conn:Disconnect() end
		end
		connections = {}
	end
	
	-- Toggle button
	button.MouseButton1Click:Connect(function()
		if enabled then
			disableDistance()
		else
			enableDistance()
		end
	end)
	
end
coroutine.wrap(DQADVMR_fake_script)()
local function PVYFZA_fake_script() -- Button_4.LocalScript 
	local script = Instance.new('LocalScript', Button_4)

	local Players = game:GetService("Players")
	local LocalPlayer = Players.LocalPlayer
	local button = script.Parent
	local showcaseText = button.Parent.Parent.Showcase.NameTEXT
	
	local enabled = false
	local connections = {}
	local billboards = {}
	
	-- Function to create Billboard for a player's name
	local function createBillboard(player)
		if player == LocalPlayer then return end
		if not player.Character or not player.Character:FindFirstChild("Head") then return end
	
		local head = player.Character:WaitForChild("Head")
	
		-- Remove old
		if head:FindFirstChild("NameGui") then
			head.NameGui:Destroy()
		end
	
		local billboard = Instance.new("BillboardGui")
		billboard.Name = "NameGui"
		billboard.Size = UDim2.new(0, 100, 0, 20)
		billboard.StudsOffset = Vector3.new(0, 2.5, 0) -- above head
		billboard.AlwaysOnTop = true
		billboard.Parent = head
	
		local textLabel = Instance.new("TextLabel")
		textLabel.Size = UDim2.new(1, 0, 1, 0)
		textLabel.BackgroundTransparency = 1
		textLabel.TextScaled = true
		textLabel.TextStrokeTransparency = 0.5
		textLabel.Font = Enum.Font.SourceSansBold
		textLabel.TextTransparency = 0.2 -- slightly transparent
		textLabel.Text = player.Name
		textLabel.Parent = billboard
	
		-- Color by team
		if player.Team ~= LocalPlayer.Team then
			textLabel.TextColor3 = Color3.fromRGB(255, 0, 0) -- Enemy
		else
			textLabel.TextColor3 = Color3.fromRGB(0, 255, 0) -- Teammate
		end
	
		-- Update on team change
		connections[player.Name .. "_team"] = player:GetPropertyChangedSignal("Team"):Connect(function()
			if textLabel then
				if player.Team ~= LocalPlayer.Team then
					textLabel.TextColor3 = Color3.fromRGB(255, 0, 0)
				else
					textLabel.TextColor3 = Color3.fromRGB(0, 255, 0)
				end
			end
		end)
	
		billboards[player] = billboard
	end
	
	-- Enable ESP
	local function enableNameESP()
		enabled = true
		showcaseText.Visible = true
		button.BackgroundColor3 = Color3.fromRGB(0,171,120)
	
		-- Setup all players
		for _, plr in pairs(Players:GetPlayers()) do
			if plr ~= LocalPlayer then
				createBillboard(plr)
				connections[plr] = plr.CharacterAdded:Connect(function()
					task.wait(1)
					if enabled then
						createBillboard(plr)
					end
				end)
			end
		end
	
		connections["_playerAdded"] = Players.PlayerAdded:Connect(function(plr)
			connections[plr] = plr.CharacterAdded:Connect(function()
				task.wait(1)
				if enabled then
					createBillboard(plr)
				end
			end)
		end)
	
		connections["_playerRemoving"] = Players.PlayerRemoving:Connect(function(plr)
			if billboards[plr] then
				billboards[plr]:Destroy()
				billboards[plr] = nil
			end
			if connections[plr] then
				connections[plr]:Disconnect()
				connections[plr] = nil
			end
			if connections[plr.Name .. "_team"] then
				connections[plr.Name .. "_team"]:Disconnect()
				connections[plr.Name .. "_team"] = nil
			end
		end)
	end
	
	-- Disable ESP
	local function disableNameESP()
		enabled = false
		showcaseText.Visible = false
		button.BackgroundColor3 = Color3.fromRGB(80,80,80)
	
		-- Remove billboards
		for _, billboard in pairs(billboards) do
			if billboard and billboard.Parent then
				billboard:Destroy()
			end
		end
		billboards = {}
	
		-- Disconnect all
		for _, conn in pairs(connections) do
			if conn then conn:Disconnect() end
		end
		connections = {}
	end
	
	-- Toggle button
	button.MouseButton1Click:Connect(function()
		if enabled then
			disableNameESP()
		else
			enableNameESP()
		end
	end)
	
end
coroutine.wrap(PVYFZA_fake_script)()
local function XOMUTRX_fake_script() -- MainFrame.TabSwitch 
	local script = Instance.new('LocalScript', MainFrame)

	local main = script.Parent
	local side = main:WaitForChild("SideFrame")
	local TweenService = game:GetService("TweenService")
	
	-- Map buttons to frames
	local buttons = {
		ScrollingFrameButton = main.ScrollingFrame, -- AimBot
		ESPButton            = main.ESPFrame,       -- ESP
		PlayerButton         = main.PlayerFrame,    -- Player
		GunModsButton        = main.GunModsFrame,   -- Gun Mods
		HomeButton           = main.HomeFrame,      -- Home
	}
	
	-- Colors
	local normalColor = Color3.fromRGB(57, 57, 57)
	local highlightColor = Color3.fromRGB(83, 83, 83)
	
	-- Tween settings
	local tweenInfo = TweenInfo.new(0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
	
	-- Hide all frames
	local function hideAll()
		for _,frame in pairs(buttons) do
			frame.Visible = false
		end
	end
	
	-- Reset all buttons to normal color
	local function resetButtons()
		for buttonName in pairs(buttons) do
			local btn = side:FindFirstChild(buttonName)
			if btn then
				TweenService:Create(btn, tweenInfo, {BackgroundColor3 = normalColor}):Play()
			end
		end
	end
	
	-- Connect buttons
	for buttonName, frame in pairs(buttons) do
		local button = side:FindFirstChild(buttonName)
		if button then
			button.MouseButton1Click:Connect(function()
				hideAll()
				frame.Visible = true
				resetButtons()
				TweenService:Create(button, tweenInfo, {BackgroundColor3 = highlightColor}):Play()
			end)
		end
	end
	
	-- Default page = Home
	hideAll()
	main.HomeFrame.Visible = true
	resetButtons()
	local homeBtn = side:FindFirstChild("HomeButton")
	if homeBtn then
		TweenService:Create(homeBtn, tweenInfo, {BackgroundColor3 = highlightColor}):Play()
	end
	
end
coroutine.wrap(XOMUTRX_fake_script)()
local function NQMH_fake_script() -- MainFrame.Drag 
	local script = Instance.new('LocalScript', MainFrame)

	local UserInputService = game:GetService("UserInputService")
	
	local gui = script.Parent
	
	local dragging
	local dragInput
	local dragStart
	local startPos
	
	local function update(input)
		local delta = input.Position - dragStart
		gui.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
	end
	
	gui.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = true
			dragStart = input.Position
			startPos = gui.Position
	
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragging = false
				end
			end)
		end
	end)
	
	gui.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			dragInput = input
		end
	end)
	
	UserInputService.InputChanged:Connect(function(input)
		if input == dragInput and dragging then
			update(input)
		end
	end)
end
coroutine.wrap(NQMH_fake_script)()
local function DPAZ_fake_script() -- ImageButton.LocalScript 
	local script = Instance.new('LocalScript', ImageButton)

	local button = script.Parent -- the close button
	local frame = button.Parent  -- the Frame that holds the GUI
	
	button.MouseButton1Click:Connect(function()
		frame.Visible = false -- hides the GUI
		-- if you want to completely remove it instead, use:
		-- frame:Destroy()
	end)
	
end
coroutine.wrap(DPAZ_fake_script)()
local function RDXQ_fake_script() -- Button_5.LocalScript 
	local script = Instance.new('LocalScript', Button_5)

	-- LocalScript inside your TextButton
	
	local Players = game:GetService("Players")
	local UserInputService = game:GetService("UserInputService")
	
	local player = Players.LocalPlayer
	local character = player.Character or player.CharacterAdded:Wait()
	local button = script.Parent -- The GUI button
	
	-- Toggle state
	local enabled = false
	local connection
	
	-- Settings
	local platformSize = Vector3.new(6, 1, 6)
	local platformOffset = Vector3.new(0, -2, 0)
	local platformLifetime = 0.3
	
	-- Folder to hold platforms
	local platformFolder = Instance.new("Folder")
	platformFolder.Name = "JumpPlatforms"
	platformFolder.Parent = workspace
	
	-- Create platform under player
	local function createPlatform()
		local rootPart = character:FindFirstChild("HumanoidRootPart")
		if not rootPart then return end
	
		local platform = Instance.new("Part")
		platform.Size = platformSize
		platform.Anchored = true
		platform.CanCollide = true
		platform.Transparency = 1 -- invisible
		platform.CanTouch = false -- so it doesn't mess with other scripts
		platform.Position = rootPart.Position + platformOffset
		platform.Parent = platformFolder
	
		task.delay(platformLifetime, function()
			if platform and platform.Parent then
				platform:Destroy()
			end
		end)
	end
	
	-- Function to toggle script
	local function toggle()
		enabled = not enabled
	
		if enabled then
			-- Turn button green
			button.BackgroundColor3 = Color3.fromRGB(0, 171, 120)
			-- Start listening to jumps
			connection = UserInputService.JumpRequest:Connect(createPlatform)
		else
			-- Turn button gray
			button.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
			-- Stop listening
			if connection then
				connection:Disconnect()
				connection = nil
			end
		end
	end
	
	-- Connect button click
	button.MouseButton1Click:Connect(toggle)
	
	-- Initial button color
	button.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
	
end
coroutine.wrap(RDXQ_fake_script)()
local function RAOAHSX_fake_script() -- ScreenGui.AimHubController 
	local script = Instance.new('LocalScript', ScreenGui)

	--// Services
	local Players = game:GetService("Players")
	local UserInputService = game:GetService("UserInputService")
	local RunService = game:GetService("RunService")
	local GuiService = game:GetService("GuiService")
	
	local player = Players.LocalPlayer
	local cam = workspace.CurrentCamera
	local mouse = player:GetMouse()
	
	--// UI references
	local ui = script.Parent -- ScreenGui
	local main = ui:WaitForChild("MainFrame")
	local scroll = main:WaitForChild("ScrollingFrame")
	
	local enableBtnContainer = scroll:WaitForChild("EnableAimbotButton")
	local enableBtn = enableBtnContainer:FindFirstChildWhichIsA("TextButton") or enableBtnContainer:WaitForChild("EnableAimbotButton")
	
	local keyBtnContainer = scroll:WaitForChild("SelectKeybindButton")
	local keyBtn = keyBtnContainer:FindFirstChildWhichIsA("TextButton") or keyBtnContainer:WaitForChild("SelectKeybindButton")
	
	local slider = scroll:WaitForChild("FOVSlider")
	local sliderFill = slider:WaitForChild("Fill")
	local knob = sliderFill:WaitForChild("Knob")
	
	-- Optional value label under ScrollingFrame
	local fovValueLabel = scroll:FindFirstChild("FOVValueLabel") 
	
	--// Settings
	local Settings = {
		FOV = 150,
		MinFOV = 40,
		MaxFOV = 400,
		ToggleKey = Enum.KeyCode.E,
	}
	
	local Aiming = false
	local waitingForKey = false
	local dragging = false
	
	--// -------- FOV circle (UI version) ----------
	local fovCircle = Instance.new("Frame")
	fovCircle.Name = "FOVCircle"
	fovCircle.AnchorPoint = Vector2.new(0.5, 0.5)
	fovCircle.Position = UDim2.fromOffset(0, 0) -- updated each frame
	fovCircle.Size = UDim2.fromOffset(Settings.FOV * 2, Settings.FOV * 2)
	fovCircle.BackgroundTransparency = 1
	fovCircle.Parent = ui
	
	local corner = Instance.new("UICorner")
	corner.CornerRadius = UDim.new(1, 0)
	corner.Parent = fovCircle
	
	local stroke = Instance.new("UIStroke")
	stroke.Thickness = 2
	stroke.Color = Color3.fromRGB(120, 220, 160)
	stroke.Parent = fovCircle
	
	local function refreshFOVVisual()
		fovCircle.Size = UDim2.fromOffset(Settings.FOV * 2, Settings.FOV * 2)
		if fovValueLabel then
			fovValueLabel.Text = ("FOV Size: %d"):format(Settings.FOV)
		end
	end
	
	-- ✅ Keep circle perfectly on the cursor (fix for offset)
	RunService.RenderStepped:Connect(function()
		local mouseLocation = UserInputService:GetMouseLocation()
		local inset = GuiService:GetGuiInset()
		fovCircle.Position = UDim2.fromOffset(mouseLocation.X - inset.X, mouseLocation.Y - inset.Y)
	end)
	
	--// ---------- Slider ----------
	local function setFOVFromAlpha(alpha)
		alpha = math.clamp(alpha, 0, 1)
		Settings.FOV = math.floor(Settings.MinFOV + alpha * (Settings.MaxFOV - Settings.MinFOV))
		sliderFill.Size = UDim2.new(alpha, 0, 1, 0)
		knob.Position = UDim2.new(alpha, 0, 0.5, 0) -- ✅ knob centered vertically
		refreshFOVVisual()
	end
	
	local function alphaFromFOV()
		return (Settings.FOV - Settings.MinFOV) / (Settings.MaxFOV - Settings.MinFOV)
	end
	
	setFOVFromAlpha(alphaFromFOV())
	
	local function updateSliderFromMouse()
		local barX = slider.AbsolutePosition.X
		local barW = slider.AbsoluteSize.X
		local mouseX = UserInputService:GetMouseLocation().X
		local alpha = (mouseX - barX) / barW
		setFOVFromAlpha(alpha)
	end
	
	slider.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = true
			updateSliderFromMouse()
		end
	end)
	
	knob.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = true
		end
	end)
	
	UserInputService.InputChanged:Connect(function(input)
		if dragging and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
			updateSliderFromMouse()
		end
	end)
	
	UserInputService.InputEnded:Connect(function(input)
		if dragging and (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then
			dragging = false
		end
	end)
	
	--// ---------- Keybind ----------
	keyBtn.Text = Settings.ToggleKey.Name
	
	keyBtn.MouseButton1Click:Connect(function()
		waitingForKey = true
		keyBtn.Text = "Press a key..."
	end)
	
	UserInputService.InputBegan:Connect(function(input, gameProcessed)
		-- Assign key if waiting
		if waitingForKey and not gameProcessed and input.UserInputType == Enum.UserInputType.Keyboard then
			Settings.ToggleKey = input.KeyCode
			keyBtn.Text = Settings.ToggleKey.Name
			waitingForKey = false
			return
		end
	
		-- Toggle aim
		if not gameProcessed and input.KeyCode == Settings.ToggleKey then
			Aiming = not Aiming
			enableBtn.BackgroundColor3 = Aiming and Color3.fromRGB(80, 200, 120) or Color3.fromRGB(60, 60, 60)
		end
	end)
	
	enableBtn.MouseButton1Click:Connect(function()
		Aiming = not Aiming
		enableBtn.BackgroundColor3 = Aiming and Color3.fromRGB(80, 200, 120) or Color3.fromRGB(60, 60, 60)
	end)
	
	--// ---------- Aimlock Core ----------
	local function HasLineOfSight(targetPart: BasePart)
		local origin = cam.CFrame.Position
		local direction = (targetPart.Position - origin)
		local params = RaycastParams.new()
		params.FilterType = Enum.RaycastFilterType.Blacklist
		params.FilterDescendantsInstances = { player.Character }
		params.IgnoreWater = true
		local result = workspace:Raycast(origin, direction, params)
		return (not result) or result.Instance:IsDescendantOf(targetPart.Parent)
	end
	
	-- ✅ FOV now checks from mouse position, not center
	local function InFOV(targetPart: BasePart)
		local screenPos, onScreen = cam:WorldToViewportPoint(targetPart.Position)
		if not onScreen then return false end
		local mouseLocation = UserInputService:GetMouseLocation()
		local inset = GuiService:GetGuiInset()
		local mouse2D = Vector2.new(mouseLocation.X - inset.X, mouseLocation.Y - inset.Y)
		local pos2D = Vector2.new(screenPos.X, screenPos.Y)
		return (pos2D - mouse2D).Magnitude <= Settings.FOV
	end
	
	local function AimLock()
		local best, bestScore = nil, math.huge
		for _, v in ipairs(Players:GetPlayers()) do
			if v ~= player and v.Character then
				if v.Team ~= player.Team then
					local head = v.Character:FindFirstChild("Head")
					local hum = v.Character:FindFirstChildOfClass("Humanoid")
					if head and hum and hum.Health > 0 then
						if HasLineOfSight(head) and InFOV(head) then
							local mousePos3D = (mouse.Hit and mouse.Hit.p) or head.Position
							local score = (head.Position - mousePos3D).Magnitude
							if score < bestScore then
								bestScore = score
								best = head
							end
						end
					end
				end
			end
		end
	
		if best then
			local camPos = cam.CFrame.Position
			workspace.CurrentCamera.CFrame = CFrame.new(camPos, best.Position)
		end
	end
	
	RunService.RenderStepped:Connect(function()
		if Aiming then
			AimLock()
		end
	end)
	
end
coroutine.wrap(RAOAHSX_fake_script)()
