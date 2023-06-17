_G.ScriptWritterBolean = true

X = _G.ScreenGUII.AbsoluteSize.x
Y = _G.ScreenGUII.AbsoluteSize.y

local ScriptWritter = Instance.new("ImageLabel",_G.ScreenGUII)
ScriptWritter.Size = UDim2.new(0, X, 0, Y + 50)
ScriptWritter.BackgroundColor3 = Color3.new(0,0,0)
ScriptWritter.Position = UDim2.new(0, 0, 0, -50)
ScriptWritter.Image = "rbxasset://"..getcustomasset("ScriptTool/Pictures/ScriptWritterImage.jpg")

local ScrollingFrameScript = Instance.new("ScrollingFrame",ScriptWritter)
ScrollingFrameScript.Size = UDim2.new(0, X, 0, Y)
ScrollingFrameScript.Position = UDim2.new(0, 0, 0, 50)
ScrollingFrameScript.ScrollBarThickness = 0
ScrollingFrameScript.CanvasSize = UDim2.new(0,0,0,0)
ScrollingFrameScript.BorderSizePixel = 0
ScrollingFrameScript.BackgroundTransparency = 1

NumberLine = Instance.new("TextLabel", ScrollingFrameScript)
NumberLine.Font = Enum.Font.Code -- code/arcade
NumberLine.TextColor3 = Color3.fromRGB(255, 0, 0)
NumberLine.Text = "1"
NumberLine.TextSize = 16
NumberLine.BackgroundTransparency = 1
NumberLine.TextXAlignment = Enum.TextXAlignment.Right
NumberLine.Size = UDim2.new(0,NumberLine.TextBounds.X,0,NumberLine.TextBounds.Y)

TextBoxScriptWritter = Instance.new("TextBox", ScrollingFrameScript)
TextBoxScriptWritter.Text = "print(\"Hello World\")"
TextBoxScriptWritter.TextColor3 = Color3.fromRGB(255, 0, 0)
TextBoxScriptWritter.TextSize = 16
TextBoxScriptWritter.TextXAlignment = Enum.TextXAlignment.Left
TextBoxScriptWritter.Font = Enum.Font.Code
TextBoxScriptWritter.Size = UDim2.new(0,_G.ScreenGUII.AbsoluteSize.X + TextBoxScriptWritter.TextBounds.X,0,TextBoxScriptWritter.TextBounds.Y)
TextBoxScriptWritter.Position = UDim2.new(0,NumberLine.TextBounds.X,0,0)
TextBoxScriptWritter.BackgroundTransparency = 1
TextBoxScriptWritter.ClearTextOnFocus = false
TextBoxScriptWritter.MultiLine = true

TextBoxScriptWritter:GetPropertyChangedSignal("Text"):Connect(function()
    print(NumberLine.Text,"textbound",TextBoxScriptWritter.TextBounds)
    for i = 1, math.floor(TextBoxScriptWritter.TextBounds.Y / 16) do
        NumberLine.Text = NumberLine.Text..tostring(i).."\n"
    end
    NumberLine.Size = UDim2.new(0,NumberLine.TextBounds.x,0,NumberLine.TextBounds.y)
    TextBoxScriptWritter.Size = UDim2.new(0,_G.ScreenGUII.AbsoluteSize.X + TextBoxScriptWritter.TextBounds.X,0,TextBoxScriptWritter.TextBounds.Y)
    TextBoxScriptWritter.Position = UDim2.new(0,NumberLine.TextBounds.X,0,0)
    ScrollingFrameScript.CanvasSize = UDim2.new(0,NumberLine.TextBounds.x,1,0)
end)

ScrollingFrameScript.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        TextBoxScriptWritter:CaptureFocus()
    end
end)

game:GetService('UserInputService').InputBegan:connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        if _G.hoveringScriptWritter then
            ScriptWritter.Visible = false
        end
    end
end)
