import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.oredict.IOreDict;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;
import mods.nuclearcraft.Centrifuge;
import mods.nuclearcraft.Crystallizer;
import mods.nuclearcraft.Melter;
import mods.nuclearcraft.AlloyFurnace;

//some recipes
mods.nuclearcraft.Crystallizer.addRecipe(<liquid:polonium>*576, <nuclearcraft:fission_dust:2>*4);
mods.nuclearcraft.Crystallizer.addRecipe(<liquid:spicygold>*144, <trinity:ingot_au_198>*1);
mods.nuclearcraft.Crystallizer.addRecipe(<liquid:lithiumsvn>*576, <nuclearcraft:lithium:1>*4);
mods.nuclearcraft.Crystallizer.addRecipe(<liquid:boronelvn>*576, <nuclearcraft:boron:1>*4);

mods.nuclearcraft.Melter.addRecipe(<nuclearcraft:lithium:0>*1, <fluid:lithiumsix>*144);
mods.nuclearcraft.Melter.addRecipe(<nuclearcraft:boron:0>*1, <liquid:boronten>*144);

//Contaminated Water Processing
mods.nuclearcraft.Crystallizer.addRecipe(<liquid:contaminated_water>*666, <trinity:trinitite_shard>*1);
mods.nuclearcraft.Crystallizer.addRecipe(<liquid:contaminated_water>*1000, <hbm:trinitite>*1);

//Sic-Sic Ceramic Composite Matrix processing
//Oredicting stuff
val baseSilicon = <ore:baseSilicon>;
baseSilicon.add(<nuclearcraft:gem:6>);
baseSilicon.add(<refinedstorage:silicon>);
baseSilicon.add(<libvulpes:productnugget:3>);

val baseCarbon = <ore:baseCarbon>;
baseCarbon.add(<advancedrocketry:misc:1>);
baseCarbon.add(<nuclearcraft:part:15>);
baseCarbon.add(<minecraft:coal>);
baseCarbon.add(<nuclearcraft:gem_dust:7>);
baseCarbon.add(<hbm:powder_coal>);
baseCarbon.add(<geolosys:coal:1>);
baseCarbon.add(<nuclearcraft:ingot:8>);
baseCarbon.add(<geolosys:coal:2>);
baseCarbon.add(<geolosys:coal:3>);
baseCarbon.add(<nuclearcraft:dust:8>);
baseCarbon.add(<hbm:ingot_graphite>);

//Fiber processing
mods.nuclearcraft.AlloyFurnace.addRecipe(<ore:baseCarbon>*1, <ore:baseSilicon>*1, <nuclearcraft:part:13>*4);

//Vapour processing(Sic vapour is a cursed fluid item :skull:)
mods.nuclearcraft.Extractor.addRecipe(<nuclearcraft:part:13>*2, <nuclearcraft:fluid_sic_vapor>*2, null);

//Sic-Sic Ceramic Composite Matrix ingot making
mods.nuclearcraft.AlloyFurnace.addRecipe(<nuclearcraft:alloy:14>*2, <nuclearcraft:fluid_sic_vapor>*2, <nuclearcraft:alloy:14>*1);

//Recipes modification

recipes.removeByRecipeName("nuclearcraft:solar_panel_basic");
recipes.addShaped("BasicSolarPanel", <nuclearcraft:solar_panel_basic>,
[[<nuclearcraft:gem_dust:2>, <ore:paneGlass>, <nuclearcraft:gem_dust:2>],
[<nuclearcraft:ingot:1>, <hbm:photo_panel>, <nuclearcraft:ingot:1>],
[<nuclearcraft:part:4>, <modularmachinery:blockenergyoutputhatch>, <nuclearcraft:part:4>]]);

recipes.removeByRecipeName("nuclearcraft:decay_hastener");
recipes.addShaped("DecayHastener", <nuclearcraft:decay_hastener>,
[[<nuclearcraft:part:1>, <nuclearcraft:compound:2>, <nuclearcraft:part:1>],
[<hbm:nugget_solinium>, <nuclearcraft:part:10>, <hbm:nugget_solinium>],
[<nuclearcraft:part:1>,<nuclearcraft:part:4>, <nuclearcraft:part:1>]]);

recipes.removeByRecipeName("nuclearcraft:voltaic_pile_basic");
recipes.addShaped("VoltaicPileBasic", <nuclearcraft:voltaic_pile_basic>.withTag({energyStorage: {energy: 0 as long, capacity: 160000 as long}}),
[[<nuclearcraft:part>, <nuclearcraft:ingot:7>, <nuclearcraft:part>],
[<nuclearcraft:part:4>, <hbm:machine_battery>, <nuclearcraft:part:4>],
[<nuclearcraft:part>, <nuclearcraft:ingot:7>, <nuclearcraft:part>]]);

recipes.addShaped("MolybdenumDust", <nuclearcraft:fission_dust:6>,
[[<contenttweaker:powder_molybdenum_tiny>,<contenttweaker:powder_molybdenum_tiny>,<contenttweaker:powder_molybdenum_tiny>],
[<contenttweaker:powder_molybdenum_tiny>,<contenttweaker:powder_molybdenum_tiny>,<contenttweaker:powder_molybdenum_tiny>],
[<contenttweaker:powder_molybdenum_tiny>,<contenttweaker:powder_molybdenum_tiny>,<contenttweaker:powder_molybdenum_tiny>]]);

recipes.addShaped("PromethiumDust", <nuclearcraft:fission_dust:9>,
[[<contenttweaker:powder_pr147_tiny>,<contenttweaker:powder_pr147_tiny>,<contenttweaker:powder_pr147_tiny>],
[<contenttweaker:powder_pr147_tiny>,<contenttweaker:powder_pr147_tiny>,<contenttweaker:powder_pr147_tiny>],
[<contenttweaker:powder_pr147_tiny>,<contenttweaker:powder_pr147_tiny>,<contenttweaker:powder_pr147_tiny>]]);

recipes.addShaped("EuropiumDust", <nuclearcraft:fission_dust:10>,
[[<contenttweaker:powder_eu155_tiny>,<contenttweaker:powder_eu155_tiny>,<contenttweaker:powder_eu155_tiny>],
[<contenttweaker:powder_eu155_tiny>,<contenttweaker:powder_eu155_tiny>,<contenttweaker:powder_eu155_tiny>],
[<contenttweaker:powder_eu155_tiny>,<contenttweaker:powder_eu155_tiny>,<contenttweaker:powder_eu155_tiny>]]);