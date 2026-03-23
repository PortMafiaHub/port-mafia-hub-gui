-- PORT MAFIA HUB
-- Clean base GUI for Blox Fruits exploits

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
frame.Size = UDim2.new(0.72, 0, 0.82, 0)
frame.Position = UDim2.new(0.5, 0, 0.5, 0)
frame.AnchorPoint = Vector2.new(0.5, 0.5)
frame.BackgroundColor3 = Color3.fromRGB(12, 12, 12)
frame.BorderSizePixel = 0
frame.Active = true
frame.Draggable = true
frame.Parent = sg

local uicorner = Instance.new("UICorner")
uicorner.CornerRadius = UDim.new(0, 14)
uicorner.Parent = frame

local uistroke = Instance.new("UIStroke")
uistroke.Color = Color3.fromRGB(170, 0, 0)
uistroke.Thickness = 2.2
uistroke.Transparency = 0.35
uistroke.Parent = frame

-- Title bar
local titlebar = Instance.new("Frame")
titlebar.Size = UDim2.new(1, 0, 0, 48)
titlebar.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
titlebar.BorderSizePixel = 0
titlebar.Parent = frame

local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, -70, 1, 0)
title.BackgroundTransparency = 1
title.Text = "PORT MAFIA HUB"
title.TextColor3 = Color3.fromRGB(170, 0, 0)
title.TextScaled = true
title.Font = Enum.Font.GothamBlack
title.Parent = titlebar

local close = Instance.new("TextButton")
close.Size = UDim2.new(0, 48, 0, 48)
close.Position = UDim2.new(1, -50, 0, 0)
close.BackgroundTransparency = 1
close.Text = "×"
close.TextColor3 = Color3.fromRGB(210, 210, 210)
close.TextScaled = true
close.Font = Enum.Font.GothamBold
close.Parent = titlebar

close.MouseButton1Click:Connect(function()
    sg:Destroy()
end)

-- Main content scroll
local scroll = Instance.new("ScrollingFrame")
scroll.Size = UDim2.new(1, 0, 1, -48)
scroll.Position = UDim2.new(0, 0, 0, 48)
scroll.BackgroundTransparency = 1
scroll.ScrollBarThickness = 5
scroll.ScrollBarImageColor3 = Color3.fromRGB(170, 0, 0)
scroll.CanvasSize = UDim2.new(0, 0, 0, 0)
scroll.Parent = frame

-- Button template
local function createButton(text, callback)
    local btn = Instance.new("TextButton")
    btn.Size = UDim2.new(0.92, 0, 0, 68)
    btn.Position = UDim2.new(0.04, 0, 0, #scroll:GetChildren() * 78)
    btn.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
    btn.Text = text
    btn.TextColor3 = Color3.fromRGB(225, 225, 225)
    btn.TextScaled = true
    btn.Font = Enum.Font.GothamSemibold
    btn.Parent = scroll

    local corner = Instance.new("UICorner")
    corner.CornerRadius = UDim.new(0, 10)
    corner.Parent = btn

    btn.MouseButton1Click:Connect(function()
        pcall(callback)
    end)

    scroll.CanvasSize = UDim2.new(0, 0, 0, (#scroll:GetChildren() * 78) + 30)
end

-- ────────────────────────────────────────────────
-- Add your buttons here (examples — replace code)
-- ────────────────────────────────────────────────

createButton("Auto Farm Level", function()
    -- your auto farm code here
end)

createButton("Fruit Sniper", function()
    -- your fruit scanner / notifier code here
end)

createButton("Auto Raid / Dungeon", function()
    -- your raid automation code here
end)

createButton("Teleport Islands", function()
    -- your teleport menu or functions here
end)

createButton("Player ESP", function()
    -- your ESP / name tags code here
end)

createButton("Load Full Script", function()
    -- optional: load external script after you upload it
    -- loadstring(game:HttpGet("https://raw.githubusercontent.com/YOURNAME/REPO/main/script.lua"))()
end)

-- Optional notification on load (silent version)
pcall(function()
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "PORT MAFIA",
        Text = "Hub loaded",
        Duration = 2.8
    })
end)
