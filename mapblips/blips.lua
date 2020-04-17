local blips = {
    -- Example {title="", colour=, id=, x=, y=, z=},

     {title="雜草", colour=5, id=140, x = 2221.858, y = 5614.81, z = 54.902},
	 {title="冰毒", colour=5, id=514, x = 1386.659, y = 3622.805, z = 35.012},
	 {title="可卡因", colour=5, id=514, x = 1386.659, y = 3622.805, z = 35.012},	 
     {title="鴉片", colour=30, id=496, x = 1341.42, y = 4389.84, z = 43.34}
  }
      
Citizen.CreateThread(function()

    for _, info in pairs(blips) do
      info.blip = AddBlipForCoord(info.x, info.y, info.z)
      SetBlipSprite(info.blip, info.id)
      SetBlipDisplay(info.blip, 4)
      SetBlipScale(info.blip, 1.0)
      SetBlipColour(info.blip, info.colour)
      SetBlipAsShortRange(info.blip, true)
	  BeginTextCommandSetBlipName("STRING")
      AddTextComponentString(info.title)
      EndTextCommandSetBlipName(info.blip)
    end
end)