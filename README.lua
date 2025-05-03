local plr = game.Players.LocalPlayer
local function fireproximityprompt(Obj, Amount, Skip)
    if Obj.ClassName == "ProximityPrompt" then 
        Amount = Amount or 1
        local PromptTime = Obj.HoldDuration
        if Skip then 
            Obj.HoldDuration = 0
        end
        for i = 1, Amount do 
            Obj:InputHoldBegin()
            if not Skip then 
                wait(Obj.HoldDuration)
            end
            Obj:InputHoldEnd()
        end
        Obj.HoldDuration = PromptTime
    else 
        error("userdata<ProximityPrompt> expected")
    end
end
for i, parts in pairs(game:GetService("Workspace").Map.spawnPoints.Box:GetChildren()) do
if parts:IsA("BasePart") then
for i, v in pairs(parts:GetDescendants()) do

    if v:IsA("ProximityPrompt") then 
    game.Players.LocalPlayer.Character.Torso.CFrame = v.Parent.CFrame
        fireproximityprompt(v,2,false)
    end 
end
end
end
