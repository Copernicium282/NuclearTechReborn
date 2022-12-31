import mods.modularmachinery.RecipeBuilder;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.oredict.IOreDict;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.item.IIngredient;

val t3_miner_chestplate = RecipeBuilder.newBuilder("t3_miner_chestplate", "charging_station", 360);
t3_miner_chestplate.addEnergyPerTickInput(10);
t3_miner_chestplate.addItemInput(<techguns:t3_miner_chestplate>.withTag({power: 0}) * 1);
t3_miner_chestplate.addItemOutput(<techguns:t3_miner_chestplate>.withTag({power: 3600}) * 1);
t3_miner_chestplate.build();