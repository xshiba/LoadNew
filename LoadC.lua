local mt = getrawmetatable(game)
setreadonly(mt,false)
local old = mt.__namecall
mt.__namecall = newcclosure(function(...)
    local method = getnamecallmethod()
    local args = {...}
    if not (StartSub) then
        return old(unpack(args))
    end
    if tostring(method) == "FireServer" then
        if tostring(args[1]) == "RemoteEvent" then
            if tostring(args[2]) ~= "true" and tostring(args[2]) ~= "false" then
               if StartSub then
                    if SeaBeastPos ~= nil then
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
               if StartSub then
                    if SeaBeastPos ~= nil then
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
