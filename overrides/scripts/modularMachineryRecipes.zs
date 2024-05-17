import mods.modularmachinery.RecipeBuilder;
import crafttweaker.item.IItemStack;
import mods.nuclearcraft.AlloyFurnace;


// Modular Dust and Modularium

recipes.removeByRecipeName("modularmachinery:modularium_ingot");
recipes.addShaped("ModularMachinery_ModularBlend", <contenttweaker:modular_blend>,
[[null, <ore:dustCopper>, null],
[<ore:dustIron>, <ore:dustQuartz>, <ore:dustIron>],
[null, <ore:dustCopper>, null]]);
mods.nuclearcraft.AlloyFurnace.addRecipe(<contenttweaker:modular_blend>, <ore:ingotSteel>, <modularmachinery:itemmodularium>);

//Modularium Machine Controller

recipes.removeByRecipeName("modularmachinery:controller");
recipes.addShaped("ModularMachinery_MachineController", <modularmachinery:blockcontroller>,
[[<modularmachinery:itemmodularium>, <advancedrocketry:ic:3>, <modularmachinery:itemmodularium>],
[<appliedenergistics2:part:240>, <nuclearcraft:machine_interface>, <appliedenergistics2:part:260>],
[<modularmachinery:itemmodularium>, <appliedenergistics2:spatial_storage_cell_2_cubed>, <modularmachinery:itemmodularium>]]);

//Modular Machinery Hatches
//Basic
recipes.addShaped("ModularMachinery_NormalItemOutput", <modularmachinery:blockoutputbus:2>,
[[<minecraft:comparator>, <advancedrocketry:ic:3>, <minecraft:comparator>],
[<modularmachinery:blockoutputbus:1>, <advancedrocketry:ic:4>, <modularmachinery:blockoutputbus:1>],
[<ore:anyBasicCircuit>, <minecraft:repeater>, <ore:anyBasicCircuit>]]);

recipes.addShaped("ModularMachinery_NormalItemInput", <modularmachinery:blockinputbus:2>,
[[<minecraft:comparator>, <advancedrocketry:ic:3>, <minecraft:comparator>],
[<modularmachinery:blockinputbus:1>, <advancedrocketry:ic:4>, <modularmachinery:blockinputbus:1>],
[<ore:anyBasicCircuit>, <minecraft:repeater>, <ore:anyBasicCircuit>]]);

recipes.addShaped("ModularMachinery_NormalFluidInput", <modularmachinery:blockfluidinputhatch:2>,
[[<minecraft:comparator>, <advancedrocketry:ic:3>, <minecraft:comparator>],
[<modularmachinery:blockfluidinputhatch:1>, <advancedrocketry:ic:5>, <modularmachinery:blockfluidinputhatch:1>],
[<ore:anyBasicCircuit>, <minecraft:repeater>, <ore:anyBasicCircuit>]]);

recipes.addShaped("ModularMachinery_NormalFluidOutput", <modularmachinery:blockfluidoutputhatch:2>,
[[<minecraft:comparator>, <advancedrocketry:ic:3>, <minecraft:comparator>],
[<modularmachinery:blockfluidoutputhatch:1>, <advancedrocketry:ic:5>, <modularmachinery:blockfluidoutputhatch:1>],
[<ore:anyBasicCircuit>, <minecraft:repeater>, <ore:anyBasicCircuit>]]);

recipes.addShaped("ModularMachinery_NormalEnergyOutput", <modularmachinery:blockenergyoutputhatch:2>,
[[<minecraft:comparator>, <advancedrocketry:ic:3>, <minecraft:comparator>],
[<modularmachinery:blockenergyoutputhatch:1>, <hbm:machine_battery>, <modularmachinery:blockenergyoutputhatch:1>],
[<ore:anyBasicCircuit>, <minecraft:repeater>, <ore:anyBasicCircuit>]]);

recipes.addShaped("ModularMachinery_NormalEnergyInput", <modularmachinery:blockenergyinputhatch:2>,
[[<minecraft:comparator>, <advancedrocketry:ic:3>, <minecraft:comparator>],
[<modularmachinery:blockenergyinputhatch:1>, <hbm:machine_battery>, <modularmachinery:blockenergyinputhatch:1>],
[<ore:anyBasicCircuit>, <minecraft:repeater>, <ore:anyBasicCircuit>]]);

