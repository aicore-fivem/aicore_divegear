exports.aicore:CreateUseableItem('diving_gear', function(source)
    TriggerClientEvent('aicore_divegear:client:useGear', source)
end)

exports.aicore:CreateUseableItem('diving_fill', function(source)
    local success = lib.callback.await('aicore_divegear:client:fillTank', source)
    if success then
        exports.ox_inventory:RemoveItem(source, 'diving_fill', 1)
    end
end)