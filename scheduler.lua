-- File: HordeDayScheduler.lua

require "HordeDayConfig"

HordeDayScheduler = {}
HordeDayScheduler.nextHordeDay = 0

-- Function to calculate the next horde day
function HordeDayScheduler:calculateNextHordeDay(currentDay)
    local interval = 1  -- Default daily
    if HordeDayConfig.hordeFrequency == "weekly" then
        interval = 7
    elseif HordeDayConfig.hordeFrequency == "monthly" then
        interval = 30
    end
    self.nextHordeDay = currentDay + interval
end

function HordeDayScheduler:isHordeDay(currentDay)
    return currentDay >= self.nextHordeDay
end
