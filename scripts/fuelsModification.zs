import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.oredict.IOreDict;
import crafttweaker.item.IIngredient;
import mods.nuclearcraft.SolidFission;
import mods.nuclearcraft.PebbleFission;
import mods.nuclearcraft.FuelReprocessor;
import mods.nuclearcraft.Assembler;
import mods.jei.JEI;

val depfuelcarbide = [
    <nuclearcraft:depleted_fuel_thorium:0>,
    <nuclearcraft:depleted_fuel_uranium:0>,
    <nuclearcraft:depleted_fuel_uranium:8>,
    <nuclearcraft:depleted_fuel_neptunium:0>,
    <nuclearcraft:depleted_fuel_plutonium:0>
] as IItemStack[];

for item in depfuelcarbide {
    recipes.remove(item);
    JEI.removeAndHide(item);
}

val frc = [
    <nuclearcraft:depleted_fuel_thorium:0> * 9,
    <nuclearcraft:depleted_fuel_uranium:0> * 9,
    <nuclearcraft:depleted_fuel_uranium:8> * 9,
    <nuclearcraft:depleted_fuel_neptunium:0> * 9,
    <nuclearcraft:depleted_fuel_plutonium:0> * 9
] as IItemStack[];

for item in frc {
    mods.nuclearcraft.FuelReprocessor.removeRecipeWithInput(item);
}

val carbide = [
    <nuclearcraft:pellet_thorium:1>,
    <nuclearcraft:pellet_uranium:1>,
    <nuclearcraft:pellet_uranium:5>,
    <nuclearcraft:pellet_neptunium:1>,
    <nuclearcraft:pellet_plutonium:1>
] as IItemStack[];

for item in carbide {
    recipes.remove(item);
    JEI.removeAndHide(item);
}

val fuelsCarbide = [
    <nuclearcraft:fuel_thorium:0>,
    <nuclearcraft:fuel_uranium:0>,
    <nuclearcraft:fuel_uranium:8>,
    <nuclearcraft:fuel_neptunium:0>,
    <nuclearcraft:fuel_plutonium:0>
] as IItemStack[];

for item in fuelsCarbide {
    mods.nuclearcraft.PebbleFission.removeRecipeWithInput(item);
    JEI.removeAndHide(item);
}

