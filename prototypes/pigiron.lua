data:extend(
{
  {
    type = "item",
    name = "pig-iron",
    icon = "__kumori-smelting__/graphics/pig-iron/pig-iron.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "raw-material",
    order = "b",
    stack_size = 100
  },
  {
    type = "recipe",
    name = "pig-iron",
    icon = "__kumori-smelting__/graphics/pig-iron/pig-iron.png",
    subgroup = "raw-material",
    category = "kumori-blast-smelting",
    enabled = false,
    energy_required = 30,
    ingredients =
    {
      {type="item", name="iron-plate", amount=4},
      {type="item", name="coal", amount=6},
      {type="item", name="limestone", amount=2},
    },
    results = 
    {
      {type="item", name="pig-iron", amount=2},
      {type="item", name="slag", amount_min=0, amount_max=2, probability=0.5}
    }
  }
}
)

table.insert(data.raw["technology"]["steel-processing"].effects, {type = "unlock-recipe", recipe = "pig-iron"})