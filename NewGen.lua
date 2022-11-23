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
                                    if tostring(typeof(args[2])) == "CFrame" then
                                        d[2] = PosMonMasteryFruit
                                    elseif tostring(typeof(args[2])) == "Vector3" then
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
                            if USEGUN then
                                if PosMonMasteryGun ~= nil and SaveSettings["Main"]["AutoFarmGunMastery"] then
                                    if tostring(typeof(args[2])) == "CFrame" then
                                        d[2] = PosMonMasteryGun
                                    elseif tostring(typeof(args[2])) == "Vector3" then
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
                                if tostring(typeof(args[2])) == "CFrame" then
                                    d[2] = SeaBeastPos
                                elseif tostring(typeof(args[2])) == "Vector3" then
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
                            if SaveSettings["Combat"]["Aimbot_Skill_Around"] then
                                if tostring(typeof(args[2])) == "CFrame" then
                                    d[2] = AimbotNearestSelectPosition
                                elseif tostring(typeof(args[2])) == "Vector3" then
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
                                    (SaveSettings["Combat"]["Aimbot_Gun"] or SaveSettings["Combat"]["Aimbot_Skill"])
                             then
                                if tostring(typeof(args[2])) == "CFrame" then
                                    d[2] = _G.CharacterAimBot.Character.HumanoidRootPart.CFrame
                                elseif tostring(typeof(args[2])) == "Vector3" then
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
                                if tostring(typeof(args[2])) == "CFrame" then
                                    d[2] = PosMonDoughtOpenDoorDF
                                elseif tostring(typeof(args[2])) == "Vector3" then
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
                                d[2] = PosMonDoughtOpenDoorGun.Position
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
