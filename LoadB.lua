local mt = getrawmetatable(game)
setreadonly(mt,false)
local old = mt.__namecall
task.spawn(function()
    mt.__namecall = newcclosure(function(...)
        local method = getnamecallmethod()
        local args = {...}
        if tostring(method) == "FireServer" then
            if tostring(args[1]) == "RemoteEvent" then
                if tostring(args[2]) ~= "true" and tostring(args[2]) ~= "false" then
                    if _G.SaveSettings.AimbotSkill then
                        if _G.TargetPlayerAim ~= nil then
                            if tostring(typeof(args[2])) == "CFrame" then
                                args[2] = _G.TargetPlayerAim
                            elseif tostring(typeof(args[2])) == "Vector3" then
                                args[2] = _G.TargetPlayerAim.Position
                            end
                            return old(unpack(args))
                        end
                    end
                end
            end
        end 
        return old(...)
    end)
end)
local mt = getrawmetatable(game)
setreadonly(mt,false)
local old = mt.__namecall
task.spawn(function()
    mt.__namecall = newcclosure(function(...)
        local method = getnamecallmethod()
        local args = {...}
        if tostring(method) == "InvokeServer" then
            if tostring(args[1]) == "" then
                if tostring(args[2]) ~= "true" and tostring(args[2]) ~= "false" then
                    if _G.SaveSettings.AimbotSkill then
                        if _G.TargetPlayerAim ~= nil then
                            if tostring(typeof(args[3])) == "CFrame" then
                                args[3] = _G.TargetPlayerAim
                            elseif tostring(typeof(args[3])) == "Vector3" then
                                args[3] = _G.TargetPlayerAim.Position
                            end
                            return old(unpack(args))
                        end
                    end
                end
            end
        end 
        return old(...)
    end)
end)
local mt = getrawmetatable(game)
setreadonly(mt,false)
local old = mt.__namecall
task.spawn(function()
    mt.__namecall = newcclosure(function(...)
        local method = getnamecallmethod()
        local args = {...}
        if tostring(method) == "FireServer" then
            if tostring(args[1]) == "RemoteEvent" then
                if tostring(args[2]) ~= "true" and tostring(args[2]) ~= "false" then
                    if _G.SaveSettings.AutoFarmPlayer then
                        if PosCharacter ~= nil then
                            if tostring(typeof(args[2])) == "CFrame" then
                                args[2] = PosCharacter
                            elseif tostring(typeof(args[2])) == "Vector3" then
                                args[2] = PosCharacter.Position
                            end
                            return old(unpack(args))
                        end
                    end
                end
            end
        end 
        return old(...)
    end)
end)
local mt = getrawmetatable(game)
setreadonly(mt,false)
local old = mt.__namecall
task.spawn(function()
    mt.__namecall = newcclosure(function(...)
        local method = getnamecallmethod()
        local args = {...}
        if tostring(method) == "InvokeServer" then
            if tostring(args[1]) == "" then
                if tostring(args[2]) ~= "true" and tostring(args[2]) ~= "false" then
                    if _G.SaveSettings.AutoFarmPlayer then
                        if PosCharacter ~= nil then
                            if tostring(typeof(args[3])) == "CFrame" then
                                args[3] = PosCharacter
                            elseif tostring(typeof(args[3])) == "Vector3" then
                                args[3] = PosCharacter.Position
                            end
                            return old(unpack(args))
                        end
                    end
                end
            end
        end 
        return old(...)
    end)
end)
--[[local mt = getrawmetatable(game)
setreadonly(mt,false)
local old = mt.__namecall
task.spawn(function()
    mt.__namecall = newcclosure(function(...)
        local method = getnamecallmethod()
        local args = {...}
        if tostring(method) == "FireServer" then
            if tostring(args[1]) == "RemoteEvent" then
                if tostring(args[2]) ~= "true" and tostring(args[2]) ~= "false" then
                    if _G.SaveSettings.AutoFarmBounty then
                        if PosCharacterBounty ~= nil then
                            if tostring(typeof(args[2])) == "CFrame" then
                                args[2] = PosCharacterBounty
                            elseif tostring(typeof(args[2])) == "Vector3" then
                                args[2] = PosCharacterBounty.Position
                            end
                            return old(unpack(args))
                        end
                    end
                end
            end
        end 
        return old(...)
    end)
end)
local mt = getrawmetatable(game)
setreadonly(mt,false)
local old = mt.__namecall
task.spawn(function()
    mt.__namecall = newcclosure(function(...)
        local method = getnamecallmethod()
        local args = {...}
        if tostring(method) == "InvokeServer" then
            if tostring(args[1]) == "" then
                if tostring(args[2]) ~= "true" and tostring(args[2]) ~= "false" then
                    if _G.SaveSettings.AutoFarmBounty then
                        if PosCharacterBounty ~= nil then
                            if tostring(typeof(args[3])) == "CFrame" then
                                args[3] = PosCharacterBounty
                            elseif tostring(typeof(args[3])) == "Vector3" then
                                args[3] = PosCharacterBounty.Position
                            end
                            return old(unpack(args))
                        end
                    end
                end
            end
        end 
        return old(...)
    end)
end)]]
task.spawn(
    function()
        local a = getrawmetatable(game)
        local b = a.__namecall
        setreadonly(a, false)
        a.__namecall =
            newcclosure(
            function(...)
                local c = getnamecallmethod()
                local d = {...}
                if tostring(c) == "FireServer" then
                    if tostring(d[1]) == "RemoteEvent" then
                        if tostring(d[2]) ~= "true" and tostring(d[2]) ~= "false" then
                            if UseSkill then
                                if PosMonMasteryFruit ~= nil and (_G.SaveSettings.AutoFarmFruitsMastery or _G.SaveSettings.AutoFarmBoneMasteryFruits or _G.SaveSettings.AutoFarmCakePiratesMasteryFruits) then
                                    if tostring(typeof(d[2])) == "CFrame" then
                                        d[2] = PosMonMasteryFruit
                                    elseif tostring(typeof(d[2])) == "Vector3" then
                                        d[2] = PosMonMasteryFruit.Position
                                    end
                                    return b(unpack(d))
                                end
                            end
                        end
                    end
                end
                return b(...)
            end
        )
    end
)
task.spawn(
    function()
        local a = getrawmetatable(game)
        local b = a.__namecall
        setreadonly(a, false)
        a.__namecall =
            newcclosure(
            function(...)
                local c = getnamecallmethod()
                local d = {...}
                if tostring(c) == "InvokeServer" then
                    if tostring(d[1]) == "" then
                        if tostring(d[2]) ~= "true" and tostring(d[2]) ~= "false" then
                            if UseSkill then
                                if PosMonMasteryFruit ~= nil and (_G.SaveSettings.AutoFarmFruitsMastery or _G.SaveSettings.AutoFarmBoneMasteryFruits or _G.SaveSettings.AutoFarmCakePiratesMasteryGun) then
                                    if tostring(typeof(d[3])) == "CFrame" then
                                        d[3] = PosMonMasteryFruit
                                    elseif tostring(typeof(d[3])) == "Vector3" then
                                        d[3] = PosMonMasteryFruit.Position
                                    end
                                    return b(unpack(d))
                                end
                            end
                        end
                    end
                end
                return b(...)
            end
        )
    end
)
task.spawn(
    function()
        local a = getrawmetatable(game)
        local b = a.__namecall
        setreadonly(a, false)
        a.__namecall =
            newcclosure(
            function(...)
                local c = getnamecallmethod()
                local d = {...}
                if tostring(c) == "FireServer" then
                    if tostring(d[1]) == "RemoteEvent" then
                        if tostring(d[2]) ~= "true" and tostring(d[2]) ~= "false" then
                            if USEGUN then
                                if PosMonMasteryGun ~= nil and (_G.SaveSettings.AutoFarmGunMastery or _G.SaveSettings.AutoFarmBoneMasteryGun) then
                                    if tostring(typeof(d[2])) == "CFrame" then
                                        d[2] = PosMonMasteryGun
                                    elseif tostring(typeof(d[2])) == "Vector3" then
                                        d[2] = PosMonMasteryGun.Position
                                    end
                                    return b(unpack(d))
                                end
                            end
                        end
                    end
                end
                return b(...)
            end
        )
    end
)
task.spawn(
    function()
        local a = getrawmetatable(game)
        local b = a.__namecall
        setreadonly(a, false)
        a.__namecall =
            newcclosure(
            function(...)
                local c = getnamecallmethod()
                local d = {...}
                if tostring(c) == "InvokeServer" then
                    if tostring(d[1]) == "" then
                        if tostring(d[2]) ~= "true" and tostring(d[2]) ~= "false" then
                            if USEGUN then
                                if PosMonMasteryGun ~= nil and (_G.SaveSettings.AutoFarmGunMastery or _G.SaveSettings.AutoFarmBoneMasteryGun) then
                                    if tostring(typeof(d[3])) == "CFrame" then
                                        d[3] = PosMonMasteryGun
                                    elseif tostring(typeof(d[3])) == "Vector3" then
                                        d[3] = PosMonMasteryGun.Position
                                    end
                                    return b(unpack(d))
                                end
                            end
                        end
                    end
                end
                return b(...)
            end
        )
    end
)
task.spawn(
    function()
        local a = getrawmetatable(game)
        local b = a.__namecall
        setreadonly(a, false)
        a.__namecall =
            newcclosure(
            function(...)
                local c = getnamecallmethod()
                local d = {...}
                if tostring(c) == "FireServer" then
                    if tostring(d[1]) == "RemoteEvent" then
                        if tostring(d[2]) ~= "true" and tostring(d[2]) ~= "false" then
                            if StartSub then
                                if SeaBeastPos ~= nil and _G.SaveSettings.AutoFinishTrail then
                                    if tostring(typeof(d[2])) == "CFrame" then
                                        d[2] = SeaBeastPos
                                    elseif tostring(typeof(d[2])) == "Vector3" then
                                        d[2] = SeaBeastPos.Position
                                    end
                                    return b(unpack(d))
                                end
                            end
                        end
                    end
                end
                return b(...)
            end
        )
    end
)
task.spawn(
    function()
        local a = getrawmetatable(game)
        local b = a.__namecall
        setreadonly(a, false)
        a.__namecall =
            newcclosure(
            function(...)
                local c = getnamecallmethod()
                local d = {...}
                if tostring(c) == "InvokeServer" then
                    if tostring(d[1]) == "" then
                        if tostring(d[2]) ~= "true" and tostring(d[2]) ~= "false" then
                            if StartSub then
                                if SeaBeastPos ~= nil and _G.SaveSettings.AutoFinishTrail then
                                    if tostring(typeof(d[3])) == "CFrame" then
                                        d[3] = SeaBeastPos
                                    elseif tostring(typeof(d[3])) == "Vector3" then
                                        d[3] = SeaBeastPos.Position
                                    end
                                    return b(unpack(d))
                                end
                            end
                        end
                    end
                end
                return b(...)
            end
        )
    end
)
task.spawn(
    function()
        local a = getrawmetatable(game)
        local b = a.__namecall
        setreadonly(a, false)
        a.__namecall =
            newcclosure(
            function(...)
                local c = getnamecallmethod()
                local d = {...}
                if tostring(c) == "FireServer" then
                    if tostring(d[1]) == "RemoteEvent" then
                        if tostring(d[2]) ~= "true" and tostring(d[2]) ~= "false" then
                            if FindSeabeast then
                                if SeaBeastPos ~= nil and _G.SaveSettings.AutoFarmSeaBeasts then
                                    if tostring(typeof(d[2])) == "CFrame" then
                                        d[2] = SeaBeastPos
                                    elseif tostring(typeof(d[2])) == "Vector3" then
                                        d[2] = SeaBeastPos.Position
                                    end
                                    return b(unpack(d))
                                end
                            end
                        end
                    end
                end
                return b(...)
            end
        )
    end
)
task.spawn(
    function()
        local a = getrawmetatable(game)
        local b = a.__namecall
        setreadonly(a, false)
        a.__namecall =
            newcclosure(
            function(...)
                local c = getnamecallmethod()
                local d = {...}
                if tostring(c) == "InvokeServer" then
                    if tostring(d[1]) == "" then
                        if tostring(d[2]) ~= "true" and tostring(d[2]) ~= "false" then
                            if FindSeabeast then
                                if SeaBeastPos ~= nil and _G.SaveSettings.AutoFarmSeaBeasts then
                                    if tostring(typeof(d[3])) == "CFrame" then
                                        d[3] = SeaBeastPos
                                    elseif tostring(typeof(d[3])) == "Vector3" then
                                        d[3] = SeaBeastPos.Position
                                    end
                                    return b(unpack(d))
                                end
                            end
                        end
                    end
                end
                return b(...)
            end
        )
    end
)
