
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
    enabled = false,
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

data.raw["technology"]["concrete"].prerequisites = {"advanced-material-processing"}
data.raw["technology"]["concrete"].unit = 
      {
        count = 50,
        ingredients =
        {
          {"science-pack-1", 1},
          {"science-pack-2", 1},
        },
        time = 30
      }