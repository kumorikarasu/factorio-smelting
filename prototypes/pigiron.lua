data:extend(
{
  {
    type = "item",
    name = "ku-pig-iron",
    icon = "__kumori-smelting__/graphics/pig-iron/pig-iron.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "raw-material",
    order = "b",
    stack_size = 100
  },
  {
    type = "recipe",
    name = "ku-pig-iron",
    icon = "__kumori-smelting__/graphics/pig-iron/pig-iron.png",
    subgroup = "raw-material",
    category = "ku-blast-smelting",
    enabled = false,
    energy_required = 120,
    ingredients =
    {
      {type="item", name="iron-plate", amount=5},
      {type="item", name="coal", amount=7},
      {type="item", name="ku-limestone", amount=3},
    },
    results = 
    {
      {type="item", name="ku-pig-iron", amount=2},
      {type="item", name="ku-slag", amount_min=1, amount_max=3, probability=0.5}
    }
  }
}
)


table.insert(data.raw["technology"]["steel-processing"].effects, {type = "unlock-recipe", recipe = "ku-pig-iron"})