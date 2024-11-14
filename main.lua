-- File: HordeDayMain.lua

require "HordeDayConfig"
require "HordeDayScheduler"
require "HordeDaySpawner"

Events.OnGameStart.Add(function()
    local player = getPlayer()
    local currentDay = player:getDaysSurvived()

    -- Initial setup for the first horde day
    HordeDayScheduler:calculateNextHordeDay(currentDay)
end)

Events.OnTick.Add(function()
    local player = getPlayer()
    local currentDay = player:getDaysSurvived()

    if HordeDayScheduler:isHordeDay(currentDay) then
        HordeDaySpawner:spawnHorde(player)
        HordeDayScheduler:calculateNextHordeDay(currentDay)  -- Schedule the next horde day
        -- Notify the player
        player:Say("A HORDE CAN BE HEARD COMING!")
    end
end)
