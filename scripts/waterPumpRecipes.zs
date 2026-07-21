import mods.modularmachinery.RecipeBuilder;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.oredict.IOreDict;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.item.IIngredient;


val water_ps = RecipeBuilder.newBuilder("water_ps", "water_pump", 1);
water_ps.addYRequirement(35.0, 65.0);
water_ps.addBiomeRequirement(["minecraft:ocean", "minecraft:river", "minecraft:beaches", "minecraft:stone_beach", "biomesoplenty:gravel_beach", "biomesoplenty:white_beach", "biomesoplenty:origin_beach", "biomesoplenty:coral_reef", "biomesoplenty:kelp_forest"]);
water_ps.addEnergyPerTickInput(100);
water_ps.addFluidOutput(<liquid:water> * 250);
water_ps.build();

val water_cold_ps = RecipeBuilder.newBuilder("water_cold_ps", "water_pump", 1);
water_cold_ps.addYRequirement(35.0, 65.0);
water_cold_ps.addBiomeRequirement(["minecraft:frozen_ocean", "minecraft:frozen_river", "minecraft:deep_ocean", "minecraft:cold_beach", "advancedrocketry:oceanspires"]);
water_cold_ps.addEnergyPerTickInput(100);
water_cold_ps.addFluidOutput(<liquid:condensate_water> * 250);
water_cold_ps.build();

val contaminated_water = RecipeBuilder.newBuilder("contaminated_water", "water_pump", 1);
contaminated_water.addYRequirement(35.0, 65.0);
contaminated_water.addBiomeRequirement(["trinity:contaminated_ocean"]);
contaminated_water.addEnergyPerTickInput(100);
contaminated_water.addFluidOutput(<liquid:contaminated_water> * 250);
contaminated_water.build();