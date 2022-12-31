import mods.modularmachinery.RecipeBuilder;
import crafttweaker.item.IItemStack;
import mods.nuclearcraft.Infuser;

recipes.addShaped("fnzp_tablet", <contenttweaker:fnzp_tablet>,
[[<ore:dustGraphite>, <nuclearcraft:fission_dust:2>, null],
[<nuclearcraft:fission_dust:5>, null, null],
[null, null, null]]);

recipes.addShaped("xanax", <contenttweaker:xanax>,
[[<ore:dustGraphite>, <ore:dustNiter>, null],
[<qmd:dust2:2>, null, null],
[null, null, null]]);

recipes.addShaped("entepills", <contenttweaker:entepills>,
[[<ore:dustGraphite>, <nuclearcraft:moresmore>, null],
[<harvestcraft:rootbeerfloatitem>, <contenttweaker:pill_iodine>, null],
[null, null, null]]);

recipes.addShaped("pill_iodine", <contenttweaker:pill_iodine>,
[[<ore:dustGraphite>, <qmd:dust2:2>, null],
[<nuclearcraft:gem_dust:5>, null, null],
[null, null, null]]);

recipes.addShaped("radaway_strong", <contenttweaker:radaway_strong>,
[[<ore:dustGraphite>, <minecraft:blaze_powder>, <nuclearcraft:radaway>],
[null, null, null],
[null, null, null]]);

recipes.addShaped("radaway_flush", <contenttweaker:radaway_flush>,
[[<ore:dustGraphite>, <minecraft:blaze_powder>, null],
[<nuclearcraft:compound:2>, <contenttweaker:radaway_strong>, null],
[null, null, null]]);

mods.nuclearcraft.Infuser.removeRecipeWithOutput(<nuclearcraft:radaway>);
recipes.addShaped("radaway", <nuclearcraft:radaway>,
[[<nuclearcraft:part:6>, <ore:dustGraphite>, <nuclearcraft:glowing_mushroom>],
[<tconstruct:edible:3>, <nuclearcraft:gem_dust:5>, <contenttweaker:pill_iodine>],
[null, null, null]]);
