
local xyi = true
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/ionlyusegithubformcmods/1-Line-Scripts/main/Mobile%20Friendly%20Orion')))()
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local LocalPlayer = game:GetService("Players").LocalPlayer
local Mouse = LocalPlayer:GetMouse()
local HttpService = game:GetService("HttpService")

local Window = OrionLib:MakeWindow({Name = "Heaven hub", HidePremium = false, SaveConfig = true})
local Tab = Window:MakeTab({Name = "Главная", Icon = "rbxassetid://90323304631053"})
local ex = false
local co = false
local used = true
local sexxx = false
local first = true
Tab:AddButton({
	Name = "Работает только для Heaven Stands",
	Callback = function()
  	end    
})

Tab:AddButton({
	Name = "Включить Infinite Yield",
	Callback = function()
OrionLib:MakeNotification({
	Name = "Реквариваем Infinite Yield",
	Content = "Working!",
	Image = "rbxassetid://18579698048",
	Time = 5
})
      		loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
  	end    
})

Tab:AddButton({
	Name = "Включить anti-afk",
	Callback = function()
OrionLib:MakeNotification({
	Name = "Реквариваем Anti-afk",
	Content = "Working!",
	Image = "rbxassetid://18579698048",
	Time = 5
})
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/hassanxzayn-lua/Anti-afk/main/antiafkbyhassanxzyn"))()
  	end    
})
local ez =Tab:AddToggle({
    Name = "Фармилка боксиков",
    Default = ex,
    Callback = function(value)
        ex = value
    end
})
task.spawn(function()
task.wait(1)
OrionLib:MakeNotification({
	Name = "Made by gugugagas team",
	Content = "Working!",
	Image = "rbxassetid://18641615063",
	Time = 5
})
	end)
    local rootPart = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
task.spawn(function()
    while task.wait() do
if ex then
for i, parts in pairs(game:GetService("Workspace").Map.spawnPoints.Box:GetChildren()) do
if parts:IsA("BasePart") then
for i, v in pairs(parts:GetDescendants()) do
    if v:IsA("ProximityPrompt") then 
local baseCFrame = v.Parent.CFrame
task.wait(0.35)
local offset = CFrame.new(0, 0, 0)
local teleportCFrame = baseCFrame * offset 
        rootPart.CFrame = teleportCFrame
task.wait(0.15)
        fireproximityprompt(v)
    end 
end
end
end
			end
           if ex == false then

			end
		end
end)

OrionLib:Init()
