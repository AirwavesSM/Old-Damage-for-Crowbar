hook.Add("EntityTakeDamage", "IncreaseCrowbarDamage", function(target, dmginfo)
    local attacker = dmginfo:GetAttacker()

    if IsValid(attacker) then
        local weapon = attacker:GetActiveWeapon()

        if IsValid(weapon) and weapon:GetClass() == "weapon_crowbar" then
            dmginfo:SetDamage(25)
        end
    end
end)