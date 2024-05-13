import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;
import mods.nuclearcraft.Crystallizer;
import mods.jei.JEI;

//Enderium Gem
mods.nuclearcraft.Crystallizer.addRecipe(<liquid:enderium>*666, <contenttweaker:enderium_gem>*1);

//Recipe Tweaks
recipes.removeByRecipeName("pressure:recipe27");
recipes.addShaped("PressurePipe", <pressure:pipe>*6,
[[null, <hbm:pipes_steel>, null],
[null, <contenttweaker:enderium_gem>, null],
[null, <hbm:pipes_steel>, null]]);

recipes.removeByRecipeName("pressure:recipe3");
recipes.addShaped("PressureWall", <pressure:tank_wall>*16,
[[<ore:plateIron>, <ore:plateIron>, <ore:plateIron>],
[<ore:plateIron>, <contenttweaker:enderium_gem>, <ore:plateIron>],
[<ore:plateIron>, <ore:plateIron>, <ore:plateIron>]]);

recipes.removeByRecipeName("pressure:recipe2");
recipes.addShaped("PressureFluidInterface", <pressure:fluid_interface>*4,
[[null, <ore:plateIron>, null],
[<ore:plateIron>, <contenttweaker:enderium_gem>, <ore:plateIron>],
[null, <ore:plateIron>, null]]);