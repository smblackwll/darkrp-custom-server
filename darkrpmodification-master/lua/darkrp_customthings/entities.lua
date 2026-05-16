--[[---------------------------------------------------------------------------
DarkRP custom entities
---------------------------------------------------------------------------

This file contains your custom entities.
This file should also contain entities from DarkRP that you edited.

Note: If you want to edit a default DarkRP entity, first disable it in darkrp_config/disabled_defaults.lua
    Once you've done that, copy and paste the entity to this file and edit it.

The default entities can be found here:
https://github.com/FPtje/DarkRP/blob/master/gamemode/config/addentities.lua

For examples and explanation please visit this wiki page:
https://darkrp.miraheze.org/wiki/DarkRP:CustomEntityFields

Add entities under the following line:
---------------------------------------------------------------------------]]

DarkRP.createEntity("Boombox", {
    ent = "rammel_boombox",
    cmd = "buyboombox",
    model = "models/rammel/boombox.mdl",
    price = 1300,
    max = 2,
    category = "Other",
})

DarkRP.createEntity("Vending Machine", {
    ent = "ninjadude_vendingmachine",
    cmd = "buyninjavendingmachine",
    model = "models/props_interiors/VendingMachineSoda01a.mdl",
    price = 4500,
    max = 0,
    category = "Other",

    callback = function(ply, ent)
        timer.Simple(0, function()
            if not IsValid(ply) or not IsValid(ent) then return end

            ent:Setowning_ent(ply)

            if ent.CPPISetOwner then
                ent:CPPISetOwner(ply)
            end

            if ply.addCustomEntity then
                ply:addCustomEntity(ent)
            end
        end)
    end
})
