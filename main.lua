local display = false

RegisterCommand("showstatus", function()
    Citizen.CreateThread(function()
      TriggerEvent('nui:on', true)
    end)
end)

RegisterCommand("hidestatus", function()
   Citizen.CreateThread(function()
     TriggerEvent("nui:off", true)
    end)
end)

-- RegisterCommand("avbusy", function()
--     Citizen.CreateThread(function()
--       TriggerEvent('av:on', true)
--     end)
-- end)

-- RegisterCommand("avclear", function()
--   Citizen.CreateThread(function()
--       TriggerEvent('cfa:off', true)
--     end)
-- end)

-- RegisterCommand("cfabusy", function()
--   Citizen.CreateThread(function()
--       TriggerEvent('cfa:off', true)
--     end)
-- end)

-- RegisterCommand("cfaclear", function()
--   Citizen.CreateThread(function()
--       TriggerEvent('av:off', true)
--     end)
-- end)

RegisterNetEvent('nui:on')
 AddEventHandler('nui:on', function()
   SendNUIMessage({
     type = "ui",
     display = true
    })
end)

RegisterNetEvent('nui:off')
 AddEventHandler('nui:off', function()
   SendNUIMessage({
     type = "ui",
     display = false
   })
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