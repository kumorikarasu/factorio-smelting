
data:extend(
{
  {
    type = "recipe-category",
    name = "ku-pulverize"
  },
  {
    type = "item",
    name = "ku-pulverizer",
    icon = "__base__/graphics/icons/assembling-machine-1.png",
    flags = {"goes-to-quickbar"},
    subgroup = "production-machine",
    order = "a[assembling-machine-1]",
    place_result = "ku-pulverizer",
    stack_size = 50
  },
  {
    type = "recipe",
    name = "ku-pulverizer",
    enabled = false,
    ingredients =
    {
      {type="item", name="stone-brick", amount=10},
      {type="item", name="steel-plate", amount=10},
      {type="item", name="electronic-circuit", amount=5},
    },
    results = 
    {
      {type="item", name="ku-pulverizer", amount=1}
    }
  },
  {
    type = "assembling-machine",
    name = "ku-pulverizer",
    icon = "__base__/graphics/icons/assembling-machine-2.png",
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "ku-pulverizer"},
    max_health = 250,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    resistances =
    {
      {
        type = "fire",
        percent = 70
      }
    },
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    fast_replaceable_group = "assembling-machine",
    animation =
    {
      filename = "__base__/graphics/entity/assembling-machine-2/assembling-machine-2.png",
      priority = "high",
      width = 113,
      height = 99,
      frame_count = 32,
      line_length = 8,
      shift = {0.4, -0.06}
    },
    open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound = {
        {
          filename = "__base__/sound/assembling-machine-t2-1.ogg",
          volume = 0.8
        },
        {
          filename = "__base__/sound/assembling-machine-t2-2.ogg",
          volume = 0.8
        },
      },
      idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
      apparent_volume = 1.5,
    },
    crafting_categories = {"ku-pulverize"},
    crafting_speed = 1,
    ingredient_count = 4,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions = 0.05 / 1.5
    },
    energy_usage = "150kW",
  }
}
)


table.insert(data.raw["technology"]["advanced-material-processing-2"].effects, {type = "unlock-recipe", recipe = "ku-pulverizer"})


-- Pulverizer Receipies

data:extend(
{
  {
    type = "recipe",
    name = "sand",
    category = "ku-pulverize",
    energy_required = 2,
    ingredients = {
      {type="item", name="ku-gravel", amount=2},
    },
    results = {
      {"ku-sand", 1}
    }
  },
  {
    type = "recipe",
    name = "iron-dust",
    category = "ku-pulverize",
    icon = "__kumori-ores__/graphics/dust/iron-dust.png",
    subgroup = "raw-material",
    energy_required = 2,
    ingredients = {
      {type="item", name="iron-ore", amount=1},
    },
    results = {
      {type="item", name="ku-iron-dust", amount_min=2, amount_max=2, probability=1},
      {type="item", name="ku-gravel", amount_min=1, amount_max=1, probability=0.2},
      {type="item", name="ku-gold-dust", amount_min=1, amount_max=1, probability=0.02},
    }
  },
  {
    type = "recipe",
    name = "copper-dust",
    category = "ku-pulverize",
    icon = "__kumori-ores__/graphics/dust/copper-dust.png",
    subgroup = "raw-material",
    energy_required = 2,
    ingredients = {
      {type="item", name="copper-ore", amount=1},
    },
    results = {
      {type="item", name="ku-copper-dust", amount_min=2, amount_max=2, probability=1},
      {type="item", name="ku-gravel", amount_min=1, amount_max=1, probability=0.2},
      {type="item", name="ku-gold-dust", amount_min=1, amount_max=1, probability=0.02},
    }
  }
}
)