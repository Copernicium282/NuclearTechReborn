import mods.modularmachinery.RecipeBuilder;
import mods.mekanism.infuser;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.oredict.IOreDict;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.item.IIngredient;
import mods.nuclearcraft.Assembler;
import mods.jei.JEI;

//Remove these cheap recipes

val Recipe = [
    <mekanism:energytablet>,
    <bfr:reactorglass:1>,
    <mekanism:portableteleporter>,
    <mekanism:basicblock:7>,
    <mekanismgenerators:hohlraum>,
    <mekanism:machineblock:11>
] as IItemStack[];

for item in Recipe {
    recipes.remove(item);
}

//Remove Junk

val Junk = [
    <mekanismgenerators:generator:3>
] as IItemStack[];

for item in Junk {
    recipes.remove(item);
    JEI.removeAndHide(item);
}

//New and cheaper recipes for everyone!

recipes.addShaped("mekenergytablet", <mekanism:energytablet>,
[[<nuclearcraft:lithium_ion_cell>, <qmd:part:6>, <nuclearcraft:lithium_ion_cell>],
[<qmd:semiconductor:1>, <mekanism:ingot:1>, <qmd:semiconductor:1>],
[<nuclearcraft:lithium_ion_cell>, <qmd:part:6>, <nuclearcraft:lithium_ion_cell>]]);

recipes.addShaped("mekeportableteleporter", <mekanism:portableteleporter>,
[[<nuclearcraft:lithium_ion_cell>, <qmd:part:4>, <nuclearcraft:lithium_ion_cell>],
[<qmd:semiconductor:0>, <mekanism:teleportationcore>, <qmd:semiconductor:0>],
[<nuclearcraft:lithium_ion_cell>, <qmd:part:4>, <nuclearcraft:lithium_ion_cell>]]);

recipes.addShaped("meklaserfocus", <bfr:reactorglass:1>,
[[<nuclearcraft:lithium_ion_cell>, <qmd:part:4>, <nuclearcraft:lithium_ion_cell>],
[<advancedrocketry:lens:0>, <qmd:part:10>, <advancedrocketry:lens:0>],
[<nuclearcraft:lithium_ion_cell>, <qmd:part:4>, <nuclearcraft:lithium_ion_cell>]]);

recipes.addShaped("mektelepframe", <mekanism:basicblock:7>,
[[<qmd:ingot_alloy:6>, <qmd:part:4>, <qmd:ingot_alloy:6>],
[<qmd:semiconductor:5>, <mekanism:teleportationcore>, <qmd:semiconductor:5>],
[<qmd:ingot_alloy:6>, <qmd:part:4>, <qmd:ingot_alloy:6>]]);

recipes.addShaped("mekteleplol", <mekanism:machineblock:11>,
[[<qmd:ingot_alloy:4>, <qmd:part:4>, <qmd:ingot_alloy:4>],
[<qmd:semiconductor:6>, <mekanism:teleportationcore>, <qmd:semiconductor:6>],
[<qmd:ingot_alloy:4>, <qmd:part:4>, <qmd:ingot_alloy:4>]]);


mods.mekanism.infuser.removeRecipe(<mekanismgenerators:hohlraum>);

//hohlraum very cheap recipe

mods.nuclearcraft.Assembler.addRecipe(<qmd:ingot2:0>*2, <qmd:part:8>*2, <qmd:part:6>*3, null, <mekanismgenerators:hohlraum>);