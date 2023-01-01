import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.oredict.IOreDict;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;
import mods.nuclearcraft.Assembler;
import mods.qmd.ore_leacher;
import mods.mekanism.sawmill;

//Gallium production
//mods.qmd.ore_leacher.addRecipe(IIngredient inputItem,IIngredient inputFluid1, IIngredient inputFluid2, IIngredient inputfluid3, IIngredient outputItem1, IIngredient outputItem2, IIngredient OutputItem3)
mods.qmd.ore_leacher.addRecipe(<ore:oreAluminium>, <liquid:nitric_acid>*16, <liquid:water>*20, <liquid:sulfuric_acid>*16, <ore:dustAluminium>*3, <contenttweaker:gallium_dust>*1, null, 1.0, 5.0, 0.001);

//AsGa dust prep
mods.nuclearcraft.Assembler.addRecipe(<contenttweaker:gallium_dust>*1, <nuclearcraft:gem_dust:10>*1, <contenttweaker:gallium_arsenide_dust>*1);

//Silicon Boule prep
//mods.nuclearcraft.AlloyFurnace.addRecipe(IIngredient itemInput1, IIngredient itemInput2, IIngredient itemOutput);
mods.nuclearcraft.AlloyFurnace.addRecipe(<ore:itemSilicon>*32, <contenttweaker:gallium_arsenide_dust>*1, <qmd:semiconductor:2>*1, 1.0, 5.0, 0.001);
mods.nuclearcraft.AlloyFurnace.addRecipe(<ore:dustSilicon>*32, <contenttweaker:gallium_arsenide_dust>*1, <libvulpes:productboule:3>*1, 1.0, 5.0, 0.001);

//Silicon Wafer prep
//mods.mekanism.sawmill.addRecipe(IIngredient inputStack, IItemStack outputStack);
mods.mekanism.sawmill.addRecipe(<qmd:semiconductor:2>*1, <qmd:semiconductor:3>*16);
mods.mekanism.sawmill.addRecipe(<libvulpes:productboule:3>*1, <advancedrocketry:wafer:0>*16);

