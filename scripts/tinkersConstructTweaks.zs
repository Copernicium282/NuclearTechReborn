import crafttweaker.item.IItemStack;
import mods.jei.JEI;


val Junk = [
    <tconstruct:firewood:1>,
    <tconstruct:firewood>,
    <tconstruct:stone_ladder>,
    <tconstruct:wood_rail_trapdoor>,
    <tconstruct:wood_rail>,
    <tconstruct:slimesling:3>,
    <tconstruct:slime_boots:3>,
    <tconstruct:punji>
] as IItemStack[];

for item in Junk {
    recipes.remove(item);
    JEI.removeAndHide(item);
}