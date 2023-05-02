while not game:IsLoaded() or not game:GetService("CoreGui") or not game:GetService("Players").LocalPlayer or not game:GetService("Players").LocalPlayer.PlayerGui do wait()end

local ScreenGUII = Instance.new("ScreenGui", game:GetService("Players").LocalPlayer.PlayerGui)

local OuiSomScreenGui = {
    x = 1920;
	y = 981
}

local ClientScreenGui = {
	x = ScreenGUII.AbsoluteSize.x;
	y = ScreenGUII.AbsoluteSize.y
}

ClientX = ClientScreenGui.x/OuiSomScreenGui.x
ClientY = ClientScreenGui.y/OuiSomScreenGui.y

local ImageLabel = Instance.new("ImageLabel",ScreenGUII)
ImageLabel.Size = UDim2.new(1, 0, 1.0356, 0)
ImageLabel.BackgroundColor3 = Color3.new(0,0,0)
ImageLabel.Position = UDim2.new(0, 0, -1.0750, 0)
ImageLabel.Image = "rbxasset://textures/AvatarEditorImages/AvatarEditor.png"

local SettingsModule = Instance.new("Frame", game:GetService("CoreGui").TopBarApp.TopBarFrame.LeftFrame)
SettingsModule.Size = game:GetService("CoreGui").TopBarApp.TopBarFrame.LeftFrame.MenuIcon.Size
SettingsModule.Name = "SettingsModule"
SettingsModule.BackgroundTransparency = 1
SettingsModule.LayoutOrder = 2

local Background = game:GetService("CoreGui").TopBarApp.TopBarFrame.LeftFrame.MenuIcon.Background:clone()
Background.Parent = game:GetService("CoreGui").TopBarApp.TopBarFrame.LeftFrame.SettingsModule
Background.FlashingDot:Destroy()
Background.Icon.Image = "rbxasset://textures/ui/Settings/MenuBarIcons/GameSettingsTab.png"

SettingsModule.MouseEnter:Connect(function ()
    SettingsModule.Background.StateOverlay.ImageTransparency = 0.9
end)

SettingsModule.MouseLeave:Connect(function ()
    SettingsModule.Background.StateOverlay.ImageTransparency = 1
end)

local ScriptWritter = Instance.new("Frame", game:GetService("CoreGui").TopBarApp.TopBarFrame.LeftFrame)
ScriptWritter.Size = game:GetService("CoreGui").TopBarApp.TopBarFrame.LeftFrame.MenuIcon.Size
ScriptWritter.Name = "ScriptWritter"
ScriptWritter.BackgroundTransparency = 1
ScriptWritter.LayoutOrder = 2

Background = game:GetService("CoreGui").TopBarApp.TopBarFrame.LeftFrame.MenuIcon.Background:clone()
Background.Parent = game:GetService("CoreGui").TopBarApp.TopBarFrame.LeftFrame.ScriptWritter
Background.FlashingDot:Destroy()
Background.Icon.Image = "rbxasset://"..getsynasset("ScriptTool/Pictures/ScriptIcon.png")

ScriptWritter.MouseEnter:Connect(function ()
    ScriptWritter.Background.StateOverlay.ImageTransparency = 0.9
end)

ScriptWritter.MouseLeave:Connect(function ()
    ScriptWritter.Background.StateOverlay.ImageTransparency = 1
end)

local OpenAIChatGPT = Instance.new("Frame", game:GetService("CoreGui").TopBarApp.TopBarFrame.LeftFrame)
OpenAIChatGPT.Size = game:GetService("CoreGui").TopBarApp.TopBarFrame.LeftFrame.MenuIcon.Size
OpenAIChatGPT.Name = "OpenAIChatGPT"
OpenAIChatGPT.BackgroundTransparency = 1
OpenAIChatGPT.LayoutOrder = 2

Background = game:GetService("CoreGui").TopBarApp.TopBarFrame.LeftFrame.MenuIcon.Background:clone()
Background.Parent = game:GetService("CoreGui").TopBarApp.TopBarFrame.LeftFrame.OpenAIChatGPT
Background.FlashingDot:Destroy()
Background.Icon.Image = "rbxasset://"..getsynasset("ScriptTool/Pictures/OpenAIIcon.png")

OpenAIChatGPT.MouseEnter:Connect(function ()
    OpenAIChatGPT.Background.StateOverlay.ImageTransparency = 0.9
end)

OpenAIChatGPT.MouseLeave:Connect(function ()
    OpenAIChatGPT.Background.StateOverlay.ImageTransparency = 1
end)

local MenuSwap = Instance.new("Frame", game:GetService("CoreGui").TopBarApp.TopBarFrame.LeftFrame)
MenuSwap.Size = game:GetService("CoreGui").TopBarApp.TopBarFrame.LeftFrame.MenuIcon.Size
MenuSwap.Name = "MenuSwap"
MenuSwap.BackgroundTransparency = 1
MenuSwap.LayoutOrder = 0

Background = game:GetService("CoreGui").TopBarApp.TopBarFrame.LeftFrame.MenuIcon.Background:clone()
Background.Parent = game:GetService("CoreGui").TopBarApp.TopBarFrame.LeftFrame.MenuSwap
Background.FlashingDot:Destroy()
Background.Icon.Image = "rbxasset://textures/WindControl/ArrowDown.png"

local hovering = false

MenuSwap.MouseEnter:Connect(function ()
hovering = true
    MenuSwap.Background.StateOverlay.ImageTransparency = 0.9
end)

MenuSwap.MouseLeave:Connect(function ()
hovering = false
    MenuSwap.Background.StateOverlay.ImageTransparency = 1
end)

game:GetService('UserInputService').InputBegan:connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 and hovering then
        print("ge")
        local rotationTween = game:GetService("TweenService"):Create(MenuSwap.Background.Icon, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Rotation = MenuSwap.Background.Icon.Rotation + 180})rotationTween:Play()
        print(tonumber(string.sub(tostring(ImageLabel.Position.Y.Scale),1,5)))
        if tonumber(string.sub(tostring(ImageLabel.Position.Y.Scale),1,5)) == -0.03 then
            ImageLabel:TweenPosition(UDim2.new(0,0,-1.0750,0))
        else
            ImageLabel:TweenPosition(UDim2.new(0,0,-0.0356,0))
        end
    end
end)
