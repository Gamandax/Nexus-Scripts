-- [[ This Script Not Mine! ]] --
-- [[ GENERATED WITH InfernoHub/Scriptify STUDIO PLUGIN ]] --
-- Scriptify Version: 1.0 --

--

-- Create objects --
local parent = nil;
local objects = {
    ["Instance0"] = Instance.new("ScreenGui"); -- VSCode
    ["Instance1"] = Instance.new("TextButton"); -- Window
    ["Instance2"] = Instance.new("LocalScript"); -- Editor
    ["Instance3"] = Instance.new("Frame"); -- TopbarZone
    ["Instance4"] = Instance.new("ImageLabel"); -- Icon
    ["Instance5"] = Instance.new("UIAspectRatioConstraint"); -- UIAspectRatioConstraint
    ["Instance6"] = Instance.new("TextLabel"); -- Title
    ["Instance7"] = Instance.new("Frame"); -- Separator
    ["Instance8"] = Instance.new("Frame"); -- Buttons
    ["Instance9"] = Instance.new("UIListLayout"); -- UIListLayout
    ["Instance10"] = Instance.new("TextButton"); -- Minimize
    ["Instance11"] = Instance.new("UIPadding"); -- UIPadding
    ["Instance12"] = Instance.new("TextButton"); -- Maximize
    ["Instance13"] = Instance.new("UIPadding"); -- UIPadding
    ["Instance14"] = Instance.new("TextButton"); -- Close
    ["Instance15"] = Instance.new("UIPadding"); -- UIPadding
    ["Instance16"] = Instance.new("UIStroke"); -- UIStroke
    ["Instance17"] = Instance.new("Frame"); -- Contents
    ["Instance18"] = Instance.new("Frame"); -- Top
    ["Instance19"] = Instance.new("ScrollingFrame"); -- Tabs
    ["Instance20"] = Instance.new("TextButton"); -- Tab
    ["Instance21"] = Instance.new("Frame"); -- LeftSeparator
    ["Instance22"] = Instance.new("Frame"); -- Selected
    ["Instance23"] = Instance.new("ImageLabel"); -- Icon
    ["Instance24"] = Instance.new("UIAspectRatioConstraint"); -- UIAspectRatioConstraint
    ["Instance25"] = Instance.new("Frame"); -- RightSeparator
    ["Instance26"] = Instance.new("Frame"); -- NameHolder
    ["Instance27"] = Instance.new("TextLabel"); -- Label
    ["Instance28"] = Instance.new("TextButton"); -- Close
    ["Instance29"] = Instance.new("UIAspectRatioConstraint"); -- UIAspectRatioConstraint
    ["Instance30"] = Instance.new("UIPadding"); -- UIPadding
    ["Instance31"] = Instance.new("UIListLayout"); -- UIListLayout
    ["Instance32"] = Instance.new("Frame"); -- Separator
    ["Instance33"] = Instance.new("Frame"); -- Buttons
    ["Instance34"] = Instance.new("UIListLayout"); -- UIListLayout
    ["Instance35"] = Instance.new("TextButton"); -- Clear
    ["Instance36"] = Instance.new("ImageLabel"); -- ImageLabel
    ["Instance37"] = Instance.new("TextButton"); -- Execute
    ["Instance38"] = Instance.new("ImageLabel"); -- ImageLabel
    ["Instance39"] = Instance.new("TextBox"); -- CodeEditor
    ["Instance40"] = Instance.new("Frame"); -- Scripts
    ["Instance41"] = Instance.new("Frame"); -- Separator
    ["Instance42"] = Instance.new("UIAspectRatioConstraint"); -- UIAspectRatioConstraint
};

