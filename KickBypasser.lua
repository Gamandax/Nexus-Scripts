local mt = getrawmetatable(game)
setreadonly(mt, false)

local oldNamecall = mt.__namecall
mt.__namecall = newcclosure(function(self, ...)
    local method = getnamecallmethod()
    if tostring(self) == tostring(game.Players.LocalPlayer) and method == "Kick" then
        warn("[Anti-Kick] Blocked Kick: ", ...)
        return nil
    end
    return oldNamecall(self, ...)
end)

setreadonly(mt, true)

pcall(function()
    game.StarterGui:SetCore("SendNotification", {
        Title = "✅ Kick Bypassed",
        Text = "You're protected from script kicks.",
        Duration = 6
    })
end)

-- Then Load 
loadstring(game:HttpGet("Put_Raw_Link_"))()
