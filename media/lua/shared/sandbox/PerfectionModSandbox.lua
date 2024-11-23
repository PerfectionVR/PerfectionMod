require "Sandbox/ISBaseSandboxOptions"

local PerfectionModOptions = {
    name = "PerfectionMod",
    description = "Customize settings for Perfection's Mod."
}

PerfectionModOptions.options = {
    EnableBokuto = {
        name = "Enable Bokuto Items",
        tooltip = "Toggle to enable or disable Bokuto items.",
        default = false,
        type = "boolean"
    },
    BokutoDropChance = {
        name = "Bokuto Drop Chance",
        tooltip = "Set the drop chance for Bokuto books (percentage).",
        default = 1,
        min = 0,
        max = 100,
        type = "number"
    }
}

ISBaseSandboxOptions.addCategory(PerfectionModOptions.name, PerfectionModOptions.description,
    PerfectionModOptions.options)
