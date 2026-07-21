import mods.modularmachinery.RecipeBuilder;
import mods.nuclearcraft.Pressurizer;
import mods.nuclearcraft.ElectricFurnace;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.oredict.IOreDict;
import crafttweaker.item.IIngredient;
import mods.nuclearcraft.Manufactory;
import crafttweaker.liquid.ILiquidStack;

// fix charcoal production to use only combination oven in early game
// mods.nuclearcraft.ElectricFurnace.removeRecipeWithInput(<ore:logWood>);
furnace.remove(<ore:logWood>, <ore:charcoal>);

//Pollutant release upon mining lignite ore
<ore:oreCoal>.add(<hbm:ore_lignite>);

//Add HBM steel plate to oredict
<ore:plateSteel>.add(<hbm:plate_steel>);

//Remove Osmiridium from oredict(VIMP)
<ore:ingotOsmiridium>.remove(<qmd:ingot_alloy:4>);

//HBM press act stupid
mods.nuclearcraft.Pressurizer.removeRecipeWithOutput(<libvulpes:productplate:1>);
mods.nuclearcraft.Pressurizer.removeRecipeWithOutput(<libvulpes:productplate:2>);
mods.nuclearcraft.Pressurizer.removeRecipeWithOutput(<libvulpes:productplate:4>);
mods.nuclearcraft.Pressurizer.removeRecipeWithOutput(<libvulpes:productplate:6>);
mods.nuclearcraft.Pressurizer.removeRecipeWithOutput(<libvulpes:productplate:7>);
mods.nuclearcraft.Pressurizer.removeRecipeWithOutput(<libvulpes:productplate:9>);

mods.nuclearcraft.Pressurizer.addRecipe(<minecraft:iron_ingot>, <hbm:plate_iron>);
mods.nuclearcraft.Pressurizer.addRecipe(<minecraft:gold_ingot>, <hbm:plate_gold>);
mods.nuclearcraft.Pressurizer.addRecipe(<ore:ingotTitanium>, <hbm:plate_titanium>);
mods.nuclearcraft.Pressurizer.addRecipe(<ore:ingotCopper>, <hbm:plate_copper>);
mods.nuclearcraft.Pressurizer.addRecipe(<ore:ingotAluminum>, <hbm:plate_aluminium>);
mods.nuclearcraft.Pressurizer.addRecipe(<ore:ingotSteel>, <hbm:plate_steel>);

//Steam Condensation
//MkI
val exhaust_steam = RecipeBuilder.newBuilder("exhaust_steam", "steam_condenser_mk1", 1);
exhaust_steam.addFluidInput(<liquid:exhaust_steam> * 16);
exhaust_steam.addFluidOutput(<liquid:water> * 1);
exhaust_steam.build();

val low_quality_steam = RecipeBuilder.newBuilder("low_quality_steam", "steam_condenser_mk1", 1);
low_quality_steam.addFluidInput(<liquid:low_quality_steam> * 32);
low_quality_steam.addFluidOutput(<liquid:water> * 1);
low_quality_steam.build();

//MkII
val exhaust_steam_2 = RecipeBuilder.newBuilder("exhaust_steam_2", "steam_condenser_mk2", 1);
exhaust_steam_2.addFluidInput(<liquid:exhaust_steam> * 80);
exhaust_steam_2.addFluidOutput(<liquid:water> * 5);
exhaust_steam_2.build();

val low_quality_steam_2 = RecipeBuilder.newBuilder("low_quality_steam_2", "steam_condenser_mk2", 1);
low_quality_steam_2.addFluidInput(<liquid:low_quality_steam> * 160);
low_quality_steam_2.addFluidOutput(<liquid:water> * 5);
low_quality_steam_2.build();

//MkIII
val exhaust_steam_3 = RecipeBuilder.newBuilder("exhaust_steam_3", "steam_condenser_mk3", 1);
exhaust_steam_3.addFluidInput(<liquid:exhaust_steam> * 400);
exhaust_steam_3.addFluidOutput(<liquid:water> * 25);
exhaust_steam_3.build();

val low_quality_steam_3 = RecipeBuilder.newBuilder("low_quality_steam_3", "steam_condenser_mk3", 1);
low_quality_steam_3.addFluidInput(<liquid:low_quality_steam> * 800);
low_quality_steam_3.addFluidOutput(<liquid:water> * 25);
low_quality_steam_3.build();


//you did so much to come down here im proud of u
//modpack was really dead and i didnt think someone is so not lazy to pull down the scrollbar
//to get rewarded, dm me on discord and ill give you a special role :)

// --- Custom Recipes ---

// Light Bricks Custom Recipe
recipes.remove(<hbm:brick_light>);
recipes.addShaped("hbm_brick_light_custom", <hbm:brick_light>, [
    [<minecraft:sand>, <minecraft:clay_ball>, <minecraft:sand>],
    [<minecraft:clay_ball>, <hbm:mold:12>, <minecraft:clay_ball>],
    [<minecraft:sand>, <minecraft:clay_ball>, <minecraft:sand>]
]);
