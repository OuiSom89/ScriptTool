while not game:IsLoaded() or not game:GetService("CoreGui") or not game:GetService("Players").LocalPlayer or not game:GetService("Players").LocalPlayer.PlayerGui do wait()end

local lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/OuiSom89/New-file-funciton/main/New-file-funciton.lua"))()

_G.ScriptWritterBolean = false

local function Request(imageUrl)
    local response = request({
        Url = imageUrl,
        Method = "GET"
    })
    return response.Body
end

local function InitFiles()
    print(isfolder("ScriptTool"))
    if isfolder("ScriptTool") then
        delfolder("ScriptTool")
    end
    makefolder("ScriptTool")
    makefolder("ScriptTool/Pictures")
    lib.ImportPicture("ScriptTool/Pictures/OpenAIIcon.png",Request("https://raw.githubusercontent.com/OuiSom89/ScriptTool/main/Pictures/OpenAIIcon.png"))
    task.wait()
    lib.ImportPicture("ScriptTool/Pictures/ScriptIcon.png",Request("https://raw.githubusercontent.com/OuiSom89/ScriptTool/main/Pictures/_ScriptIcon.png"))
    task.wait()
    lib.ImportPicture("ScriptTool/Pictures/ScriptWritter.png",Request("https://github.com/OuiSom89/ScriptTool/blob/main/Pictures/ScriptWritter.png"))
    task.wait()
    writefile("ScriptTool/V1.txt","")
end

if isfolder("ScriptTool") then
    if not isfile("ScriptTool/V1.txt") then
        InitFiles()
    end
else
    InitFiles()
end

_G.ScreenGUII = Instance.new("ScreenGui", game:GetService("Players").LocalPlayer.PlayerGui)

X = _G.ScreenGUII.AbsoluteSize.x
Y = _G.ScreenGUII.AbsoluteSize.y

local ImageLabel = Instance.new("ImageLabel",_G.ScreenGUII)
ImageLabel.Size = UDim2.new(0, X, 0, Y + 50)
ImageLabel.BackgroundColor3 = Color3.new(0,0,0)
ImageLabel.Position = UDim2.new(0, 0, 0, -50)
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

local hoveringSettingsModule = false

SettingsModule.MouseEnter:Connect(function ()
    _G.overingSettingsModule = true
    SettingsModule.Background.StateOverlay.ImageTransparency = 0.9
end)

SettingsModule.MouseLeave:Connect(function ()
    _G.overingSettingsModule = false
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
Background.Icon.Image = "rbxasset://"..getcustomasset("ScriptTool/Pictures/ScriptIcon.png")

local hoveringScriptWritter = false

ScriptWritter.MouseEnter:Connect(function ()
    _G.hoveringScriptWritter = true
    ScriptWritter.Background.StateOverlay.ImageTransparency = 0.9
end)

ScriptWritter.MouseLeave:Connect(function ()
    _G.hoveringScriptWritter = false
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
Background.Icon.Image = "rbxasset://"..getcustomasset("ScriptTool/Pictures/OpenAIIcon.png")

local hoveringOpenAIChatGPT = false

OpenAIChatGPT.MouseEnter:Connect(function ()
    _G.hoveringOpenAIChatGPT = true
    OpenAIChatGPT.Background.StateOverlay.ImageTransparency = 0.9
end)

OpenAIChatGPT.MouseLeave:Connect(function ()
    _G.hoveringOpenAIChatGPT = false
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

local hoveringMenuSwap = false

MenuSwap.MouseEnter:Connect(function ()
    _G.hoveringMenuSwap = true
    MenuSwap.Background.StateOverlay.ImageTransparency = 0.9
end)

MenuSwap.MouseLeave:Connect(function ()
    _G.hoveringMenuSwap = false
    MenuSwap.Background.StateOverlay.ImageTransparency = 1
end)

local MenuSwapBolean = true

game:GetService('UserInputService').InputBegan:connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        if _G.hoveringMenuSwap and MenuSwapBolean then
            MenuSwapBolean = false
            local rotationTween = game:GetService("TweenService"):Create(MenuSwap.Background.Icon, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Rotation = MenuSwap.Background.Icon.Rotation + 180})rotationTween:Play()
            if ImageLabel.AbsolutePosition.Y == -50 then
                local PositionTween = game:GetService("TweenService"):Create(ImageLabel, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Position = UDim2.new(0,0,0,-100-Y)})PositionTween:Play()
            else
                local PositionTween = game:GetService("TweenService"):Create(ImageLabel, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Position = UDim2.new(0,0,0,-50)})PositionTween:Play()
            end
            wait(0.5)
            MenuSwapBolean = true
        elseif _G.hoveringOpenAIChatGPT and not _G.OpenAIChatGPTBolean then
            loadstring(game:HttpGet("https://raw.githubusercontent.com/OuiSom89/ScriptTool/main/Modules/OpenAIChatGPT.lua"))()
        elseif _G.hoveringScriptWritter and not _G.ScriptWritterBolean then
            loadstring(game:HttpGet("https://raw.githubusercontent.com/OuiSom89/ScriptTool/main/Modules/ScriptWritter.lua"))()
        elseif _G.hoveringScriptWritter and not _G.ScriptWritter.Visible then
            _G.ScriptWritter.Visible = true
        elseif _G.overingSettingsModule and not _G.SettingsModuleBolean then
            loadstring(game:HttpGet("https://raw.githubusercontent.com/OuiSom89/ScriptTool/main/Modules/SettingsModule.lua"))()
        end
    end
end)
