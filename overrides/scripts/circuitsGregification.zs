import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.oredict.IOreDict;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;
import mods.nuclearcraft.Assembler;
import mods.ntm.Shredder;
import mods.qmd.ore_leacher;
import mods.modularmachinery.RecipeBuilder;
import mods.nuclearcraft.ChanceItemIngredient;
import mods.jei.JEI;

//Gallium production
mods.nuclearcraft.Separator.addRecipe(<ore:oreAluminum>, <hbm:powder_aluminium>*2, ChanceItemIngredient.create(<contenttweaker:gallium_dust>*1, 20));

//AsGa dust prep 
mods.nuclearcraft.Assembler.addRecipe(<contenttweaker:gallium_dust>*1, <ore:dustArsenic>*1, null, null, <contenttweaker:gallium_arsenide_dust>*2);
recipes.addShapeless("AsGa",<contenttweaker:gallium_arsenide_dust>*2,[<contenttweaker:gallium_dust>, <ore:dustArsenic>, <ore:toolMortarandpestle>.reuse()]);

//Vacuum Tube production
mods.nuclearcraft.Assembler.addRecipe(<ore:paneGlass>*1, <ore:plateSteel>*2, <hbm:wire_copper>*1, null, <contenttweaker:vacuum_tube>*1);
recipes.addShaped("vacuum_tubes", <contenttweaker:vacuum_tube>,
 [[<hbm:wire_copper>,   <ore:plateSteel>,   <hbm:wire_copper>],
  [<ore:paneGlass>,     null,               <ore:paneGlass>],
  [<hbm:wire_copper>,   <ore:plateSteel>,   <hbm:wire_copper>]]);

//Silicon Boule prep
//mods.nuclearcraft.AlloyFurnace.addRecipe(IIngredient itemInput1, IIngredient itemInput2, IIngredient itemOutput);
mods.nuclearcraft.AlloyFurnace.addRecipe(<ore:itemSilicon>*32, <contenttweaker:gallium_arsenide_dust>*1, <qmd:semiconductor:2>*1, 2.0, 5.0, 0.0);
mods.nuclearcraft.AlloyFurnace.addRecipe(<ore:dustSilicon>*32, <contenttweaker:gallium_arsenide_dust>*1, <libvulpes:productboule:3>*1, 2.0, 5.0, 0.0);

//Silicon Wafer prep
//mods.ntm.Shredder.addRecipe(<minecraft:beef>, <minecraft:cooked_beef>);
mods.ntm.Shredder.addRecipe(<qmd:semiconductor:2>, <qmd:semiconductor:3>*16);
mods.ntm.Shredder.addRecipe(<libvulpes:productboule:3>, <advancedrocketry:wafer:0>*16);

//Coated Circuit Board
recipes.addShaped("CoatedCircuitBoard", <contenttweaker:coated_circuit_board>*3,
[[<ore:slimeball>,  <ore:slimeball>,   <ore:slimeball>],
[<ore:plankWood>,   <ore:plankWood>,   <ore:plankWood>],
[<ore:slimeball>,   <ore:slimeball>,   <ore:slimeball>]]);
mods.nuclearcraft.Assembler.addRecipe(<minecraft:slime_ball>*2, <ore:plankWood>*1, null, null, <contenttweaker:coated_circuit_board>*1);

//Basic Circuit Board
recipes.addShaped("BasicCircuitBoard", <contenttweaker:basic_circuit_board>,
[[null,                 <hbm:wire_aluminium>,                   null],
[<hbm:wire_aluminium>,  <contenttweaker:coated_circuit_board>,  <hbm:wire_aluminium>],
[null,                  <hbm:wire_aluminium>,                   null]]);
mods.nuclearcraft.Assembler.addRecipe(<contenttweaker:coated_circuit_board>, <hbm:wire_aluminium>*2, null, null, <contenttweaker:basic_circuit_board>);