//Reinforced
recipes.addShaped("ModularMachinery_ReinforcedItemOutput", <modularmachinery:blockoutputbus:3>,
[[<minecraft:comparator>, <advancedrocketry:ic:3>, <minecraft:comparator>],
[<modularmachinery:blockoutputbus:2>, <advancedrocketry:ic:4>, <modularmachinery:blockoutputbus:2>],
[<ore:anyAdvancedCircuit>, <minecraft:repeater>, <ore:anyAdvancedCircuit>]]);

recipes.addShaped("ModularMachinery_ReinforcedItemInput", <modularmachinery:blockinputbus:3>,
[[<minecraft:comparator>, <advancedrocketry:ic:3>, <minecraft:comparator>],
[<modularmachinery:blockinputbus:2>, <advancedrocketry:ic:4>, <modularmachinery:blockinputbus:2>],
[<ore:anyAdvancedCircuit>, <minecraft:repeater>, <ore:anyAdvancedCircuit>]]);

recipes.addShaped("ModularMachinery_ReinforcedFluidInput", <modularmachinery:blockfluidinputhatch:3>,
[[<minecraft:comparator>, <advancedrocketry:ic:3>, <minecraft:comparator>],
[<modularmachinery:blockfluidinputhatch:2>, <advancedrocketry:ic:5>, <modularmachinery:blockfluidinputhatch:2>],
[<ore:anyAdvancedCircuit>, <minecraft:repeater>, <ore:anyAdvancedCircuit>]]);

recipes.addShaped("ModularMachinery_ReinforcedFluidOutput", <modularmachinery:blockfluidoutputhatch:3>,
[[<minecraft:comparator>, <advancedrocketry:ic:3>, <minecraft:comparator>],
[<modularmachinery:blockfluidoutputhatch:2>, <advancedrocketry:ic:5>, <modularmachinery:blockfluidoutputhatch:2>],
[<ore:anyAdvancedCircuit>, <minecraft:repeater>, <ore:anyAdvancedCircuit>]]);

recipes.addShaped("ModularMachinery_ReinforcedEnergyOutput", <modularmachinery:blockenergyoutputhatch:3>,
[[<minecraft:comparator>, <advancedrocketry:ic:3>, <minecraft:comparator>],
[<modularmachinery:blockenergyoutputhatch:2>, <hbm:machine_battery>, <modularmachinery:blockenergyoutputhatch:2>],
[<ore:anyAdvancedCircuit>, <minecraft:repeater>, <ore:anyAdvancedCircuit>]]);

recipes.addShaped("ModularMachinery_ReinforcedEnergyInput", <modularmachinery:blockenergyinputhatch:3>,
[[<minecraft:comparator>, <advancedrocketry:ic:3>, <minecraft:comparator>],
[<modularmachinery:blockenergyinputhatch:2>, <hbm:machine_battery>, <modularmachinery:blockenergyinputhatch:2>],
[<ore:anyAdvancedCircuit>, <minecraft:repeater>, <ore:anyAdvancedCircuit>]]);

//Big
recipes.addShaped("ModularMachinery_BigItemOutput", <modularmachinery:blockoutputbus:4>,
[[<minecraft:comparator>, <advancedrocketry:ic:3>, <minecraft:comparator>],
[<modularmachinery:blockoutputbus:3>, <advancedrocketry:ic:4>, <modularmachinery:blockoutputbus:3>],
[<ore:anyAdvancedCircuit>, <minecraft:repeater>, <ore:anyAdvancedCircuit>]]);

recipes.addShaped("ModularMachinery_BigItemInput", <modularmachinery:blockinputbus:4>,
[[<minecraft:comparator>, <advancedrocketry:ic:3>, <minecraft:comparator>],
[<modularmachinery:blockinputbus:3>, <advancedrocketry:ic:4>, <modularmachinery:blockinputbus:3>],
[<ore:anyAdvancedCircuit>, <minecraft:repeater>, <ore:anyAdvancedCircuit>]]);

recipes.addShaped("ModularMachinery_BigFluidInput", <modularmachinery:blockfluidinputhatch:4>,
[[<minecraft:comparator>, <advancedrocketry:ic:3>, <minecraft:comparator>],
[<modularmachinery:blockfluidinputhatch:3>, <advancedrocketry:ic:5>, <modularmachinery:blockfluidinputhatch:3>],
[<ore:anyAdvancedCircuit>, <minecraft:repeater>, <ore:anyAdvancedCircuit>]]);

