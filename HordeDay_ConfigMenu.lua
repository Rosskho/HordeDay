
require "ModOptions"

local SETTINGS = {}
SETTINGS.options = {}

local config = require("config")

SETTINGS.options.hordeDayInterval = config.hordeDayInterval or 7
SETTINGS.options.hordeSizeMultiplier = config.hordeSizeMultiplier or 100.0

SETTINGS.mod_id = "HordeDay"
SETTINGS.mod_shortname = "Horde Day"
SETTINGS.mod_fullname = "Horde Day Settings"

SETTINGS.settings_obj = {
    hordeDayInterval = {
        name = "Horde Interval (days)",
        tooltip = "Number of days between each horde day",
        default = 7,
        min = 1,
        max = 90
    },
    hordeSizeMultiplier = {
        name = "Horde Size Multiplier",
        tooltip = "Multiply horde size by this value",
        default = 100.0,
        min = 0.1,
        max = 10.0,
        step = 0.1
    }
}

ModOptions:loadModSettings(SETTINGS)
