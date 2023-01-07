import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.oredict.IOreDict;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;
import mods.nuclearcraft.Assembler;
import mods.qmd.ore_leacher;
import mods.mekanism.sawmill;
import mods.mekanism.infuser;

//Gallium production
//mods.qmd.ore_leacher.addRecipe(IIngredient inputItem,IIngredient inputFluid1, IIngredient inputFluid2, IIngredient inputfluid3, IIngredient outputItem1, IIngredient outputItem2, IIngredient OutputItem3)
mods.qmd.ore_leacher.addRecipe(<ore:oreAluminium>, <liquid:nitric_acid>*16, <liquid:water>*20, <liquid:sulfuric_acid>*16, <ore:dustAluminium>*3, <contenttweaker:gallium_dust>*1, null, 1.0, 5.0, 0.001);

//AsGa dust prep
mods.nuclearcraft.Assembler.addRecipe(<contenttweaker:gallium_dust>*1, <nuclearcraft:gem_dust:10>*1, null, null, <contenttweaker:gallium_arsenide_dust>*1);

//Silicon Boule prep
//mods.nuclearcraft.AlloyFurnace.addRecipe(IIngredient itemInput1, IIngredient itemInput2, IIngredient itemOutput);
mods.nuclearcraft.AlloyFurnace.addRecipe(<ore:itemSilicon>*32, <contenttweaker:gallium_arsenide_dust>*1, <qmd:semiconductor:2>*1, 1.0, 5.0, 0.0);
mods.nuclearcraft.AlloyFurnace.addRecipe(<ore:dustSilicon>*32, <contenttweaker:gallium_arsenide_dust>*1, <libvulpes:productboule:3>*1, 1.0, 5.0, 0.0);

//Silicon Wafer prep
//mods.mekanism.sawmill.addRecipe(IIngredient inputStack, IItemStack outputStack);
mods.mekanism.sawmill.addRecipe(<qmd:semiconductor:2>*1, <qmd:semiconductor:3>*16);
mods.mekanism.sawmill.addRecipe(<libvulpes:productboule:3>*1, <advancedrocketry:wafer:0>*16);

//Coated Circuit Board
recipes.addShaped("CoatedCircuitBoard", <contenttweaker:coated_circuit_board>,
[[<minecraft:slime_ball>, <minecraft:slime_ball>, <minecraft:slime_ball>],
[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>],
[<minecraft:slime_ball>, <minecraft:slime_ball>, <minecraft:slime_ball>]]);

//Basic Circuit Board
recipes.addShaped("BasicCircuitBoard", <contenttweaker:basic_circuit_board>*3,
[[<hbm:wire_aluminium>, <hbm:wire_aluminium>, <hbm:wire_aluminium>],
[<hbm:wire_aluminium>, <contenttweaker:coated_circuit_board>, <hbm:wire_aluminium>],
[<hbm:wire_aluminium>, <hbm:wire_aluminium>, <hbm:wire_aluminium>]]);

// Basic Resistor
recipes.addShaped("BasicResistor", <contenttweaker:basic_resistor>*2,
[[<minecraft:slime_ball>, <minecraft:paper>, <minecraft:slime_ball>],
[<hbm:wire_aluminium>, <minecraft:redstone>, <hbm:wire_aluminium>],
[null, <minecraft:paper>, null]]);

//Removing old recipes of circuits
recipes.removeByRecipeName("hbm:circuit_raw");
mods.mekanism.infuser.removeRecipe(<mekanism:controlcircuit:0>);
recipes.removeByRecipeName("refinedstorage:raw_basic_processor");

//Basic Circuit Recipes (Gregified)
recipes.addShaped("BasicCircuit1", <advancedrocketry:ic:0>,
[[<contenttweaker:basic_resistor>, <libvulpes:productplate:6>, <contenttweaker:basic_resistor>],
[<immersiveengineering:material:26>, <contenttweaker:basic_circuit_board>, <immersiveengineering:material:26>],
[<hbm:red_cable>, <hbm:red_cable>, <hbm:red_cable>]]);

recipes.addShaped("BasicCircuit2", <hbm:circuit_aluminium>,
[[<contenttweaker:basic_resistor>, <hbm:plate_steel>, <contenttweaker:basic_resistor>],
[<immersiveengineering:material:26>, <contenttweaker:basic_circuit_board>, <immersiveengineering:material:26>],
[<hbm:red_cable>, <hbm:red_cable>, <hbm:red_cable>]]);

recipes.addShaped("BasicCircuit3", <mekanism:controlcircuit:0>,
[[<contenttweaker:basic_resistor>, <immersiveengineering:metal:38>, <contenttweaker:basic_resistor>],
[<immersiveengineering:material:26>, <contenttweaker:basic_circuit_board>, <immersiveengineering:material:26>],
[<hbm:red_cable>, <hbm:red_cable>, <hbm:red_cable>]]);

recipes.addShaped("BasicCircuit4", <refinedstorage:processor:3>,
[[<contenttweaker:basic_resistor>, <refinedstorage:quartz_enriched_iron>, <contenttweaker:basic_resistor>],
[<immersiveengineering:material:26>, <contenttweaker:basic_circuit_board>, <immersiveengineering:material:26>],
[<hbm:red_cable>, <hbm:red_cable>, <hbm:red_cable>]]);

//Glass Lens Red
mods.nuclearcraft.Manufactory.addRecipe(<advancedrocketry:lens:0>*1, <contenttweaker:glass_lens_blank>*1);
mods.nuclearcraft.Assembler.addRecipe(<contenttweaker:glass_lens_blank>*1, <minecraft:dye:1>*1, null, null, <contenttweaker:glass_lens_red>*1);

//Advanced Circuit Prep
//Redstonic Circuit Board
mods.nuclearcraft.Infuser.addRecipe(<contenttweaker:coated_circuit_board>, <liquid:redstone>, <contenttweaker:redstonic_circuit_board>);

//Advanced Circuit Board
recipes.addShaped("AdvancedCircuitBoard", <contenttweaker:advanced_circuit_board>*1,
[[<hbm:wire_red_copper>, <hbm:wire_red_copper>, <hbm:wire_red_copper>],
[<hbm:wire_red_copper>, <contenttweaker:redstonic_circuit_board>, <hbm:wire_red_copper>],
[<hbm:wire_red_copper>, <hbm:wire_red_copper>, <hbm:wire_red_copper>]]);

//Diode
mods.nuclearcraft.Assembler.addRecipe(<hbm:wire_copper>*4, <qmd:semiconductor:2>*1, <mekanism:polyethene:2>*4, null, <contenttweaker:diode>*4);

//Advanced Circuit Recipes (Gregified)
