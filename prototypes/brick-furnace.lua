 data:extend(
{
  {
    type = "item-subgroup",
    group = "intermediate-products",
    name = "ku-brick-smelting",
    order = "a",
  },
  {
    type = "item",
    name = "ku-brick-furnace",
    icon = "__kumori-smelting__/graphics/icons/brick-furnace.png",
    flags = {"goes-to-quickbar"},
    subgroup = "smelting-machine",
    order = "b[blast-furnace]",
    place_result = "ku-brick-furnace",
    stack_size = 50
  },
  {
    type = "recipe",
    name = "ku-brick-furnace",
    enabled = true,
    ingredients =
    {
      {type="item", name="stone-brick", amount=10},
      {type="item", name="ku-brick", amount=10},
    },
    results = 
    {
      {type="item", name="ku-brick-furnace", amount=1}
    }
  },
  {
    type = "furnace",
    name = "ku-brick-furnace",
    icon = "__kumori-smelting__/graphics/brick-furnace/brick-furnace.png",
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {mining_time = 1, result = "ku-brick-furnace"},
    max_health = 150,
    corpse = "medium-remnants",
    repair_sound = { filename = "__base__/sound/manual-repair-simple.ogg" },
    mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },
    open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
    vehicle_impact_sound =  { filename = "__base__/sound/car-stone-impact.ogg", volume = 1.0 },
    working_sound =
    {
      sound = { filename = "__base__/sound/furnace.ogg", }
    },
    resistances =
    {
      {
        type = "fire",
        percent = 80
      },
      {
        type = "explosion",
        percent = 30
      }
    },
    collision_box = {{-0.7, -0.7}, {0.7, 0.7}},
    selection_box = {{-0.8, -1}, {0.8, 1}},
    crafting_categories = {"smelting", "stone-smelting"},
    result_inventory_size = 3,
    energy_usage = "180kW",
    crafting_speed = 1,
    source_inventory_size = 1,
    ingredient_count = 3,
    energy_source =
    {
      type = "burner",
      effectivity = 1,
      fuel_inventory_size = 1,
      emissions = 0.01,
      smoke =
      {
        {
          name = "smoke",
          deviation = {0.1, 0.1},
          frequency = 5,
          position = {0.0, -0.8},
          starting_vertical_speed = 0.08,
          starting_frame_deviation = 60
        }
      }
    },
    animation =
    {
      filename = "__kumori-smelting__/graphics/brick-furnace/brick-furnace.png",
      priority = "extra-high",
      width = 81,
      height = 64,
      frame_count = 1,
      shift = {0.5, 0.05 }
    },
    working_visualisations =
    {
      {
        north_position = {0.0, 0.0},
        east_position = {0.0, 0.0},
        south_position = {0.0, 0.0},
        west_position = {0.0, 0.0},
        animation =
        {
          filename = "__base__/graphics/entity/stone-furnace/stone-furnace-fire.png",
          priority = "extra-high",
          line_length = 8,
          width = 22,
          height = 87,
          frame_count = 48,
          axially_symmetrical = false,
          direction_count = 1,
          shift = {0.0625, -0.453125},
        },
        light = {intensity = 1, size = 1}
      }
    },
    fast_replaceable_group = "furnace"
  }
}
)