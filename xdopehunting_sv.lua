XD = nil
TriggerEvent('XD:GetObject', function(obj) XD = obj end)

RegisterServerEvent('xd:reward')
AddEventHandler('xd:reward', function(Weight)
    local Player = XD.Functions.GetPlayer(source)

    if Weight >= 1 then
        Player.Functions.AddItem('meat', 1)
    elseif Weight >= 9 then
        Player.Functions.AddItem('meat', 2)
    elseif Weight >= 15 then
        Player.Functions.AddItem('meat', 3)
    end
    Player.Functions.AddItem('leather', math.random(1, 4))        
end)

RegisterServerEvent('xd:sell')
AddEventHandler('xd:sell', function()
    local Player = XD.Functions.GetPlayer(source)
    local MeatPrice = 125
    local LeatherPrice = 25

    local MeatQuantity = Player.Functions.GetItemByName('meat')
    local LeatherQuantity = Player.Functions.GetItemByName('leather')

    if MeatQuantity ~= nil then
        if MeatQuantity.amount > 0 then
            Player.Functions.AddMoney("cash", MeatQuantity.amount * MeatPrice, "hunting")

            Player.Functions.RemoveItem('meat', MeatQuantity.amount)
            TriggerClientEvent('XD:Notify', source, 'You sold ' .. MeatQuantity.label .. ' and earned $' .. MeatPrice * MeatQuantity.amount)
        else
            TriggerClientEvent('XD:Notify', source, 'You don\'t have any meat or leather')
        end
    end

    if LeatherQuantity ~= nil then
        if LeatherQuantity.amount > 0 then
            Player.Functions.AddMoney("cash", LeatherQuantity.amount * LeatherPrice, "hunting")
            Player.Functions.RemoveItem('leather', LeatherQuantity.amount)
            TriggerClientEvent('XD:Notify', source, 'You sold ' .. LeatherQuantity.label.. ' and earned $' .. LeatherPrice * LeatherQuantity.amount)
        else
            TriggerClientEvent('XD:Notify', source, 'You don\'t have any meat or leather')
        end
    end

end)
