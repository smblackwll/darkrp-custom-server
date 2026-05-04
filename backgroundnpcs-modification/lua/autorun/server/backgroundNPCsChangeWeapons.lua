hook.Add("InitPostEntity", "MyBGNPCPoliceWeapons", function()
    if not bgNPC or not bgNPC.cfg then return end

    local policeWeapons = {
        'arccw_uc_usp',
        'weapon_stunstick',
    }

    local policeActors = {
        "police",
        "policeman",
        "reinforced_police",
        "special_forces",
        "reinforced_special_forces"
    }

    for _, actorName in ipairs(policeActors) do
        local actor = bgNPC.cfg.actors and bgNPC.cfg.actors[actorName]

        if actor then
            actor.weapons = policeWeapons
            actor.getting_weapon_chance = false
            actor.weapon_skill = WEAPON_PROFICIENCY_GOOD
            print("[BGNPC Custom] Changed weapons for actor:", actorName)
        else
            print("[BGNPC Custom] Actor not found:", actorName)
        end
    end
end)



