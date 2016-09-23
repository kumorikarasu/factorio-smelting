
data:extend(
{
  {
    type = "recipe-category",
    name = "stone-smelting" -- the default furnace is nerfed
  }
})

data.raw["furnace"]["stone-furnace"].result_inventory_size = 3
data.raw["furnace"]["steel-furnace"].result_inventory_size = 3
data.raw["furnace"]["electric-furnace"].result_inventory_size = 3

data.raw["furnace"]["stone-furnace"].crafting_category  = nil
data.raw["furnace"]["stone-furnace"].crafting_categories  = {"stone-smelting"}

data.raw["furnace"]["steel-furnace"].crafting_category  = nil
data.raw["furnace"]["steel-furnace"].crafting_categories  = {"stone-smelting"}

data.raw["furnace"]["electric-furnace"].crafting_category  = nil
data.raw["furnace"]["electric-furnace"].crafting_categories  = {"stone-smelting"}