//Basic Resistor
recipes.addShaped("BasicResistor", <contenttweaker:basic_resistor>*2,
[[<minecraft:slime_ball>, <minecraft:paper>, <minecraft:slime_ball>],
[<hbm:wire_aluminium>, <minecraft:redstone>, <hbm:wire_aluminium>],
[null, <minecraft:paper>, null]]);
mods.nuclearcraft.Assembler.addRecipe(<minecraft:slime_ball>*1, <minecraft:paper>*1, <minecraft:redstone>*1, <hbm:wire_aluminium>*1, <contenttweaker:basic_resistor>*2);

//Removing old recipes of circuits
mods.jei.JEI.removeAndHide(<hbm:circuit_raw>);

//make basic circuit oredict
val anyBasicCircuit = <ore:anyBasicCircuit>;
anyBasicCircuit.add(<advancedrocketry:ic:0>);
anyBasicCircuit.add(<hbm:circuit_aluminium>);

//Basic Circuit Recipes (Gregified)

recipes.addShapeless("AR-basic-circuit", <advancedrocketry:ic:0>, [<hbm:circuit_aluminium>, <hbm:nugget_cadmium>]);

recipes.addShaped("BasicCircuit2", <hbm:circuit_aluminium>,
[[<contenttweaker:basic_resistor>, <hbm:plate_advanced_alloy>, <contenttweaker:basic_resistor>],
[<contenttweaker:vacuum_tube>, <contenttweaker:basic_circuit_board>, <contenttweaker:vacuum_tube>],
[<hbm:red_cable>, <hbm:red_cable>, <hbm:red_cable>]]);
recipes.addShapeless("HBM-basic-circuit", <hbm:circuit_aluminium>,  [<ore:anyBasicCircuit>]);

//Circuit Assembler Basic Circuits

//Soldering Alloy
mods.nuclearcraft.Assembler.addRecipe(<ore:dustTin>*3, <ore:dustLead>*2, null, null, <contenttweaker:soldering_alloy>*5, 0.1);
recipes.addShapeless("Soldering-Alloy", <contenttweaker:soldering_alloy>*5, [<ore:dustTin>*3, <ore:dustLead>*2]);
mods.nuclearcraft.Melter.addRecipe(<contenttweaker:soldering_alloy>*1, <liquid:soldering_alloy>*144);

//Recipes

val BasicCircuit2c = RecipeBuilder.newBuilder("BasicCircuit2c", "circuit_assembler", 10);
BasicCircuit2c.addItemInput(<contenttweaker:basic_resistor> * 2);
BasicCircuit2c.addItemInput(<contenttweaker:vacuum_tube> * 1);
BasicCircuit2c.addItemInput(<contenttweaker:basic_circuit_board> * 2);
BasicCircuit2c.addItemInput(<hbm:plate_advanced_alloy> * 1);
BasicCircuit2c.addItemInput(<hbm:red_cable> * 2);
BasicCircuit2c.addFluidInput(<liquid:soldering_alloy>*144);
BasicCircuit2c.addItemOutput(<hbm:circuit_aluminium> * 2);
BasicCircuit2c.addEnergyPerTickInput(16);
BasicCircuit2c.build();

//Advanced Circuit Prep
//Redstonic Circuit Board
mods.nuclearcraft.Infuser.addRecipe(<contenttweaker:coated_circuit_board>, <liquid:redstone>*200, <contenttweaker:redstonic_circuit_board>);
recipes.addShaped("redstonic_circuit_board_manual", <contenttweaker:redstonic_circuit_board>,
[
[null,                <ore:dustRedstone>,                     null],
[<ore:dustRedstone>,  <contenttweaker:coated_circuit_board>,  <ore:dustRedstone>],
[null,                <ore:dustRedstone>,                     null]
]
);

//Advanced Circuit Board
recipes.addShaped("AdvancedCircuitBoard", <contenttweaker:advanced_circuit_board>*1,
[[<hbm:wire_red_copper>, <hbm:wire_red_copper>, <hbm:wire_red_copper>],
[<hbm:wire_red_copper>, <contenttweaker:redstonic_circuit_board>, <hbm:wire_red_copper>],
[<hbm:wire_red_copper>, <hbm:wire_red_copper>, <hbm:wire_red_copper>]]);

