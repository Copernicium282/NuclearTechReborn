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
[<refinedstorage:importer>, <nuclearcraft:machine_interface>, <refinedstorage:exporter>],
[<modularmachinery:itemmodularium>, <refinedstorage:external_storage>, <modularmachinery:itemmodularium>]]);

//Modular Machinery Hatches

recipes.addShaped("ModularMachinery_NormalItemOutput", <modularmachinery:blockoutputbus:2>,
[[<minecraft:comparator>, <advancedrocketry:ic:3>, <minecraft:comparator>],
[<modularmachinery:blockoutputbus:1>, <advancedrocketry:ic:4>, <modularmachinery:blockoutputbus:1>],
[<advancedrocketry:ic:2>, <minecraft:repeater>, <advancedrocketry:ic:2>]]);

recipes.addShaped("ModularMachinery_NormalItemInput", <modularmachinery:blockinputbus:2>,
[[<minecraft:comparator>, <advancedrocketry:ic:3>, <minecraft:comparator>],
[<modularmachinery:blockinputbus:1>, <advancedrocketry:ic:4>, <modularmachinery:blockinputbus:1>],
[<advancedrocketry:ic:2>, <minecraft:repeater>, <advancedrocketry:ic:2>]]);

recipes.addShaped("ModularMachinery_NormalFluidInput", <modularmachinery:blockfluidinputhatch:2>,
[[<minecraft:comparator>, <advancedrocketry:ic:3>, <minecraft:comparator>],
[<modularmachinery:blockfluidinputhatch:1>, <advancedrocketry:ic:5>, <modularmachinery:blockfluidinputhatch:1>],
[<advancedrocketry:ic:2>, <minecraft:repeater>, <advancedrocketry:ic:2>]]);

recipes.addShaped("ModularMachinery_NormalFluidOutput", <modularmachinery:blockfluidoutputhatch:2>,
[[<minecraft:comparator>, <advancedrocketry:ic:3>, <minecraft:comparator>],
[<modularmachinery:blockfluidoutputhatch:1>, <advancedrocketry:ic:5>, <modularmachinery:blockfluidoutputhatch:1>],
[<advancedrocketry:ic:2>, <minecraft:repeater>, <advancedrocketry:ic:2>]]);

recipes.addShaped("ModularMachinery_NormalEnergyOutput", <modularmachinery:blockenergyoutputhatch:2>,
[[<minecraft:comparator>, <advancedrocketry:ic:3>, <minecraft:comparator>],
[<modularmachinery:blockenergyoutputhatch:1>, <hbm:machine_battery>, <modularmachinery:blockenergyoutputhatch:1>],
[<advancedrocketry:ic:2>, <minecraft:repeater>, <advancedrocketry:ic:2>]]);

recipes.addShaped("ModularMachinery_NormalEnergyInput", <modularmachinery:blockenergyinputhatch:2>,
[[<minecraft:comparator>, <advancedrocketry:ic:3>, <minecraft:comparator>],
[<modularmachinery:blockenergyinputhatch:1>, <hbm:machine_battery>, <modularmachinery:blockenergyinputhatch:1>],
[<advancedrocketry:ic:2>, <minecraft:repeater>, <advancedrocketry:ic:2>]]);

recipes.addShaped("ModularMachinery_ReinforcedEnergyInput", <modularmachinery:blockenergyinputhatch:3>,
[[<minecraft:comparator>, <advancedrocketry:ic:3>, <minecraft:comparator>],
[<modularmachinery:blockenergyinputhatch:2>, <hbm:machine_lithium_battery>, <modularmachinery:blockenergyinputhatch:2>],
[<advancedrocketry:ic:2>, <minecraft:repeater>, <advancedrocketry:ic:2>]]);

recipes.addShaped("ModularMachinery_BigEnergyInput", <modularmachinery:blockenergyinputhatch:4>,
[[<minecraft:comparator>, <advancedrocketry:ic:3>, <minecraft:comparator>],
[<modularmachinery:blockenergyinputhatch:3>, <hbm:machine_lithium_battery>, <modularmachinery:blockenergyinputhatch:3>],
[<advancedrocketry:ic:2>, <minecraft:repeater>, <advancedrocketry:ic:2>]]);

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
[[<harvestcraft:freshwateritem>, <harvestcraft:freshwateritem>, <harvestcraft:freshwateritem>],
[<harvestcraft:freshwateritem>, <modularmachinery:itemmodularium>, <harvestcraft:freshwateritem>],
[<harvestcraft:freshwateritem>, <harvestcraft:freshwateritem>, <harvestcraft:freshwateritem>]]);

recipes.addShaped("charging_station", <modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:charging_station"}),
[[<libvulpes:battery:0>, <libvulpes:battery:0>, <libvulpes:battery:0>],
[<libvulpes:battery:0>, <modularmachinery:itemmodularium>, <libvulpes:battery:0>],
[<libvulpes:battery:0>, <libvulpes:battery:0>, <libvulpes:battery:0>]]);

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
[null, <nuclearcraft:decay_hastener>, null]]);

recipes.addShaped("silex", <modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:silex"}),
[[<qmd:ingot_alloy:4>, <qmd:ingot_alloy:6>, <qmd:ingot_alloy:4>],
[<qmd:ingot_alloy:6>, <modularmachinery:itemmodularium>, <qmd:ingot_alloy:6>],
[<qmd:ingot_alloy:4>, <qmd:ingot_alloy:6>, <qmd:ingot_alloy:4>]]);

recipes.addShaped("chemical_plant", <modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:chemical_plant"}),
[[<nuclearcraft:alloy:6>, <qmd:ingot:11>, <nuclearcraft:alloy:6>],
[<qmd:ingot:12>, <nuclearcraft:chemical_reactor>, <qmd:ingot:12>],
[<nuclearcraft:alloy:6>, <qmd:ingot:11>, <nuclearcraft:alloy:6>]]);

recipes.addShaped("gas_centrifuge", <modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:gas_centrifuge"}),
[[<qmd:ingot_alloy:5>, <qmd:part:3>, <qmd:ingot_alloy:5>],
[<qmd:ingot_alloy:3>, <nuclearcraft:centrifuge>, <qmd:ingot_alloy:3>],
[<qmd:ingot_alloy:5>, <qmd:part:3>, <qmd:ingot_alloy:5>]]);

recipes.addShaped("circuit_assembler", <modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:circuit_assembler"}),
[[null, <hbm:machine_assembler>, null],
[null, <modularmachinery:itemmodularium>, null],
[null, null, null]]);

//upgrade templates
mods.nuclearcraft.Assembler.addRecipe(<ore:plateSteel>*6, <hbm:bolt_tungsten>*24, null, null, <contenttweaker:machine_upgrade_template>*1);
mods.nuclearcraft.Assembler.addRecipe(<contenttweaker:machine_upgrade_template>*1, <mekanism:tierinstaller:1>*2, null, null, <contenttweaker:upgrade_speed_a>*1);
mods.nuclearcraft.Assembler.addRecipe(<contenttweaker:upgrade_speed_a>*1, <mekanism:tierinstaller:2>*4, null, null, <contenttweaker:upgrade_speed_b>*1);