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
    lib.ImportPicture("ScriptTool/Pictures/OpenAIIcon",SynRequest("https://raw.githubusercontent.com/OuiSom89/ScriptTool/main/Pictures/OpenAIIcon.png"))
    lib.ImportPicture("ScriptTool/Pictures/ScriptIcon",SynRequest("https://raw.githubusercontent.com/OuiSom89/ScriptTool/main/Pictures/_ScriptIcon.png"))
    writefile("ScriptTool/V1.txt","")
end

if isfolder("ScriptTool") then
    if not isfile("ScriptTool/V1.txt") then
        InitFiles()
    end
else
    InitFiles()
end
