-- File: HordeDayConfig.lua

HordeDayConfig = {
    hordeFrequency = "weekly",  -- Options: "daily", "weekly", "monthly"
    hordeSize = 1,            -- Number of zombies spawned on horde day x 100
    hordeStrength = "normal",   -- Options: "normal", "strong", "sprinters"
    spawnRadius = 100           -- Radius from player to spawn zombies (in tiles) max may be 100 at the moment
}

function HordeDayConfig:load()
    -- Load the configuration from file 
end

function HordeDayConfig:save()
    -- Save the configuration to file
end
