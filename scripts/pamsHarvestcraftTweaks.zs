import crafttweaker.item.IItemStack;
import mods.jei.JEI;


val Junk = [
    <harvestcraft:market>
] as IItemStack[];

for item in Junk {
    recipes.remove(item);
    JEI.removeAndHide(item);
}