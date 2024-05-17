import mods.modularmachinery.RecipeBuilder;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.oredict.IOreDict;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.item.IIngredient;
import mods.nuclearcraft.Separator;
import mods.ncsteamadditions.steam_washer;

mods.nuclearcraft.Separator.removeRecipeWithOutput(<nuclearcraft:uranium:10>*9, <nuclearcraft:uranium:5>*1);
mods.nuclearcraft.Centrifuge.removeRecipeWithInput(<liquid:uranium>*160);
mods.ncsteamadditions.steam_washer.removeRecipeWithOutput(<nuclearcraft:uranium:5>);

val leuf = RecipeBuilder.newBuilder("leuf", "gas_centrifuge", 120);
leuf.addFluidInput(<liquid:uf6> * 1000);
leuf.addFluidOutput(<liquid:uranium_hexafluoride_low> * 800);
leuf.addItemOutput(<nuclearcraft:uranium:10> * 4);
leuf.build();

val meuf = RecipeBuilder.newBuilder("meuf", "gas_centrifuge", 120);
meuf.addFluidInput(<liquid:uranium_hexafluoride_low> * 800);
meuf.addFluidOutput(<liquid:uranium_hexafluoride_medium> * 500);
meuf.addItemOutput(<nuclearcraft:uranium:10> * 2);
meuf.build();

val heuf = RecipeBuilder.newBuilder("heuf", "gas_centrifuge", 120);
heuf.addFluidInput(<liquid:uranium_hexafluoride_medium> * 500);
heuf.addFluidOutput(<liquid:uranium_hexafluoride_high> * 200);
heuf.addItemOutput(<nuclearcraft:uranium:10> * 1);
heuf.addItemOutput(<nuclearcraft:uranium:5> * 2);
heuf.build();

val nuclearfuel = RecipeBuilder.newBuilder("nuclearfuel", "gas_centrifuge", 120);
nuclearfuel.addFluidInput(<liquid:uranium_hexafluoride_high> * 200);
nuclearfuel.addItemOutput(<nuclearcraft:uranium:0> * 1);
nuclearfuel.addItemOutput(<nuclearcraft:uranium:5> * 1);
nuclearfuel.addItemOutput(<nuclearcraft:gem_dust:5> * 3);
nuclearfuel.build();