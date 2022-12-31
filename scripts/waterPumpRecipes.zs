import mods.modularmachinery.RecipeBuilder;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.oredict.IOreDict;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.item.IIngredient;


val water_ps = RecipeBuilder.newBuilder("water_ps", "water_pump", 1);
water_ps.addYRequirement(35.0, 65.0);
water_ps.addBiomeRequirement(["minecraft:ocean", "minecraft:river", "minecraft:beaches", "minecraft:stone_beach", "biomesoplenty:gravel_beach", "biomesoplenty:white_beach", "biomesoplenty:origin_beach", "biomesoplenty:coral_reef", "biomesoplenty:kelp_forest", "trinity:contaminated_ocean"]);
water_ps.addEnergyPerTickInput(200);
water_ps.addFluidOutput(<liquid:water> * 300);
water_ps.build();

val water_cold_ps = RecipeBuilder.newBuilder("water_cold_ps", "water_pump", 1);
water_cold_ps.addYRequirement(35.0, 65.0);
water_cold_ps.addBiomeRequirement(["minecraft:frozen_ocean", "minecraft:frozen_river", "minecraft:deep_ocean", "minecraft:cold_beach", "advancedrocketry:oceanspires"]);
water_cold_ps.addEnergyPerTickInput(200);
water_cold_ps.addFluidOutput(<liquid:condensate_water> * 300);
water_cold_ps.build();

//Tier 2, +50RF/t for  +100mB/t of fluid

val tier_a_water_ps = RecipeBuilder.newBuilder("tier_a_water_ps", "water_pump_basic", 1);
tier_a_water_ps.addYRequirement(35.0, 65.0);
tier_a_water_ps.addBiomeRequirement(["minecraft:ocean", "minecraft:river", "minecraft:beaches", "minecraft:stone_beach", "biomesoplenty:gravel_beach", "biomesoplenty:white_beach", "biomesoplenty:origin_beach", "biomesoplenty:coral_reef", "biomesoplenty:kelp_forest", "trinity:contaminated_ocean"]);
tier_a_water_ps.addEnergyPerTickInput(250);
tier_a_water_ps.addFluidOutput(<liquid:water> * 400);
tier_a_water_ps.build();

val tier_a_water_cold_ps = RecipeBuilder.newBuilder("tier_a_water_cold_ps", "water_pump_basic", 1);
tier_a_water_cold_ps.addYRequirement(35.0, 65.0);
tier_a_water_cold_ps.addBiomeRequirement(["minecraft:frozen_ocean", "minecraft:frozen_river", "minecraft:deep_ocean", "minecraft:cold_beach", "advancedrocketry:oceanspires"]);
tier_a_water_cold_ps.addEnergyPerTickInput(250);
tier_a_water_cold_ps.addFluidOutput(<liquid:condensate_water> * 400);
tier_a_water_cold_ps.build();

//Tier 3, +100RF/t for +200mB/t of fluid

val tier_b_water_ps = RecipeBuilder.newBuilder("tier_b_water_ps", "water_pump_advanced", 1);
tier_b_water_ps.addYRequirement(35.0, 65.0);
tier_b_water_ps.addBiomeRequirement(["minecraft:ocean", "minecraft:river", "minecraft:beaches", "minecraft:stone_beach", "biomesoplenty:gravel_beach", "biomesoplenty:white_beach", "biomesoplenty:origin_beach", "biomesoplenty:coral_reef", "biomesoplenty:kelp_forest", "trinity:contaminated_ocean"]);
tier_b_water_ps.addEnergyPerTickInput(300);
tier_b_water_ps.addFluidOutput(<liquid:water> * 500);
tier_b_water_ps.build();

val tier_b_water_cold_ps = RecipeBuilder.newBuilder("tier_b_water_cold_ps", "water_pump_advanced", 1);
tier_b_water_cold_ps.addYRequirement(35.0, 65.0);
tier_b_water_cold_ps.addBiomeRequirement(["minecraft:frozen_ocean", "minecraft:frozen_river", "minecraft:deep_ocean", "minecraft:cold_beach", "advancedrocketry:oceanspires"]);
tier_b_water_cold_ps.addEnergyPerTickInput(300);
tier_b_water_cold_ps.addFluidOutput(<liquid:condensate_water> * 500);
tier_b_water_cold_ps.build();