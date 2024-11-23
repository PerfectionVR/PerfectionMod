if isServer() then
    -- Function to configure loot distributions based on sandbox options
    local function setupLootDistributions()
        -- Fetch sandbox options
        local enableBokuto = getSandboxOptions():getOptionByName("EnableBokuto"):getValue()
        local bokutoDropChance = getSandboxOptions():getOptionByName("BokutoDropChance"):getValue() / 100

        -- Get the distribution list for BookstoreBooks
        local distributionList = ProceduralDistributions.list["BookstoreBooks"]

        -- Function to remove Bokuto items from the distribution list
        local function removeBokutoItems()
            local updatedItems = {}
            for i = 1, #distributionList.items, 2 do
                local item = distributionList.items[i]
                local chance = distributionList.items[i + 1]

                -- Keep all items except the Bokuto crafting book
                if item ~= "BokutoMod.BokutoCraftingBook" then
                    table.insert(updatedItems, item)
                    table.insert(updatedItems, chance)
                end
            end
            distributionList.items = updatedItems
        end

        -- If Bokuto is enabled, add it to distributions; otherwise, remove it
        if enableBokuto then
            table.insert(distributionList.items, "BokutoMod.BokutoCraftingBook")
            table.insert(distributionList.items, bokutoDropChance)
            print("Bokuto crafting book added to loot distributions.")
        else
            removeBokutoItems()
            print("Bokuto crafting book removed from loot distributions.")
        end
    end

    -- Hook into the OnInitWorld event (called when the server initializes the world)
    Events.OnInitWorld.Add(setupLootDistributions)
end
