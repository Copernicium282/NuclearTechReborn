import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import mods.jei.JEI;


val Junk = [
    <ironjetpacks:wood_jetpack>,
    <ironjetpacks:stone_cell>,
    <ironjetpacks:wood_cell>,
    <ironjetpacks:wood_thruster>,
    <ironjetpacks:stone_thruster>,
    <ironjetpacks:wood_capacitor>,
    <ironjetpacks:stone_capacitor>,
    <ironjetpacks:wood_jetpack>,
    <ironjetpacks:stone_jetpack>
] as IItemStack[];

for item in Junk {
    recipes.remove(item);
    JEI.removeAndHide(item);
}

val Garbage = [
    <ironjetpacks:electrum_jetpack>.withTag({}),
    <ironjetpacks:invar_jetpack>.withTag({}),
    <ironjetpacks:invar_capacitor>,
    <ironjetpacks:electrum_capacitor>,
    <ironjetpacks:electrum_thruster>,
    <ironjetpacks:invar_thruster>,
    <ironjetpacks:invar_cell>,
    <ironjetpacks:electrum_cell>
] as IItemStack[];

for item in Garbage {
    JEI.removeAndHide(item);
}

//Adding recipe for Copper Jetpack

recipes.removeByRecipeName("ironjetpacks:upgrade_copper");
recipes.addShaped("UpgradedCopperJetpack", <ironjetpacks:copper_jetpack>,
[[<ore:ingotCopper>, <ironjetpacks:copper_capacitor>, <ore:ingotCopper>],
[<ore:ingotCopper>, <hbm:jetpack_break>, <ore:ingotCopper>],
[<ironjetpacks:copper_thruster>, null, <ironjetpacks:copper_thruster>]]);

//Upgraded coil recipes
recipes.removeByRecipeName("ironjetpacks:advanced_coil");
recipes.removeByRecipeName("ironjetpacks:elite_coil");
recipes.removeByRecipeName("ironjetpacks:ultimate_coil");
recipes.addShapeless("advancedcoil", <ironjetpacks:advanced_coil>, [<hbm:coil_copper>, <minecraft:redstone>]);
recipes.addShapeless("elitecoil", <ironjetpacks:elite_coil>, [<hbm:coil_advanced_alloy>, <minecraft:redstone>]);
recipes.addShapeless("ultimatecoil", <ironjetpacks:ultimate_coil>, [<hbm:coil_magnetized_tungsten>, <minecraft:redstone>]);

//Upgraded cell recipes
recipes.removeByRecipeName("ironjetpacks:cell_gold");
recipes.removeByRecipeName("ironjetpacks:cell_steel");
recipes.removeByRecipeName("ironjetpacks:cell_diamond");
recipes.removeByRecipeName("ironjetpacks:cell_platinum");
recipes.removeByRecipeName("ironjetpacks:cell_emerald");
recipes.addShapeless("goldcell", <ironjetpacks:gold_cell>, [<hbm:battery_red_cell>.withTag({charge: 0 as long})]);
recipes.addShapeless("steelcell", <ironjetpacks:steel_cell>, [<hbm:battery_red_cell>.withTag({charge: 0 as long})]);
recipes.addShapeless("diamondcell", <ironjetpacks:diamond_cell>, [<hbm:battery_advanced_cell>.withTag({charge: 0 as long})]);
recipes.addShapeless("platinumcell", <ironjetpacks:platinum_cell>, [<hbm:battery_lithium_cell>.withTag({charge: 0 as long})]);
recipes.addShapeless("emeraldcell", <ironjetpacks:emerald_cell>, [<hbm:battery_schrabidium_cell>.withTag({charge: 0 as long})]);

//Upgraded thruster recipes
recipes.removeByRecipeName("ironjetpacks:upgrade_gold");
recipes.removeByRecipeName("ironjetpacks:upgrade_steel");
recipes.removeByRecipeName("ironjetpacks:upgrade_diamond");
recipes.removeByRecipeName("ironjetpacks:upgrade_platinum");
recipes.removeByRecipeName("ironjetpacks:upgrade_emerald");
recipes.addShapeless("goldthruster", <ironjetpacks:gold_thruster>, [<hbm:thruster_small>, <ironjetpacks:gold_cell>]);
recipes.addShapeless("steelthruster", <ironjetpacks:steel_thruster>, [<hbm:thruster_small>, <ironjetpacks:steel_cell>]);
recipes.addShapeless("diamondthruster", <ironjetpacks:diamond_thruster>, [<hbm:thruster_medium>, <ironjetpacks:diamond_cell>]);
recipes.addShapeless("platinumthruster", <ironjetpacks:platinum_thruster>, [<hbm:thruster_medium>, <ironjetpacks:platinum_cell>]);
recipes.addShapeless("emeraldthruster", <ironjetpacks:emerald_thruster>, [<hbm:mp_thruster_10_xenon>, <ironjetpacks:emerald_cell>]);