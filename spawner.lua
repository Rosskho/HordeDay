
local modOptions = ModOptions and ModOptions.getInstance and ModOptions:getInstance("HordeDay")
local hordeDayInterval = modOptions and modOptions.settings.hordeDayInterval or 7
local hordeSizeMultiplier = modOptions and modOptions.settings.hordeSizeMultiplier or 100.0

-- File: HordeDaySpawner.lua

require "HordeDayScheduler"
require "HordeDayConfig"

HordeDaySpawner = {}

function HordeDaySpawner:spawnHorde(player)
    local x, y = player:getX(), player:getY()
    local zombiesToSpawn = HordeDayConfig.hordeSize
    local radius = HordeDayConfig.spawnRadius

    for i = 1, zombiesToSpawn do
        local spawnX = x + math.random(-radius, radius)
        local spawnY = y + math.random(-radius, radius)
        
        -- Create a zombie with specified difficulty
        local zombie = createZombie(spawnX, spawnY, 0)
        if HordeDayConfig.hordeStrength == "strong" then
            zombie:makeStrong()  --function for strong zombies
        elseif HordeDayConfig.hordeStrength == "sprinters" then
            zombie:setSprint(true)  --function to make sprinters
        end
    end
end
