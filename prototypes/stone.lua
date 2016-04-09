data:extend(
{
  {
    type = "recipe",
    name = "stone",
    category = "kumori-compression",
    energy_required = 2,
    ingredients = {
      {type="item", name="gravel", amount=6},
    },
    results = {
      {"stone", 1}
    }
  },
  {
    type = "recipe",
    name = "gravel",
    category = "kumori-pulverize",
    energy_required = 2,
    ingredients = {
      {type="item", name="stone", amount=1},
    },
    results = {
      {"gravel", 4}
    }
  }
}
)