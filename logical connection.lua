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
ImageLabel.Position = UDim2.new(0, 0, -0.0356, 0)
ImageLabel.Image = "rbxasset://textures/AvatarEditorImages/AvatarEditor.png"

local function onHover(Fname)
    Fname.Background.StateOverlay.ImageTransparency = 0.9
end

local function onLeave(Fname)
    Fname.Background.StateOverlay.ImageTransparency = 1
end

local SettingsModule = Instance.new("Frame", game:GetService("CoreGui").TopBarApp.TopBarFrame.LeftFrame)
SettingsModule.Size = game:GetService("CoreGui").TopBarApp.TopBarFrame.LeftFrame.MenuIcon.Size
SettingsModule.Name = "SettingsModule"
SettingsModule.BackgroundTransparency = 1
SettingsModule.LayoutOrder = 2

local clone = game:GetService("CoreGui").TopBarApp.TopBarFrame.LeftFrame.MenuIcon.Background:clone()
clone.Parent = game:GetService("CoreGui").TopBarApp.TopBarFrame.LeftFrame.SettingsModule
clone.FlashingDot:Destroy()
clone.Icon.Image = "rbxasset://textures/ui/Settings/MenuBarIcons/GameSettingsTab.png"

SettingsModule.MouseEnter:Connect(onHover(SettingsModule))
SettingsModule.MouseLeave:Connect(onLeave(SettingsModule))

local ScriptWritter = Instance.new("Frame", game:GetService("CoreGui").TopBarApp.TopBarFrame.LeftFrame)
ScriptWritter.Size = game:GetService("CoreGui").TopBarApp.TopBarFrame.LeftFrame.MenuIcon.Size
ScriptWritter.Name = "ScriptWritter"
ScriptWritter.BackgroundTransparency = 1
ScriptWritter.LayoutOrder = 2

clone = game:GetService("CoreGui").TopBarApp.TopBarFrame.LeftFrame.MenuIcon.Background:clone()
clone.Parent = game:GetService("CoreGui").TopBarApp.TopBarFrame.LeftFrame.ScriptWritter
clone.FlashingDot:Destroy()
clone.Icon.Image = "rbxasset://"..getsynasset("ScriptTool/Pictures/ScriptIcon.png")

ScriptWritter.MouseEnter:Connect(onHover(ScriptWritter))
ScriptWritter.MouseLeave:Connect(onLeave(ScriptWritter))

local OpenAIChatGPT = Instance.new("Frame", game:GetService("CoreGui").TopBarApp.TopBarFrame.LeftFrame)
OpenAIChatGPT.Size = game:GetService("CoreGui").TopBarApp.TopBarFrame.LeftFrame.MenuIcon.Size
OpenAIChatGPT.Name = "OpenAIChatGPT"
OpenAIChatGPT.BackgroundTransparency = 1
OpenAIChatGPT.LayoutOrder = 2

clone = game:GetService("CoreGui").TopBarApp.TopBarFrame.LeftFrame.MenuIcon.Background:clone()
clone.Parent = game:GetService("CoreGui").TopBarApp.TopBarFrame.LeftFrame.OpenAIChatGPT
clone.FlashingDot:Destroy()
clone.Icon.Image = "rbxasset://"..getsynasset("ScriptTool/Pictures/OpenAIIcon.png")

OpenAIChatGPT.MouseEnter:Connect(onHover(OpenAIChatGPT))
OpenAIChatGPT.MouseLeave:Connect(onLeave(OpenAIChatGPT))

local MenuSwap = Instance.new("Frame", game:GetService("CoreGui").TopBarApp.TopBarFrame.LeftFrame)
MenuSwap.Size = game:GetService("CoreGui").TopBarApp.TopBarFrame.LeftFrame.MenuIcon.Size
MenuSwap.Name = "MenuSwap"
MenuSwap.BackgroundTransparency = 1
MenuSwap.LayoutOrder = 0

clone = game:GetService("CoreGui").TopBarApp.TopBarFrame.LeftFrame.MenuIcon.Background:clone()
clone.Parent = game:GetService("CoreGui").TopBarApp.TopBarFrame.LeftFrame.MenuSwap
clone.FlashingDot:Destroy()
clone.Icon.Image = "rbxasset://textures/WindControl/ArrowDown.png"

MenuSwap.MouseEnter:Connect(onHover(MenuSwap))
MenuSwap.MouseLeave:Connect(onLeave(MenuSwap))
