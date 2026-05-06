--[[---------------------------------------------------------------------------
DarkRP custom jobs
---------------------------------------------------------------------------
This file contains your custom jobs.
This file should also contain jobs from DarkRP that you edited.

Note: If you want to edit a default DarkRP job, first disable it in darkrp_config/disabled_defaults.lua
      Once you've done that, copy and paste the job to this file and edit it.

The default jobs can be found here:
https://github.com/FPtje/DarkRP/blob/master/gamemode/config/jobrelated.lua

For examples and explanation please visit this wiki page:
https://darkrp.miraheze.org/wiki/DarkRP:CustomJobFields

Add your custom jobs under the following line:
---------------------------------------------------------------------------]]

TEAM_POLICE_OFFICER = DarkRP.createJob("Police Officer", {
    color = Color(0, 0, 365),
    model = {
        "models/sentry/sencop/sentrylspdmale1h.mdl",
        "models/sentry/sencop/sentrylspdmale9pm.mdl",
        "models/sentry/sencop/sentrylspdfemale6g.mdl",
        "models/sentry/sencop/sentrylspdfemale7pm.mdl",
        "models/sentry/sencop/sentrylspdmale7g.mdl"
    },
    description = [[
        A police officer. You patrol the streets, and catch criminals. You can be demoted via a vote.
    ]],
    weapons = {
        "arrest_stick",
        "stunstick", 
        "unarrest_stick", 
        "wep_jack_job_drpstungun", 
        "arccw_uc_usp",
    },
    command = "police",
    max = 4,
    salary = 45,
    admin = 0,
    vote = false,
    hasLicense = true,
    category = "Government",
    canDemote = true,
    PlayerSpawn = function(ply)
        ply:SetHealth(100)
        ply:SetMaxHealth(100)
        ply:SetArmor(25)
        ply:SetMaxArmor(25)
    end,
})

--[[
    Alderman Job
    Generated using: DarkRP | Job Generator
    https://yourdevtools.com/gmod/darkrp-job
--]]

TEAM_ALDER = DarkRP.createJob("Alderman", {
    color = Color(277, 0, 0),
    model = {
        "models/player/gman_high.mdl",
        "models/player/breen.mdl",
        "models/player/magnusson.mdl"
    },
    description = [[
        Aldermen only exist to approve/deny new laws, to complain to the mayor about the needs of their wards (boundaries TBD).
        
        They can pass ordinances that directly affect their ward (noise levels, sales tax, speed limits, etc.). The Mayor + the other council member can veto these but only if they agree.
    ]],
    weapons = {},
    command = "alderman",
    max = 2,
    salary = 45,
    admin = 0,
    vote = true,
    hasLicense = false,
    category = "Government",
    canDemote = true,
})


--[[---------------------------------------------------------------------------
Define which team joining players spawn into and what team you change to if demoted
---------------------------------------------------------------------------]]
GAMEMODE.DefaultTeam = TEAM_CITIZEN
--[[---------------------------------------------------------------------------
Define which teams belong to civil protection
Civil protection can set warrants, make people wanted and do some other police related things
---------------------------------------------------------------------------]]
GAMEMODE.CivilProtection = {
    [TEAM_POLICE] = true,
    [TEAM_CHIEF] = true,
    [TEAM_MAYOR] = true,
    [TEAM_POLICE_OFFICER] = true,
}
--[[---------------------------------------------------------------------------
Jobs that are hitmen (enables the hitman menu)
---------------------------------------------------------------------------]]
DarkRP.addHitmanTeam(TEAM_MOB)
