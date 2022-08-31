Citizen.CreateThread(function()

    while true do
        Wait(Config.loopWait)
        local objects = GetGamePool('CObject')
        for _, entity in ipairs(objects) do
            local Foundmodel = GetEntityModel(entity)
           
            for _,v in ipairs(Config.objToFreeze) do
                if Foundmodel == GetHashKey(v) then
                    FreezeEntityPosition(entity,true)
                end
            end
            
        end
    end
end)