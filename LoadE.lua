local mt = getrawmetatable(game)
setreadonly(mt,false)
local old = mt.__namecall
mt.__namecall = newcclosure(function(...)
    local method = getnamecallmethod()
    local args = {...}
    if not (_G.SaveSettings.AimbotSkill) and
    not (_G.SaveSettings.AutoFarmPlayer) and
    not (_G.SaveSettings.AutoFarmBounty) and
    not UseSkill and
    not USEGUN and
    not (_G.SaveSettings.AutoFarmSeaEvents) and
    not (_G.SaveSettings.AutoFarmSeaEvents) and
    not (_G.SaveSettings.AutoFinishTrail) and
    not (_G.SaveSettings.AutoFarmSeaBeasts) then
        return
    end
    if tostring(method) == "FireServer" then
        if tostring(args[1]) == "RemoteEvent" then
            if tostring(args[2]) ~= "true" and tostring(args[2]) ~= "false" then
                if _G.SaveSettings.AimbotSkill and _G.TargetPlayerAim ~= nil then
                    if _G.TargetPlayerAim ~= nil then
                        if tostring(typeof(args[2])) == "CFrame" then
                            args[2] = _G.TargetPlayerAim
                        elseif tostring(typeof(args[2])) == "Vector3" then
                            args[2] = _G.TargetPlayerAim.Position
                        end
                        return old(unpack(args))
                    end
                end
                if _G.SaveSettings.AutoFarmPlayer and PosCharacter ~= nil then
                    if PosCharacter ~= nil then
                        if tostring(typeof(args[2])) == "CFrame" then
                            args[2] = PosCharacter
                        elseif tostring(typeof(args[2])) == "Vector3" then
                            args[2] = PosCharacter.Position
                        end
                        return old(unpack(args))
                    end
                end
                if _G.SaveSettings.AutoFarmBounty and PosCharacterBounty ~= nil then
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
                        elseif tostring(typeof(args[2])) == "Vector3" then
                            args[2] = PosMonMasteryFruit.Position
                        end
                        return old(unpack(args))
                    end
                end
                if USEGUN then
                    if PosMonMasteryGun ~= nil and (_G.SaveSettings.AutoFarmGunMastery or _G.SaveSettings.AutoFarmBoneMasteryGun) then
                        if tostring(typeof(args[2])) == "CFrame" then
                            args[2] = PosMonMasteryGun
                        elseif tostring(typeof(args[2])) == "Vector3" then
                            args[2] = PosMonMasteryGun.Position
                        end
                        return old(unpack(args))
                    end
                end
                if SeaEventsEnabled and _G.SaveSettings.AutoFarmSeaEvents then
                    if SeaEventsPos ~= nil and _G.SaveSettings.AutoFarmSeaEvents then
                        if tostring(typeof(args[2])) == "CFrame" then
                            args[2] = SeaEventsPos
                        elseif tostring(typeof(args[2])) == "Vector3" then
                            args[2] = SeaEventsPos.Position
                        end
                        return old(unpack(args))
                    end
                end
                if FindShip and _G.SaveSettings.AutoFarmSeaEvents then
                    if ShipPos ~= nil and _G.SaveSettings.AutoFarmSeaEvents then
                        if tostring(typeof(args[2])) == "CFrame" then
                            args[2] = ShipPos
                        elseif tostring(typeof(args[2])) == "Vector3" then
                            args[2] = ShipPos.Position
                        end
                        return old(unpack(args))
                    end
                end
                if StartSub and _G.SaveSettings.AutoFinishTrail then
                    if SeaBeastPos ~= nil and _G.SaveSettings.AutoFinishTrail then
                        if tostring(typeof(args[2])) == "CFrame" then
                            args[2] = SeaBeastPos
                        elseif tostring(typeof(args[2])) == "Vector3" then
                            args[2] = SeaBeastPos.Position
                        end
                        return old(unpack(args))
                    end
                end
                if FindSeabeast and _G.SaveSettings.AutoFarmSeaBeasts then
                    if SeaBeastPos ~= nil and _G.SaveSettings.AutoFarmSeaBeasts then
                        if tostring(typeof(args[2])) == "CFrame" then
                            args[2] = SeaBeastPos
                        elseif tostring(typeof(args[2])) == "Vector3" then
                            args[2] = SeaBeastPos.Position
                        end
                        return old(unpack(args))
                    end
                end
            end
        end
    elseif tostring(method) == "InvokeServer" then
        if tostring(args[1]) == "" then
            if tostring(args[2]) ~= "true" and tostring(args[2]) ~= "false" then
                if _G.SaveSettings.AimbotSkill and _G.TargetPlayerAim ~= nil then
                    if _G.TargetPlayerAim ~= nil then
                        if tostring(typeof(args[3])) == "CFrame" then
                            args[3] = _G.TargetPlayerAim
                        elseif tostring(typeof(args[3])) == "Vector3" then
                            args[3] = _G.TargetPlayerAim.Position
                        end
                        return old(unpack(args))
                    end
                end
                if _G.SaveSettings.AutoFarmPlayer and PosCharacter ~= nil then
                    if PosCharacter ~= nil then
                        if tostring(typeof(args[3])) == "CFrame" then
                            args[3] = PosCharacter
                        elseif tostring(typeof(args[3])) == "Vector3" then
                            args[3] = PosCharacter.Position
                        end
                        return old(unpack(args))
                    end
                end
                if _G.SaveSettings.AutoFarmBounty and PosCharacterBounty ~= nil then
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
                if SeaEventsEnabled and _G.SaveSettings.AutoFarmSeaEvents then
                    if SeaEventsPos ~= nil and _G.SaveSettings.AutoFarmSeaEvents then
                        if tostring(typeof(args[3])) == "CFrame" then
                            args[3] = SeaEventsPos
                        elseif tostring(typeof(args[3])) == "Vector3" then
                            args[3] = SeaEventsPos.Position
                        end
                        return old(unpack(args))
                    end
                end
                if FindShip and _G.SaveSettings.AutoFarmSeaEvents then
                    if ShipPos ~= nil and _G.SaveSettings.AutoFarmSeaEvents then
                        if tostring(typeof(args[3])) == "CFrame" then
                            args[3] = ShipPos
                        elseif tostring(typeof(args[3])) == "Vector3" then
                            args[3] = ShipPos.Position
                        end
                        return old(unpack(args))
                    end
                end
                if StartSub and _G.SaveSettings.AutoFinishTrail then
                    if SeaBeastPos ~= nil and _G.SaveSettings.AutoFinishTrail then
                        if tostring(typeof(args[3])) == "CFrame" then
                            args[3] = SeaBeastPos
                        elseif tostring(typeof(args[3])) == "Vector3" then
                            args[3] = SeaBeastPos.Position
                        end
                        return old(unpack(args))
                    end
                end
                if FindSeabeast and _G.SaveSettings.AutoFarmSeaBeasts then
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
