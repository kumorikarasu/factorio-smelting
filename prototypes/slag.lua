
data:extend(
{
  {
  type = "item",
  name = "slag",
  icon = "__kumori-smelting__/graphics/slag/slag.png",
  flags = {"goes-to-main-inventory"},
  subgroup = "raw-material",
  order = "f",
  stack_size = 200
  },
  {
    type = "recipe",
    name = "concrete",
    energy_required = 10,
    enabled = true,
    category = "crafting-with-fluid",
    ingredients =
    {
      {"slag", 5},
      {"gravel", 5},
      {type="fluid", name="water", amount=10}
    },
    result= "concrete",
    result_count = 2
  }
}
)