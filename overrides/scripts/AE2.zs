import crafttweaker.item.IItemStack;
import mods.nuclearcraft.AlloyFurnace;
import crafttweaker.item.IIngredient;
import mods.nuclearcraft.Assembler;

mods.nuclearcraft.Assembler.addRecipe(<appliedenergistics2:material:20>, <rftoolscontrol:ram_chip>*2, <opencomputers:material:7>*8, <ore:crystalPureCertusQuartz>, <appliedenergistics2:material:24>*1);
mods.nuclearcraft.Assembler.addRecipe(<appliedenergistics2:material:20>, <rftoolscontrol:ram_chip>*4, <opencomputers:material:8>*8, <ore:plateGold>, <appliedenergistics2:material:23>*1);
mods.nuclearcraft.Assembler.addRecipe(<appliedenergistics2:material:20>, <rftoolscontrol:ram_chip>*8, <opencomputers:material:9>*4, <ore:gemDiamond>, <appliedenergistics2:material:22>*1);

mods.nuclearcraft.Assembler.addRecipe(<opencomputers:storage:2>*1, <ore:crystalCertusQuartz>*1,<appliedenergistics2:quartz_glass>*2,null, <appliedenergistics2:material:52>*1);
mods.nuclearcraft.Assembler.addRecipe(<opencomputers:material:10>*1, <opencomputers:material:11>*1, <opencomputers:component:17>*1, <ore:crystalPureFluix>*4, <appliedenergistics2:controller>*1);

recipes.remove(<appliedenergistics2:material:35>);
mods.nuclearcraft.Assembler.addRecipe(<appliedenergistics2:material:22>,<appliedenergistics2:material:1>*4,<ore:dustRedstone>*4,null,<appliedenergistics2:material:35>);