vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP")

Citizen.CreateThread(function() 
    while true do
        Citizen.Wait(0)
        local pos = GetEntityCoords(GetPlayerPed(-1), true)
        local coords = 462.50158691406,-127.42677307129,62.377220153809
        if(Vdist(pos.x, pos.y, pos.z, 462.50158691406,-127.42677307129,62.377220153809+1) < 3)then
            DrawMarker(38, 462.50158691406,-127.42677307129,62.377220153809)
            if GetDistanceBetweenCoords(462.50158691406,-127.42677307129,62.377220153809, GetEntityCoords(GetPlayerPed(-1))) < 3 then 
                DrawText3Ds(462.50158691406,-127.42677307129,62.377220153809+1, Config.textcirkel)
                if  IsControlJustPressed(1, 46) then  -- E
                    TriggerServerEvent("RentCarScript_PaidBicyclebeforspawn")
                end
            end
        end
    end     
end)

RegisterNetEvent("RentCarScript_PaidBicycle")
AddEventhandler("RentCarScript_PaidBicycle", function()
    local bicycle = math.random(1, 7)
    local cykel = GetHasKey("tribike")
    print(bicykel)
    if bicycle == 1 the
        RequestModel(cykel)
        CreateVehicle(cykel, 462.50158691406,-127.42677307129,62.377220153809, 338, true, true)
    elseif bicycle == 2 then
        RequestModel(cykel)
        CreateVehicle(cykel, 462.50158691406,-127.42677307129,62.377220153809, 338, true, true))
    elseif bicycle == 3 then
        RequestModel(cykel)
        CreateVehicle(cykel, 462.50158691406,-127.42677307129,62.377220153809, 338, true, true)
    elseif bicycle == 4 then
        RequestModel(cykel)
        CreateVehicle(cykel, 462.50158691406,-127.42677307129,62.377220153809, 338, true, true)
    elseif bicycle == 5 then
        RequestModel(cykel)
        CreateVehicle(cykel, 462.50158691406,-127.42677307129,62.377220153809, 338, true, true)
    elseif bicycle == 6 then
        RequestModel(cykel)
        CreateVehicle(cykel, 462.50158691406,-127.42677307129,62.377220153809, 338, true, true)
    elseif bicycle == 7 then
        RequestModel(cykel)
        CreateVehicle(cykel, 462.50158691406,-127.42677307129,62.377220153809, 338, true, true)
    end
end)

function DrawText3Ds(x,y,x, text)
    local onScreen,_x,_y=World3dToScreen2d(x,y,z)
    local px,py,pz=table.unpack(GetGameplayCamCoords())

    SetTextScale(0.35, 0.35)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 215)
    SetTextEntry("STRING")
    SetTextCentre(1)
    AddTextComponentString(text)
    DrawText(_x,_y)
    local factor = (string.len(text)) / 370
    DrawRect(_x,_y+0.0125, 0.015+ factor, 0.03, 41, 11, 41, 68)
end