spawn(
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
                                if PosMonMasteryFruit ~= nil and SaveSettings["Main"]["AutoFarmFruitMastery"] then
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
spawn(
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
                                if SeaBeastPos ~= nil and SaveSettings["Main"]["AutoCompleteTrail"] then
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

spawn(
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
                                if SeaBeastPos ~= nil and SaveSettings["Main"]["AutoSeaBeast"] then
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

spawn(
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
                                if PosMonMasteryGun ~= nil and SaveSettings["Main"]["AutoFarmGunMastery"] then
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
spawn(
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
                            if SaveSettings["Main"]["AutoSeaBeast"] and FindSeabeast then
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
                return b(...)
            end
        )
    end
)
spawn(
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
                            if SaveSettings["Combat"]["Aimbot_Skill_Around"] and AimbotNearestSelectPosition then
                                if tostring(typeof(d[2])) == "CFrame" then
                                    d[2] = AimbotNearestSelectPosition
                                elseif tostring(typeof(d[2])) == "Vector3" then
                                    d[2] = AimbotNearestSelectPosition.Position
                                end
                                return b(unpack(d))
                            end
                        end
                    end
                end
                return b(...)
            end
        )
    end
)
spawn(
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
                            if
                                SaveSettings["Combat"]["FovEnabled"] and
                                    (SaveSettings["Combat"]["Aimbot_Gun"] or SaveSettings["Combat"]["Aimbot_Skill"]) and _G.CharacterAimBot.Character.HumanoidRootPart
                             then
                                if tostring(typeof(d[2])) == "CFrame" then
                                    d[2] = _G.CharacterAimBot.Character.HumanoidRootPart.CFrame
                                elseif tostring(typeof(d[2])) == "Vector3" then
                                    d[2] = _G.CharacterAimBot.Character.HumanoidRootPart.Position
                                end
                                return b(unpack(d))
                            end
                        end
                    end
                end
                return b(...)
            end
        )
    end
)
spawn(
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
                            if
                                SaveSettings["Combat"]["FovEnabled"] and
                                    (SaveSettings["Combat"]["Aimbot_Gun"] or SaveSettings["Combat"]["Aimbot_Skill"]) and _G.CharacterAimBot.Character.HumanoidRootPart
                             then
                                if tostring(typeof(d[2])) == "CFrame" then
                                    d[2] = _G.CharacterAimBot.Character.HumanoidRootPart.CFrame
                                elseif tostring(typeof(d[2])) == "Vector3" then
                                    d[2] = _G.CharacterAimBot.Character.HumanoidRootPart.Position
                                end
                                return b(unpack(d))
                            end
                        end
                    end
                end
                return b(...)
            end
        )
    end
)
spawn(
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
                            if SaveSettings["Main"]["DFMasteryCake"] and MagnetDoughtDF then
                                if tostring(typeof(d[2])) == "CFrame" then
                                    d[2] = PosMonDoughtOpenDoorDF
                                elseif tostring(typeof(d[2])) == "Vector3" then
                                    d[2] = PosMonDoughtOpenDoorDF.Position
                                end
                                return b(unpack(d))
                            end
                        end
                    end
                end
                return b(...)
            end
        )
    end
)
spawn(
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
                            if SaveSettings["Main"]["GunMasteryCake"] and MagnetDoughtGun then
                                if tostring(typeof(d[2])) == "CFrame" then
                                    d[2] = PosMonDoughtOpenDoorGun
                                elseif tostring(typeof(d[2])) == "Vector3" then
                                    d[2] = PosMonDoughtOpenDoorGun.Position
                                end
                                return b(unpack(d))
                            end
                        end
                    end
                end
                return b(...)
            end
        )
    end
)
spawn(
    function()
        local gg = getrawmetatable(game)
        local old = gg.__namecall
        setreadonly(gg,false)
        gg.__namecall = newcclosure(function(...)
            local method = getnamecallmethod()
            local args = {...}
            if tostring(method) == "InvokeServer" then
                if tostring(args[1]) == "" then
                    if tostring(args[2]) ~= "true" and tostring(args[2]) ~= "false" then
                        if SaveSettings["Combat"]["Aimbot_Skill_Around"] and AimbotNearestSelectPosition then
                            if tostring(typeof(args[3])) == "CFrame" then
                                args[3] = AimbotNearestSelectPosition
                            elseif tostring(typeof(args[3])) == "Vector3" then
                                args[3] = AimbotNearestSelectPosition.Position
                            end
                            return old(unpack(args))
                        end
                    end
                end
            end
            return old(...)
        end)
    end
)
spawn(
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
                            if
                                SaveSettings["Combat"]["FovEnabled"] and
                                    (SaveSettings["Combat"]["Aimbot_Gun"] or SaveSettings["Combat"]["Aimbot_Skill"]) and _G.CharacterAimBot.Character.HumanoidRootPart
                            and allowed_aimbot then
                                if tostring(typeof(d[3])) == "CFrame" then
                                    d[3] = _G.CharacterAimBot.Character.HumanoidRootPart.CFrame
                                elseif tostring(typeof(d[3])) == "Vector3" then
                                    d[3] = _G.CharacterAimBot.Character.HumanoidRootPart.Position
                                end
                                return b(unpack(d))
                            end
                        end
                    end
                end
                return b(...)
            end
        )
    end
)
task.spawn(function()
    while true do wait()
        pcall(function()
            if not game:GetService("CoreGui").NINONOOB.Main.Top.NameHub.Text:find("Maru") then
                while true do end
            end
        end)
    end
end)
