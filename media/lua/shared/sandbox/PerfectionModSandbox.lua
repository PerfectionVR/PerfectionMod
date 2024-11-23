require "Sandbox/ISBaseSandboxOptions"

-- Adding a new category for Perfection Mod
ISBaseSandboxOptions.addCategory("PerfectionMod", "Customize settings for Perfection's Mod.", {
    EnableBokuto = {
        name = "Enable Bokuto Items",
        tooltip = "Toggle whether Bokuto items are enabled in the game.",
        default = false, -- Default is disabled
        type = "boolean" -- A checkbox in the UI
    },
    BokutoDropChance = {
        name = "Bokuto Drop Chance",
        tooltip = "Set the drop chance for Bokuto crafting books as a percentage (0 to 100).",
        default = 1, -- Default 1% chance
        min = 0, -- Minimum value
        max = 100, -- Maximum value
        type = "number" -- A slider/input field in the UI
    }
})
