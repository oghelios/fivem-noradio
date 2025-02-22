local isInVehicle = false

CreateThread(function()
    while true do
        local playerPed = PlayerPedId()
        local vehicle = GetVehiclePedIsIn(playerPed, false)

        if vehicle ~= 0 then
            if not isInVehicle then
                isInVehicle = true

                if Config.DisableRadio then
                    SetUserRadioControlEnabled(false)
                    SetVehRadioStation(vehicle, "OFF") 
                else
                    SetUserRadioControlEnabled(true) 
                    
                    if Config.DefaultOff then
                        SetVehRadioStation(vehicle, "OFF")
                    elseif Config.ForcedStation and Config.ForcedStation ~= "" then
                        SetVehRadioStation(vehicle, Config.ForcedStation)
                    end
                end
            end
            
            HideHudComponentThisFrame(16)
        else
            isInVehicle = false

            if not Config.DisableRadio then
                SetUserRadioControlEnabled(true)
            end
        end

        Wait(500) 
    end
end)