recipes.addShaped("ModularMachinery_BigFluidOutput", <modularmachinery:blockfluidoutputhatch:4>,
[[<minecraft:comparator>, <advancedrocketry:ic:3>, <minecraft:comparator>],
[<modularmachinery:blockfluidoutputhatch:3>, <advancedrocketry:ic:5>, <modularmachinery:blockfluidoutputhatch:3>],
[<ore:anyAdvancedCircuit>, <minecraft:repeater>, <ore:anyAdvancedCircuit>]]);

recipes.addShaped("ModularMachinery_BigEnergyOutput", <modularmachinery:blockenergyoutputhatch:4>,
[[<minecraft:comparator>, <advancedrocketry:ic:3>, <minecraft:comparator>],
[<modularmachinery:blockenergyoutputhatch:3>, <hbm:machine_battery>, <modularmachinery:blockenergyoutputhatch:3>],
[<ore:anyAdvancedCircuit>, <minecraft:repeater>, <ore:anyAdvancedCircuit>]]);

recipes.addShaped("ModularMachinery_BigEnergyInput", <modularmachinery:blockenergyinputhatch:4>,
[[<minecraft:comparator>, <advancedrocketry:ic:3>, <minecraft:comparator>],
[<modularmachinery:blockenergyinputhatch:3>, <hbm:machine_battery>, <modularmachinery:blockenergyinputhatch:3>],
[<ore:anyAdvancedCircuit>, <minecraft:repeater>, <ore:anyAdvancedCircuit>]]);

//Huge
recipes.addShaped("ModularMachinery_HugeItemOutput", <modularmachinery:blockoutputbus:5>,
[[<minecraft:comparator>, <advancedrocketry:ic:3>, <minecraft:comparator>],
[<modularmachinery:blockoutputbus:4>, <advancedrocketry:ic:4>, <modularmachinery:blockoutputbus:4>],
[<ore:anyAdvancedCircuit>, <minecraft:repeater>, <ore:anyAdvancedCircuit>]]);

recipes.addShaped("ModularMachinery_HugeItemInput", <modularmachinery:blockinputbus:5>,
[[<minecraft:comparator>, <advancedrocketry:ic:3>, <minecraft:comparator>],
[<modularmachinery:blockinputbus:4>, <advancedrocketry:ic:4>, <modularmachinery:blockinputbus:4>],
[<ore:anyAdvancedCircuit>, <minecraft:repeater>, <ore:anyAdvancedCircuit>]]);

recipes.addShaped("ModularMachinery_HugeFluidInput", <modularmachinery:blockfluidinputhatch:5>,
[[<minecraft:comparator>, <advancedrocketry:ic:3>, <minecraft:comparator>],
[<modularmachinery:blockfluidinputhatch:4>, <advancedrocketry:ic:5>, <modularmachinery:blockfluidinputhatch:4>],
[<ore:anyAdvancedCircuit>, <minecraft:repeater>, <ore:anyAdvancedCircuit>]]);

recipes.addShaped("ModularMachinery_HugeFluidOutput", <modularmachinery:blockfluidoutputhatch:5>,
[[<minecraft:comparator>, <advancedrocketry:ic:3>, <minecraft:comparator>],
[<modularmachinery:blockfluidoutputhatch:4>, <advancedrocketry:ic:5>, <modularmachinery:blockfluidoutputhatch:4>],
[<ore:anyAdvancedCircuit>, <minecraft:repeater>, <ore:anyAdvancedCircuit>]]);

recipes.addShaped("ModularMachinery_HugeEnergyOutput", <modularmachinery:blockenergyoutputhatch:5>,
[[<minecraft:comparator>, <advancedrocketry:ic:3>, <minecraft:comparator>],
[<modularmachinery:blockenergyoutputhatch:4>, <hbm:machine_battery>, <modularmachinery:blockenergyoutputhatch:4>],
[<ore:anyAdvancedCircuit>, <minecraft:repeater>, <ore:anyAdvancedCircuit>]]);

