import crafttweaker.item.IItemStack;
import mods.jei.JEI;


val Junk = [
    <immersiveengineering:cloth_device>
] as IItemStack[];

for item in Junk {
    recipes.remove(item);
    JEI.removeAndHide(item);
}