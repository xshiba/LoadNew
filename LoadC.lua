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
                    if UseSkill then
                        if PosMonMasteryFruit ~= nil and (_G.SaveSettings.AutoFarmFruitsMastery or _G.SaveSettings.AutoFarmBoneMasteryFruits or _G.SaveSettings.AutoFarmCakePiratesMasteryFruits) then
                            if tostring(typeof(args[2])) == "CFrame" then
                                args[2] = PosMonMasteryFruit
                            args tostring(typeof(args[2])) == "Vector3" then
                                args[2] = PosMonMasteryFruit.Position
                            end
                            return old(unpack(args))
                        end
                    end
                    if USEGUN then
                        if PosMonMasteryGun ~= nil and (_G.SaveSettings.AutoFarmGunMastery or _G.SaveSettings.AutoFarmBoneMasteryGun) then
                            if tostring(typeof(d[2])) == "CFrame" then
                                d[2] = PosMonMasteryGun
                            elseif tostring(typeof(d[2])) == "Vector3" then
                                d[2] = PosMonMasteryGun.Position
                            end
                            return old(unpack(args))
                        end
                    end
                    if SeaEventsEnabled then
                        if SeaEventsPos ~= nil and _G.SaveSettings.AutoFarmSeaEvents then
                            if tostring(typeof(d[2])) == "CFrame" then
                                d[2] = SeaEventsPos
                            elseif tostring(typeof(d[2])) == "Vector3" then
                                d[2] = SeaEventsPos.Position
                            end
                            return old(unpack(args))
                        end
                    end
                    if FindShip then
                        if ShipPos ~= nil and _G.SaveSettings.AutoFarmSeaEvents then
                            if tostring(typeof(d[2])) == "CFrame" then
                                d[2] = ShipPos
                            elseif tostring(typeof(d[2])) == "Vector3" then
                                d[2] = ShipPos.Position
                            end
                            return old(unpack(args))
                        end
                    end
                    if StartSub then
                        if SeaBeastPos ~= nil and _G.SaveSettings.AutoFinishTrail then
                            if tostring(typeof(d[2])) == "CFrame" then
                                d[2] = SeaBeastPos
                            elseif tostring(typeof(d[2])) == "Vector3" then
                                d[2] = SeaBeastPos.Position
                            end
                            return old(unpack(args))
                        end
                    end
                    if FindSeabeast then
                        if SeaBeastPos ~= nil and _G.SaveSettings.AutoFarmSeaBeasts then
                            if tostring(typeof(d[2])) == "CFrame" then
                                d[2] = SeaBeastPos
                            elseif tostring(typeof(d[2])) == "Vector3" then
                                d[2] = SeaBeastPos.Position
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
                    if UseSkill then
                        if PosMonMasteryFruit ~= nil and (_G.SaveSettings.AutoFarmFruitsMastery or _G.SaveSettings.AutoFarmBoneMasteryFruits or _G.SaveSettings.AutoFarmCakePiratesMasteryGun) then
                            if tostring(typeof(args[3])) == "CFrame" then
                                args[3] = PosMonMasteryFruit
                            elseif tostring(typeof(args[3])) == "Vector3" then
                                args[3] = PosMonMasteryFruit.Position
                            end
                            return old(unpack(args))
                        end
                    end
                    if USEGUN then
                        if PosMonMasteryGun ~= nil and (_G.SaveSettings.AutoFarmGunMastery or _G.SaveSettings.AutoFarmBoneMasteryGun) then
                            if tostring(typeof(args[3])) == "CFrame" then
                                args[3] = PosMonMasteryGun
                            elseif tostring(typeof(args[3])) == "Vector3" then
                                args[3] = PosMonMasteryGun.Position
                            end
                            return old(unpack(args))
                        end
                    end
                    if SeaEventsEnabled then
                        if SeaEventsPos ~= nil and _G.SaveSettings.AutoFarmSeaEvents then
                            if tostring(typeof(args[3])) == "CFrame" then
                                args[3] = SeaEventsPos
                            elseif tostring(typeof(args[3])) == "Vector3" then
                                args[3] = SeaEventsPos.Position
                            end
                            return old(unpack(args))
                        end
                    end
                    if FindShip then
                        if ShipPos ~= nil and _G.SaveSettings.AutoFarmSeaEvents then
                            if tostring(typeof(args[3])) == "CFrame" then
                                args[3] = ShipPos
                            elseif tostring(typeof(args[3])) == "Vector3" then
                                args[3] = ShipPos.Position
                            end
                            return old(unpack(args))
                        end
                    end
                    if StartSub then
                        if SeaBeastPos ~= nil and _G.SaveSettings.AutoFinishTrail then
                            if tostring(typeof(args[3])) == "CFrame" then
                                args[3] = SeaBeastPos
                            elseif tostring(typeof(args[3])) == "Vector3" then
                                args[3] = SeaBeastPos.Position
                            end
                            return old(unpack(args))
                        end
                    end
                    if FindSeabeast then
                        if SeaBeastPos ~= nil and _G.SaveSettings.AutoFarmSeaBeasts then
                            if tostring(typeof(args[3])) == "CFrame" then
                                args[3] = SeaBeastPos
                            elseif tostring(typeof(args[3])) == "Vector3" then
                                args[3] = SeaBeastPos.Position
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
