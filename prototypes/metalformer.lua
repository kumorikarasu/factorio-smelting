
data:extend(
{
  {
    type = "recipe-category",
    name = "kumori-metalforming"
  },
  {
    type = "item",
    name = "metalformer",
    icon = "__base__/graphics/icons/assembling-machine-1.png",
    flags = {"goes-to-quickbar"},
    subgroup = "production-machine",
    order = "a[assembling-machine-1]",
    place_result = "metalformer",
    stack_size = 50
  },
  {
    type = "recipe",
    name = "metalformer",
    enabled = true,
    ingredients =
    {
      --{type="item", name="stone-brick", amount=10},
      {type="item", name="iron-plate", amount=10},
      --{type="item", name="electronic-circuit", amount=1},
    },
    results = 
    {
      {type="item", name="metalformer", amount=1}
    }
  },
  {
    type = "recipe",
    name = "molten-steel-plate",
    category = "kumori-metalforming",
    energy_required = 1,
    ingredients = {
      {type="fluid", name="molten-steel", amount=2},
    },
    results = {
      {"steel-plate", 1}
    }
  },
  {
    type = "recipe",
    name = "copper-plate",
    category = "kumori-metalforming",
    energy_required = 1,
    enabled = true,
    ingredients = {
      {type="fluid", name="molten-copper", amount=2},
    },
    results = {
      {"copper-plate", 1}
    }
  },
  {
    type = "recipe",
    name = "iron-plate",
    category = "kumori-metalforming",
    energy_required = 1,
    enabled = true,
    ingredients = {
      {type="fluid", name="molten-iron", amount=2},
    },
    results = {
      {type="item", name="iron-plate", amount=1}
    }
  },
  {
    type = "assembling-machine",
    name = "metalformer",
    icon = "__base__/graphics/icons/assembling-machine-2.png",
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "metalformer"},
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
    fluid_boxes =
    {
      {
        production_type = "input",
        pipe_picture = assembler2pipepictures(),
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {0, 2} }}
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
    crafting_categories = {"kumori-metalforming"},
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