
data:extend(
{
  {
    type = "fluid",
    name = "molten-iron",
    default_temperature = 1370,
    max_temperature = 1510,
    heat_capacity = "10KJ",
    base_color = {r=1, g=0.5, b=0.0},
    flow_color = {r=1, g=0.7, b=0.0},
    icon = "__base__/graphics/icons/iron-plate.png",
    order = "a[fluid]-d[steel]",
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
  },
  {
    type = "recipe",
    name = "molten-iron-from-ore",
    category = "kumori-smelting",
    icon = "__base__/graphics/icons/iron-plate.png",
    subgroup = "fluid",
    energy_required = 13.5,
    ingredients = {{"iron-ore", 1}},
    results = {
      {type="item", name="slag", amount=1},
      {type="fluid", name="molten-iron", amount=4},
    }
  },
  { -- Advanced Steel Manufacturing to unlock this, Allows skipping blast furnace
    -- Can only be done in the Alloy Smelter
    type = "recipe",
    name = "molten-steel-from-iron-ore",
    category = "kumori-smelting",
    energy_required = 10,
    enabled = false
    icon = "__base__/graphics/icons/iron-plate.png",
    subgroup = "fluid",
    ingredients = {
      {"iron-ore", 1},
      {"coal", 4}
    },
    results = {
      {type="item", name="slag", amount=1},
      {type="fluid", name="molten-steel", amount=4},
    }
  },
  {
    type = "recipe",
    name = "molten-iron-from-plate",
    category = "kumori-smelting",
    energy_required = 8,
    ingredients = {{"iron-plate", 2}},
    results = {
      {type="fluid", name="molten-iron", amount=4},
    }
  }
}
)