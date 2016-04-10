
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
    energy_required = 5,
    ingredients = {{"iron-ore", 1}},
    results = {
      {type="item", name="slag", amount_min=1, amount_max=1, probability=0.5},
      {type="fluid", name="molten-iron", amount=4},
    }
  },
  {
    type = "recipe",
    name = "molten-iron-from-dust",
    category = "kumori-smelting",
    icon = "__base__/graphics/icons/iron-plate.png",
    subgroup = "fluid",
    energy_required = 2,
    ingredients = {{"iron-dust", 1}},
    results = {
      {type="fluid", name="molten-iron", amount=3},
    }
  },
  { -- Advanced Steel Manufacturing to unlock this, Allows skipping blast furnace
    -- Can only be done in the Alloy Smelter
    type = "recipe",
    name = "molten-steel-from-iron-ore",
    category = "kumori-smelting",
    energy_required = 10,
    enabled = false,
    icon = "__base__/graphics/icons/iron-plate.png",
    subgroup = "fluid",
    ingredients = {
      {"iron-ore", 1},
      {"coal", 4}
    },
    results = {
      {type="item", name="slag", amount_min=1, amount_max=1, probability=0.5},
      {type="fluid", name="molten-steel", amount=4},
    }
  },
  {
    type = "recipe",
    name = "molten-iron-from-plate",
    category = "kumori-smelting",
    energy_required = 3.5,
    ingredients = {{"iron-plate", 2}},
    results = {
      {type="fluid", name="molten-iron", amount=4},
    }
  },
  {
    type = "recipe",
    name = "iron-plate",
    category = "smelting",
    icon = "__base__/graphics/icons/iron-plate.png",
    energy_required = 3.5,
    ingredients = {{"iron-ore", 1}},
    subgroup = "raw-material",
    results = {
      {type="item", name="slag", amount_min=1, amount_max=1, probability=0.5},
      {type="item", name="iron-plate", amount=1}
    }
  },
  {
    type = "recipe",
    name = "iron-plate-from-molten",
    category = "kumori-metalforming",
    energy_required = 1,
    enabled = true,
    ingredients = {
      {type="fluid", name="molten-iron", amount=3},
    },
    results = {
      {type="item", name="iron-plate", amount=1}
    }
  }
}
)