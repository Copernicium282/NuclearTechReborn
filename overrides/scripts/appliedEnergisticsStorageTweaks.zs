import crafttweaker.item.IItemStack;
import mods.nuclearcraft.AlloyFurnace;
import crafttweaker.item.IIngredient;
import mods.nuclearcraft.Assembler;


//Item Tweaks
//Controller
recipes.removeByRecipeName("appliedenergistics2:network/blocks/controller");
mods.nuclearcraft.Assembler.addRecipe(<opencomputers:capacitor>, <opencomputers:rack>, <appliedenergistics2:material:24>, null, <appliedenergistics2:controller>*1);

//Storage
recipes.removeByRecipeName("appliedenergistics2:network/cells/storage_components_cell_1k_part");
recipes.addShaped("ae2cell1k", <appliedenergistics2:material:35>,
[[null, <appliedenergistics2:material:22>, null],
[<advancedrocketry:ic:4>, <opencomputers:component:14>, <opencomputers:card:6>],
[null, <opencomputers:storage>, null]]);

recipes.removeByRecipeName("appliedenergistics2:network/cells/fluid_storage_components_cell_1k_part");
recipes.addShaped("ae2fluidcell1k", <appliedenergistics2:material:54>,
[[null, <appliedenergistics2:material:22>, null],
[<advancedrocketry:ic:5>, <opencomputers:component:14>, <opencomputers:card:6>],
[null, <opencomputers:storage>, null]]);