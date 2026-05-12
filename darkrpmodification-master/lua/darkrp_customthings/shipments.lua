--[[---------------------------------------------------------------------------
DarkRP custom shipments and guns
---------------------------------------------------------------------------

This file contains your custom shipments and guns.
This file should also contain shipments and guns from DarkRP that you edited.

Note: If you want to edit a default DarkRP shipment, first disable it in darkrp_config/disabled_defaults.lua
    Once you've done that, copy and paste the shipment to this file and edit it.

The default shipments and guns can be found here:
https://github.com/FPtje/DarkRP/blob/master/gamemode/config/addentities.lua

For examples and explanation please visit this wiki page:
https://darkrp.miraheze.org/wiki/DarkRP:CustomShipmentFields


Add shipments and guns under the following line:
---------------------------------------------------------------------------]]
--[[
  M1911 - Shipment
  Generated using: DarkRP | Shipment Generator
  https://yourdevtools.com/gmod/darkrp-shipment
--]]

DarkRP.createShipment("M1911", {
    entity = "arccw_ur_m1911",
    model = "models/weapons/arccw/c_ur_m1911.mdl",
    amount = 5,
    price = 37500,
    pricesep = 7500,
    noship = false,
    separate = true,
    category = "Other",
    allowed = {
        TEAM_TEST
    },
})

--[[
  Remington 870 - Shipment
  Generated using: DarkRP | Shipment Generator
  https://yourdevtools.com/gmod/darkrp-shipment
--]]

DarkRP.createShipment("Remington 870", {
    entity = "arccw_ud_870",
    model = "models/weapons/arccw/c_ud_870.mdl",
    amount = 4,
    price = 56000,
    pricesep = 14000,
    noship = false,
    separate = true,
    category = "Other",
    allowed = {
        TEAM_TEST
    },
})

