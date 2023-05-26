CreateThread(function()
    Wait(50)
    while true do
        Wait(100)
        local ped = PlayerPedId()
        local health = math.floor(GetEntityHealth(ped) / 2) 
        local armor = math.floor(GetPedArmour(ped))
        if IsPauseMenuActive(true) then 
            SendNUIMessage({
                showHud = false
            })
        elseif not IsPauseMenuActive(true) then
            SendNUIMessage({
                showHud = true,
                health = health,
                armor = armor
            })
        end
    end
end)


CreateThread(function()
    Wait(50)
    while true do
        miid(0.660, 1.435, 1.0,1.0,0.50, "~y~ID:~g~  ".. GetPlayerServerId(NetworkGetEntityOwner(PlayerPedId())) .. '', 255, 255, 255, 255)
        Wait(100)
    end
end)

function miid(x,y ,width,height,scale, text, r,g,b,a, outline)
    SetTextFont(4)
    SetTextProportional(0)
    SetTextScale(scale, scale)
	SetTextColour( 0,0,0, 255 )
    SetTextDropShadow(0, 0, 0, 0,255)
    SetTextEdge(1, 0, 0, 0, 255)
    SetTextDropShadow()
	SetTextOutline()
    SetTextEntry("STRING")
    AddTextComponentString(text)
    DrawText(x - width/2, y - height/2 + 0.005)
end