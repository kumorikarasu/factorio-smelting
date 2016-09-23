

require("prototypes.iron") -- Allows molten iron
require("prototypes.copper") -- Allows molten copper

require("prototypes.steel") -- Allows molten steel (made from pig iron)
require("prototypes.stone") -- Allows alternative ways to get stone
require("prototypes.pigiron") -- Allows pig iron ingots
require("prototypes.slag") -- Byprouct from smelting

require("prototypes.smelter") -- Melts down metals, also turns pig iron to molten steel
require("prototypes.blastfurnace") -- iron, coal, stone -> pig iron
require("prototypes.metalformer") -- turns ingots into plates

require("prototypes.pulverizer") -- break items into gravel/sand
require("prototypes.compressor") -- reforms broken items


require("prototypes.furnace") -- turns raw ore into ingots
require("prototypes.crafting") -- turns ingots into plates

require("prototypes.brick") -- turns ingots into plates
require("prototypes.brick-furnace") -- turns ingots into plates

--Default receipes to disable
data.raw.recipe["steel-plate"].group = "unused"


table.insert(data.raw["technology"]["steel-processing"].effects, {type = "unlock-recipe", recipe = "ku-pig-iron"})



--Support for bobs mods
--if bobmods and bobmods.config and bOBmods.config.ores then
--  if bobmods.config.ores.EnableBauxite then
--    require("prototypes.bauxite")
--  end
--  if bobmods.config.ores.EnableCobaltOre then
--    require("prototypes.cobalt")
--  end
--  if bobmods.config.ores.EnableGemsOre then
--    require("prototypes.cobalt")
--  end
--  if bobmods.config.ores.EnableGoldOre then
--    require("prototypes.gold")
--  end
--  if bobmods.config.ores.EnableLeadOre then
--    require("prototypes.lead")
--  end
--  if bobmods.config.ores.EnableNickelOre then
--    require("prototypes.nickel")
--  end
--  if bobmods.config.ores.EnableRutile then
--    require("prototypes.rutile")
--  end
--  if bobmods.config.ores.EnableSilverOre then
--    require("prototypes.silver")
--  end
--  if bobmods.config.ores.EnableTinOre then
--    require("prototypes.tin")
--  end
--  if bobmods.config.ores.EnableZincOre then
--    require("prototypes.zinc")
--  end
--end