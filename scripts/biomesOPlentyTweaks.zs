import crafttweaker.item.IItemStack;
import mods.jei.JEI;


val Junk = [
    <biomesoplenty:shroompowder>,
    <biomesoplenty:biome_essence>
] as IItemStack[];

for item in Junk {
    recipes.remove(item);
    JEI.removeAndHide(item);
}