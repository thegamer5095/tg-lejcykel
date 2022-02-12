local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")

vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP","slashcommands")

RegisterServerEvent("RentCarScript_PaidBicyclebeforspawn")
AddEventhandler("RentCarScript_PaidBicyclebeforspawn", function()
    local user_id = vRP.getUserID({source})
    local player = vRP.getuserSource({user_id})

    if vRP.tryFullPayment({user_id, Config.Price}) then
        TriggerClientEvent("RentCarScript_PlayerPaidForBicycle", player)
    else
        vRPclient.notify(user_id),{"Du har ikke nok penge. Du skal have ".. Config.Price .." DKK"}
    end
end)