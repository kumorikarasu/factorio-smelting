
data:extend(
{
  {
    type = "fluid",
    name = "molten-copper",
    default_temperature = 1370,
    max_temperature = 1510,
    heat_capacity = "10KJ",
    base_color = {r=1, g=0.5, b=0.0},
    flow_color = {r=1, g=0.7, b=0.0},
    icon = "__base__/graphics/icons/copper-plate.png",
    order = "a[fluid]-d[steel]",
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
  },
  {
    type = "recipe",
    name = "molten-copper-from-ore",
    category = "kumori-smelting",
    icon = "__base__/graphics/icons/copper-plate.png",
    subgroup = "fluid",
    energy_required = 10,
    ingredients = {{"copper-ore", 1}},
    results = {
      {type="fluid", name="molten-copper", amount=4},
    }
  }
}
)