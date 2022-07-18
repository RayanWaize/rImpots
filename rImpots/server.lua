local ESX

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

local function percent(percent,maxvalue)
    if tonumber(percent) and tonumber(maxvalue) then
        return (maxvalue*percent)/100
    end
    return false
end

RegisterServerEvent("rImpots:taxesLevy")
AddEventHandler("rImpots:taxesLevy", function()
    local _src = source
    local xPlayer = ESX.GetPlayerFromId(_src)
    local myBankMoney = ESX.Math.Round(tonumber(xPlayer.getAccount(Config.accountName).money))
    local amoutRemove = ESX.Math.Round(percent(Config.pourcentageImpots,myBankMoney))
    if myBankMoney > 0 then
        xPlayer.removeAccountMoney(Config.accountName, amoutRemove)
        TriggerClientEvent("esx:showNotification", _src, (Config.textNotification):format(amoutRemove))
    end
end)