recipes.addShaped("ModularMachinery_HugeEnergyInput", <modularmachinery:blockenergyinputhatch:5>,
[[<minecraft:comparator>, <advancedrocketry:ic:3>, <minecraft:comparator>],
[<modularmachinery:blockenergyinputhatch:4>, <hbm:machine_battery>, <modularmachinery:blockenergyinputhatch:4>],
[<ore:anyAdvancedCircuit>, <minecraft:repeater>, <ore:anyAdvancedCircuit>]]);

//Ludicrous
recipes.addShaped("ModularMachinery_LudicrousItemOutput", <modularmachinery:blockoutputbus:6>,
[[<minecraft:comparator>, <advancedrocketry:ic:3>, <minecraft:comparator>],
[<modularmachinery:blockoutputbus:5>, <advancedrocketry:ic:4>, <modularmachinery:blockoutputbus:5>],
[<ore:anyAdvancedCircuit>, <minecraft:repeater>, <ore:anyAdvancedCircuit>]]);

recipes.addShaped("ModularMachinery_LudicrousItemInput", <modularmachinery:blockinputbus:6>,
[[<minecraft:comparator>, <advancedrocketry:ic:3>, <minecraft:comparator>],
[<modularmachinery:blockinputbus:5>, <advancedrocketry:ic:4>, <modularmachinery:blockinputbus:5>],
[<ore:anyAdvancedCircuit>, <minecraft:repeater>, <ore:anyAdvancedCircuit>]]);

recipes.addShaped("ModularMachinery_LudicrousFluidInput", <modularmachinery:blockfluidinputhatch:6>,
[[<minecraft:comparator>, <advancedrocketry:ic:3>, <minecraft:comparator>],
[<modularmachinery:blockfluidinputhatch:5>, <advancedrocketry:ic:5>, <modularmachinery:blockfluidinputhatch:5>],
[<ore:anyAdvancedCircuit>, <minecraft:repeater>, <ore:anyAdvancedCircuit>]]);

recipes.addShaped("ModularMachinery_LudicrousFluidOutput", <modularmachinery:blockfluidoutputhatch:6>,
[[<minecraft:comparator>, <advancedrocketry:ic:3>, <minecraft:comparator>],
[<modularmachinery:blockfluidoutputhatch:5>, <advancedrocketry:ic:5>, <modularmachinery:blockfluidoutputhatch:5>],
[<ore:anyAdvancedCircuit>, <minecraft:repeater>, <ore:anyAdvancedCircuit>]]);

recipes.addShaped("ModularMachinery_LudicrousEnergyOutput", <modularmachinery:blockenergyoutputhatch:6>,
[[<minecraft:comparator>, <advancedrocketry:ic:3>, <minecraft:comparator>],
[<modularmachinery:blockenergyoutputhatch:5>, <hbm:machine_battery>, <modularmachinery:blockenergyoutputhatch:5>],
[<ore:anyAdvancedCircuit>, <minecraft:repeater>, <ore:anyAdvancedCircuit>]]);

recipes.addShaped("ModularMachinery_LudicrousEnergyInput", <modularmachinery:blockenergyinputhatch:6>,
[[<minecraft:comparator>, <advancedrocketry:ic:3>, <minecraft:comparator>],
[<modularmachinery:blockenergyinputhatch:5>, <hbm:machine_battery>, <modularmachinery:blockenergyinputhatch:5>],
[<ore:anyAdvancedCircuit>, <minecraft:repeater>, <ore:anyAdvancedCircuit>]]);

//Ultimate
recipes.addShaped("ModularMachinery_UltimateFluidInput", <modularmachinery:blockfluidinputhatch:7>,
[[<minecraft:comparator>, <advancedrocketry:ic:3>, <minecraft:comparator>],
[<modularmachinery:blockfluidinputhatch:6>, <advancedrocketry:ic:5>, <modularmachinery:blockfluidinputhatch:6>],
[<ore:anyAdvancedCircuit>, <minecraft:repeater>, <ore:anyAdvancedCircuit>]]);

recipes.addShaped("ModularMachinery_UltimateFluidOutput", <modularmachinery:blockfluidoutputhatch:7>,
[[<minecraft:comparator>, <advancedrocketry:ic:3>, <minecraft:comparator>],
[<modularmachinery:blockfluidoutputhatch:6>, <advancedrocketry:ic:5>, <modularmachinery:blockfluidoutputhatch:6>],
[<ore:anyAdvancedCircuit>, <minecraft:repeater>, <ore:anyAdvancedCircuit>]]);

