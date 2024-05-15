import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.oredict.IOreDict;
import crafttweaker.item.IIngredient;
import mods.nuclearcraft.SolidFission;
import mods.nuclearcraft.PebbleFission;
import mods.nuclearcraft.FuelReprocessor;
import mods.jei.JEI;

val carbide = [
    <nuclearcraft:depleted_fuel_thorium:0>,
    <nuclearcraft:depleted_fuel_uranium:0>,
    <nuclearcraft:depleted_fuel_uranium:4>,
    <nuclearcraft:depleted_fuel_uranium:8>,
    <nuclearcraft:depleted_fuel_uranium:12>,
    <nuclearcraft:depleted_fuel_neptunium:0>,
    <nuclearcraft:depleted_fuel_neptunium:4>,
    <nuclearcraft:depleted_fuel_plutonium:0>,
    <nuclearcraft:depleted_fuel_plutonium:4>,
    <nuclearcraft:depleted_fuel_plutonium:8>,
    <nuclearcraft:depleted_fuel_plutonium:12>,
    <nuclearcraft:depleted_fuel_mixed:0>,
    <nuclearcraft:depleted_fuel_mixed:4>,
    <nuclearcraft:depleted_fuel_americium>,
    <nuclearcraft:depleted_fuel_americium:4>,
    <nuclearcraft:depleted_fuel_curium:0>,
    <nuclearcraft:depleted_fuel_curium:4>,
    <nuclearcraft:depleted_fuel_curium:8>,
    <nuclearcraft:depleted_fuel_curium:12>,
    <nuclearcraft:depleted_fuel_curium:16>,
    <nuclearcraft:depleted_fuel_curium:20>,
    <nuclearcraft:depleted_fuel_berkelium:0>,
    <nuclearcraft:depleted_fuel_berkelium:4>,
    <nuclearcraft:depleted_fuel_californium:0>,
    <nuclearcraft:depleted_fuel_californium:4>,
    <nuclearcraft:depleted_fuel_californium:8>,
    <nuclearcraft:depleted_fuel_californium:12>,
    <nuclearcraft:uranium:1>,
    <nuclearcraft:uranium:6>,
    <nuclearcraft:uranium:11>,
    <nuclearcraft:neptunium:1>,
    <nuclearcraft:neptunium:6>,
    <nuclearcraft:plutonium:1>,
    <nuclearcraft:plutonium:6>,
    <nuclearcraft:plutonium:11>,
    <nuclearcraft:plutonium:16>,
    <nuclearcraft:americium:1>,
    <nuclearcraft:americium:6>,
    <nuclearcraft:americium:11>,
    <nuclearcraft:curium:1>,
    <nuclearcraft:curium:6>,
    <nuclearcraft:curium:11>,
    <nuclearcraft:curium:16>,
    <nuclearcraft:berkelium:1>,
    <nuclearcraft:berkelium:6>,
    <nuclearcraft:californium:1>,
    <nuclearcraft:californium:6>,
    <nuclearcraft:californium:11>,
    <nuclearcraft:californium:16>,
    <nuclearcraft:pellet_thorium:1>,
    <nuclearcraft:pellet_uranium:1>,
    <nuclearcraft:pellet_uranium:3>,
    <nuclearcraft:pellet_uranium:5>,
    <nuclearcraft:pellet_uranium:7>,
    <nuclearcraft:pellet_neptunium:1>,
    <nuclearcraft:pellet_neptunium:3>,
    <nuclearcraft:pellet_plutonium:1>,
    <nuclearcraft:pellet_plutonium:3>,
    <nuclearcraft:pellet_plutonium:5>,
    <nuclearcraft:pellet_plutonium:7>,
    <nuclearcraft:pellet_mixed:1>,
    <nuclearcraft:pellet_mixed:3>,
    <nuclearcraft:pellet_americium:1>,
    <nuclearcraft:pellet_americium:3>,
    <nuclearcraft:pellet_curium:1>,
    <nuclearcraft:pellet_curium:3>,
    <nuclearcraft:pellet_curium:5>,
    <nuclearcraft:pellet_curium:7>,
    <nuclearcraft:pellet_curium:9>,
    <nuclearcraft:pellet_curium:11>,
    <nuclearcraft:pellet_berkelium:1>,
    <nuclearcraft:pellet_berkelium:3>,
    <nuclearcraft:pellet_californium:1>,
    <nuclearcraft:pellet_californium:3>,
    <nuclearcraft:pellet_californium:5>,
    <nuclearcraft:pellet_californium:7>
] as IItemStack[];

for item in carbide {
    recipes.remove(item);
    JEI.removeAndHide(item);
}

val fuelsCarbide = [
    <nuclearcraft:fuel_thorium:0>,
    <nuclearcraft:fuel_uranium:0>,
    <nuclearcraft:fuel_uranium:4>,
    <nuclearcraft:fuel_uranium:8>,
    <nuclearcraft:fuel_uranium:12>,
    <nuclearcraft:fuel_neptunium:0>,
    <nuclearcraft:fuel_neptunium:4>,
    <nuclearcraft:fuel_plutonium:0>,
    <nuclearcraft:fuel_plutonium:4>,
    <nuclearcraft:fuel_plutonium:8>,
    <nuclearcraft:fuel_plutonium:12>,
    <nuclearcraft:fuel_mixed:0>,
    <nuclearcraft:fuel_mixed:4>,
    <nuclearcraft:fuel_americium:0>,
    <nuclearcraft:fuel_americium:4>,
    <nuclearcraft:fuel_curium:0>,
    <nuclearcraft:fuel_curium:4>,
    <nuclearcraft:fuel_curium:8>,
    <nuclearcraft:fuel_curium:12>,
    <nuclearcraft:fuel_curium:16>,
    <nuclearcraft:fuel_curium:20>,
    <nuclearcraft:fuel_berkelium:0>,
    <nuclearcraft:fuel_berkelium:4>,
    <nuclearcraft:fuel_californium:0>,
    <nuclearcraft:fuel_californium:4>,
    <nuclearcraft:fuel_californium:8>,
    <nuclearcraft:fuel_californium:12>
] as IItemStack[];

for item in fuelsCarbide {
    mods.nuclearcraft.PebbleFission.removeRecipeWithInput(item);
    JEI.removeAndHide(item);
}

