if getSandboxOptions():getOptionByName("EnableBokuto"):getValue() then
    local bokutoBook = {
        rolls = 1,
        items = {"BokutoMod.BokutoCraftingBook",
                 getSandboxOptions():getOptionByName("BokutoDropChance"):getValue() / 100}
    }

    table.insert(ProceduralDistributions.list["BookstoreBooks"].items, "BokutoMod.BokutoCraftingBook")
    table.insert(ProceduralDistributions.list["BookstoreBooks"].items,
        getSandboxOptions():getOptionByName("BokutoDropChance"):getValue() / 100)
end
