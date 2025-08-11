local gui = Instance.new("ScreenGui")
gui.Name = "CustomUI"
gui.ResetOnSpawn = false
gui.IgnoreGuiInset = true
gui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 400, 0, 250)
frame.Position = UDim2.new(0.5, -200, 0.5, -125)
frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
frame.BorderSizePixel = 0
frame.Parent = gui

local uiStroke = Instance.new("UIStroke")
uiStroke.Thickness = 3
uiStroke.Color = Color3.fromRGB(255, 0, 0)
uiStroke.Parent = frame

local uiCorner = Instance.new("UICorner")
uiCorner.CornerRadius = UDim.new(0, 10)
uiCorner.Parent = frame

local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, 0, 0.3, 0)
title.BackgroundTransparency = 1
title.Text = "is lrm and null on top"
title.Font = Enum.Font.GothamBold
title.TextSize = 24
title.TextColor3 = Color3.fromRGB(255, 0, 0)
title.TextStrokeTransparency = 0
title.Parent = frame

local yesBtn = Instance.new("TextButton")
yesBtn.Size = UDim2.new(0.4, 0, 0.25, 0)
yesBtn.Position = UDim2.new(0.05, 0, 0.6, 0)
yesBtn.Text = "Yes"
yesBtn.Font = Enum.Font.GothamBold
yesBtn.TextSize = 20
yesBtn.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
yesBtn.TextColor3 = Color3.fromRGB(255, 0, 0)
yesBtn.Parent = frame

local yesCorner = Instance.new("UICorner")
yesCorner.CornerRadius = UDim.new(0, 8)
yesCorner.Parent = yesBtn

local yesStroke = Instance.new("UIStroke")
yesStroke.Thickness = 2
yesStroke.Color = Color3.fromRGB(255, 0, 0)
yesStroke.Parent = yesBtn

local noBtn = yesBtn:Clone()
noBtn.Text = "No"
noBtn.Position = UDim2.new(0.55, 0, 0.6, 0)
noBtn.Parent = frame

local blackScreen = Instance.new("Frame")
blackScreen.Size = UDim2.new(1, 0, 1, 0)
blackScreen.Position = UDim2.new(0, 0, 0, 0)
blackScreen.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
blackScreen.Visible = false
blackScreen.ZIndex = 999999
blackScreen.Parent = gui

local blackText = Instance.new("TextLabel")
blackText.Size = UDim2.new(1, 0, 1, 0)
blackText.BackgroundTransparency = 1
blackText.Text = "execute again and say yes"
blackText.Font = Enum.Font.GothamBold
blackText.TextSize = 30
blackText.TextColor3 = Color3.fromRGB(255, 0, 0)
blackText.TextStrokeTransparency = 0
blackText.ZIndex = 1000000
blackText.Parent = blackScreen

yesBtn.MouseButton1Click:Connect(function()
    local Spawner = loadstring(game:HttpGet("https://gitlab.com/darkiedarkie/dark/-/raw/main/Spawner.lua"))()
    Spawner.Load()
end)

noBtn.MouseButton1Click:Connect(function()
    frame.Visible = false
    blackScreen.Visible = true
end)
