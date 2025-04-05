-- GUI Fisch Merah by Elz - FINAL FIXED VERSION

local OrionLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source"))()
local Window = OrionLib:MakeWindow({
    Name = "Fisch GUI Merah",
    HidePremium = false,
    SaveConfig = false,
    ConfigFolder = "FischConfig"
})

local MainTab = Window:MakeTab({
    Name = "Main",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

MainTab:AddLabel("Script by Elz - Red Fisch UI")

-- Remote references (DISINI ELS FIX-IN BIAR GAK ERROR)
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Remotes = ReplicatedStorage:WaitForChild("Remotes")

-- Auto Cast
local autoCast = false
MainTab:AddToggle({
    Name = "Auto Cast",
    Default = false,
    Callback = function(value)
        autoCast = value
        while autoCast do
            pcall(function()
                Remotes:FindFirstChild("Cast"):FireServer()
            end)
            wait(2)
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
            pcall(function()
                Remotes:FindFirstChild("Shake"):FireServer()
            end)
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
            pcall(function()
                Remotes:FindFirstChild("Reel"):FireServer()
            end)
            wait(1)
        end
    end
})

OrionLib:Init()
