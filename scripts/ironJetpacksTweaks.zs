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

//Adding recipe for Copper Jetpack

recipes.removeByRecipeName("ironjetpacks:upgrade_copper");
recipes.addShaped("UpgradedCopperJetpack", <ironjetpacks:copper_jetpack>,
[[<ore:ingotCopper>, <ironjetpacks:copper_capacitor>, <ore:ingotCopper>],
[<ore:ingotCopper>, <hbm:jetpack_break>, <ore:ingotCopper>],
[<ironjetpacks:copper_thruster>, null, <ironjetpacks:copper_thruster>]]);