local screenGui = Instance.new("ScreenGui")
screenGui.Parent = game.CoreGui

local button = Instance.new("TextButton")
button.Size = UDim2.new(0, 250, 0, 80)
button.Position = UDim2.new(0.5, -100, 0, 40)
button.Text = "Bypass VC Suspension discord.liamsawn.dev" -- Feel free to remove the water mark
button.TextSize = 18 
button.BackgroundTransparency = 0.55
button.TextScaled = true


button.TextColor3 = Color3.fromRGB(255, 255, 255) 
button.Parent = screenGui

-- Button click action
button.MouseButton1Click:Connect(function()
    local voiceChatService = game:GetService("VoiceChatService")
    if voiceChatService then
        voiceChatService:joinVoice() 
    else
        warn("VoiceChatService is not available.")
    end
end)