local display = false

RegisterCommand("status", function()
    Citizen.CreateThread(function()
      TriggerEvent('nui:toggle', true)
    end)
end)

Citizen.CreateThread(function() 	
    while true do 		
      Citizen.Wait(0) 		
        if IsControlPressed (1, 344) then 		
          TriggerEvent("nui:toggle", true)
        end 	
    end
end)

RegisterNetEvent('nui:toggle')
  AddEventHandler('nui:toggle', function()
    SendNUIMessage({
      type = "ui",
      display = false
    })
end)

RegisterCommand("avbusy", function()
    Citizen.CreateThread(function()
      TriggerEvent('av:on', true)
    end)
end)

RegisterCommand("avclear", function()
  Citizen.CreateThread(function()
      TriggerEvent('cfa:off', true)
    end)
end)

RegisterCommand("cfabusy", function()
  Citizen.CreateThread(function()
      TriggerEvent('cfa:off', true)
    end)
end)

RegisterCommand("cfaclear", function()
  Citizen.CreateThread(function()
      TriggerEvent('av:off', true)
    end)
end)

-- RegisterNetEvent('av:on')
--  AddEventHandler('av:on', function()
--    SendNUIMessage({
--      type = "",
--       = 
--    })
-- end)

-- RegisterNetEvent('av:off')
--  AddEventHandler('av:off', function()
--    SendNUIMessage({
--      type = "",
--       = 
--    })
-- end)

-- RegisterNetEvent('cfa:on')
--  AddEventHandler('cfa:on', function()
--    SendNUIMessage({
--      type = "",
--       = 
--    })
-- end)

-- RegisterNetEvent('cfa:off')
--  AddEventHandler('cfa:off', function()
--    SendNUIMessage({
--      type = "",
--       = 
--    })
-- end)