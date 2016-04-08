
data:extend(
{
  {
    type = "fluid",
    name = "molten-steel",
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
    name = "molten-steel",
    category = "kumori-smelting",
    energy_required = 13.5,
    ingredients = {{"pig-iron", 1}},
    results = {
      {type="fluid", name="molten-steel", amount=4},
    }
  },
  {
    type = "recipe",
    name = "molten-steel",
    category = "kumori-smelting",
    energy_required = 13.5,
    ingredients = {{"pig-iron", 1}},
    results = {
      {type="fluid", name="molten-steel", amount=4},
    }
  },
  {
    -- Receipe for smelting pig-iron in a furnace, terrible yield, required to build smeltery
    type = "recipe",
    name = "steel-plate",
    category = "smelting",
    energy_required = 60,
    ingredients = {{"pig-iron", 2}},
    results = {
      {type="item", name="steel-plate", amount=1},
    }
  },
}
)