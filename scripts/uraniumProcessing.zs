import mods.modularmachinery.RecipeBuilder;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.oredict.IOreDict;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.item.IIngredient;
import mods.nuclearcraft.Separator;

mods.nuclearcraft.Separator.removeRecipeWithOutput(<nuclearcraft:uranium:10>*9, <nuclearcraft:uranium:5>*1);

val yellowcake_processing = RecipeBuilder.newBuilder("yellowcake_processing", "chemical_plant", 300);
yellowcake_processing.addItemInput(<nuclearcraft:dust:4> * 12);
yellowcake_processing.addItemInput(<mekanism:otherdust:3> * 8);
yellowcake_processing.addFluidInput(<liquid:water> * 1000);
yellowcake_processing.addItemOutput(<contenttweaker:powder_yellowcake> * 2);
yellowcake_processing.addEnergyPerTickInput(100);
yellowcake_processing.build();

val uranium_hexafluoride_processing = RecipeBuilder.newBuilder("uranium_hexafluoride_processing", "chemical_plant", 300);
uranium_hexafluoride_processing.addItemInput(<contenttweaker:powder_yellowcake> * 1);
uranium_hexafluoride_processing.addItemInput(<nuclearcraft:gem_dust:5> * 3);
uranium_hexafluoride_processing.addFluidInput(<liquid:water> * 1000);
uranium_hexafluoride_processing.addItemOutput(<mekanism:otherdust:3> * 4);
uranium_hexafluoride_processing.addFluidOutput(<liquid:uranium_hexafluoride> * 200);
uranium_hexafluoride_processing.addEnergyPerTickInput(100);
uranium_hexafluoride_processing.build();

val leuf = RecipeBuilder.newBuilder("leuf", "gas_centrifuge", 120);
leuf.addFluidInput(<liquid:uranium_hexafluoride> * 1000);
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