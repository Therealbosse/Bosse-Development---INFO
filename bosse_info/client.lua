RegisterCommand("info", function()
    SetNuiFocus(true, true)

    SendNUIMessage({
        type = "openMenu"
    })
end, false)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        if IsControlJustPressed(0, 322) then
            SetNuiFocus(false, false)
            SendNUIMessage({
                type = "closeMenu"
            })
        end
    end
end)

RegisterNUICallback("closeMenu", function(data, cb)
    SetNuiFocus(false, false)
    cb("ok")
end)

Citizen.CreateThread(function()
    SendNUIMessage({
        type = "closeMenu"
    })
end)
