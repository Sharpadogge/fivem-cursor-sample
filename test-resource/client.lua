local visible = false
Citizen.CreateThread(function ()
    while true do
        Citizen.Wait(0)
        if IsControlJustReleased(0, 38) then
            ToggleNui()
        end
    end
end)

RegisterNUICallback("close", function ()
    ToggleNui()
end)

function ToggleNui()
    visible = not visible
    SetNuiFocus(visible, visible)
    SendNUIMessage({
        display = visible
    })
end