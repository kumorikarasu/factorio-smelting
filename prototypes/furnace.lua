
-- make all furnaces 3 inventory
for i,v in ipairs(data.raw["furnace"]) do
  v[i].result_inventory_size = 3;
end
