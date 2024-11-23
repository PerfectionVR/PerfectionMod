if getSandboxOptions():getOptionByName("EnableBokuto"):getValue() then
    -- Fetch the drop chance as a percentage and divide by 100 to convert to a decimal
    local bokutoDropChance = getSandboxOptions():getOptionByName("BokutoModDropChance"):getValue() / 100

    -- Add the Bokuto book to BookstoreBooks distribution
    table.insert(ProceduralDistributions.list["BookstoreBooks"].items, "BokutoMod.BokutoCraftingBook")
    table.insert(ProceduralDistributions.list["BookstoreBooks"].items, bokutoDropChance)

    -- Optionally add it to other distributions, e.g., LibraryBooks
    table.insert(ProceduralDistributions.list["LibraryBooks"].items, "BokutoMod.BokutoCraftingBook")
    table.insert(ProceduralDistributions.list["LibraryBooks"].items, bokutoDropChance)
end
