import crafttweaker.item.IItemStack;
import mods.jei.JEI;


val Junk = [
    <nuclearcraft:water_source_compact>,
    <nuclearcraft:water_source>,
    <nuclearcraft:water_source_dense>,
    <pressure:water_source>
] as IItemStack[];

for item in Junk {
    recipes.remove(item);
    JEI.removeAndHide(item);
}

//Ha Ha Ha, You thought I would ignore the infinite water sources? NOT AT ALL!