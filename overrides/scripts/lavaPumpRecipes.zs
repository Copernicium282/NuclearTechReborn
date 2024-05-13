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
