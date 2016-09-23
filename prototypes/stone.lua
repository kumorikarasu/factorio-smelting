data:extend(
{
  {
    type = "recipe",
    name = "ku-stone-brick",
    category = "stone-smelting",
    energy_required = 3.5,
    ingredients = {
      {type="item", name="stone", amount=2},
    },
    results = {
      {"stone-brick", 1}
    }
  },
  {
    type = "recipe",
    name = "ku-gravel",
    category = "ku-pulverize",
    energy_required = 2,
    ingredients = {
      {type="item", name="stone", amount=1},
    },
    results = {
      {"ku-gravel", 4}
    }
  }
}
)