hook.Add("PlayerDeath", "DarkRP_DeathMoneyLoss", function(ply)
    if not IsValid(ply) or not ply:IsPlayer() then return end
    if not ply.getDarkRPVar or not ply.addMoney then return end

    local money = ply:getDarkRPVar("money") or 0
    local loss = math.floor(money * 0.25)

    if loss <= 0 then return end

    ply:addMoney(-loss)

    if DarkRP and DarkRP.notify and DarkRP.formatMoney then
        DarkRP.notify(ply, 1, 6, "You lost " .. DarkRP.formatMoney(loss) .. " for dying.")
    end
end)