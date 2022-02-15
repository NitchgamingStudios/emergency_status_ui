local display = false

RegisterCommand("status", function()
    Citizen.CreateThread(function()
      TriggerEvent('nui:toggle', true)
    end)
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
    TriggerEvent('avoff', true)
  end)
end)

RegisterCommand("avclear", function()
  Citizen.CreateThread(function()
    TriggerEvent('avon', true)
  end)
end)

RegisterCommand("cfabusy", function()
  Citizen.CreateThread(function()
    TriggerEvent('cfaoff', true)
  end)
end)

RegisterCommand("cfaclear", function()
  Citizen.CreateThread(function()
    TriggerEvent('cfaon', true)
  end)
end)

-- Citizen.CreateThread(function()
--   while true do
--     Citizen.Wait(0)
--     if )

function DrawText2(text)
  SetTextFont(0)
  SetTextProportional(1)
  SetTextScale(0.0, 0.45)
  SetTextDropshadow(1, 0, 0, 0, 255)
  SetTextEdge(1, 0, 0, 0, 255)
  SetTextDropShadow()
  SetTextOutline()
  SetTextEntry("STRING")
  AddTextComponentString(text)
  DrawText(0.40, 0.10)
end