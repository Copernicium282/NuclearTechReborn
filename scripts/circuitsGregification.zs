import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.oredict.IOreDict;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;
import mods.nuclearcraft.Assembler;
import mods.qmd.ore_leacher;
import mods.mekanism.sawmill;
import mods.mekanism.infuser;
import mods.modularmachinery.RecipeBuilder;

//Gallium production
mods.nuclearcraft.Separator.addRecipe(<ore:oreAluminium>*5, <ore:dustAluminium>*10, <contenttweaker:gallium_dust>);

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

//Circuit Assembler Basic Circuits

//Soldering Alloy
mods.nuclearcraft.Assembler.addRecipe(<ore:dustTin>*3, <ore:dustLead>*2, null, null, <contenttweaker:soldering_alloy>*4);
mods.nuclearcraft.Melter.addRecipe(<contenttweaker:soldering_alloy>*1, <liquid:soldering_alloy>*144);

//Recipes
val BasicCircuit1c = RecipeBuilder.newBuilder("BasicCircuit1c", "circuit_assembler", 10);
BasicCircuit1c.addItemInput(<contenttweaker:basic_resistor> * 2);
BasicCircuit1c.addItemInput(<immersiveengineering:material:26> * 2);
BasicCircuit1c.addItemInput(<contenttweaker:basic_circuit_board> * 1);
BasicCircuit1c.addItemInput(<libvulpes:productplate:6> * 1);
BasicCircuit1c.addItemInput(<hbm:red_cable> * 3);
BasicCircuit1c.addFluidInput(<liquid:soldering_alloy>*144);
BasicCircuit1c.addItemOutput(<advancedrocketry:ic:0> * 2);
BasicCircuit1c.addEnergyPerTickInput(16);
BasicCircuit1c.build();

val BasicCircuit2c = RecipeBuilder.newBuilder("BasicCircuit2c", "circuit_assembler", 10);
BasicCircuit2c.addItemInput(<contenttweaker:basic_resistor> * 2);
BasicCircuit2c.addItemInput(<immersiveengineering:material:26> * 2);
BasicCircuit2c.addItemInput(<contenttweaker:basic_circuit_board> * 1);
BasicCircuit2c.addItemInput(<hbm:plate_steel> * 1);
BasicCircuit2c.addItemInput(<hbm:red_cable> * 3);
BasicCircuit2c.addFluidInput(<liquid:soldering_alloy>*144);
BasicCircuit2c.addItemOutput(<hbm:circuit_aluminium> * 2);
BasicCircuit2c.addEnergyPerTickInput(16);
BasicCircuit2c.build();

val BasicCircuit3c = RecipeBuilder.newBuilder("BasicCircuit3c", "circuit_assembler", 10);
BasicCircuit3c.addItemInput(<contenttweaker:basic_resistor> * 2);
BasicCircuit3c.addItemInput(<immersiveengineering:material:26> * 2);
BasicCircuit3c.addItemInput(<contenttweaker:basic_circuit_board> * 1);
BasicCircuit3c.addItemInput(<immersiveengineering:metal:38> * 1);
BasicCircuit3c.addItemInput(<hbm:red_cable> * 3);
BasicCircuit3c.addFluidInput(<liquid:soldering_alloy>*144);
BasicCircuit3c.addItemOutput(<mekanism:controlcircuit:0> * 2);
BasicCircuit3c.addEnergyPerTickInput(16);
BasicCircuit3c.build();

val BasicCircuit4c = RecipeBuilder.newBuilder("BasicCircuit4c", "circuit_assembler", 10);
BasicCircuit4c.addItemInput(<contenttweaker:basic_resistor> * 2);
BasicCircuit4c.addItemInput(<immersiveengineering:material:26> * 2);
BasicCircuit4c.addItemInput(<contenttweaker:basic_circuit_board> * 1);
BasicCircuit4c.addItemInput(<refinedstorage:quartz_enriched_iron> * 1);
BasicCircuit4c.addItemInput(<hbm:red_cable> * 3);
BasicCircuit4c.addFluidInput(<liquid:soldering_alloy>*144);
BasicCircuit4c.addItemOutput(<refinedstorage:processor:3> * 2);
BasicCircuit4c.addEnergyPerTickInput(16);
BasicCircuit4c.build();

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

//Silver Bolt
mods.nuclearcraft.Manufactory.addRecipe(<immersiveposts:metal_rods:3>*1, <contenttweaker:silver_bolt>*4);

//Removing old recipes of circuits
recipes.removeByRecipeName("mekanism:controlcircuit_1");
recipes.removeByRecipeName("refinedstorage:raw_advanced_processor");

//Advanced Circuit Recipes (Gregified)

recipes.addShaped("AdvancedCircuit1", <advancedrocketry:ic:2>,
[[<contenttweaker:diode>, <hbm:plate_steel>, <contenttweaker:diode>],
[<advancedrocketry:ic:0>, <contenttweaker:advanced_circuit_board>, <advancedrocketry:ic:0>],
[<hbm:wire_copper>, <hbm:wire_copper>, <hbm:wire_copper>]]);

