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
[<hbm:canteen_fab>, <contenttweaker:pill_iodine>, null],
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
[null, <nuclearcraft:gem_dust:5>, <contenttweaker:pill_iodine>],
[null, null, null]]);

mods.nuclearcraft.Radiation.setFoodRadiationStats(<contenttweaker:fnzp_tablet>, -25, 0.2);
mods.nuclearcraft.Radiation.setFoodRadiationStats(<contenttweaker:xanax>, -10, 0.1);
mods.nuclearcraft.Radiation.setFoodRadiationStats(<contenttweaker:entepills>, -750, 10);
mods.nuclearcraft.Radiation.setFoodRadiationStats(<contenttweaker:pill_iodine>, -40, 0.5);
mods.nuclearcraft.Radiation.setFoodRadiationStats(<contenttweaker:radaway_strong>, -385, 2);
mods.nuclearcraft.Radiation.setFoodRadiationStats(<contenttweaker:radaway_flush>, -450, 4);

//Some of the content present in this script is taken from HBM, thanks to bobcat for letting me use the items from his mod.