do -- Set properties
    objects["Instance0"]["Enabled"] = true;
    objects["Instance0"]["ScreenInsets"] = Enum.ScreenInsets.None;
    objects["Instance0"]["SafeAreaCompatibility"] = Enum.SafeAreaCompatibility.None;
    objects["Instance0"]["ClipToDeviceSafeArea"] = true;
    objects["Instance0"]["Parent"] = parent;
    objects["Instance0"]["IgnoreGuiInset"] = true;
    objects["Instance0"]["Name"] = "VSCode";
    objects["Instance0"]["DisplayOrder"] = 2147483647;

    objects["Instance1"]["Visible"] = true;
    objects["Instance1"]["FontSize"] = Enum.FontSize.Size14;
    objects["Instance1"]["TextDirection"] = Enum.TextDirection.Auto;
    objects["Instance1"]["Active"] = true;
    objects["Instance1"]["TextStrokeTransparency"] = 1;
    objects["Instance1"]["TextTruncate"] = Enum.TextTruncate.None;
    objects["Instance1"]["SizeConstraint"] = Enum.SizeConstraint.RelativeXY;
    objects["Instance1"]["ZIndex"] = 1;
    objects["Instance1"]["BorderSizePixel"] = 0;
    objects["Instance1"]["Draggable"] = false;
    objects["Instance1"]["RichText"] = false;
    objects["Instance1"]["Modal"] = false;
    objects["Instance1"]["AutoButtonColor"] = false;
    objects["Instance1"]["Transparency"] = 0;
    objects["Instance1"]["SelectionOrder"] = 0;
    objects["Instance1"]["TextYAlignment"] = Enum.TextYAlignment.Center;
    objects["Instance1"]["TextScaled"] = false;
    objects["Instance1"]["TextWrap"] = false;
    objects["Instance1"]["FontFace"] = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal, false);
    objects["Instance1"]["BorderMode"] = Enum.BorderMode.Outline;
    objects["Instance1"]["Parent"] = objects["Instance0"];
    objects["Instance1"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
    objects["Instance1"]["Style"] = Enum.ButtonStyle.Custom;
    objects["Instance1"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
    objects["Instance1"]["BackgroundColor3"] = Color3.new(0.121569, 0.121569, 0.121569);
    objects["Instance1"]["Selected"] = false;
    objects["Instance1"]["TextSize"] = 14;
    objects["Instance1"]["Size"] = UDim2.new(0.5, 0, 0.5, 0);
    objects["Instance1"]["BackgroundTransparency"] = 0;
    objects["Instance1"]["TextWrapped"] = false;
    objects["Instance1"]["ClipsDescendants"] = true;
    objects["Instance1"]["TextColor3"] = Color3.new(0, 0, 0);
    objects["Instance1"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance1"]["Text"] = "";
    objects["Instance1"]["AutomaticSize"] = Enum.AutomaticSize.None;
    objects["Instance1"]["LayoutOrder"] = 0;
    objects["Instance1"]["Rotation"] = 0;
    objects["Instance1"]["LineHeight"] = 1;
    objects["Instance1"]["Name"] = "Window";
    objects["Instance1"]["TextXAlignment"] = Enum.TextXAlignment.Center;
    objects["Instance1"]["Selectable"] = true;
    objects["Instance1"]["MaxVisibleGraphemes"] = -1;
    objects["Instance1"]["TextStrokeColor3"] = Color3.new(0, 0, 0);
    objects["Instance1"]["TextTransparency"] = 0;

    objects["Instance2"]["Parent"] = objects["Instance1"];
    objects["Instance2"]["Name"] = "Editor";
    objects["Instance2"]["Enabled"] = true;

    objects["Instance3"]["LayoutOrder"] = 0;
    objects["Instance3"]["Active"] = false;
    objects["Instance3"]["Parent"] = objects["Instance1"];
    objects["Instance3"]["AnchorPoint"] = Vector2.new(0, 0);
    objects["Instance3"]["SizeConstraint"] = Enum.SizeConstraint.RelativeXY;
    objects["Instance3"]["ZIndex"] = 1;
    objects["Instance3"]["AutomaticSize"] = Enum.AutomaticSize.None;
    objects["Instance3"]["Size"] = UDim2.new(1, 0, 0, 30);
    objects["Instance3"]["Draggable"] = false;
    objects["Instance3"]["Style"] = Enum.FrameStyle.Custom;
    objects["Instance3"]["ClipsDescendants"] = true;
    objects["Instance3"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance3"]["BorderMode"] = Enum.BorderMode.Outline;
    objects["Instance3"]["BackgroundTransparency"] = 1;
    objects["Instance3"]["BorderSizePixel"] = 0;
    objects["Instance3"]["Rotation"] = 0;
    objects["Instance3"]["Transparency"] = 1;
    objects["Instance3"]["Name"] = "TopbarZone";
    objects["Instance3"]["SelectionOrder"] = 0;
    objects["Instance3"]["Visible"] = true;
    objects["Instance3"]["Selectable"] = false;
    objects["Instance3"]["Position"] = UDim2.new(0, 0, 0, 0);
    objects["Instance3"]["BackgroundColor3"] = Color3.new(1, 1, 1);

    objects["Instance4"]["Visible"] = true;
    objects["Instance4"]["AutomaticSize"] = Enum.AutomaticSize.None;
    objects["Instance4"]["Size"] = UDim2.new(0.699999988079071, 0, 0.699999988079071, 0);
    objects["Instance4"]["ImageTransparency"] = 0;
    objects["Instance4"]["Parent"] = objects["Instance3"];
    objects["Instance4"]["Position"] = UDim2.new(0, 5, 0.4749999940395355, 0);
    objects["Instance4"]["BackgroundTransparency"] = 1;
    objects["Instance4"]["ImageRectOffset"] = Vector2.new(0, 0);
    objects["Instance4"]["AnchorPoint"] = Vector2.new(0, 0.5);
    objects["Instance4"]["Image"] = "rbxassetid://17245903072";
    objects["Instance4"]["TileSize"] = UDim2.new(1, 0, 1, 0);
    objects["Instance4"]["ImageRectSize"] = Vector2.new(0, 0);
    objects["Instance4"]["SizeConstraint"] = Enum.SizeConstraint.RelativeXY;
    objects["Instance4"]["ZIndex"] = 1;
    objects["Instance4"]["BorderSizePixel"] = 0;
    objects["Instance4"]["SliceCenter"] = Rect.new(0, 0, 0, 0);
    objects["Instance4"]["Draggable"] = false;
    objects["Instance4"]["ScaleType"] = Enum.ScaleType.Stretch;
    objects["Instance4"]["ResampleMode"] = Enum.ResamplerMode.Default;
    objects["Instance4"]["ClipsDescendants"] = false;
    objects["Instance4"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance4"]["BorderMode"] = Enum.BorderMode.Outline;
    objects["Instance4"]["LayoutOrder"] = 0;
    objects["Instance4"]["ImageColor3"] = Color3.new(1, 1, 1);
    objects["Instance4"]["Rotation"] = 0;
    objects["Instance4"]["Transparency"] = 1;
    objects["Instance4"]["Name"] = "Icon";
    objects["Instance4"]["SelectionOrder"] = 0;
    objects["Instance4"]["SliceScale"] = 1;
    objects["Instance4"]["Selectable"] = false;
    objects["Instance4"]["Active"] = false;
    objects["Instance4"]["BackgroundColor3"] = Color3.new(1, 1, 1);

    objects["Instance5"]["AspectRatio"] = 1;
    objects["Instance5"]["Name"] = "UIAspectRatioConstraint";
    objects["Instance5"]["Parent"] = objects["Instance4"];
    objects["Instance5"]["AspectType"] = Enum.AspectType.FitWithinMaxSize;
    objects["Instance5"]["DominantAxis"] = Enum.DominantAxis.Width;

    objects["Instance6"]["Visible"] = true;
    objects["Instance6"]["FontSize"] = Enum.FontSize.Size14;
    objects["Instance6"]["TextDirection"] = Enum.TextDirection.Auto;
    objects["Instance6"]["Active"] = false;
    objects["Instance6"]["TextStrokeTransparency"] = 1;
    objects["Instance6"]["TextTruncate"] = Enum.TextTruncate.None;
    objects["Instance6"]["SizeConstraint"] = Enum.SizeConstraint.RelativeXY;
    objects["Instance6"]["ZIndex"] = 1;
    objects["Instance6"]["BorderSizePixel"] = 0;
    objects["Instance6"]["Draggable"] = false;
    objects["Instance6"]["RichText"] = false;
    objects["Instance6"]["Transparency"] = 1;
    objects["Instance6"]["SelectionOrder"] = 0;
    objects["Instance6"]["TextYAlignment"] = Enum.TextYAlignment.Center;
    objects["Instance6"]["TextScaled"] = true;
    objects["Instance6"]["TextWrap"] = true;
    objects["Instance6"]["FontFace"] = Font.new("rbxasset://fonts/families/TitilliumWeb.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal, false);
    objects["Instance6"]["BorderMode"] = Enum.BorderMode.Outline;
    objects["Instance6"]["Parent"] = objects["Instance4"];
    objects["Instance6"]["AnchorPoint"] = Vector2.new(0, 0.5);
    objects["Instance6"]["TextSize"] = 14;
    objects["Instance6"]["Position"] = UDim2.new(1.5, 0, 0.5, 0);
    objects["Instance6"]["AutomaticSize"] = Enum.AutomaticSize.None;
    objects["Instance6"]["Size"] = UDim2.new(100, 0, 0.8999999761581421, 0);
    objects["Instance6"]["BackgroundTransparency"] = 1;
    objects["Instance6"]["LineHeight"] = 1;
    objects["Instance6"]["BackgroundColor3"] = Color3.new(1, 1, 1);
    objects["Instance6"]["TextColor3"] = Color3.new(1, 1, 1);
    objects["Instance6"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance6"]["Text"] = "Script.lua - Visual Studio Code";
    objects["Instance6"]["LayoutOrder"] = 0;
    objects["Instance6"]["TextWrapped"] = true;
    objects["Instance6"]["Rotation"] = 0;
    objects["Instance6"]["TextTransparency"] = 0;
    objects["Instance6"]["Name"] = "Title";
    objects["Instance6"]["TextXAlignment"] = Enum.TextXAlignment.Left;
    objects["Instance6"]["ClipsDescendants"] = false;
    objects["Instance6"]["MaxVisibleGraphemes"] = -1;
    objects["Instance6"]["TextStrokeColor3"] = Color3.new(0, 0, 0);
    objects["Instance6"]["Selectable"] = false;

    objects["Instance7"]["LayoutOrder"] = 0;
    objects["Instance7"]["Active"] = false;
    objects["Instance7"]["Parent"] = objects["Instance3"];
    objects["Instance7"]["AnchorPoint"] = Vector2.new(0, 1);
    objects["Instance7"]["SizeConstraint"] = Enum.SizeConstraint.RelativeXY;
    objects["Instance7"]["ZIndex"] = 1;
    objects["Instance7"]["AutomaticSize"] = Enum.AutomaticSize.None;
    objects["Instance7"]["Size"] = UDim2.new(1, 0, 0, 1);
    objects["Instance7"]["Draggable"] = false;
    objects["Instance7"]["Style"] = Enum.FrameStyle.Custom;
    objects["Instance7"]["ClipsDescendants"] = false;
    objects["Instance7"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance7"]["BorderMode"] = Enum.BorderMode.Outline;
    objects["Instance7"]["BackgroundTransparency"] = 0;
    objects["Instance7"]["BorderSizePixel"] = 0;
    objects["Instance7"]["Rotation"] = 0;
    objects["Instance7"]["Transparency"] = 0;
    objects["Instance7"]["Name"] = "Separator";
    objects["Instance7"]["SelectionOrder"] = 0;
    objects["Instance7"]["Visible"] = true;
    objects["Instance7"]["Selectable"] = false;
    objects["Instance7"]["Position"] = UDim2.new(0, 0, 1, 0);
    objects["Instance7"]["BackgroundColor3"] = Color3.new(0.168627, 0.168627, 0.168627);

    objects["Instance8"]["LayoutOrder"] = 0;
    objects["Instance8"]["Active"] = false;
    objects["Instance8"]["Parent"] = objects["Instance3"];
    objects["Instance8"]["AnchorPoint"] = Vector2.new(0, 0);
    objects["Instance8"]["SizeConstraint"] = Enum.SizeConstraint.RelativeXY;
    objects["Instance8"]["ZIndex"] = 1;
    objects["Instance8"]["AutomaticSize"] = Enum.AutomaticSize.None;
    objects["Instance8"]["Size"] = UDim2.new(1, 0, 1, -1);
    objects["Instance8"]["Draggable"] = false;
    objects["Instance8"]["Style"] = Enum.FrameStyle.Custom;
    objects["Instance8"]["ClipsDescendants"] = false;
    objects["Instance8"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance8"]["BorderMode"] = Enum.BorderMode.Outline;
    objects["Instance8"]["BackgroundTransparency"] = 1;
    objects["Instance8"]["BorderSizePixel"] = 0;
    objects["Instance8"]["Rotation"] = 0;
    objects["Instance8"]["Transparency"] = 1;
    objects["Instance8"]["Name"] = "Buttons";
    objects["Instance8"]["SelectionOrder"] = 0;
    objects["Instance8"]["Visible"] = true;
    objects["Instance8"]["Selectable"] = false;
    objects["Instance8"]["Position"] = UDim2.new(0, 0, 0, 0);
    objects["Instance8"]["BackgroundColor3"] = Color3.new(1, 1, 1);

    objects["Instance9"]["FillDirection"] = Enum.FillDirection.Horizontal;
    objects["Instance9"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Right;
    objects["Instance9"]["VerticalFlex"] = Enum.UIFlexAlignment.None;
    objects["Instance9"]["Parent"] = objects["Instance8"];
    objects["Instance9"]["VerticalAlignment"] = Enum.VerticalAlignment.Top;
    objects["Instance9"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
    objects["Instance9"]["Name"] = "UIListLayout";
    objects["Instance9"]["Padding"] = UDim.new(0, 0);
    objects["Instance9"]["ItemLineAlignment"] = Enum.ItemLineAlignment.Automatic;
    objects["Instance9"]["HorizontalFlex"] = Enum.UIFlexAlignment.None;

    objects["Instance10"]["Visible"] = true;
    objects["Instance10"]["FontSize"] = Enum.FontSize.Size14;
    objects["Instance10"]["TextDirection"] = Enum.TextDirection.Auto;
    objects["Instance10"]["Active"] = true;
    objects["Instance10"]["TextStrokeTransparency"] = 1;
    objects["Instance10"]["TextTruncate"] = Enum.TextTruncate.None;
    objects["Instance10"]["SizeConstraint"] = Enum.SizeConstraint.RelativeXY;
    objects["Instance10"]["ZIndex"] = 1;
    objects["Instance10"]["BorderSizePixel"] = 0;
    objects["Instance10"]["Draggable"] = false;
    objects["Instance10"]["RichText"] = false;
    objects["Instance10"]["Modal"] = false;
    objects["Instance10"]["AutoButtonColor"] = true;
    objects["Instance10"]["Transparency"] = 0;
    objects["Instance10"]["SelectionOrder"] = 0;
    objects["Instance10"]["TextYAlignment"] = Enum.TextYAlignment.Center;
    objects["Instance10"]["TextScaled"] = true;
    objects["Instance10"]["TextWrap"] = true;
    objects["Instance10"]["FontFace"] = Font.new("rbxasset://fonts/families/TitilliumWeb.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal, false);
    objects["Instance10"]["BorderMode"] = Enum.BorderMode.Outline;
    objects["Instance10"]["Parent"] = objects["Instance8"];
    objects["Instance10"]["AnchorPoint"] = Vector2.new(0, 0);
    objects["Instance10"]["Style"] = Enum.ButtonStyle.Custom;
    objects["Instance10"]["Position"] = UDim2.new(0, 0, 0, 0);
    objects["Instance10"]["BackgroundColor3"] = Color3.new(0.117647, 0.117647, 0.117647);
    objects["Instance10"]["Selected"] = false;
    objects["Instance10"]["TextSize"] = 14;
    objects["Instance10"]["Size"] = UDim2.new(0, 40, 1, 0);
    objects["Instance10"]["BackgroundTransparency"] = 0;
    objects["Instance10"]["TextWrapped"] = true;
    objects["Instance10"]["ClipsDescendants"] = false;
    objects["Instance10"]["TextColor3"] = Color3.new(1, 1, 1);
    objects["Instance10"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance10"]["Text"] = "-";
    objects["Instance10"]["AutomaticSize"] = Enum.AutomaticSize.None;
    objects["Instance10"]["LayoutOrder"] = 0;
    objects["Instance10"]["Rotation"] = 0;
    objects["Instance10"]["LineHeight"] = 1;
    objects["Instance10"]["Name"] = "Minimize";
    objects["Instance10"]["TextXAlignment"] = Enum.TextXAlignment.Center;
    objects["Instance10"]["Selectable"] = true;
    objects["Instance10"]["MaxVisibleGraphemes"] = -1;
    objects["Instance10"]["TextStrokeColor3"] = Color3.new(0, 0, 0);
    objects["Instance10"]["TextTransparency"] = 0;

    objects["Instance11"]["PaddingTop"] = UDim.new(0, 0);
    objects["Instance11"]["Name"] = "UIPadding";
    objects["Instance11"]["Parent"] = objects["Instance10"];
    objects["Instance11"]["PaddingBottom"] = UDim.new(0.100000001, 0);
    objects["Instance11"]["PaddingLeft"] = UDim.new(0, 0);
    objects["Instance11"]["PaddingRight"] = UDim.new(0, 0);

    objects["Instance12"]["Visible"] = true;
    objects["Instance12"]["FontSize"] = Enum.FontSize.Size14;
    objects["Instance12"]["TextDirection"] = Enum.TextDirection.Auto;
    objects["Instance12"]["Active"] = true;
    objects["Instance12"]["TextStrokeTransparency"] = 1;
    objects["Instance12"]["TextTruncate"] = Enum.TextTruncate.None;
    objects["Instance12"]["SizeConstraint"] = Enum.SizeConstraint.RelativeXY;
    objects["Instance12"]["ZIndex"] = 1;
    objects["Instance12"]["BorderSizePixel"] = 0;
    objects["Instance12"]["Draggable"] = false;
    objects["Instance12"]["RichText"] = false;
    objects["Instance12"]["Modal"] = false;
    objects["Instance12"]["AutoButtonColor"] = true;
    objects["Instance12"]["Transparency"] = 0;
    objects["Instance12"]["SelectionOrder"] = 0;
    objects["Instance12"]["TextYAlignment"] = Enum.TextYAlignment.Center;
    objects["Instance12"]["TextScaled"] = true;
    objects["Instance12"]["TextWrap"] = true;
    objects["Instance12"]["FontFace"] = Font.new("rbxasset://fonts/families/TitilliumWeb.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal, true);
    objects["Instance12"]["BorderMode"] = Enum.BorderMode.Outline;
    objects["Instance12"]["Parent"] = objects["Instance8"];
    objects["Instance12"]["AnchorPoint"] = Vector2.new(0, 0);
    objects["Instance12"]["Style"] = Enum.ButtonStyle.Custom;
    objects["Instance12"]["Position"] = UDim2.new(0, 0, 0, 0);
    objects["Instance12"]["BackgroundColor3"] = Color3.new(0.117647, 0.117647, 0.117647);
    objects["Instance12"]["Selected"] = false;
    objects["Instance12"]["TextSize"] = 14;
    objects["Instance12"]["Size"] = UDim2.new(0, 40, 1, 0);
    objects["Instance12"]["BackgroundTransparency"] = 0;
    objects["Instance12"]["TextWrapped"] = true;
    objects["Instance12"]["ClipsDescendants"] = false;
    objects["Instance12"]["TextColor3"] = Color3.new(1, 1, 1);
    objects["Instance12"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance12"]["Text"] = "□";
    objects["Instance12"]["AutomaticSize"] = Enum.AutomaticSize.None;
    objects["Instance12"]["LayoutOrder"] = 0;
    objects["Instance12"]["Rotation"] = 0;
    objects["Instance12"]["LineHeight"] = 1;
    objects["Instance12"]["Name"] = "Maximize";
    objects["Instance12"]["TextXAlignment"] = Enum.TextXAlignment.Center;
    objects["Instance12"]["Selectable"] = true;
    objects["Instance12"]["MaxVisibleGraphemes"] = -1;
    objects["Instance12"]["TextStrokeColor3"] = Color3.new(0, 0, 0);
    objects["Instance12"]["TextTransparency"] = 0;

    objects["Instance13"]["PaddingTop"] = UDim.new(0.224999994, 0);
    objects["Instance13"]["Name"] = "UIPadding";
    objects["Instance13"]["Parent"] = objects["Instance12"];
    objects["Instance13"]["PaddingBottom"] = UDim.new(0.25, 0);
    objects["Instance13"]["PaddingLeft"] = UDim.new(0, 0);
    objects["Instance13"]["PaddingRight"] = UDim.new(0, 0);

    objects["Instance14"]["Visible"] = true;
    objects["Instance14"]["FontSize"] = Enum.FontSize.Size14;
    objects["Instance14"]["TextDirection"] = Enum.TextDirection.Auto;
    objects["Instance14"]["Active"] = true;
    objects["Instance14"]["TextStrokeTransparency"] = 1;
    objects["Instance14"]["TextTruncate"] = Enum.TextTruncate.None;
    objects["Instance14"]["SizeConstraint"] = Enum.SizeConstraint.RelativeXY;
    objects["Instance14"]["ZIndex"] = 1;
    objects["Instance14"]["BorderSizePixel"] = 0;
    objects["Instance14"]["Draggable"] = false;
    objects["Instance14"]["RichText"] = false;
    objects["Instance14"]["Modal"] = false;
    objects["Instance14"]["AutoButtonColor"] = true;
    objects["Instance14"]["Transparency"] = 0;
    objects["Instance14"]["SelectionOrder"] = 0;
    objects["Instance14"]["TextYAlignment"] = Enum.TextYAlignment.Center;
    objects["Instance14"]["TextScaled"] = true;
    objects["Instance14"]["TextWrap"] = true;
    objects["Instance14"]["FontFace"] = Font.new("rbxasset://fonts/families/TitilliumWeb.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal, false);
    objects["Instance14"]["BorderMode"] = Enum.BorderMode.Outline;
    objects["Instance14"]["Parent"] = objects["Instance8"];
    objects["Instance14"]["AnchorPoint"] = Vector2.new(0, 0);
    objects["Instance14"]["Style"] = Enum.ButtonStyle.Custom;
    objects["Instance14"]["Position"] = UDim2.new(0, 0, 0, 0);
    objects["Instance14"]["BackgroundColor3"] = Color3.new(0.117647, 0.117647, 0.117647);
    objects["Instance14"]["Selected"] = false;
    objects["Instance14"]["TextSize"] = 14;
    objects["Instance14"]["Size"] = UDim2.new(0, 40, 1, 0);
    objects["Instance14"]["BackgroundTransparency"] = 0;
    objects["Instance14"]["TextWrapped"] = true;
    objects["Instance14"]["ClipsDescendants"] = false;
    objects["Instance14"]["TextColor3"] = Color3.new(1, 1, 1);
    objects["Instance14"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance14"]["Text"] = "x";
    objects["Instance14"]["AutomaticSize"] = Enum.AutomaticSize.None;
    objects["Instance14"]["LayoutOrder"] = 0;
    objects["Instance14"]["Rotation"] = 0;
    objects["Instance14"]["LineHeight"] = 1;
    objects["Instance14"]["Name"] = "Close";
    objects["Instance14"]["TextXAlignment"] = Enum.TextXAlignment.Center;
    objects["Instance14"]["Selectable"] = true;
    objects["Instance14"]["MaxVisibleGraphemes"] = -1;
    objects["Instance14"]["TextStrokeColor3"] = Color3.new(0, 0, 0);
    objects["Instance14"]["TextTransparency"] = 0;

    objects["Instance15"]["PaddingTop"] = UDim.new(0, 0);
    objects["Instance15"]["Name"] = "UIPadding";
    objects["Instance15"]["Parent"] = objects["Instance14"];
    objects["Instance15"]["PaddingBottom"] = UDim.new(0.100000001, 0);
    objects["Instance15"]["PaddingLeft"] = UDim.new(0, 0);
    objects["Instance15"]["PaddingRight"] = UDim.new(0, 0);

    objects["Instance16"]["Enabled"] = true;
    objects["Instance16"]["Transparency"] = 0;
    objects["Instance16"]["Name"] = "UIStroke";
    objects["Instance16"]["LineJoinMode"] = Enum.LineJoinMode.Miter;
    objects["Instance16"]["Parent"] = objects["Instance1"];
    objects["Instance16"]["Thickness"] = 1;
    objects["Instance16"]["Color"] = Color3.new(0.0823529, 0.0823529, 0.0823529);
    objects["Instance16"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

    objects["Instance17"]["LayoutOrder"] = 0;
    objects["Instance17"]["Active"] = false;
    objects["Instance17"]["Parent"] = objects["Instance1"];
    objects["Instance17"]["AnchorPoint"] = Vector2.new(0, 0);
    objects["Instance17"]["SizeConstraint"] = Enum.SizeConstraint.RelativeXY;
    objects["Instance17"]["ZIndex"] = 1;
    objects["Instance17"]["AutomaticSize"] = Enum.AutomaticSize.None;
    objects["Instance17"]["Size"] = UDim2.new(1, 0, 1, -30);
    objects["Instance17"]["Draggable"] = false;
    objects["Instance17"]["Style"] = Enum.FrameStyle.Custom;
    objects["Instance17"]["ClipsDescendants"] = false;
    objects["Instance17"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance17"]["BorderMode"] = Enum.BorderMode.Outline;
    objects["Instance17"]["BackgroundTransparency"] = 0;
    objects["Instance17"]["BorderSizePixel"] = 0;
    objects["Instance17"]["Rotation"] = 0;
    objects["Instance17"]["Transparency"] = 0;
    objects["Instance17"]["Name"] = "Contents";
    objects["Instance17"]["SelectionOrder"] = 0;
    objects["Instance17"]["Visible"] = true;
    objects["Instance17"]["Selectable"] = false;
    objects["Instance17"]["Position"] = UDim2.new(0, 0, 0, 30);
    objects["Instance17"]["BackgroundColor3"] = Color3.new(0.0941177, 0.0941177, 0.0941177);

    objects["Instance18"]["LayoutOrder"] = 0;
    objects["Instance18"]["Active"] = false;
    objects["Instance18"]["Parent"] = objects["Instance17"];
    objects["Instance18"]["AnchorPoint"] = Vector2.new(0, 0);
    objects["Instance18"]["SizeConstraint"] = Enum.SizeConstraint.RelativeXY;
    objects["Instance18"]["ZIndex"] = 1;
    objects["Instance18"]["AutomaticSize"] = Enum.AutomaticSize.None;
    objects["Instance18"]["Size"] = UDim2.new(1, 0, 0, 35);
    objects["Instance18"]["Draggable"] = false;
    objects["Instance18"]["Style"] = Enum.FrameStyle.Custom;
    objects["Instance18"]["ClipsDescendants"] = false;
    objects["Instance18"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance18"]["BorderMode"] = Enum.BorderMode.Outline;
    objects["Instance18"]["BackgroundTransparency"] = 1;
    objects["Instance18"]["BorderSizePixel"] = 0;
    objects["Instance18"]["Rotation"] = 0;
    objects["Instance18"]["Transparency"] = 1;
    objects["Instance18"]["Name"] = "Top";
    objects["Instance18"]["SelectionOrder"] = 0;
    objects["Instance18"]["Visible"] = true;
    objects["Instance18"]["Selectable"] = false;
    objects["Instance18"]["Position"] = UDim2.new(0, 0, 0, 0);
    objects["Instance18"]["BackgroundColor3"] = Color3.new(1, 1, 1);

    objects["Instance19"]["Visible"] = true;
    objects["Instance19"]["Active"] = true;
    objects["Instance19"]["ScrollingDirection"] = Enum.ScrollingDirection.XY;
    objects["Instance19"]["SizeConstraint"] = Enum.SizeConstraint.RelativeXY;
    objects["Instance19"]["ZIndex"] = 2;
    objects["Instance19"]["BorderSizePixel"] = 0;
    objects["Instance19"]["CanvasSize"] = UDim2.new(0, 0, 0, 0);
    objects["Instance19"]["Draggable"] = false;
    objects["Instance19"]["MidImage"] = "rbxasset://textures/ui/Scroll/scroll-middle.png";
    objects["Instance19"]["CanvasPosition"] = Vector2.new(0, 0);
    objects["Instance19"]["VerticalScrollBarInset"] = Enum.ScrollBarInset.None;
    objects["Instance19"]["Transparency"] = 1;
    objects["Instance19"]["TopImage"] = "rbxasset://textures/ui/Scroll/scroll-top.png";
    objects["Instance19"]["SelectionOrder"] = 0;
    objects["Instance19"]["HorizontalScrollBarInset"] = Enum.ScrollBarInset.None;
    objects["Instance19"]["BorderMode"] = Enum.BorderMode.Outline;
    objects["Instance19"]["AutomaticCanvasSize"] = Enum.AutomaticSize.X;
    objects["Instance19"]["VerticalScrollBarPosition"] = Enum.VerticalScrollBarPosition.Right;
    objects["Instance19"]["AnchorPoint"] = Vector2.new(0, 0);
    objects["Instance19"]["AutomaticSize"] = Enum.AutomaticSize.None;
    objects["Instance19"]["Size"] = UDim2.new(1, -70, 1, 0);
    objects["Instance19"]["ScrollBarImageColor3"] = Color3.new(0, 0, 0);
    objects["Instance19"]["BackgroundColor3"] = Color3.new(1, 1, 1);
    objects["Instance19"]["Selectable"] = true;
    objects["Instance19"]["ClipsDescendants"] = true;
    objects["Instance19"]["ScrollBarImageTransparency"] = 0;
    objects["Instance19"]["ScrollBarThickness"] = 0;
    objects["Instance19"]["Parent"] = objects["Instance18"];
    objects["Instance19"]["BackgroundTransparency"] = 1;
    objects["Instance19"]["Rotation"] = 0;
    objects["Instance19"]["LayoutOrder"] = 0;
    objects["Instance19"]["Name"] = "Tabs";
    objects["Instance19"]["Position"] = UDim2.new(0, 0, 0, 0);
    objects["Instance19"]["ScrollingEnabled"] = true;
    objects["Instance19"]["BottomImage"] = "rbxasset://textures/ui/Scroll/scroll-bottom.png";
    objects["Instance19"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance19"]["ElasticBehavior"] = Enum.ElasticBehavior.WhenScrollable;

    objects["Instance20"]["Visible"] = true;
    objects["Instance20"]["FontSize"] = Enum.FontSize.Size14;
    objects["Instance20"]["TextDirection"] = Enum.TextDirection.Auto;
    objects["Instance20"]["Active"] = true;
    objects["Instance20"]["TextStrokeTransparency"] = 1;
    objects["Instance20"]["TextTruncate"] = Enum.TextTruncate.None;
    objects["Instance20"]["SizeConstraint"] = Enum.SizeConstraint.RelativeXY;
    objects["Instance20"]["ZIndex"] = 1;
    objects["Instance20"]["BorderSizePixel"] = 0;
    objects["Instance20"]["Draggable"] = false;
    objects["Instance20"]["RichText"] = false;
    objects["Instance20"]["Modal"] = false;
    objects["Instance20"]["AutoButtonColor"] = true;
    objects["Instance20"]["Transparency"] = 0;
    objects["Instance20"]["SelectionOrder"] = 0;
    objects["Instance20"]["TextYAlignment"] = Enum.TextYAlignment.Center;
    objects["Instance20"]["TextScaled"] = false;
    objects["Instance20"]["TextWrap"] = false;
    objects["Instance20"]["FontFace"] = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal, false);
    objects["Instance20"]["BorderMode"] = Enum.BorderMode.Outline;
    objects["Instance20"]["Parent"] = objects["Instance19"];
    objects["Instance20"]["AnchorPoint"] = Vector2.new(0, 0);
    objects["Instance20"]["Style"] = Enum.ButtonStyle.Custom;
    objects["Instance20"]["Position"] = UDim2.new(0, 0, 0, 0);
    objects["Instance20"]["BackgroundColor3"] = Color3.new(0.121569, 0.121569, 0.121569);
    objects["Instance20"]["Selected"] = false;
    objects["Instance20"]["TextSize"] = 14;
    objects["Instance20"]["Size"] = UDim2.new(0, 150, 1, 0);
    objects["Instance20"]["BackgroundTransparency"] = 0;
    objects["Instance20"]["TextWrapped"] = false;
    objects["Instance20"]["ClipsDescendants"] = false;
    objects["Instance20"]["TextColor3"] = Color3.new(0, 0, 0);
    objects["Instance20"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance20"]["Text"] = "";
    objects["Instance20"]["AutomaticSize"] = Enum.AutomaticSize.None;
    objects["Instance20"]["LayoutOrder"] = 0;
    objects["Instance20"]["Rotation"] = 0;
    objects["Instance20"]["LineHeight"] = 1;
    objects["Instance20"]["Name"] = "Tab";
    objects["Instance20"]["TextXAlignment"] = Enum.TextXAlignment.Center;
    objects["Instance20"]["Selectable"] = true;
    objects["Instance20"]["MaxVisibleGraphemes"] = -1;
    objects["Instance20"]["TextStrokeColor3"] = Color3.new(0, 0, 0);
    objects["Instance20"]["TextTransparency"] = 0;

    objects["Instance21"]["LayoutOrder"] = 0;
    objects["Instance21"]["Active"] = false;
    objects["Instance21"]["Parent"] = objects["Instance20"];
    objects["Instance21"]["AnchorPoint"] = Vector2.new(1, 0);
    objects["Instance21"]["SizeConstraint"] = Enum.SizeConstraint.RelativeXY;
    objects["Instance21"]["ZIndex"] = 1;
    objects["Instance21"]["AutomaticSize"] = Enum.AutomaticSize.None;
    objects["Instance21"]["Size"] = UDim2.new(0, 1, 1, 0);
    objects["Instance21"]["Draggable"] = false;
    objects["Instance21"]["Style"] = Enum.FrameStyle.Custom;
    objects["Instance21"]["ClipsDescendants"] = false;
    objects["Instance21"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance21"]["BorderMode"] = Enum.BorderMode.Outline;
    objects["Instance21"]["BackgroundTransparency"] = 0;
    objects["Instance21"]["BorderSizePixel"] = 0;
    objects["Instance21"]["Rotation"] = 0;
    objects["Instance21"]["Transparency"] = 0;
    objects["Instance21"]["Name"] = "LeftSeparator";
    objects["Instance21"]["SelectionOrder"] = 0;
    objects["Instance21"]["Visible"] = true;
    objects["Instance21"]["Selectable"] = false;
    objects["Instance21"]["Position"] = UDim2.new(0, 0, 0, 0);
    objects["Instance21"]["BackgroundColor3"] = Color3.new(0.168627, 0.168627, 0.168627);

    objects["Instance22"]["LayoutOrder"] = 0;
    objects["Instance22"]["Active"] = false;
    objects["Instance22"]["Parent"] = objects["Instance20"];
    objects["Instance22"]["AnchorPoint"] = Vector2.new(0, 0);
    objects["Instance22"]["SizeConstraint"] = Enum.SizeConstraint.RelativeXY;
    objects["Instance22"]["ZIndex"] = 1;
    objects["Instance22"]["AutomaticSize"] = Enum.AutomaticSize.None;
    objects["Instance22"]["Size"] = UDim2.new(1, -1, 0, 1);
    objects["Instance22"]["Draggable"] = false;
    objects["Instance22"]["Style"] = Enum.FrameStyle.Custom;
    objects["Instance22"]["ClipsDescendants"] = false;
    objects["Instance22"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance22"]["BorderMode"] = Enum.BorderMode.Outline;
    objects["Instance22"]["BackgroundTransparency"] = 0;
    objects["Instance22"]["BorderSizePixel"] = 0;
    objects["Instance22"]["Rotation"] = 0;
    objects["Instance22"]["Transparency"] = 0;
    objects["Instance22"]["Name"] = "Selected";
    objects["Instance22"]["SelectionOrder"] = 0;
    objects["Instance22"]["Visible"] = true;
    objects["Instance22"]["Selectable"] = false;
    objects["Instance22"]["Position"] = UDim2.new(0, 0, 0, 0);
    objects["Instance22"]["BackgroundColor3"] = Color3.new(0, 0.470588, 0.984314);

    objects["Instance23"]["Visible"] = true;
    objects["Instance23"]["AutomaticSize"] = Enum.AutomaticSize.None;
    objects["Instance23"]["Size"] = UDim2.new(0.25, 0, 0.25, 0);
    objects["Instance23"]["ImageTransparency"] = 0;
    objects["Instance23"]["Parent"] = objects["Instance20"];
    objects["Instance23"]["Position"] = UDim2.new(0.10000000149011612, 0, 0.5, 0);
    objects["Instance23"]["BackgroundTransparency"] = 1;
    objects["Instance23"]["ImageRectOffset"] = Vector2.new(0, 0);
    objects["Instance23"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
    objects["Instance23"]["Image"] = "rbxassetid://5552526748";
    objects["Instance23"]["TileSize"] = UDim2.new(1, 0, 1, 0);
    objects["Instance23"]["ImageRectSize"] = Vector2.new(0, 0);
    objects["Instance23"]["SizeConstraint"] = Enum.SizeConstraint.RelativeXY;
    objects["Instance23"]["ZIndex"] = 1;
    objects["Instance23"]["BorderSizePixel"] = 0;
    objects["Instance23"]["SliceCenter"] = Rect.new(0, 0, 0, 0);
    objects["Instance23"]["Draggable"] = false;
    objects["Instance23"]["ScaleType"] = Enum.ScaleType.Stretch;
    objects["Instance23"]["ResampleMode"] = Enum.ResamplerMode.Default;
    objects["Instance23"]["ClipsDescendants"] = false;
    objects["Instance23"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance23"]["BorderMode"] = Enum.BorderMode.Outline;
    objects["Instance23"]["LayoutOrder"] = 0;
    objects["Instance23"]["ImageColor3"] = Color3.new(0, 0.470588, 0.984314);
    objects["Instance23"]["Rotation"] = 0;
    objects["Instance23"]["Transparency"] = 1;
    objects["Instance23"]["Name"] = "Icon";
    objects["Instance23"]["SelectionOrder"] = 0;
    objects["Instance23"]["SliceScale"] = 1;
    objects["Instance23"]["Selectable"] = false;
    objects["Instance23"]["Active"] = false;
    objects["Instance23"]["BackgroundColor3"] = Color3.new(1, 1, 1);

    objects["Instance24"]["AspectRatio"] = 1;
    objects["Instance24"]["Name"] = "UIAspectRatioConstraint";
    objects["Instance24"]["Parent"] = objects["Instance23"];
    objects["Instance24"]["AspectType"] = Enum.AspectType.FitWithinMaxSize;
    objects["Instance24"]["DominantAxis"] = Enum.DominantAxis.Width;

    objects["Instance25"]["LayoutOrder"] = 0;
    objects["Instance25"]["Active"] = false;
    objects["Instance25"]["Parent"] = objects["Instance20"];
    objects["Instance25"]["AnchorPoint"] = Vector2.new(1, 0);
    objects["Instance25"]["SizeConstraint"] = Enum.SizeConstraint.RelativeXY;
    objects["Instance25"]["ZIndex"] = 1;
    objects["Instance25"]["AutomaticSize"] = Enum.AutomaticSize.None;
    objects["Instance25"]["Size"] = UDim2.new(0, 1, 1, 0);
    objects["Instance25"]["Draggable"] = false;
    objects["Instance25"]["Style"] = Enum.FrameStyle.Custom;
    objects["Instance25"]["ClipsDescendants"] = false;
    objects["Instance25"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance25"]["BorderMode"] = Enum.BorderMode.Outline;
    objects["Instance25"]["BackgroundTransparency"] = 0;
    objects["Instance25"]["BorderSizePixel"] = 0;
    objects["Instance25"]["Rotation"] = 0;
    objects["Instance25"]["Transparency"] = 0;
    objects["Instance25"]["Name"] = "RightSeparator";
    objects["Instance25"]["SelectionOrder"] = 0;
    objects["Instance25"]["Visible"] = true;
    objects["Instance25"]["Selectable"] = false;
    objects["Instance25"]["Position"] = UDim2.new(1, 0, 0, 0);
    objects["Instance25"]["BackgroundColor3"] = Color3.new(0.168627, 0.168627, 0.168627);

    objects["Instance26"]["LayoutOrder"] = 0;
    objects["Instance26"]["Active"] = false;
    objects["Instance26"]["Parent"] = objects["Instance20"];
    objects["Instance26"]["AnchorPoint"] = Vector2.new(0, 0.5);
    objects["Instance26"]["SizeConstraint"] = Enum.SizeConstraint.RelativeXY;
    objects["Instance26"]["ZIndex"] = 1;
    objects["Instance26"]["AutomaticSize"] = Enum.AutomaticSize.None;
    objects["Instance26"]["Size"] = UDim2.new(0.550000011920929, 0, 0.5, 0);
    objects["Instance26"]["Draggable"] = false;
    objects["Instance26"]["Style"] = Enum.FrameStyle.Custom;
    objects["Instance26"]["ClipsDescendants"] = false;
    objects["Instance26"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance26"]["BorderMode"] = Enum.BorderMode.Outline;
    objects["Instance26"]["BackgroundTransparency"] = 1;
    objects["Instance26"]["BorderSizePixel"] = 0;
    objects["Instance26"]["Rotation"] = 0;
    objects["Instance26"]["Transparency"] = 1;
    objects["Instance26"]["Name"] = "NameHolder";
    objects["Instance26"]["SelectionOrder"] = 0;
    objects["Instance26"]["Visible"] = true;
    objects["Instance26"]["Selectable"] = false;
    objects["Instance26"]["Position"] = UDim2.new(0.20000000298023224, 0, 0.5, 0);
    objects["Instance26"]["BackgroundColor3"] = Color3.new(1, 1, 1);

    objects["Instance27"]["Visible"] = true;
    objects["Instance27"]["FontSize"] = Enum.FontSize.Size14;
    objects["Instance27"]["TextDirection"] = Enum.TextDirection.Auto;
    objects["Instance27"]["Active"] = false;
    objects["Instance27"]["TextStrokeTransparency"] = 1;
    objects["Instance27"]["TextTruncate"] = Enum.TextTruncate.None;
    objects["Instance27"]["SizeConstraint"] = Enum.SizeConstraint.RelativeXY;
    objects["Instance27"]["ZIndex"] = 1;
    objects["Instance27"]["BorderSizePixel"] = 0;
    objects["Instance27"]["Draggable"] = false;
    objects["Instance27"]["RichText"] = false;
    objects["Instance27"]["Transparency"] = 1;
    objects["Instance27"]["SelectionOrder"] = 0;
    objects["Instance27"]["TextYAlignment"] = Enum.TextYAlignment.Center;
    objects["Instance27"]["TextScaled"] = true;
    objects["Instance27"]["TextWrap"] = true;
    objects["Instance27"]["FontFace"] = Font.new("rbxasset://fonts/families/TitilliumWeb.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal, false);
    objects["Instance27"]["BorderMode"] = Enum.BorderMode.Outline;
    objects["Instance27"]["Parent"] = objects["Instance26"];
    objects["Instance27"]["AnchorPoint"] = Vector2.new(0, 0);
    objects["Instance27"]["TextSize"] = 14;
    objects["Instance27"]["Position"] = UDim2.new(0, 0, 0, 0);
    objects["Instance27"]["AutomaticSize"] = Enum.AutomaticSize.None;
    objects["Instance27"]["Size"] = UDim2.new(100, 0, 1, 0);
    objects["Instance27"]["BackgroundTransparency"] = 1;
    objects["Instance27"]["LineHeight"] = 1;
    objects["Instance27"]["BackgroundColor3"] = Color3.new(1, 1, 1);
    objects["Instance27"]["TextColor3"] = Color3.new(1, 1, 1);
    objects["Instance27"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance27"]["Text"] = "Script.lua";
    objects["Instance27"]["LayoutOrder"] = 0;
    objects["Instance27"]["TextWrapped"] = true;
    objects["Instance27"]["Rotation"] = 0;
    objects["Instance27"]["TextTransparency"] = 0;
    objects["Instance27"]["Name"] = "Label";
    objects["Instance27"]["TextXAlignment"] = Enum.TextXAlignment.Left;
    objects["Instance27"]["ClipsDescendants"] = false;
    objects["Instance27"]["MaxVisibleGraphemes"] = -1;
    objects["Instance27"]["TextStrokeColor3"] = Color3.new(0, 0, 0);
    objects["Instance27"]["Selectable"] = false;

    objects["Instance28"]["Visible"] = true;
    objects["Instance28"]["FontSize"] = Enum.FontSize.Size14;
    objects["Instance28"]["TextDirection"] = Enum.TextDirection.Auto;
    objects["Instance28"]["Active"] = true;
    objects["Instance28"]["TextStrokeTransparency"] = 1;
    objects["Instance28"]["TextTruncate"] = Enum.TextTruncate.None;
    objects["Instance28"]["SizeConstraint"] = Enum.SizeConstraint.RelativeXY;
    objects["Instance28"]["ZIndex"] = 1;
    objects["Instance28"]["BorderSizePixel"] = 0;
    objects["Instance28"]["Draggable"] = false;
    objects["Instance28"]["RichText"] = false;
    objects["Instance28"]["Modal"] = false;
    objects["Instance28"]["AutoButtonColor"] = true;
    objects["Instance28"]["Transparency"] = 1;
    objects["Instance28"]["SelectionOrder"] = 0;
    objects["Instance28"]["TextYAlignment"] = Enum.TextYAlignment.Center;
    objects["Instance28"]["TextScaled"] = true;
    objects["Instance28"]["TextWrap"] = true;
    objects["Instance28"]["FontFace"] = Font.new("rbxasset://fonts/families/TitilliumWeb.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal, false);
    objects["Instance28"]["BorderMode"] = Enum.BorderMode.Outline;
    objects["Instance28"]["Parent"] = objects["Instance20"];
    objects["Instance28"]["AnchorPoint"] = Vector2.new(1, 0.5);
    objects["Instance28"]["Style"] = Enum.ButtonStyle.Custom;
    objects["Instance28"]["Position"] = UDim2.new(0.9750000238418579, 0, 0.5, 0);
    objects["Instance28"]["BackgroundColor3"] = Color3.new(1, 1, 1);
    objects["Instance28"]["Selected"] = false;
    objects["Instance28"]["TextSize"] = 14;
    objects["Instance28"]["Size"] = UDim2.new(0.75, 0, 0.75, 0);
    objects["Instance28"]["BackgroundTransparency"] = 1;
    objects["Instance28"]["TextWrapped"] = true;
    objects["Instance28"]["ClipsDescendants"] = false;
    objects["Instance28"]["TextColor3"] = Color3.new(1, 1, 1);
    objects["Instance28"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance28"]["Text"] = "x";
    objects["Instance28"]["AutomaticSize"] = Enum.AutomaticSize.None;
    objects["Instance28"]["LayoutOrder"] = 0;
    objects["Instance28"]["Rotation"] = 0;
    objects["Instance28"]["LineHeight"] = 1;
    objects["Instance28"]["Name"] = "Close";
    objects["Instance28"]["TextXAlignment"] = Enum.TextXAlignment.Center;
    objects["Instance28"]["Selectable"] = true;
    objects["Instance28"]["MaxVisibleGraphemes"] = -1;
    objects["Instance28"]["TextStrokeColor3"] = Color3.new(0, 0, 0);
    objects["Instance28"]["TextTransparency"] = 0;

    objects["Instance29"]["AspectRatio"] = 1;
    objects["Instance29"]["Name"] = "UIAspectRatioConstraint";
    objects["Instance29"]["Parent"] = objects["Instance28"];
    objects["Instance29"]["AspectType"] = Enum.AspectType.FitWithinMaxSize;
    objects["Instance29"]["DominantAxis"] = Enum.DominantAxis.Width;

    objects["Instance30"]["PaddingTop"] = UDim.new(0, 0);
    objects["Instance30"]["Name"] = "UIPadding";
    objects["Instance30"]["Parent"] = objects["Instance28"];
    objects["Instance30"]["PaddingBottom"] = UDim.new(0.100000001, 0);
    objects["Instance30"]["PaddingLeft"] = UDim.new(0, 0);
    objects["Instance30"]["PaddingRight"] = UDim.new(0, 0);

    objects["Instance31"]["FillDirection"] = Enum.FillDirection.Horizontal;
    objects["Instance31"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Left;
    objects["Instance31"]["VerticalFlex"] = Enum.UIFlexAlignment.None;
    objects["Instance31"]["Parent"] = objects["Instance19"];
    objects["Instance31"]["VerticalAlignment"] = Enum.VerticalAlignment.Top;
    objects["Instance31"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
    objects["Instance31"]["Name"] = "UIListLayout";
    objects["Instance31"]["Padding"] = UDim.new(0, 0);
    objects["Instance31"]["ItemLineAlignment"] = Enum.ItemLineAlignment.Automatic;
    objects["Instance31"]["HorizontalFlex"] = Enum.UIFlexAlignment.None;

    objects["Instance32"]["LayoutOrder"] = 0;
    objects["Instance32"]["Active"] = false;
    objects["Instance32"]["Parent"] = objects["Instance18"];
    objects["Instance32"]["AnchorPoint"] = Vector2.new(0, 1);
    objects["Instance32"]["SizeConstraint"] = Enum.SizeConstraint.RelativeXY;
    objects["Instance32"]["ZIndex"] = 1;
    objects["Instance32"]["AutomaticSize"] = Enum.AutomaticSize.None;
    objects["Instance32"]["Size"] = UDim2.new(1, 0, 0, 1);
    objects["Instance32"]["Draggable"] = false;
    objects["Instance32"]["Style"] = Enum.FrameStyle.Custom;
    objects["Instance32"]["ClipsDescendants"] = false;
    objects["Instance32"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance32"]["BorderMode"] = Enum.BorderMode.Outline;
    objects["Instance32"]["BackgroundTransparency"] = 0;
    objects["Instance32"]["BorderSizePixel"] = 0;
    objects["Instance32"]["Rotation"] = 0;
    objects["Instance32"]["Transparency"] = 0;
    objects["Instance32"]["Name"] = "Separator";
    objects["Instance32"]["SelectionOrder"] = 0;
    objects["Instance32"]["Visible"] = true;
    objects["Instance32"]["Selectable"] = false;
    objects["Instance32"]["Position"] = UDim2.new(0, 0, 1, 0);
    objects["Instance32"]["BackgroundColor3"] = Color3.new(0.168627, 0.168627, 0.168627);

    objects["Instance33"]["LayoutOrder"] = 0;
    objects["Instance33"]["Active"] = false;
    objects["Instance33"]["Parent"] = objects["Instance18"];
    objects["Instance33"]["AnchorPoint"] = Vector2.new(1, 0);
    objects["Instance33"]["SizeConstraint"] = Enum.SizeConstraint.RelativeXY;
    objects["Instance33"]["ZIndex"] = 1;
    objects["Instance33"]["AutomaticSize"] = Enum.AutomaticSize.None;
    objects["Instance33"]["Size"] = UDim2.new(0, 70, 1, -1);
    objects["Instance33"]["Draggable"] = false;
    objects["Instance33"]["Style"] = Enum.FrameStyle.Custom;
    objects["Instance33"]["ClipsDescendants"] = false;
    objects["Instance33"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance33"]["BorderMode"] = Enum.BorderMode.Outline;
    objects["Instance33"]["BackgroundTransparency"] = 1;
    objects["Instance33"]["BorderSizePixel"] = 0;
    objects["Instance33"]["Rotation"] = 0;
    objects["Instance33"]["Transparency"] = 1;
    objects["Instance33"]["Name"] = "Buttons";
    objects["Instance33"]["SelectionOrder"] = 0;
    objects["Instance33"]["Visible"] = true;
    objects["Instance33"]["Selectable"] = false;
    objects["Instance33"]["Position"] = UDim2.new(1, 0, 0, 0);
    objects["Instance33"]["BackgroundColor3"] = Color3.new(1, 1, 1);

    objects["Instance34"]["FillDirection"] = Enum.FillDirection.Horizontal;
    objects["Instance34"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Right;
    objects["Instance34"]["VerticalFlex"] = Enum.UIFlexAlignment.None;
    objects["Instance34"]["Parent"] = objects["Instance33"];
    objects["Instance34"]["VerticalAlignment"] = Enum.VerticalAlignment.Top;
    objects["Instance34"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
    objects["Instance34"]["Name"] = "UIListLayout";
    objects["Instance34"]["Padding"] = UDim.new(0, 0);
    objects["Instance34"]["ItemLineAlignment"] = Enum.ItemLineAlignment.Automatic;
    objects["Instance34"]["HorizontalFlex"] = Enum.UIFlexAlignment.None;

    objects["Instance35"]["Visible"] = true;
    objects["Instance35"]["FontSize"] = Enum.FontSize.Size14;
    objects["Instance35"]["TextDirection"] = Enum.TextDirection.Auto;
    objects["Instance35"]["Active"] = true;
    objects["Instance35"]["TextStrokeTransparency"] = 1;
    objects["Instance35"]["TextTruncate"] = Enum.TextTruncate.None;
    objects["Instance35"]["SizeConstraint"] = Enum.SizeConstraint.RelativeXY;
    objects["Instance35"]["ZIndex"] = 1;
    objects["Instance35"]["BorderSizePixel"] = 0;
    objects["Instance35"]["Draggable"] = false;
    objects["Instance35"]["RichText"] = false;
    objects["Instance35"]["Modal"] = false;
    objects["Instance35"]["AutoButtonColor"] = true;
    objects["Instance35"]["Transparency"] = 0;
    objects["Instance35"]["SelectionOrder"] = 0;
    objects["Instance35"]["TextYAlignment"] = Enum.TextYAlignment.Center;
    objects["Instance35"]["TextScaled"] = false;
    objects["Instance35"]["TextWrap"] = false;
    objects["Instance35"]["FontFace"] = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal, false);
    objects["Instance35"]["BorderMode"] = Enum.BorderMode.Outline;
    objects["Instance35"]["Parent"] = objects["Instance33"];
    objects["Instance35"]["AnchorPoint"] = Vector2.new(0, 0);
    objects["Instance35"]["Style"] = Enum.ButtonStyle.Custom;
    objects["Instance35"]["Position"] = UDim2.new(0, 0, 0, 0);
    objects["Instance35"]["BackgroundColor3"] = Color3.new(0.0941177, 0.0941177, 0.0941177);
    objects["Instance35"]["Selected"] = false;
    objects["Instance35"]["TextSize"] = 14;
    objects["Instance35"]["Size"] = UDim2.new(0.5, 0, 1, 0);
    objects["Instance35"]["BackgroundTransparency"] = 0;
    objects["Instance35"]["TextWrapped"] = false;
    objects["Instance35"]["ClipsDescendants"] = false;
    objects["Instance35"]["TextColor3"] = Color3.new(0, 0, 0);
    objects["Instance35"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance35"]["Text"] = "";
    objects["Instance35"]["AutomaticSize"] = Enum.AutomaticSize.None;
    objects["Instance35"]["LayoutOrder"] = 0;
    objects["Instance35"]["Rotation"] = 0;
    objects["Instance35"]["LineHeight"] = 1;
    objects["Instance35"]["Name"] = "Clear";
    objects["Instance35"]["TextXAlignment"] = Enum.TextXAlignment.Center;
    objects["Instance35"]["Selectable"] = true;
    objects["Instance35"]["MaxVisibleGraphemes"] = -1;
    objects["Instance35"]["TextStrokeColor3"] = Color3.new(0, 0, 0);
    objects["Instance35"]["TextTransparency"] = 0;

    objects["Instance36"]["Visible"] = true;
    objects["Instance36"]["AutomaticSize"] = Enum.AutomaticSize.None;
    objects["Instance36"]["Size"] = UDim2.new(0.6499999761581421, 0, 0.6499999761581421, 0);
    objects["Instance36"]["ImageTransparency"] = 0;
    objects["Instance36"]["Parent"] = objects["Instance35"];
    objects["Instance36"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
    objects["Instance36"]["BackgroundTransparency"] = 1;
    objects["Instance36"]["ImageRectOffset"] = Vector2.new(0, 0);
    objects["Instance36"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
    objects["Instance36"]["Image"] = "rbxassetid://137784860208719";
    objects["Instance36"]["TileSize"] = UDim2.new(1, 0, 1, 0);
    objects["Instance36"]["ImageRectSize"] = Vector2.new(0, 0);
    objects["Instance36"]["SizeConstraint"] = Enum.SizeConstraint.RelativeXY;
    objects["Instance36"]["ZIndex"] = 1;
    objects["Instance36"]["BorderSizePixel"] = 0;
    objects["Instance36"]["SliceCenter"] = Rect.new(0, 0, 0, 0);
    objects["Instance36"]["Draggable"] = false;
    objects["Instance36"]["ScaleType"] = Enum.ScaleType.Stretch;
    objects["Instance36"]["ResampleMode"] = Enum.ResamplerMode.Default;
    objects["Instance36"]["ClipsDescendants"] = false;
    objects["Instance36"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance36"]["BorderMode"] = Enum.BorderMode.Outline;
    objects["Instance36"]["LayoutOrder"] = 0;
    objects["Instance36"]["ImageColor3"] = Color3.new(1, 1, 1);
    objects["Instance36"]["Rotation"] = 90;
    objects["Instance36"]["Transparency"] = 1;
    objects["Instance36"]["Name"] = "ImageLabel";
    objects["Instance36"]["SelectionOrder"] = 0;
    objects["Instance36"]["SliceScale"] = 1;
    objects["Instance36"]["Selectable"] = false;
    objects["Instance36"]["Active"] = false;
    objects["Instance36"]["BackgroundColor3"] = Color3.new(1, 1, 1);

    objects["Instance37"]["Visible"] = true;
    objects["Instance37"]["FontSize"] = Enum.FontSize.Size14;
    objects["Instance37"]["TextDirection"] = Enum.TextDirection.Auto;
    objects["Instance37"]["Active"] = true;
    objects["Instance37"]["TextStrokeTransparency"] = 1;
    objects["Instance37"]["TextTruncate"] = Enum.TextTruncate.None;
    objects["Instance37"]["SizeConstraint"] = Enum.SizeConstraint.RelativeXY;
    objects["Instance37"]["ZIndex"] = 1;
    objects["Instance37"]["BorderSizePixel"] = 0;
    objects["Instance37"]["Draggable"] = false;
    objects["Instance37"]["RichText"] = false;
    objects["Instance37"]["Modal"] = false;
    objects["Instance37"]["AutoButtonColor"] = true;
    objects["Instance37"]["Transparency"] = 0;
    objects["Instance37"]["SelectionOrder"] = 0;
    objects["Instance37"]["TextYAlignment"] = Enum.TextYAlignment.Center;
    objects["Instance37"]["TextScaled"] = false;
    objects["Instance37"]["TextWrap"] = false;
    objects["Instance37"]["FontFace"] = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal, false);
    objects["Instance37"]["BorderMode"] = Enum.BorderMode.Outline;
    objects["Instance37"]["Parent"] = objects["Instance33"];
    objects["Instance37"]["AnchorPoint"] = Vector2.new(0, 0);
    objects["Instance37"]["Style"] = Enum.ButtonStyle.Custom;
    objects["Instance37"]["Position"] = UDim2.new(0, 0, 0, 0);
    objects["Instance37"]["BackgroundColor3"] = Color3.new(0.0941177, 0.0941177, 0.0941177);
    objects["Instance37"]["Selected"] = false;
    objects["Instance37"]["TextSize"] = 14;
    objects["Instance37"]["Size"] = UDim2.new(0.5, 0, 1, 0);
    objects["Instance37"]["BackgroundTransparency"] = 0;
    objects["Instance37"]["TextWrapped"] = false;
    objects["Instance37"]["ClipsDescendants"] = false;
    objects["Instance37"]["TextColor3"] = Color3.new(0, 0, 0);
    objects["Instance37"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance37"]["Text"] = "";
    objects["Instance37"]["AutomaticSize"] = Enum.AutomaticSize.None;
    objects["Instance37"]["LayoutOrder"] = 0;
    objects["Instance37"]["Rotation"] = 0;
    objects["Instance37"]["LineHeight"] = 1;
    objects["Instance37"]["Name"] = "Execute";
    objects["Instance37"]["TextXAlignment"] = Enum.TextXAlignment.Center;
    objects["Instance37"]["Selectable"] = true;
    objects["Instance37"]["MaxVisibleGraphemes"] = -1;
    objects["Instance37"]["TextStrokeColor3"] = Color3.new(0, 0, 0);
    objects["Instance37"]["TextTransparency"] = 0;

    objects["Instance38"]["Visible"] = true;
    objects["Instance38"]["AutomaticSize"] = Enum.AutomaticSize.None;
    objects["Instance38"]["Size"] = UDim2.new(0.6499999761581421, 0, 0.6499999761581421, 0);
    objects["Instance38"]["ImageTransparency"] = 0;
    objects["Instance38"]["Parent"] = objects["Instance37"];
    objects["Instance38"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
    objects["Instance38"]["BackgroundTransparency"] = 1;
    objects["Instance38"]["ImageRectOffset"] = Vector2.new(0, 0);
    objects["Instance38"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
    objects["Instance38"]["Image"] = "rbxassetid://7980684777";
    objects["Instance38"]["TileSize"] = UDim2.new(1, 0, 1, 0);
    objects["Instance38"]["ImageRectSize"] = Vector2.new(0, 0);
    objects["Instance38"]["SizeConstraint"] = Enum.SizeConstraint.RelativeXY;
    objects["Instance38"]["ZIndex"] = 1;
    objects["Instance38"]["BorderSizePixel"] = 0;
    objects["Instance38"]["SliceCenter"] = Rect.new(0, 0, 0, 0);
    objects["Instance38"]["Draggable"] = false;
    objects["Instance38"]["ScaleType"] = Enum.ScaleType.Stretch;
    objects["Instance38"]["ResampleMode"] = Enum.ResamplerMode.Default;
    objects["Instance38"]["ClipsDescendants"] = false;
    objects["Instance38"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance38"]["BorderMode"] = Enum.BorderMode.Outline;
    objects["Instance38"]["LayoutOrder"] = 0;
    objects["Instance38"]["ImageColor3"] = Color3.new(1, 1, 1);
    objects["Instance38"]["Rotation"] = 90;
    objects["Instance38"]["Transparency"] = 1;
    objects["Instance38"]["Name"] = "ImageLabel";
    objects["Instance38"]["SelectionOrder"] = 0;
    objects["Instance38"]["SliceScale"] = 1;
    objects["Instance38"]["Selectable"] = false;
    objects["Instance38"]["Active"] = false;
    objects["Instance38"]["BackgroundColor3"] = Color3.new(1, 1, 1);

    objects["Instance39"]["LayoutOrder"] = 0;
    objects["Instance39"]["FontSize"] = Enum.FontSize.Size14;
    objects["Instance39"]["LineHeight"] = 1;
    objects["Instance39"]["Active"] = true;
    objects["Instance39"]["TextStrokeTransparency"] = 1;
    objects["Instance39"]["SelectionStart"] = -1;
    objects["Instance39"]["PlaceholderColor3"] = Color3.new(0.7, 0.7, 0.7);
    objects["Instance39"]["SizeConstraint"] = Enum.SizeConstraint.RelativeXY;
    objects["Instance39"]["ZIndex"] = 1;
    objects["Instance39"]["BorderSizePixel"] = 0;
    objects["Instance39"]["TextEditable"] = true;
    objects["Instance39"]["Draggable"] = false;
    objects["Instance39"]["RichText"] = false;
    objects["Instance39"]["Transparency"] = 0;
    objects["Instance39"]["SelectionOrder"] = 0;
    objects["Instance39"]["TextYAlignment"] = Enum.TextYAlignment.Center;
    objects["Instance39"]["TextScaled"] = false;
    objects["Instance39"]["BackgroundColor3"] = Color3.new(0.121569, 0.121569, 0.121569);
    objects["Instance39"]["FontFace"] = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal, false);
    objects["Instance39"]["BorderMode"] = Enum.BorderMode.Outline;
    objects["Instance39"]["Parent"] = objects["Instance17"];
    objects["Instance39"]["TextWrapped"] = false;
    objects["Instance39"]["MaxVisibleGraphemes"] = -1;
    objects["Instance39"]["Name"] = "CodeEditor";
    objects["Instance39"]["AnchorPoint"] = Vector2.new(0, 0);
    objects["Instance39"]["TextTransparency"] = 0;
    objects["Instance39"]["TextDirection"] = Enum.TextDirection.Auto;
    objects["Instance39"]["CursorPosition"] = 1;
    objects["Instance39"]["ClipsDescendants"] = false;
    objects["Instance39"]["PlaceholderText"] = "";
    objects["Instance39"]["AutomaticSize"] = Enum.AutomaticSize.None;
    objects["Instance39"]["Size"] = UDim2.new(1, 0, 1, -35);
    objects["Instance39"]["TextStrokeColor3"] = Color3.new(0, 0, 0);
    objects["Instance39"]["Selectable"] = true;
    objects["Instance39"]["ShowNativeInput"] = true;
    objects["Instance39"]["TextColor3"] = Color3.new(0, 0, 0);
    objects["Instance39"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance39"]["Text"] = "";
    objects["Instance39"]["TextSize"] = 14;
    objects["Instance39"]["Visible"] = true;
    objects["Instance39"]["Rotation"] = 0;
    objects["Instance39"]["MultiLine"] = false;
    objects["Instance39"]["BackgroundTransparency"] = 0;
    objects["Instance39"]["TextXAlignment"] = Enum.TextXAlignment.Center;
    objects["Instance39"]["TextTruncate"] = Enum.TextTruncate.None;
    objects["Instance39"]["ClearTextOnFocus"] = true;
    objects["Instance39"]["Position"] = UDim2.new(0, 0, 0, 35);
    objects["Instance39"]["TextWrap"] = false;

    objects["Instance40"]["LayoutOrder"] = 0;
    objects["Instance40"]["Active"] = false;
    objects["Instance40"]["Parent"] = objects["Instance1"];
    objects["Instance40"]["AnchorPoint"] = Vector2.new(1, 0);
    objects["Instance40"]["SizeConstraint"] = Enum.SizeConstraint.RelativeXY;
    objects["Instance40"]["ZIndex"] = 1;
    objects["Instance40"]["AutomaticSize"] = Enum.AutomaticSize.None;
    objects["Instance40"]["Size"] = UDim2.new(0, 150, 1, -30);
    objects["Instance40"]["Draggable"] = false;
    objects["Instance40"]["Style"] = Enum.FrameStyle.Custom;
    objects["Instance40"]["ClipsDescendants"] = false;
    objects["Instance40"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance40"]["BorderMode"] = Enum.BorderMode.Outline;
    objects["Instance40"]["BackgroundTransparency"] = 0;
    objects["Instance40"]["BorderSizePixel"] = 0;
    objects["Instance40"]["Rotation"] = 0;
    objects["Instance40"]["Transparency"] = 0;
    objects["Instance40"]["Name"] = "Scripts";
    objects["Instance40"]["SelectionOrder"] = 0;
    objects["Instance40"]["Visible"] = true;
    objects["Instance40"]["Selectable"] = false;
    objects["Instance40"]["Position"] = UDim2.new(0, 0, 0, 30);
    objects["Instance40"]["BackgroundColor3"] = Color3.new(0.0941177, 0.0941177, 0.0941177);

    objects["Instance41"]["LayoutOrder"] = 0;
    objects["Instance41"]["Active"] = false;
    objects["Instance41"]["Parent"] = objects["Instance40"];
    objects["Instance41"]["AnchorPoint"] = Vector2.new(1, 0);
    objects["Instance41"]["SizeConstraint"] = Enum.SizeConstraint.RelativeXY;
    objects["Instance41"]["ZIndex"] = 1;
    objects["Instance41"]["AutomaticSize"] = Enum.AutomaticSize.None;
    objects["Instance41"]["Size"] = UDim2.new(0, 1, 1, 0);
    objects["Instance41"]["Draggable"] = false;
    objects["Instance41"]["Style"] = Enum.FrameStyle.Custom;
    objects["Instance41"]["ClipsDescendants"] = false;
    objects["Instance41"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance41"]["BorderMode"] = Enum.BorderMode.Outline;
    objects["Instance41"]["BackgroundTransparency"] = 0;
    objects["Instance41"]["BorderSizePixel"] = 0;
    objects["Instance41"]["Rotation"] = 0;
    objects["Instance41"]["Transparency"] = 0;
    objects["Instance41"]["Name"] = "Separator";
    objects["Instance41"]["SelectionOrder"] = 0;
    objects["Instance41"]["Visible"] = true;
    objects["Instance41"]["Selectable"] = false;
    objects["Instance41"]["Position"] = UDim2.new(1, 0, 0, 0);
    objects["Instance41"]["BackgroundColor3"] = Color3.new(0.168627, 0.168627, 0.168627);

    objects["Instance42"]["AspectRatio"] = 1.7999999523162842;
    objects["Instance42"]["Name"] = "UIAspectRatioConstraint";
    objects["Instance42"]["Parent"] = objects["Instance1"];
    objects["Instance42"]["AspectType"] = Enum.AspectType.FitWithinMaxSize;
    objects["Instance42"]["DominantAxis"] = Enum.DominantAxis.Width;
end;

-- Set scripts
do
    task.spawn(function() -- Instance2
if not game:GetService("RunService"):IsClient() then return end
local script = objects["Instance2"];
-- lazy code blepphhh :P

local size = game:GetService("UserInputService").KeyboardEnabled and UDim2.fromScale(0.5, 0.5) or UDim2.fromScale(0.8, 0.8)

script.Parent.Visible = false
script.Parent.Parent.Parent = getfenv().gethui and getfenv().gethui() or game:GetService("CoreGui") or game:GetService("Players").LocalPlayer.PlayerGui
script.Parent.Size = size

local codeBox = script:FindFirstChild("CodeBox") and require(script.CodeBox) or loadstring(game:HttpGet("https://raw.githubusercontent.com/InfernusScripts/Null-Fire/main/Core/Libraries/CodeBox/Main.lua"))()
local textBox = codeBox:fromTextBox(script.Parent.Contents.CodeEditor, codeBox.Themes.VSCode, getfenv().getgenv and getfenv().getgenv())
textBox.Text = [[-- VSCode by @cherry_peashooter on discord --

local function HelloWorld(content)
    print(content == "print" and "Hello, World!" or content);
end

HelloWorld("print")]]

textBox.ShowFooter = true
script.Parent.Visible = true

local delta, dragInput
local function makeDraggable(gui, xOnly, minX, maxX)
    minX = tonumber(minX) or -math.huge
    maxX = tonumber(maxX) or  math.huge

    local dragging, dragStart, startPos, delta

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

    game:GetService("UserInputService").InputChanged:Connect(function(input)
        if input == dragInput and dragging then
            delta = input.Position - dragStart
            gui:TweenPosition(UDim2.new(startPos.X.Scale, math.clamp(startPos.X.Offset + delta.X, minX, maxX), not xOnly and startPos.Y.Scale or 0, not xOnly and startPos.Y.Offset + delta.Y or 0), nil, nil, 0.3, true)
            delta = nil
        end
    end)
end

makeDraggable(script.Parent)

local execute = script.Parent.Contents.Top.Buttons.Execute
execute.Visible = pcall(loadstring, "print('yo')")
execute.MouseButton1Click:Connect(function()
    local func, err = loadstring(textBox.Text)
    if func then
        func()
    else
        warn(err)
    end
end)

execute.Parent.Clear.MouseButton1Click:Connect(function()
    textBox.Text = ""
end)

local maximized = false
script.Parent.Changed:Connect(function()
    if maximized then
        script.Parent.Position = UDim2.fromScale(0.5, 0.5)
    end
end)

local close = script.Parent.TopbarZone.Buttons.Close
close.MouseButton1Click:Connect(function()
    script.Parent:Destroy()
end)

local ratio = script.Parent.UIAspectRatioConstraint
close.Parent.Maximize.MouseButton1Click:Connect(function()
    maximized = not maximized
    
    script.Parent.Size = UDim2.fromOffset(script.Parent.AbsoluteSize.X, script.Parent.AbsoluteSize.Y)
    script.Parent:TweenSize(maximized and UDim2.fromScale(1, 1) or size, Enum.EasingDirection.Out, Enum.EasingStyle.Quint, 0.35, true)
    
    ratio.Parent = not maximized and script.Parent or nil
end)
    end);
end;
