import mods.nuclearcraft.Assembler;
import mods.nuclearcraft.Pressurizer;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

//Peaceful Ender pearl recipe
mods.nuclearcraft.Assembler.addRecipe(<hbm:powder_magic>*1, <nuclearcraft:compound:2>*1, <minecraft:slime_ball>*1, null, <minecraft:ender_pearl>*1);

//peaceful recipes
mods.nuclearcraft.Pressurizer.addRecipe(<nuclearcraft:compound:2>*2, <minecraft:blaze_rod>*1);
mods.nuclearcraft.Pressurizer.addRecipe(<hbm:powder_coltan>*1, <minecraft:ghast_tear>*1);

//RFLUX new recipe
recipes.removeByRecipeName("rflux:lightblock_off");
recipes.addShaped("UpgradedRFLUXlight", <rflux:lightblock_off>.withTag({color: 0}),
[[<nuclearcraft:part:0>, <minecraft:glowstone_dust>, <nuclearcraft:part:0>],
[<minecraft:glowstone_dust>, <nuclearcraft:lithium_ion_cell>, <minecraft:glowstone_dust>],
[<nuclearcraft:part:0>, <minecraft:glowstone_dust>, <nuclearcraft:part:0>]]);

//Flint from gravel
recipes.addShaped("FlintFromGravel", <minecraft:flint>,
[[<ore:gravel>, <ore:gravel>, null],
[<ore:gravel>, null, null],
[null, null, null]]);