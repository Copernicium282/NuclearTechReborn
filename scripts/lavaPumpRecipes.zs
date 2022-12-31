import mods.modularmachinery.RecipeBuilder;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.oredict.IOreDict;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.item.IIngredient;


val lava_ps = RecipeBuilder.newBuilder("lava_ps", "lava_pump", 1);
lava_ps.addYRequirement(35.0, 65.0);
lava_ps.addBiomeRequirement(["biomesoplenty:corrupted_sands","biomesoplenty:fungi_forest","minecraft:hell","biomesoplenty:undergarden",]);
lava_ps.addEnergyPerTickInput(300);
lava_ps.addFluidOutput(<liquid:lava> * 200);
lava_ps.build();

val lava_refined_ps = RecipeBuilder.newBuilder("lava_refined_ps", "lava_pump", 1);
lava_refined_ps.addYRequirement(35.0, 65.0);
lava_refined_ps.addBiomeRequirement(["biomesoplenty:phantasmagoric_inferno","advancedrocketry:volcanic","biomesoplenty:volcanic_island","advancedrocketry:volcanicbarren"]);
lava_refined_ps.addEnergyPerTickInput(300);
lava_refined_ps.addFluidOutput(<liquid:enrichedlava> * 200);
lava_refined_ps.build();

//Tier 2, +50RF/t for  +100mB/t of fluid

val tier_a_lava_ps = RecipeBuilder.newBuilder("tier_a_lava_ps", "lava_pump_basic", 1);
tier_a_lava_ps.addYRequirement(35.0, 65.0);
tier_a_lava_ps.addBiomeRequirement(["biomesoplenty:corrupted_sands","biomesoplenty:fungi_forest","minecraft:hell","biomesoplenty:undergarden",]);
tier_a_lava_ps.addEnergyPerTickInput(350);
tier_a_lava_ps.addFluidOutput(<liquid:lava> * 300);
tier_a_lava_ps.build();

val tier_a_lava_refined_ps = RecipeBuilder.newBuilder("tier_a_lava_refined_ps", "lava_pump_basic", 1);
tier_a_lava_refined_ps.addYRequirement(35.0, 65.0);
tier_a_lava_refined_ps.addBiomeRequirement(["biomesoplenty:phantasmagoric_inferno","advancedrocketry:volcanic","biomesoplenty:volcanic_island","advancedrocketry:volcanicbarren"]);
tier_a_lava_refined_ps.addEnergyPerTickInput(350);
tier_a_lava_refined_ps.addFluidOutput(<liquid:enrichedlava> * 300);
tier_a_lava_refined_ps.build();

//Tier 3, +100RF/t for +200mB/t of fluid

val tier_b_lava_ps = RecipeBuilder.newBuilder("tier_b_lava_ps", "lava_pump_advanced", 1);
tier_b_lava_ps.addYRequirement(35.0, 65.0);
tier_b_lava_ps.addBiomeRequirement(["biomesoplenty:corrupted_sands","biomesoplenty:fungi_forest","minecraft:hell","biomesoplenty:undergarden",]);
tier_b_lava_ps.addEnergyPerTickInput(400);
tier_b_lava_ps.addFluidOutput(<liquid:lava> * 400);
tier_b_lava_ps.build();

val tier_b_lava_refined_ps = RecipeBuilder.newBuilder("tier_b_lava_refined_ps", "lava_pump_advanced", 1);
tier_b_lava_refined_ps.addYRequirement(35.0, 65.0);
tier_b_lava_refined_ps.addBiomeRequirement(["biomesoplenty:phantasmagoric_inferno","advancedrocketry:volcanic","biomesoplenty:volcanic_island","advancedrocketry:volcanicbarren"]);
tier_b_lava_refined_ps.addEnergyPerTickInput(400);
tier_b_lava_refined_ps.addFluidOutput(<liquid:enrichedlava> * 400);
tier_b_lava_refined_ps.build();