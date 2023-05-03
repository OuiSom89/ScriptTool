while not game:IsLoaded() or not game:GetService("CoreGui") or not game:GetService("Players").LocalPlayer or not game:GetService("Players").LocalPlayer.PlayerGui do wait()end

local lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/OuiSom89/New-file-funciton/main/New-file-funciton.lua"))()

local function SynRequest(imageUrl)
    local response = syn.request({
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
    lib.ImportPicture("ScriptTool/Pictures/OpenAIIcon.png",SynRequest("https://raw.githubusercontent.com/OuiSom89/ScriptTool/main/Pictures/OpenAIIcon.png"))
    lib.ImportPicture("ScriptTool/Pictures/ScriptIcon.png",SynRequest("https://raw.githubusercontent.com/OuiSom89/ScriptTool/main/Pictures/_ScriptIcon.png"))
    lib.ImportPicture("ScriptTool/Pictures/ScriptWritterImage.jpg",SynRequest("https://github.com/OuiSom89/ScriptTool/blob/main/Pictures/ScriptWritterImage.jpg"))
    writefile("ScriptTool/V1.txt","")
end

if isfolder("ScriptTool") then
    if not isfile("ScriptTool/V1.txt") then
        InitFiles()
    end
else
    InitFiles()
end

loadstring(game:HttpGet("https://raw.githubusercontent.com/OuiSom89/ScriptTool/main/logical%20connection.lua"))()
