data:extend(
{
  {
    type = "recipe",
    name = "stone-from-gravel",
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
    name = "stone-brick",
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
    name = "stone-from-slag",
    category = "kumori-compression",
    energy_required = 2,
    ingredients = {
      {type="item", name="slag", amount=2},
    },
    results = {
      {"limestone", 1}
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