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

val four_stage_uf6_processing = RecipeBuilder.newBuilder("UF6_processing", "gas_centrifuge", 1200);
four_stage_uf6_processing.addItemInput(<hbm:cell:29> * 1);
four_stage_uf6_processing.addItemOutput(<nuclearcraft:uranium:5> * 1);
four_stage_uf6_processing.addItemOutput(<nuclearcraft:uranium:10> * 9);
four_stage_uf6_processing.build();