recipes.addShaped("ModularMachinery_UltimateEnergyOutput", <modularmachinery:blockenergyoutputhatch:7>,
[[<minecraft:comparator>, <advancedrocketry:ic:3>, <minecraft:comparator>],
[<modularmachinery:blockenergyoutputhatch:6>, <hbm:machine_battery>, <modularmachinery:blockenergyoutputhatch:6>],
[<ore:anyAdvancedCircuit>, <minecraft:repeater>, <ore:anyAdvancedCircuit>]]);

recipes.addShaped("ModularMachinery_UltimateEnergyInput", <modularmachinery:blockenergyinputhatch:7>,
[[<minecraft:comparator>, <advancedrocketry:ic:3>, <minecraft:comparator>],
[<modularmachinery:blockenergyinputhatch:6>, <hbm:machine_battery>, <modularmachinery:blockenergyinputhatch:6>],
[<ore:anyAdvancedCircuit>, <minecraft:repeater>, <ore:anyAdvancedCircuit>]]);

recipes.addShaped("ModularMachinery_Vent", <modularmachinery:blockcasing:1>,
[[null, null, null],
[null, <modularmachinery:blockcasing:0>, null],
[null, <advancedrocketry:oxygenvent>, null]]);

recipes.addShaped("ModularMachinery_Gearbox", <modularmachinery:blockcasing:3>,
[[null, null, null],
[null, <modularmachinery:blockcasing:0>, null],
[null, <chisel:technical:10>, null]]);

recipes.addShaped("ModularMachinery_Circuitry", <modularmachinery:blockcasing:5>,
[[<hbm:circuit_copper>, <hbm:circuit_copper>, <hbm:circuit_copper>],
[<hbm:circuit_copper>, <modularmachinery:blockcasing:0>, <hbm:circuit_copper>],
[<hbm:circuit_copper>, <hbm:circuit_copper>, <hbm:circuit_copper>]]);


//Blueprint Recipes


recipes.addShaped("water_pump", <modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:water_pump"}),
[[<hbm:rod_water>, <hbm:rod_water>, <hbm:rod_water>],
[<hbm:rod_water>, <modularmachinery:itemmodularium>, <hbm:rod_water>],
[<hbm:rod_water>, <hbm:rod_water>, <hbm:rod_water>]]);

recipes.addShaped("lava_pump", <modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:lava_pump"}),
[[<chisel:lavastone:0>, <chisel:lavastone:0>, <chisel:lavastone:0>],
[<chisel:lavastone:0>, <modularmachinery:itemmodularium>, <chisel:lavastone:0>],
[<chisel:lavastone:0>, <chisel:lavastone:0>, <chisel:lavastone:0>]]);

recipes.addShaped("catalytic_chem_reactor", <modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:catalytic_chem_reactor"}),
[[null, <contenttweaker:catalyst>, null],
[null, <modularmachinery:itemmodularium>, null],
[null, <nuclearcraft:chemical_reactor>, null]]);

recipes.addShaped("decay_pool", <modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:decay_pool"}),
[[null, <nuclearcraft:decay_generator>, null],
[null, <modularmachinery:itemmodularium>, null],
[null, null, null]]);

recipes.addShaped("gas_centrifuge", <modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:gas_centrifuge"}),
[[<qmd:ingot_alloy:5>, <qmd:part:3>, <qmd:ingot_alloy:5>],
[<qmd:ingot_alloy:3>, <nuclearcraft:centrifuge>, <qmd:ingot_alloy:3>],
[<qmd:ingot_alloy:5>, <qmd:part:3>, <qmd:ingot_alloy:5>]]);

recipes.addShaped("circuit_assembler", <modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:circuit_assembler"}),
[[null, <hbm:machine_assembler>, null],
[null, <modularmachinery:itemmodularium>, null],
[null, null, null]]);

recipes.addShaped("fluid_irradiator", <modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:fluid_irradiator"}),
[[null, <nuclearcraft:fission_irradiator>, null],
[null, <modularmachinery:itemmodularium>, null],
[null, null, null]]);

recipes.addShaped("fluid_pressurizer", <modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:fluid_pressurizer"}),
[[null, <nuclearcraft:pressurizer>, null],
[null, <modularmachinery:itemmodularium>, null],
[null, null, null]]);