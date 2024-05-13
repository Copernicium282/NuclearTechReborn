import crafttweaker.item.IItemStack;
import mods.nuclearcraft.AlloyFurnace;
import crafttweaker.item.IIngredient;
import mods.nuclearcraft.Assembler;

//Quartz Enriched Iron to Alloy Furnace
recipes.removeByRecipeName("refinedstorage:quartz_enriched_iron");
mods.nuclearcraft.AlloyFurnace.addRecipe(<minecraft:quartz>*1, <minecraft:iron_ingot>*3, <refinedstorage:quartz_enriched_iron>*4);

//Item Tweaks using Refined storage
//Processor
mods.nuclearcraft.Assembler.addRecipe(<refinedstorage:processor_binding>*1, <rftoolscontrol:ram_chip>*2, <opencomputers:material:7>*8, null, <refinedstorage:processor:3>*1);
mods.nuclearcraft.Assembler.addRecipe(<refinedstorage:processor_binding>*1, <rftoolscontrol:ram_chip>*4, <opencomputers:material:8>*8, null, <refinedstorage:processor:4>*1);
mods.nuclearcraft.Assembler.addRecipe(<refinedstorage:processor_binding>*1, <rftoolscontrol:ram_chip>*8, <opencomputers:material:9>*4, null, <refinedstorage:processor:5>*1);

//Storage
mods.nuclearcraft.Assembler.addRecipe(<opencomputers:storage:2>*1, <refinedstorage:processor:1>*1, null, null, <refinedstorage:storage_part>*1);
mods.nuclearcraft.Assembler.addRecipe(<opencomputers:storage:2>*1, <refinedstorage:processor:1>*1, <pressure:fluid_interface>*1, null, <refinedstorage:fluid_storage_part>*1);
mods.nuclearcraft.Assembler.addRecipe(<opencomputers:storage:2>*1, <refinedstorage:storage_housing>*1, null, null, <refinedstorage:pattern>*1);

//Controller
mods.nuclearcraft.Assembler.addRecipe(<opencomputers:material:10>*1, <opencomputers:material:11>*1, <opencomputers:component:17>*1, null, <refinedstorage:controller>.withTag({Energy: 0})*1);
