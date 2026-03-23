local Players = game:GetService("Players")
local player = Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

wait(0.3)

local sg = Instance.new("ScreenGui")
sg.Name = "PortMafiaHub"
sg.ResetOnSpawn = false
sg.IgnoreGuiInset = true
sg.Parent = playerGui

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0.75, 0, 0.8, 0)
frame.Position = UDim2.new(0.5, 0, 0.5, 0)
frame.AnchorPoint = Vector2.new(0.5, 0.5)
frame.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
frame.BorderSizePixel = 0
frame.Active = true
frame.Draggable = true
frame.Parent = sg


local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0, 24)  
corner.Parent = frame


local stroke = Instance.new("UIStroke")
stroke.Color = Color3.fromRGB(180, 0, 0)
stroke.Thickness = 3
stroke.Transparency = 0.5
stroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
stroke.Parent = frame


local glow = Instance.new("UIGradient")
glow.Color = ColorSequence.new{
    ColorSequenceKeypoint.new(0, Color3.fromRGB(30, 0, 0)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(10, 10, 10))
}
glow.Rotation = 90
glow.Transparency = NumberSequence.new{
    NumberSequenceKeypoint.new(0, 0.7),
    NumberSequenceKeypoint.new(1, 0)
}
glow.Parent = frame


local top = Instance.new("Frame")
top.Size = UDim2.new(1, 0, 0, 55)
top.BackgroundColor3 = Color3.fromRGB(35, 0, 0)
top.BorderSizePixel = 0
top.Parent = frame

local topCorner = Instance.new("UICorner")
topCorner.CornerRadius = UDim.new(0, 24)  
topCorner.Parent = top

local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, -80, 1, 0)
title.BackgroundTransparency = 1
title.Text = "PORT MAFIA HUB"
title.TextColor3 = Color3.fromRGB(255, 70, 70)
title.TextScaled = true
title.Font = Enum.Font.GothamBlack
title.Parent = top

local closeBtn = Instance.new("TextButton")
closeBtn.Size = UDim2.new(0, 50, 0, 50)
closeBtn.Position = UDim2.new(1, -60, 0, 2)
closeBtn.BackgroundTransparency = 1
closeBtn.Text = "×"
closeBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
closeBtn.TextScaled = true
closeBtn.Font = Enum.Font.GothamBold
closeBtn.Parent = top

closeBtn.MouseButton1Click:Connect(function()
    sg:Destroy()
end)

-- Emptyarea 
local content = Instance.new("Frame")
content.Size = UDim2.new(1, 0, 1, -55)
content.Position = UDim2.new(0, 0, 0, 55)
content.BackgroundTransparency = 1
content.Parent = frame


local listLayout = Instance.new("UIListLayout")
listLayout.Padding = UDim.new(0, 15)
listLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
listLayout.SortOrder = Enum.SortOrder.LayoutOrder
listLayout.Parent = content

-- Load notification
pcall(function()
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "enjoyyyyyyy!!",
        Text = "GUI Loaded – Smoother Edges",
        Duration = 3
    })
end)