recipes.addShaped("AdvancedCircuit2", <hbm:circuit_red_copper>,
[[<contenttweaker:diode>, <hbm:plate_steel>, <contenttweaker:diode>],
[<hbm:circuit_aluminium>, <contenttweaker:advanced_circuit_board>, <hbm:circuit_aluminium>],
[<hbm:wire_copper>, <hbm:wire_copper>, <hbm:wire_copper>]]);

recipes.addShaped("AdvancedCircuit3", <mekanism:controlcircuit:1>,
[[<contenttweaker:diode>, <hbm:plate_steel>, <contenttweaker:diode>],
[<mekanism:controlcircuit:0>, <contenttweaker:advanced_circuit_board>, <mekanism:controlcircuit:0>],
[<hbm:wire_copper>, <hbm:wire_copper>, <hbm:wire_copper>]]);

recipes.addShaped("AdvancedCircuit4", <refinedstorage:processor:5>,
[[<contenttweaker:diode>, <hbm:plate_steel>, <contenttweaker:diode>],
[<refinedstorage:processor:3>, <contenttweaker:advanced_circuit_board>, <refinedstorage:processor:3>],
[<hbm:wire_copper>, <hbm:wire_copper>, <hbm:wire_copper>]]);

//Circuit Assembler Advanced Circuits
//Recipes
val AdvancedCircuit1c = RecipeBuilder.newBuilder("AdvancedCircuit1c", "circuit_assembler", 15);
AdvancedCircuit1c.addItemInput(<contenttweaker:diode> * 2);
AdvancedCircuit1c.addItemInput(<advancedrocketry:ic:0> * 2);
AdvancedCircuit1c.addItemInput(<contenttweaker:advanced_circuit_board> * 1);
AdvancedCircuit1c.addItemInput(<hbm:plate_steel> * 1);
AdvancedCircuit1c.addItemInput(<hbm:wire_copper> * 3);
AdvancedCircuit1c.addFluidInput(<liquid:soldering_alloy>*144);
AdvancedCircuit1c.addItemOutput(<advancedrocketry:ic:2> * 2);
AdvancedCircuit1c.addEnergyPerTickInput(30);
AdvancedCircuit1c.build();

val AdvancedCircuit2c = RecipeBuilder.newBuilder("AdvancedCircuit2c", "circuit_assembler", 15);
AdvancedCircuit2c.addItemInput(<contenttweaker:diode> * 2);
AdvancedCircuit2c.addItemInput(<hbm:circuit_aluminium> * 2);
AdvancedCircuit2c.addItemInput(<contenttweaker:advanced_circuit_board> * 1);
AdvancedCircuit2c.addItemInput(<hbm:plate_steel> * 1);
AdvancedCircuit2c.addItemInput(<hbm:wire_copper> * 3);
AdvancedCircuit2c.addFluidInput(<liquid:soldering_alloy>*144);
AdvancedCircuit2c.addItemOutput(<hbm:circuit_red_copper> * 2);
AdvancedCircuit2c.addEnergyPerTickInput(30);
AdvancedCircuit2c.build();

val AdvancedCircuit3c = RecipeBuilder.newBuilder("AdvancedCircuit3c", "circuit_assembler", 15);
AdvancedCircuit3c.addItemInput(<contenttweaker:diode> * 2);
AdvancedCircuit3c.addItemInput(<mekanism:controlcircuit:0> * 2);
AdvancedCircuit3c.addItemInput(<contenttweaker:advanced_circuit_board> * 1);
AdvancedCircuit3c.addItemInput(<hbm:plate_steel> * 1);
AdvancedCircuit3c.addItemInput(<hbm:wire_copper> * 3);
AdvancedCircuit3c.addFluidInput(<liquid:soldering_alloy>*144);
AdvancedCircuit3c.addItemOutput(<mekanism:controlcircuit:1> * 2);
AdvancedCircuit3c.addEnergyPerTickInput(30);
AdvancedCircuit3c.build();

val AdvancedCircuit4c = RecipeBuilder.newBuilder("AdvancedCircuit4c", "circuit_assembler", 15);
AdvancedCircuit4c.addItemInput(<contenttweaker:diode> * 2);
AdvancedCircuit4c.addItemInput(<refinedstorage:processor:3> * 2);
AdvancedCircuit4c.addItemInput(<contenttweaker:advanced_circuit_board> * 1);
AdvancedCircuit4c.addItemInput(<hbm:plate_steel> * 1);
AdvancedCircuit4c.addItemInput(<hbm:wire_copper> * 3);
AdvancedCircuit4c.addFluidInput(<liquid:soldering_alloy>*144);
AdvancedCircuit4c.addItemOutput(<refinedstorage:processor:5> * 2);
AdvancedCircuit4c.addEnergyPerTickInput(30);
AdvancedCircuit4c.build();