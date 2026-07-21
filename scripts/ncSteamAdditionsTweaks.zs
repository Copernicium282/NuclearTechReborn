import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.oredict.IOreDict;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;
import mods.ncsteamadditions.steam_crusher;
import mods.ncsteamadditions.steam_boiler;
import mods.ncsteamadditions.steam_transformer;
import mods.ncsteamadditions.steam_fluid_transformer;
import mods.ncsteamadditions.steam_blender;
import mods.nuclearcraft.ChemicalReactor;
import mods.ncsteamadditions.steam_washer;
import mods.nuclearcraft.FissionIrradiator;

// make digitransformer a lot expensive
mods.nuclearcraft.FissionIrradiator.removeRecipeWithOutput(<ncsteamadditions:core_of_transformation>);
mods.ncsteamadditions.steam_crusher.addRecipe(<appliedenergistics2:material:43>, <liquid:schrabidic_fluid>*1000, <ncsteamadditions:core_of_transformation>*4);

// add copper plate to copper sheet oredict
<ore:copperSheet>.addAll(<ore:plateCopper>);

// modify machine recipes
recipes.removeByRecipeName("ncsteamadditions:tile.ncsteamadditions.heat_exchanger");
recipes.addShaped("Heat Exchanger", <ncsteamadditions:heat_exchanger>,
[[<minecraft:glass_pane>, <nuclearcraft:heat_exchanger_tube_thermoconducting>, <minecraft:glass_pane>],
[<ore:copperSheet>, <nuclearcraft:heat_exchanger_tube_thermoconducting>, <ore:copperSheet>],
[<minecraft:iron_bars>, <ncsteamadditions:pipe>, <minecraft:iron_bars>]]);

recipes.removeByRecipeName("ncsteamadditions:tile.ncsteamadditions.steam_compactor");
recipes.addShaped("Steam Compactor", <ncsteamadditions:steam_compactor>,
[[<minecraft:piston>, <ore:copperSheet>, <minecraft:piston>],
[<ore:copperSheet>, <nuclearcraft:part:10>, <ore:copperSheet>],
[<hbm:fluid_tank_empty>, <ncsteamadditions:pipe>, <hbm:fluid_tank_empty>]]);

recipes.removeByRecipeName("ncsteamadditions:tile.ncsteamadditions.steam_transformer");
recipes.addShaped("Steam Transformer", <ncsteamadditions:steam_transformer>,
[[<hbm:plate_cast:2600>, <hbm:machine_compressor>, <hbm:plate_cast:2600>],
[<hbm:stamp_obsidian_flat>, <nuclearcraft:part:10>, <hbm:stamp_obsidian_flat>],
[<hbm:fluid_tank_empty>, <ncsteamadditions:pipe>, <hbm:fluid_tank_empty>]]);

// Low tier fuel
<ore:lowFuel>.add(<minecraft:coal:0>, <minecraft:coal:1>, <hbm:ingot_graphite>, <nuclearcraft:ingot:8>, <nuclearcraft:dust:8>, <nuclearcraft:gem_dust:7>, <hbm:powder_lignite>, <hbm:powder_coal>, <hbm:briquette:0>, <hbm:briquette:1>);
<ore:lowFuel>.addAll(<ore:coke>);

// High Tier Fuel
<ore:highFuel>.add(<nuclearcraft:ingot_block:8>, <hbm:solid_fuel_presto_triplet>, <ncsteamadditions:compressed_coal>, <thermalfoundation:material:1024>);
<ore:highFuel>.addAll(<ore:blockCoke>, <ore:blockCharcoal>);

/*  HEATING
    1Condensate H2O -> 1Pre-heated H2O
    1Pre-heated H2O/ H2O -> 4HPS
*/
mods.ncsteamadditions.steam_boiler.removeAllRecipes();
mods.ncsteamadditions.steam_boiler.addRecipe(<ore:lowFuel>, <liquid:condensate_water>*100, <liquid:preheated_water>*100,  1);
mods.ncsteamadditions.steam_boiler.addRecipe(<ore:lowFuel>, <liquid:preheated_water>*10, <liquid:low_quality_steam>*320,  4);
mods.ncsteamadditions.steam_boiler.addRecipe(<ore:lowFuel>, <liquid:low_quality_steam>*320, <liquid:low_pressure_steam>*160,  8);
mods.ncsteamadditions.steam_boiler.addRecipe(<ore:highFuel>, <liquid:preheated_water>*200, <liquid:high_pressure_steam>*1000, 20);

// Steam crusher is useless since we already have shredder
mods.ncsteamadditions.steam_crusher.removeAllRecipes();

// Remove easy diamond recipe
mods.ncsteamadditions.steam_transformer.removeRecipeWithOutput(<minecraft:diamond>);

// Remove magic/easy fluid transformer recipes
mods.ncsteamadditions.steam_fluid_transformer.removeRecipeWithOutput(<liquid:gold>*288);
mods.ncsteamadditions.steam_fluid_transformer.removeRecipeWithOutput(<liquid:steel>*144);
mods.ncsteamadditions.steam_fluid_transformer.removeRecipeWithOutput(<liquid:preheated_water>*1000);

// Remove easy uranium isotope processing
mods.ncsteamadditions.steam_fluid_transformer.removeRecipeWithOutput(<liquid:uranium_hexafluoride>*1500);
mods.ncsteamadditions.steam_blender.removeAllRecipes(); // also removes the molten steel recipe, cause that is just unrealistic
mods.nuclearcraft.ChemicalReactor.removeRecipeWithOutput(<liquid:uranium_hexafluoride>*1000, null);
mods.ncsteamadditions.steam_washer.removeRecipeWithOutput(<nuclearcraft:uranium:5>*2);

// Remove silicon from silicon carbide processing
mods.ncsteamadditions.steam_washer.removeRecipeWithOutput(<libvulpes:productingot:3>);

/*  COOLING
    1HPS -> 4LPS
    1LPS -> 2LQS
    32LQS -> 1Condensate H2O
*/

// add steam turbine recipes after CT support is added
recipes.remove(<ncsteamadditions:steam_turbine>);