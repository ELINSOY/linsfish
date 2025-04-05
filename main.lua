-- GUI Fisch Merah by Elz

-- Inisialisasi GUI
local OrionLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source"))()
local Window = OrionLib:MakeWindow({
    Name = "Fisch GUI Merah",
    HidePremium = false,
    SaveConfig = false,
    ConfigFolder = "FischConfig"
})

-- Tab Utama
local MainTab = Window:MakeTab({
    Name = "Main",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

-- Auto Cast
local autoCast = false
MainTab:AddToggle({
    Name = "Auto Cast",
    Default = false,
    Callback = function(value)
        autoCast = value
        while autoCast do
            -- Perintah Auto Cast di sini
            wait(1)
        end
    end
})

-- Auto Shake
local autoShake = false
MainTab:AddToggle({
    Name = "Auto Shake",
    Default = false,
    Callback = function(value)
        autoShake = value
        while autoShake do
            -- Perintah Auto Shake di sini
            wait(1)
        end
    end
})

-- Auto Reel
local autoReel = false
MainTab:AddToggle({
    Name = "Auto Reel",
    Default = false,
    Callback = function(value)
        autoReel = value
        while autoReel do
            -- Perintah Auto Reel di sini
            wait(1)
        end
    end
})

-- Selesai
OrionLib:Init()
