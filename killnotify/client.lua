


AddEventHandler('baseevents:onPlayerKilled', function(killerId, data)
      TriggerServerEvent("sv:kill:message", killerId)
  end)
  
  
  AddEventHandler("DrawRect:CL")
  RegisterNetEvent("DrawRect:CL", function(victim)
  
  
  
      Victimname = victim
      print(Victimname)
      
      if Victimname ~= nil then 
       local text = "Killed <span class='colblue'>" .. Victimname .. "</span>"
      
       local time = 2000
       SendNUIMessage({
           Notify = true, 
           text = text, 
           time = time
          })
      end
  end)