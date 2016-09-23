
data:extend(
{
  {
    type = "fluid",
    name = "ku-molten-steel",
    default_temperature = 1370,
    max_temperature = 1510,
    heat_capacity = "10KJ",
    base_color = {r=1, g=0.5, b=0.0},
    flow_color = {r=1, g=0.7, b=0.0},
    icon = "__base__/graphics/icons/steel-plate.png",
    order = "a[fluid]-d[steel]",
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
  },
  {
    type = "recipe",
    name = "ku-molten-steel",
    category = "ku-smelting",
    energy_required = 10,
    ingredients = {{"ku-pig-iron", 1}},
    results = {
      {type="fluid", name="ku-molten-steel", amount=5},
    }
  },
  {
    type = "recipe",
    name = "ku-molten-steel-plate",
    category = "ku-metalforming",
    energy_required = 2,
    ingredients = {
      {type="fluid", name="ku-molten-steel", amount=10},
    },
    results = {
      {"steel-plate", 1}
    }
  },
  {
    -- Receipe for smelting pig-iron in a furnace, terrible yield, required to build smeltery
    type = "recipe",
    name = "ku-steel-plate",
    category = "smelting",
    energy_required = 240,
    ingredients = {{"ku-pig-iron", 5}},
    results = {
      {type="item", name="steel-plate", amount=1},
    }
  }
}
)