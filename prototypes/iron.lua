
data:extend(
{
  {
    type = "fluid",
    name = "ku-molten-iron",
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
    name = "ku-molten-iron-from-ore",
    category = "ku-smelting",
    icon = "__base__/graphics/icons/iron-plate.png",
    subgroup = "fluid",
    energy_required = 5,
    ingredients = {{"iron-ore", 1}},
    results = {
      {type="item", name="ku-slag", amount_min=1, amount_max=1, probability=0.5},
      {type="fluid", name="ku-molten-iron", amount=4},
    }
  },
  {
    type = "recipe",
    name = "ku-molten-iron-from-dust",
    category = "ku-smelting",
    icon = "__base__/graphics/icons/iron-plate.png",
    subgroup = "fluid",
    energy_required = 2,
    ingredients = {{"ku-iron-dust", 1}},
    results = {
      {type="fluid", name="ku-molten-iron", amount=3},
    }
  },
  { -- Advanced Steel Manufacturing to unlock this, Allows skipping blast furnace
    -- Can only be done in the Alloy Smelter
    type = "recipe",
    name = "ku-molten-steel-from-iron-ore",
    category = "ku-smelting",
    energy_required = 10,
    enabled = false,
    icon = "__base__/graphics/icons/iron-plate.png",
    subgroup = "fluid",
    ingredients = {
      {"iron-ore", 1},
      {"coal", 4}
    },
    results = {
      {type="item", name="ku-slag", amount_min=1, amount_max=1, probability=0.5},
      {type="fluid", name="ku-molten-steel", amount=4},
    }
  },
  {
    type = "recipe",
    name = "ku-molten-iron-from-plate",
    category = "ku-smelting",
    energy_required = 3.5,
    ingredients = {{"iron-plate", 2}},
    results = {
      {type="fluid", name="ku-molten-iron", amount=4},
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
      {type="item", name="ku-slag", amount_min=1, amount_max=1, probability=0.5},
      {type="item", name="iron-plate", amount=1}
    }
  },
  {
    type = "recipe",
    name = "iron-plate-from-molten",
    category = "ku-metalforming",
    energy_required = 1,
    enabled = true,
    ingredients = {
      {type="fluid", name="ku-molten-iron", amount=3},
    },
    results = {
      {type="item", name="iron-plate", amount=1}
    }
  }
}
)