RecipeBuilder.newBuilder("AdvancedCircuitBoard_circ_assembler", "circuit_assembler", 10)
    .addItemInput(<contenttweaker:redstonic_circuit_board>)
    .addItemInput(<hbm:wire_red_copper> * 2)
    .addFluidInput(<liquid:soldering_alloy>*16)
    .addItemOutput(<contenttweaker:advanced_circuit_board>)
    .addEnergyPerTickInput(16)
    .build();

//Diode
recipes.addShaped("diode_manual", <contenttweaker:diode>*4,
[
  [<hbm:ingot_polymer>, <hbm:wire_copper>,      <hbm:ingot_polymer>],
  [<hbm:wire_copper>,       <qmd:semiconductor:2>,  <hbm:wire_copper>],
  [<hbm:ingot_polymer>, <hbm:wire_copper>,      <hbm:ingot_polymer>]
]
);
mods.nuclearcraft.Assembler.addRecipe(<hbm:wire_copper>*4, <qmd:semiconductor:2>*1, <hbm:ingot_polymer>*4, null, <contenttweaker:diode>*8);
mods.nuclearcraft.Assembler.addRecipe(<hbm:wire_copper>*1, <qmd:semiconductor:3>*1, <hbm:ingot_polymer>*1, null, <contenttweaker:diode>*2);
mods.nuclearcraft.Assembler.addRecipe(<hbm:wire_copper>*4, <qmd:semiconductor:1>*1, <hbm:ingot_polymer>*4, null, <contenttweaker:diode>*8);
mods.nuclearcraft.Assembler.addRecipe(<hbm:wire_copper>*16, <qmd:semiconductor>*1, <hbm:ingot_polymer>*16, null, <contenttweaker:diode>*32);

//Advanced Circuit Recipes (Gregified)
//Oredicting
val anyAdvancedCircuit = <ore:anyAdvancedCircuit>;
anyAdvancedCircuit.add(<advancedrocketry:ic:2>);
anyAdvancedCircuit.add(<hbm:circuit_copper>);

recipes.addShaped("AdvancedCircuit2", <hbm:circuit_copper>,
[[<contenttweaker:diode>, <hbm:plate_steel>, <contenttweaker:diode>],
[<hbm:circuit_aluminium>, <contenttweaker:advanced_circuit_board>, <hbm:circuit_aluminium>],
[<hbm:wire_copper>, <hbm:wire_copper>, <hbm:wire_copper>]]);

recipes.addShapeless("AR-adv-circuit", <advancedrocketry:ic:2>, [<hbm:circuit_red_copper>, <hbm:nugget_cadmium>]);

recipes.addShapeless("HBM-adv-circuit", <hbm:circuit_copper>,  [<ore:anyBasicCircuit>]);

//Circuit Assembler Advanced Circuits
//Recipes
val AdvancedCircuit2c = RecipeBuilder.newBuilder("AdvancedCircuit2c", "circuit_assembler", 15);
AdvancedCircuit2c.addItemInput(<contenttweaker:diode> * 2);
AdvancedCircuit2c.addItemInput(<hbm:circuit_aluminium> * 2);
AdvancedCircuit2c.addItemInput(<contenttweaker:advanced_circuit_board> * 1);
AdvancedCircuit2c.addItemInput(<hbm:plate_steel> * 1);
AdvancedCircuit2c.addItemInput(<hbm:wire_copper> * 3);
AdvancedCircuit2c.addFluidInput(<liquid:soldering_alloy>*144);
AdvancedCircuit2c.addItemOutput(<hbm:circuit_copper> * 2);
AdvancedCircuit2c.addEnergyPerTickInput(30);
AdvancedCircuit2c.build();


//more hightech recipes
//yeeting AR circ processes
mods.advancedrocketry.PrecisionAssembler.removeRecipe(<advancedrocketry:itemcircuitplate:1>);
mods.advancedrocketry.PrecisionAssembler.removeRecipe(<advancedrocketry:itemcircuitplate>);
